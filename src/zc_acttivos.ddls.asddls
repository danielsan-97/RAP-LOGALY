@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo tabla activos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_ACTTIVOS
  provider contract transactional_interface //CAMBIAMOPS EL QUERY POR EL INTERFACE A VE R QUE HACE
  as projection on ZI_DM_ACTIVOS_R
{
    key AssetUUID,
    AssetCode,
    AssetType,
    Description,
    Category,
    Nanufacturer,
    Model,
    SerialNumber,
    AcquisitionDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    PurchaseCost,
    CurrencyCode,
    Location,
    AssignedUser,
    Status,
    WarrantyEndDate,
    Criticality,
    LastMaintenanceDate,
    NextMaintenanceDate,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChangedAt,
    /* Associations */
    _asoaux1,
    _asopadre: redirected to composition child ZC_DM_PRIGRAMACION
}
