class AddColToComment < ActiveRecord::Migration
  def change
add_column :comments, :email, :string 
add_column :comments, :body, :text
  end
end
