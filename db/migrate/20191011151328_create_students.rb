class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :total_credits
      t.decimal :gpa
      t.integer :advisor_id

      t.timestamps
    end
  end
end
