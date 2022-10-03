class AddInPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people , :start_date , :DATE
    add_column :people , :end_date , :DATE
  end
end
