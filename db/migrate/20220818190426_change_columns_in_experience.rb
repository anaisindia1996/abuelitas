class ChangeColumnsInExperience < ActiveRecord::Migration[7.0]
  def change
    remove_column(:experiences, :latitude)
    remove_column(:experiences, :longitude)
    add_column(:experiences, :longitude, :float)
    add_column(:experiences, :latitude, :float)
    remove_column(:experiences, :location)
    add_column(:experiences, :address, :string)
  end
end
