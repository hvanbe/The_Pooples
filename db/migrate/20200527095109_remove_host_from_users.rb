class RemoveHostFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :host, :boolean
  end
end
