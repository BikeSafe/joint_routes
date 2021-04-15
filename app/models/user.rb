class User
  include Mongoid::Document

  field :name, type: String

  embedded_in :route, class_name: "Route"
  embedded_in :message, class_name: "Message"
end
