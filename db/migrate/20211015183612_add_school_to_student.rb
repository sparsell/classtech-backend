class AddSchoolToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :school, :string
  end
end
