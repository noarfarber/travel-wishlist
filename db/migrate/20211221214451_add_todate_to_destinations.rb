class AddTodateToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :todate, :date
  end
end
