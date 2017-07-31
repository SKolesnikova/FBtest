class AddImageLastAndFirstNamesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image_uri, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
