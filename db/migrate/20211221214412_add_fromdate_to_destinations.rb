class AddFromdateToDestinations < ActiveRecord::Migration[7.0]
  def change
    add_column :destinations, :fromdate, :date
  end
end
