@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asset Root Interface View'

define root view entity YI_ASSET
  as select from yasset_hdr
{
  key asset_id        as AssetID,

      asset_name      as AssetName,
      asset_type      as AssetType,
      location        as Location,
      purchase_date   as PurchaseDate,
      status          as Status,

      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
}
