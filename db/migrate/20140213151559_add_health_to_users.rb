class AddHealthToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :health, :integer, :default =>"100"
  end
end
