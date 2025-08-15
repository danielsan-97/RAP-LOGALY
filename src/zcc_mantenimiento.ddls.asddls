@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo final de mantenimiento'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZCC_MANTENIMIENTO
  as projection on ZI_DM_PROGRAMACION
{
  key MaintUUID,
      AssetParentUUID,
      MaintType,
      Description,
      ScheduledDate,
      CompletedDate,
      Technician,
      MaintStatus,
      @Semantics.amount.currencyCode: 'Currency'
      Cost,
      Currency,
      Notes,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      /* Associations */
      _asohija : redirected to parent ZCC_DM_ACTIVOS
}
