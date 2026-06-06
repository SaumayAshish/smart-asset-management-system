@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Projection View'

@UI.headerInfo: {
  typeName: 'Asset',
  typeNamePlural: 'Assets',
  title: {
    type: #STANDARD,
    value: 'AssetName'
  }
}

define root view entity YC_ASSET
  provider contract transactional_query
  as projection on YI_ASSET
{
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key AssetID,

      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      AssetName,

      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      AssetType,

      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      Location,

      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      PurchaseDate,

      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      Status,

      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
