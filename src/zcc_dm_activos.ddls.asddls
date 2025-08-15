@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo final activos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true //hace busquedas por campo, optimizar busquedas

define root view entity ZCC_DM_ACTIVOS
  provider contract transactional_query
  as projection on ZI_DM_ACTIVOS_R
{
  key AssetUUID,
      @Search.defaultSearchElement: true
      AssetCode,
      @Search.defaultSearchElement: true
      AssetType,
      Description,
      @Search.defaultSearchElement: true
      Category,
      @Search.defaultSearchElement: true
      Nanufacturer,
      @Search.defaultSearchElement: true
      Model,
      @Search.defaultSearchElement: true
      SerialNumber,
      AcquisitionDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      PurchaseCost,
      CurrencyCode,
      @Search.defaultSearchElement: true
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
      _asopadre : redirected to composition child ZCC_MANTENIMIENTO
}
