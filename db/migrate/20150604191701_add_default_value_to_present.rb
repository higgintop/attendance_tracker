class AddDefaultValueToPresent < ActiveRecord::Migration
  def change
    change_column_default(:attendances, :present, true)
  end
end
