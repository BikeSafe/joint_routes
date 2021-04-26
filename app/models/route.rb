class Route
  include Mongoid::Document
  #include Mongoid::Timestamps

  field :name, type: String
  field :rating, type: Float
  field :private, type: Boolean
  field :done, type: Boolean
  field :startTime, type: DateTime
  field :endTime, type: DateTime
  field :members, type: User
  #field :chat, type: Chat
  field :origin, type: Position
  field :destination, type: Position

  #embeds_many :members, class_name: "User"
  #embeds_one :creator, class_name: "User"
  #embeds_one :chat, class_name: "Chat"

  has_and_belongs_to_many :members, class_name: "User"
  embeds_one :origin, class_name: "Position"
  embeds_one :destination, class_name: "Position"
  #accepts_nested_attributes_for :users
end
