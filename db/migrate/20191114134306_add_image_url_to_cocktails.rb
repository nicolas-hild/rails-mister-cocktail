class AddImageUrlToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :imageUrl, :string
  end
end
