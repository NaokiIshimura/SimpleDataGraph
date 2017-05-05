class CreateGraphData < ActiveRecord::Migration[5.0]
  def change
    create_table :graph_data do |t|
      t.integer :user_id
      t.string :data1
      t.string :data2
      t.string :data3

      t.timestamps
    end
  end
end
