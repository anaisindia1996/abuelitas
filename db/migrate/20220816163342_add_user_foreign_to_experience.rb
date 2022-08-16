class AddUserForeignToExperience < ActiveRecord::Migration[7.0]
  def change
    add_reference :experiences, :user, null: false, foreign_key: true
  end
end
