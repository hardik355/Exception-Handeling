class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :sub_title
      t.string :desc
      t.float :price
      t.string :tag

      t.timestamps
    end
  end
end
