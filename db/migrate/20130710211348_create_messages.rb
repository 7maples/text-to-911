class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.string :photo_url
      t.string :video_url
      t.string :phone_number,  :null => false
      t.string :status,        :default => "received" #replied_to, closed
      t.datetime :created_at,  :null => false
      t.datetime :updated_at,  :null => false
    end
  end
end
