class Message < ActiveRecord::Base
  has_one :replies

  accepts_nested_attributes_for :replies

  attr_accessible :body, :phone_number, :status

  validates_presence_of :body, :phone_number


end
