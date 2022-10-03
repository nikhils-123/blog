class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :casts, default: [].to_yaml, array:true
      t.string :director
      t.integer :budget
      t.timestamps
    end
  end
end

