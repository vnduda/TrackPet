class CreateAnimalEncontrados < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_encontrados do |t|
      t.string :specie
      t.string :sex
      t.date :founddate
      t.string :foundplace
      t.string :contact
      t.text :ps

      t.timestamps
    end
  end
end
