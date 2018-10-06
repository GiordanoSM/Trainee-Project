class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :postal_code
      t.string :country
      t.string :state
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
