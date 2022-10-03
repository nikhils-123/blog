class AddInPe < ActiveRecord::Migration[7.0]
  def change
    add_column :people , :subdomain , :string
    add_column :people , :message , :string
  end
end
