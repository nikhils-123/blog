class AddMethod < ActiveRecord::Migration[7.0]
  def change
    add_column(:users , :picture , :binary , limit: 2.megabytes)
    add_column(:users, :skills, :text, array: true)

    create_table (:suppliers) do |t|
      t.column :name , :string , limit: 60
      t.column :surname , :string 
      t.column :ages , :integer
    end

    remove_column :suppliers , :surname , :string , if_exists: true
    rename_column :suppliers , :ages , :age

  end
end
