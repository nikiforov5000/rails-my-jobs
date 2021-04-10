class RenameCoutryToCountry < ActiveRecord::Migration[6.0]
  def change
    rename_column :jobs, :coutry, :country
  end
end
