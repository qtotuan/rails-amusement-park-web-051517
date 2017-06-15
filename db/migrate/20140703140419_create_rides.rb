class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.references :attraction
      t.references :user

      t.timestamp
    end
  end
end
