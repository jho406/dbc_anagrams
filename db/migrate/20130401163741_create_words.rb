class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.string :letters
    end
    add_index :words, :letters
  end
end
