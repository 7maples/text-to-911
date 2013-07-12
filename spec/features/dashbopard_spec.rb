require 'spec_helper'

describe "Dashboard" do

  xit 'allows a reply text to be sent to sender' do
    visit messages_path
    fill_in reply, with: "testing testing 123"
    # expect ???????
  end

  xit 'allows pre-made/canned replaies to be sent to sender' do
  end

  xit 'updates the status when a reply is sent' do
    #controller/model
  end

  xit 'auto-sorts displayed messages when status is updated' do
    #JS
  end

  xit 'automatically changes the background colour when status is updated' do
    #JS
  end

  xit 'automatically drops messages from the display and archives them when the
  incident is closed' do
    #controller/model maybe JS too
  end

  xit 'allows dispatchers to attach/link messages to incidents' do
    #contorller/model, create new incidents or seed data?
  end

  xit 'has a secondary dashboard view for first responders that limits the
  messages displayed to their particular incident' do
    #if time allows ha ha
  end

end

