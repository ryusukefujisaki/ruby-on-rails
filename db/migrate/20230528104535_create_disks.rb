class CreateDisks < ActiveRecord::Migration[7.0]
  def change
    create_table :disks do |t|
      t.string :type, null: false
      t.string :name, null: false
      t.references :band, null: false, foreign_key: true
      t.date :released_on

      t.timestamps
    end
  end
end
