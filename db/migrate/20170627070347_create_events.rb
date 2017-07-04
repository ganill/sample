class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date   :date
      t.text   :description
      t.text   :address      
      t.timestamps
    end
  end
end
