managed implementation in class YBP_I_ASSET unique;
strict ( 2 );

define behavior for YI_ASSET
persistent table yasset_hdr
lock master
authorization master ( instance )
etag master LastChangedAt
{
  create;
  update;
  delete;

  field ( readonly )
  AssetID,
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt;

  mapping for yasset_hdr
    {
      AssetID       = asset_id;
      AssetName     = asset_name;
      AssetType     = asset_type;
      Location      = location;
      PurchaseDate  = purchase_date;
      Status        = status;
      CreatedBy     = created_by;
      CreatedAt     = created_at;
      LastChangedBy = last_changed_by;
      LastChangedAt = last_changed_at;
    }
}