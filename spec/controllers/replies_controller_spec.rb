require 'spec_helper'

describe RepliesController do

  describe 'POST #create' do

    it 'saves the reply in the db' do
      expect{
        post :create, reply: attributes_for(:reply)
        }.to change(Reply, :count).by(1)
    end
  end
end
