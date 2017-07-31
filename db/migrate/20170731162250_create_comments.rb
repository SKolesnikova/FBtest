class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, nil: false
      t.string :body, nil: false

      t.timestamps
    end
  end
end
