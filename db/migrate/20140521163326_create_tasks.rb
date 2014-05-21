class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :created_by
      t.timestamp :due_at

      t.timestamps
    end
  end
end
