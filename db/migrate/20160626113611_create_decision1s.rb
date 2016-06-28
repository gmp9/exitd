class CreateDecision1s < ActiveRecord::Migration
  def change
    create_table :decision1s do |t|
      t.string :d5
      t.string :d6
      t.references :decision, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
