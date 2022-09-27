class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :category
      t.date :birth
      t.boolean :adopted, default: false
      t.string :owner, default: nil
      t.datetime :adoption_time, default: nil

      t.timestamps
    end
  end
end
