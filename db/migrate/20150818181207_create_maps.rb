class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :to
      t.string :from
      t.string :travel_mode
      t.string :measurement
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
