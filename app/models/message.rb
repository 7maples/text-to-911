class Message < ActiveRecord::Base
  has_one :reply

  attr_accessible :body, :phone_number, :status

  validates_presence_of :body, :phone_number



end
