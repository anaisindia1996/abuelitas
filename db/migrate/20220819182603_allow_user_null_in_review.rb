class AllowUserNullInReview < ActiveRecord::Migration[7.0]
  def change
    remove_column(:reviews, :user_id)
    add_reference :reviews, :user, foreign_key: true
  end
end
