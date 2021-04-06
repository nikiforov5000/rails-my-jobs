class RemoveCompanyFromCoverLetter < ActiveRecord::Migration[6.0]
  def change
    remove_column :cover_letters, :company_name
  end
end
