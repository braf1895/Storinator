class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uName
      t.string :fName
      t.string :lName
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
