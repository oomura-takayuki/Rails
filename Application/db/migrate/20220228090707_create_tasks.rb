class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_contents ,null: false
      t.datetime :created_date , null: false
      t.datetime :updated_date , null: false
    end
  end
end