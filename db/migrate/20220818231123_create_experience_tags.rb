class CreateExperienceTags < ActiveRecord::Migration[7.0]
  def change
    create_table :experience_tags do |t|
      t.references :experience, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
