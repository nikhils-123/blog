class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.boolean :confirmation , default: false
      t.timestamps
    end
  end
end
