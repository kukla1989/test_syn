class AddWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :name, null: false
      t.string :definition, null: false
      t.integer :total_rating, default: 5
      t.integer :total_rates, default: 1

      t.references :word_category, null: false
    end
  end
end
