class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :text,               null: false
      t.references :counseling
      t.references :user
      t.timestamps
    end
  end
end