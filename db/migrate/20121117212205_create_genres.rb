class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :film_genre

      t.timestamps
    end
  end
end
