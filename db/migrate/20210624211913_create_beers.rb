class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :brand
      t.string :type
      t.string :country

      t.timestamps
    end
  end
end
