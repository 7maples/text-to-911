class Message < ActiveRecord::Base
  attr_accessible :body, :phone_number

  validates_presence_of :body, :phone_number


end
