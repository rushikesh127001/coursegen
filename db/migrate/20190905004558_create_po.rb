class CreatePo < ActiveRecord::Migration[5.2]
  def change
    create_table :pos do |t|
      t.integer :po1
      t.integer :po2
      t.integer :po3
      t.integer :po4
      t.integer :po5
      t.integer :po6
      t.integer :po7
      t.integer :po8
      t.integer :po9
      t.integer :po10
      t.integer :po11
      t.integer :po12
      t.integer :pso1
      t.integer :pso2
      t.timestamps
    end
  end
end
