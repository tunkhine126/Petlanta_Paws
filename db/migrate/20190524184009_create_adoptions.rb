class CreateAdoptions < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptions do |t|
      t.integer :user_id
      t.integer :pet_id
      t.string :open_or_closed
      t.timestamps
    end
  end
end
