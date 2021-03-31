class AddStateToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :state, :string
  end
end
