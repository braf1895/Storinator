class CreateGrades < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :course_number
      t.string :grade

      t.timestamps
    end
  end
end
