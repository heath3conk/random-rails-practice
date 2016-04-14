class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :name
      t.string :animal_type
      t.integer :age
      t.string :image

      t.timestamps null: false
    end
  end
end
