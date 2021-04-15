class Message
  include Mongoid::Document
  #include Mongoid::Timestamps::Created

  field :content, type: String
  field :creator, type: User

  embedded_in :chat, class_name: "Chat"
  embeds_one :creator, class_name: "User"
end
