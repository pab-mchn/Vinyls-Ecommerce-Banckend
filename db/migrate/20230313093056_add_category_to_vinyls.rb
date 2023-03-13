class AddCategoryToVinyls < ActiveRecord::Migration[7.0]
  def change
    add_reference :vinyls, :category, null: false, foreign_key: true
  end
end
