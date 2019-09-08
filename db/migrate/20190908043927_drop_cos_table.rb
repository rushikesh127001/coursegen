class DropCosTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :cos
    drop_table :pos
    drop_table :extrainfos
  end
end
