class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_owner, :boolean, default: false
    add_column :users, :is_disable, :boolean, default: false
    add_column :users, :settings, :jsonb, null: false, default: "{}"

    add_index  :users, :settings, using: :gin
  end
end

