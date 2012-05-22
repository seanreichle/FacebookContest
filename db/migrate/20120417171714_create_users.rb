class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.text :comment
      t.integer :image_id
      t.timestamps
    end
  end
end
