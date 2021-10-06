class AddGradeToStudent < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :grade
  end
end
