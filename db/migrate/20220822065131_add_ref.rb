class AddRef < ActiveRecord::Migration[7.0]
  def change
    add_reference :users , :role , index: false
    #add_belongs_to :taggings , :taggable , polymorphic: true
    #add_reference :users , :role , foreign_key: true
    #remove_reference :products , :users , foreign_key:true , index: false
  end
end
