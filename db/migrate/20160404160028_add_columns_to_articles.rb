class AddColumnsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
    add_column :articles, :body, :string
    add_column :articles, :author, :string
    add_column :articles, :magazine_id, :integer
  end
end
