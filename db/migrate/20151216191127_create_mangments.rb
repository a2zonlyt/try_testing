class CreateMangments < ActiveRecord::Migration
  def change
    create_table :mangments do |t|
      t.string :name
      t.text :description
      t.integer :age

      t.timestamps
    end
  end
end
