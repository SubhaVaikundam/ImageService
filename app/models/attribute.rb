class Attribute
  include Mongoid::Document
  field :size, type: String
  field :color, type: String
end
