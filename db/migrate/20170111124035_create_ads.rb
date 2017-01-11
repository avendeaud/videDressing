class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :description
      t.string :price
      t.string :address

      t.timestamps
    end
  end
end
