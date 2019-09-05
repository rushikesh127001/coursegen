class CreateExtrainfos < ActiveRecord::Migration[5.2]
  def change
    create_table :extrainfos do |t|
      
      t.integer :semester
      t.string :section
      t.string :subject
      t.string :modulecoordinator1
      t.string :modulecoordinator2
      t.timestamps

    end
  end
end


