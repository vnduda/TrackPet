class CreateAnimalLosts < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_losts do |t|
      t.string :specie
      t.string :sex
      t.date :lostdate
      t.string :lostplace
      t.string :contact
      t.text :ps

      t.timestamps
    end
  end
end
