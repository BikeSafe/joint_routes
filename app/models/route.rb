class Route
  include Mongoid::Document
  #include Mongoid::Timestamps

  field :calification, type: Integer
  field :latitude, type: Integer
  field :longitude, type: Integer
  field :members, type: User
  field :creator, type: User
  field :chat, type: Chat

  embeds_many :members, class_name: "User"
  embeds_one :creator, class_name: "User"
  embeds_one :chat, class_name: "Chat"
end
