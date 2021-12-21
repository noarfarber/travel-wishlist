class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
