class AddCreatedUpdatedAt < ActiveRecord::Migration
  def change
    add_column :clients, :created_at, :timestamp
  end
end
