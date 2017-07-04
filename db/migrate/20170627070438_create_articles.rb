class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :book_name
      t.date   :published
      t.text   :description
      t.string   :author 
      t.timestamps
    end
  end
end
