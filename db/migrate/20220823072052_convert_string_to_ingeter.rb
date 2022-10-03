class ConvertStringToIngeter < ActiveRecord::Migration[7.0]
  def up
    change_column :movies , :budget , :string
  end
  def down
    change_column :movies , :budget , :integer
  end
end
