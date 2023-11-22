class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :lastname
      t.string :insurance
      t.boolean :cured
      t.timestamps
    end
  end
end
