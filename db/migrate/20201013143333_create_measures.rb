class CreateMeasures < ActiveRecord::Migration[6.0]
  def change
    create_table :measures do |t|
      t.integer :quantity
      t.boolean :optionnal
      t.references :ingredient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
