class Message < ActiveRecord::Base
  has_one :reply

  attr_accessible :body, :phone_number, :status, :photo_url

  validates_presence_of :phone_number

  validates_presence_of :body, :unless => :photo_url?

end
