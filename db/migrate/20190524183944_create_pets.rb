class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :age
      t.string :gender
      t.integer :adoption_id
      t.timestamps
    end
  end
end
