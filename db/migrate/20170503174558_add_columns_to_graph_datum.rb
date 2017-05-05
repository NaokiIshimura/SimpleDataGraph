class AddColumnsToGraphDatum < ActiveRecord::Migration[5.0]
  def change
    add_column :graph_data, :data4, :string
    add_column :graph_data, :data5, :string
  end
end
