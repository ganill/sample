class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.text    :description
      t.belongs_to :user
      t.timestamps
    end
  end
end
