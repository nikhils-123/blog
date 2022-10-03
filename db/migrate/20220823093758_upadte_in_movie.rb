class UpadteInMovie < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :cast, array:true
      t.string :director
      t.string :budget
      t.boolean :terms_of_service, default: false
    end
  end
end
