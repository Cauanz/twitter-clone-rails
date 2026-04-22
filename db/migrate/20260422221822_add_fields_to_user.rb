class AddFieldsToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :string, :string
    add_column :users, :bio, :string
    add_column :users, :text, :string
  end
end
