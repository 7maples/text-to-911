require 'spec_helper'

describe "New Messages" do
  context "text message" do
    let(:message) { build(:message, body: "Help me",
                                    phone_number: "555-867-5309",
                                    status: "received") }

    it "has a valid factory" do
      expect(message).to be_valid
    end

    it 'is invalid without a body' do
      message.body = nil
      expect(message).to have(1).errors_on(:body)
    end

    it 'is invalid without a phone_number' do
      message.phone_number = nil
      expect(message).to have(1).errors_on(:phone_number)
    end
  end
end
