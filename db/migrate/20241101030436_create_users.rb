class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email,           null: false, index: { unique: true }
      t.string :password_digest, null: false

      t.boolean :verified, null: false, default: false

      t.timestamps
    end
  end
end
