class AddinPeop < ActiveRecord::Migration[7.0]
  def change
    add_column :people , :password , :integer
    add_column :people , :registration_number , :integer
    add_column :people , :bio , :string
  end
end
