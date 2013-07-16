require 'spec_helper'

describe RepliesController do

  describe 'POST #create' do


    it 'saves the reply in the db' do
      Reply.any_instance.stub(:dispatch)

      message = Message.create(body: "Help me",
                                phone_number: "555-867-5309",
                                status: "received")

      expect{
        post :create, reply: {body: "don't move we're sending help", message_id: message.id}
        }.to change(Reply, :count).by(1)
    end
  end
end
