class CreateCoverLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :cover_letters do |t|
      t.string :company_name
      t.string :staff_name
      t.string :platform
      t.text :body
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
