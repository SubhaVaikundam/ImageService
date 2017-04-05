class Detail
  include Mongoid::Document
  field :description, type: String
  field :attribute, type: Attribute
end
