class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.text :notes

      t.timestamps
    end
  end
end
