class CreateFoundAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :found_animals do |t|
      t.string :species
      t.string :sex
      t.date :founddate
      t.string :foundplace
      t.string :contact
      t.text :ps
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
