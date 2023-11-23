class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.string :reason
      t.date :date
      t.boolean :urgent
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
