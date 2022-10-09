class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.integer :task_id
      t.string :title
      t.text :desc
      t.string :time
      t.string :day
      t.string :date
      t.string :tags
      t.string :status
      t.string :entity_type
      t.string :priority
      t.string :user_id

      t.timestamps
    end
  end
end
