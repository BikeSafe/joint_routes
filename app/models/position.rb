class Position
  include Mongoid::Document

  field :latitude, type: Float
  field :longitude, type: Float

  embedded_in :route, class_name: "Route"
end
