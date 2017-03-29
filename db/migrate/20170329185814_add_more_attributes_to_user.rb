class AddMoreAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :seller, :string
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :string
    add_column :users, :website, :string
  end
end
