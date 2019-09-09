class AddColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :courses,:program,:string
    
  end
end
