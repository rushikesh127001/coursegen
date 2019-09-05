class Dropextrainfos < ActiveRecord::Migration[5.2]
  def change
    drop_table :extra_info
  end
end
