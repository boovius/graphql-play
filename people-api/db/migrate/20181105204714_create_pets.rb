class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.references :person, index: true, foreign_key: true
      t.string :type

      t.timestamps null: false
    end
  end
end
