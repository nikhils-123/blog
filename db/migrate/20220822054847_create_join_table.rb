class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change  
    create_join_table :products , :categories do |t|
      t.index :product_id
      t.index :categorie_id
    end
  end
end
