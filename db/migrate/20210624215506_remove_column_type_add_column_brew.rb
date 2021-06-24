class RemoveColumnTypeAddColumnBrew < ActiveRecord::Migration[6.1]
  def change
    remove_column :beers, :type 
    add_column :beers, :brew, :string
  end
end
