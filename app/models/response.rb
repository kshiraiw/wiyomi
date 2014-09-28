class Response
  include Mongoid::Document
  include SimpleEnum::Mongoid

  field :name, type: String
  as_enum :type, no: 0, maybe: 1, yes: 2

  validates :name, :type, presence: true
end