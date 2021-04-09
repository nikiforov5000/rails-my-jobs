class AddEmailToCoverLetter < ActiveRecord::Migration[6.0]
  def change
    add_column :cover_letters, :email, :string 
  end
end
