class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|

      t.timestamps
    end
  end
end
