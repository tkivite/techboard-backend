class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :mobile
      t.string :gender
      t.string :idnumber
      t.boolean :active_status
      t.string :password_digest
      t.string :password
      t.text :role

      t.timestamps
    end
  end
end
