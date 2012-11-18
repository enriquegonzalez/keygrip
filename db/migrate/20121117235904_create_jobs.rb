class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :film_id
      t.date :audition_start_date
      t.date :audition_end_date

      t.timestamps
    end
  end
end
