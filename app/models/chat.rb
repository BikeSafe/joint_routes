class Chat
  include Mongoid::Document
  #include Mongoid::Timestamps::Created

  field :name, type: String
  field :message, type: Message

  embeds_many :message, class_name: "Message"
  embedded_in :route, class_name: "Route"
end
