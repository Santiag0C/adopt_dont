class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :image
      t.string :name
      t.integer :approximate_age
      t.string :sex
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
