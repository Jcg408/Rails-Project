class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :datetime
      t.integer :service_id
      t.integer :staff_id
      t.integer :client_id

      t.timestamps
    end
  end
end
