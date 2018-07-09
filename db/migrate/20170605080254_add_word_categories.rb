class AddWordCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :word_categories do |f|
      f.string :name, null: false
    end
  end
end
