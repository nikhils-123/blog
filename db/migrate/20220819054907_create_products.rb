class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    suppress_messages do 
    create_table :products , option: "ENGINE=BLACKHOLE" do |t|
      t.string :name , null: false
      t.string :quality

      t.timestamps
    end
  end

  say "Created a table by Nikhil"
  suppress_messages {add_index :products , :name}
  say "and an index" , true

  say_with_time 'Waiting for a While' do 
    sleep 10
    250
  end
end

end
