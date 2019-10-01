class FixUpColumns < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:recipe :name, false)
    change_column_null(:recipe :prep_time, false)
    change_column(:recipe :cook_time, :integer, :default =>0)
    change_column_null(:recipe :cook_time, false)
    change_column_null(:recipe :serves, false)
    change_column_null(:recipe :ingredients, false)
    change_column_null(:recipe :method, false)
    change_column_null(:recipe :category, false)
    change_column(:recipe :featured, :boolean, :default =>false)

    change_column_null(:category :name, false)
    change_column_null(:category :collection, false)

    change_column_null(:collection :name, false)

  end
end
