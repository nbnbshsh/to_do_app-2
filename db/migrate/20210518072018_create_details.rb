class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.text       :memo
      t.datetime   :deadline

      t.timestamps
    end
  end
end
