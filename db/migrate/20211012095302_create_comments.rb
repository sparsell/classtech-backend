class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
    
      t.timestamps
      t.belongs_to :student, index: true, foreign_key: true
      t.text :screen_time_comment
    end
  end
end
