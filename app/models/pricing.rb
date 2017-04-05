class Pricing
  include Mongoid::Document
  field :retail, type: String
  field :sale, type: String
end
