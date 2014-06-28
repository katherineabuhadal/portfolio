class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title, null: false
      t.text :description
      t.string :url
      t.string :trello

      t.timestamps
    end
  end
end
