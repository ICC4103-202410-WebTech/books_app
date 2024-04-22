class CreateBookTable < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.integer :price
      t.date :publish_date
      t.timestamps
    end
  end
end
