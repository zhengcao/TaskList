class AddCompleteStatusColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :is_complete, :boolean
  end
end
