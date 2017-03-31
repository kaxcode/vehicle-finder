class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :review_body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
