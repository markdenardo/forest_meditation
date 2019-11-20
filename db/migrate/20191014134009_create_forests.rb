class CreateForests < ActiveRecord::Migration[6.0]
  def change
    create_table :forests do |t|
      t.integer :visitor_id
      t.integer :animal_id
      t.string :forest

      t.timestamps
    end
  end
end
