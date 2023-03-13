class CreateVinyls < ActiveRecord::Migration[7.0]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.string :band
      t.integer :price

      t.timestamps
    end
  end
end
