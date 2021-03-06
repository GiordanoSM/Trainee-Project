class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :expire_date
      t.linteger :number
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
