class AddNoteToCoverLetter < ActiveRecord::Migration[6.0]
  def change
    add_column :cover_letters, :note, :text
  end
end
