class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :task, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
