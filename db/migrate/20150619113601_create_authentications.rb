class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.text :uid
      t.text :provider
      t.integer :user_id
      t.text :access

      t.timestamps null: false
    end
  end
end
