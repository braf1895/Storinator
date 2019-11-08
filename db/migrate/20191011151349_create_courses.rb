class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_id
      t.string :course_Description
      t.integer :number_credits

      t.timestamps
    end
  end
end
