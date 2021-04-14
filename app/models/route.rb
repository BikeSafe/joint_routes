class Route
  include Mongoid::Document
  field :calification, type: Integer
  field :latitude, type: Integer
  field :longitude, type: Integer
end
