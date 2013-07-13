class Reply < ActiveRecord::Base
  attr_accessible :body, :message_id

  belongs_to :message

  validates_presence_of :body, :message_id
end
