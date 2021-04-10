class AddCountryToJob < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :coutry, :string
  end
end
