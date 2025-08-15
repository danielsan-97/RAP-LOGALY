@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface principal programacion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DM_PROGRAMACION
  as select from zdm_mantenimento
  association to parent ZI_DM_ACTIVOS_R as _asohija
  on $projection.AssetParentUUID = _asohija.AssetUUID
{
  key maint_uuid            as MaintUUID,
      asset_parent_uuid     as AssetParentUUID,
      maint_type            as MaintType,
      description           as Description,
      scheduled_date        as ScheduledDate,
      completed_date        as CompletedDate,
      technician            as Technician,
      maint_status          as MaintStatus,
      @Semantics.amount.currencyCode: 'Currency'
      cost                  as Cost,
      currency              as Currency,
      notes                 as Notes,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      _asohija
}
