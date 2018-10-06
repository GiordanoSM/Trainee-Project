class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :type
      t.string :code
      t.float :value
      t.string :status
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
