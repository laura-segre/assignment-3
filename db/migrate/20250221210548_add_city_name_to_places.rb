class AddCityNameToPlaces < ActiveRecord::Migration[7.1]
  def change
    add_column :places, :city_name, :string
  end
end
