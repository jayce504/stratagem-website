class CreateClientCategories < ActiveRecord::Migration
  def change
    create_table :client_categories do |t|
      t.integer :client_id
      t.integer :category_id
    end
  end
end
