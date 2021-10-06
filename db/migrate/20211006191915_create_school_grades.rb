class CreateSchoolGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :school_grades do |t|
        t.integer :school_id
        t.integer :grade_id
    end
  end
end
