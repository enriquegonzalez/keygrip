class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.text :bio
      t.string :location
      t.string :accredidation
      t.text :investments
      t.string :first_name
      t.string :last_name
      t.integer :budget_size

      t.timestamps
    end
  end
end
