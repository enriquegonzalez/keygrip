class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.integer :budget
      t.string :location
      t.string :trailer
      t.text :synopsis
      t.integer :genre_id

      t.timestamps
    end
  end
end
