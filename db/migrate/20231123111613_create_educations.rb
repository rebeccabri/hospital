class CreateEducations < ActiveRecord::Migration[7.1]
  def change
    create_table :educations do |t|
      t.string :university
      t.string :degree
      t.integer :score
      t.bigint :doctorsid
      t.timestamps
    end
  end
end
