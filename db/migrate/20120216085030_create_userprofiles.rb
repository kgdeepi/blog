class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.integer :user_id
      t.string :name
      t.string :dob
      t.string :biodata

      t.timestamps
    end
  end
end
