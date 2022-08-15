class AddFieldsToExperienceModel < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :grandma_name, :string
    add_column :experiences, :activity_name, :string
    add_column :experiences, :availability, :string
    add_column :experiences, :description, :text
    add_column :experiences, :images, :string
    add_column :experiences, :price, :integer
    add_column :experiences, :latitude, :string
    add_column :experiences, :longitude, :string
  end
end
