class AddUrlToProfile < ActiveRecord::Migration[7.0]
  def self.up
    User.reset_column_information
    add_column(:users , :url , :string) unless User.column_names.include?('url')
  end

  def self.down 
    User.reset_column_information 
    remove_column(:users , :url) if User.column_names.include?('url')
  end
end
