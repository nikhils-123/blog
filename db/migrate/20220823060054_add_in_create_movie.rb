class AddInCreateMovie < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :producer
    end
  end
  def change
    change_column :movies , :budget , :string
  end
end
