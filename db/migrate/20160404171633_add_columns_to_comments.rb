class AddColumnsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :commenter, :string
    add_column :comments, :comment, :string
    add_column :comments, :article_id, :integer
  end
end
