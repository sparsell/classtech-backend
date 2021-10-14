class AddCommentToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :screen_time, :string
  end
end
