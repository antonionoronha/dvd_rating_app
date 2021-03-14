class CreateFilms < ActiveRecord::Migration[6.1]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :launch_year
      t.text :sinopse
      t.string :director
      t.float :rating

      t.timestamps
    end
  end
end
