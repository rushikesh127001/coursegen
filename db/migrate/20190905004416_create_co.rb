class CreateCo < ActiveRecord::Migration[5.2]
  def change
    create_table :cos do |t|
      t.string :co1
      t.string :co2
      t.string :co3
      t.string :co4
      t.string :co5
      t.timestamps
    end
  end
end
