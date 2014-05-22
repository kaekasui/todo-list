class RenameCreatedByToTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :created_by, :user_id
  end
end
