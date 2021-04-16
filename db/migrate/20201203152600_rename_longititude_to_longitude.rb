class RenameLongititudeToLongitude < ActiveRecord::Migration[6.0]
  def change
	rename_column :incidents, :longtitude, :longitude
  end
end
