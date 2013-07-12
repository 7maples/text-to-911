require 'spec_helper'

describe MessagesController do

  describe 'POST #create' do

    it 'saves the received message in the db' do
      expect{
        post :create, message: attributes_for(:message)
        }.to change(Message, :count).by(1)
    end
  end
end
