class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :sex
      t.string :description
      t.string :last_place
      t.references :user, foreign_key: true
      t.string :picture_url
      t.boolean :owner
      t.string :state
      t.string :specie
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
