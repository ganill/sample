class ChangeColumnsArticle < ActiveRecord::Migration[5.0]
  def change
  	rename_column :articles, :book_name, :name
  	rename_column :articles, :author, :editor_id
	  remove_column :articles, :editor_id
  	add_column :articles, :editor_id, :integer
  	change_column :articles, :published, :boolean, :default=> false


  end
end
