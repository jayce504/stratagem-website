class AddCreatedUpdatedAt < ActiveRecord::Migration
  def change
    add_column :clients, :created_at
  end
end
