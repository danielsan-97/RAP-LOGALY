@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface principal activos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_DM_ACTIVOS_R
  as select from zdm_activos
  composition [0..*] of ZI_DM_PROGRAMACION as _asopadre
  association [1..*] to ZI_DM_AUX1         as _asoaux1 on $projection.AssetType = _asoaux1.Uuid
  //association [1..*] to ZI_CATEGORIES as _asoaux2 //video (1:04:52)
{
  key asset_uuid            as AssetUUID,
      asset_code            as AssetCode,
      asset_type            as AssetType,
      description           as Description,
      category              as Category,
      nanufacturer          as Nanufacturer,
      model                 as Model,
      serial_number         as SerialNumber,
      acquisition_date      as AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      purchase_cost         as PurchaseCost,
      currency_code         as CurrencyCode,
      location              as Location,
      assigned_user         as AssignedUser,
      status                as Status,
      warranty_end_date     as WarrantyEndDate,
      criticality           as Criticality,
      last_maintenance_date as LastMaintenanceDate,
      next_maintenance_date as NextMaintenanceDate,
      @Semantics.user.createdBy: true //Guarda el nombre de usuario que guarda el registro
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true //Guarda cuando se crea
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true //Ultimo ajuste realizado por un usuario
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true //
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true //Se obtiene la instancia local de donde se realiza el cambio, ambiente donde se realiza ajuste
      local_last_changed_at as LocalLastChangedAt,
      _asopadre,
      _asoaux1
}
