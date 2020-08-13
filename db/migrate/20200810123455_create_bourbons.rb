class CreateBourbons < ActiveRecord::Migration[6.0]
  def change
    create_table :bourbons do |t|
      t.string :name
      t.string :distillery
      t.integer :proof
      t.integer :aged
      t.string :flavornotes
      t.string :pairing
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
