class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :type
      t.string :category
      t.string :final_date
      t.float :min_value
      t.float :max_value
      t.float :tax
      t.float :qnt_raised
      t.float :goal
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
