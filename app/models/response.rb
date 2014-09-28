class Response
  include Mongoid::Document

  field :name, type: String
  field :percentage, type: Integer

  
  validates :name, :percentage, presence: true
  
  before_save ->{ self.name = self.name.squish.downcase }
end
