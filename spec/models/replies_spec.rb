require 'spec_helper'

describe "New Replies" do
  let(:reply) { build(:reply, body: "Stop drop and roll", message_id: 2) }

  it "has a valid factory" do
    expect(reply).to be_valid
  end

  it 'is invalid without a body' do
    reply.body = nil
    expect(reply).to have(1).errors_on(:body)
  end

  it 'is invalid without a reply_id' do
    reply.message_id = nil
    expect(reply).to have(1).errors_on(:message_id)
  end
end
