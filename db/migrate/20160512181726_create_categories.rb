class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.text :desc
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
