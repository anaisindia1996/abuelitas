class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.time :start_time
      t.time :end_time
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
