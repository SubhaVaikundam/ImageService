class Imageservice
  include Mongoid::Document
  store_in collection: "buymartProduct"
  field :catentry_id, type: String
  field :name, type: String
  field :make, type: String
  field :sku, type: String
  field :category, type: String
  field :sub_category, type: String
  field :pricing, type: Pricing
  field :details, type: Detail
end
