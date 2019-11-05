class CreateLostAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :lost_animals do |t|
      t.string :species
      t.string :sex
      t.date :lostdate
      t.string :lostplace
      t.string :contact
      t.text :ps
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
