class AddCityToPost < ActiveRecord::Migration
  def change
    add_column :posts, :city, :text
  end
end
