class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.boolean   :published, :default=> false
      t.text   :description
      t.integer :editor_id
      t.timestamps
    end
  end
end
