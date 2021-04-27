class User
  include Mongoid::Document

  field :name, type: String
  field :id2, type: Integer
  field :routes, type: Route

  has_and_belongs_to_many :routes, class_name: "Route"
  #belongs_to :message
  #embedded_in :route, class_name: "Route"
  #embedded_in :message, class_name: "Message"
  #accepts_nested_attributes_for :route
end
