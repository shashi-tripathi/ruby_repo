class CreateStudentGrades < ActiveRecord::Migration
  def change
    create_table :student_grades do |t|
      t.string :grade_name

      t.timestamps
    end
  end
end
