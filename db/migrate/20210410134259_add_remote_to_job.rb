class AddRemoteToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :remote, :boolean
  end
end
