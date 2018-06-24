class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :city_population
      t.references :province, foreign_key: true

      t.timestamps
    end
  end
end
