class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_table('supps' , 'suppliers')
  end
end
