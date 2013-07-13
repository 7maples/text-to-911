class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :message_id
      t.string :body
    end
  end
end
