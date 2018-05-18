class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
    	t.string :username
    	t.integer :row_n
    	t.integer	:col_n
    	t.string	:color
      t.timestamps
    end
  end
end
