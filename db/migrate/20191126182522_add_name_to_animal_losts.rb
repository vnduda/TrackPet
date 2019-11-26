class AddNameToAnimalLosts < ActiveRecord::Migration[6.0]
  def change
    add_column :animal_losts, :name, :string
  end
end
