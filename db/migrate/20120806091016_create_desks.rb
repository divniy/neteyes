class CreateDesks < ActiveRecord::Migration
  def change
    create_table :desks do |t|
      t.string :title
      t.text :options
      t.string :state
      t.references :user

      t.timestamps
    end
    add_index :desks, :user_id
  end
end
