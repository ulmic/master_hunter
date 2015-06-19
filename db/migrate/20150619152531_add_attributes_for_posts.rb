class AddAttributesForPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pet_type, :text
    add_column :posts, :sterilization, :text
    add_column :posts, :inoculation, :text
    add_column :posts, :phone, :text
    add_column :posts, :sex, :text
  end
end
