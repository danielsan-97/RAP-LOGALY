@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo tabla PROGRAMACION'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_DM_PRIGRAMACION 
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
    @SEMANTICS.amount.currencyCode: 'Currency'
    Cost,
    Currency,
    Notes,
    @SEMANTICS.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    /* Associations */
    _asohija: redirected to parent ZC_ACTTIVOS
}
