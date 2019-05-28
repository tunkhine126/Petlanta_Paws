class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.string :breed
      t.string :age
      t.string :gender
      t.string :color
      t.string :nick_name
      t.integer :adoption_id
      t.string :image_url
      t.timestamps
    end
  end
end
