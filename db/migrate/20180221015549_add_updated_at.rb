class AddUpdatedAt < ActiveRecord::Migration
  def change
    add_column :clients, :updated_at, :time_stamp
  end
end
