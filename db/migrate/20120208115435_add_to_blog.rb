class AddToBlog < ActiveRecord::Migration
  def up
  add_column :articles, :except, :string
  add_column :articles, :loaction, :string
  end

  def down
 remove_column :articles, :except
  remove_column :articles, :loaction
  end
end
