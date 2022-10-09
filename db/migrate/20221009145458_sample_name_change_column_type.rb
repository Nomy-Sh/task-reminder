class SampleNameChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :time, 'time USING CAST(time AS time)'
    change_column :tasks, :date, 'date USING CAST(date AS date)'
  end
end
