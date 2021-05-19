class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.text       :memo
      t.datetime   :deadline
      t.integer    :task_id

      t.timestamps
    end
  end
end
