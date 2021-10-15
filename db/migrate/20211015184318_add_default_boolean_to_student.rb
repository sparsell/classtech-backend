class AddDefaultBooleanToStudent < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :has_phone, :boolean, default: false
    change_column :students, :has_other_device, :boolean, default: false
  end
end
