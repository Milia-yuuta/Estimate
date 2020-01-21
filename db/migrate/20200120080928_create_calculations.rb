class CreateCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :calculations do |t|
      t.text :title
      t.string :charge
      t.string :weight
      t.string :material_cost
      t.string :postage
      t.string :administration_cost
      t.string :total_cost
      t.timestamps
    end
  end
end
