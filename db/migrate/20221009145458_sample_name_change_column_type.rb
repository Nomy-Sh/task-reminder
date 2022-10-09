class SampleNameChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    #change_column :tasks, :time, 'time USING CAST(time AS time)'
  end
end
