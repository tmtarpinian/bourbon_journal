class CreateBourbons < ActiveRecord::Migration[6.0]
  def change
    create_table :bourbons do |t|
      t.string :name
      t.string :distillery
      t.integer :proof
      t.string :flavornotes
      t.string :pairing

      t.timestamps
    end
  end
end
