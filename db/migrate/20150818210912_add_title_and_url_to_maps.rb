class AddTitleAndUrlToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :title, :string
    add_column :maps, :url, :string
  end
end
