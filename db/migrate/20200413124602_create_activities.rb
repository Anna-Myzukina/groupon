class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :hours
      t.references :author, index: true

      t.timestamps
    end
    add_foreign_key :activities, :users, column: :author_id
    add_index :activities, [:user_id, :created_at]
  end
end
