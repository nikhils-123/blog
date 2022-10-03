class ExampleMigration < ActiveRecord::Migration[7.0]
  def up
    
    create_table :distributors do |t|
      t.string :zipcode
    end

    add_column :users, :home_page_url, :string
    rename_column :users, :address, :email_address
  end

  def down
    rename_column :users, :email_address, :address
    remove_column :users, :home_page_url

    drop_table :distributors
  end
end
