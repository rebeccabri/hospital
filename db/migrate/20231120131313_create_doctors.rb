class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :lastname
      t.string :title
      t.boolean :availability
      t.integer :experience
      t.string :specialty
      t.timestamps
    end
  end
end
