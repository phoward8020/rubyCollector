class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name_first
      t.string :name_last
      t.string :name_alias
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
