class RemoveColumnTypeAddColumnBrew < ActiveRecord::Migration[6.1]
  def change
    rename_column :beers, :type, :brew
  end
end
