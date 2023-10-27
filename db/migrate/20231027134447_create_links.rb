class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :url, null: false, default: ''
      t.text :description, null: false, default: ''

      t.timestamps
    end
  end
end
