class CreateDecisions1s < ActiveRecord::Migration
  def change
    create_table :decisions1s do |t|
      t.string :d3
      t.string :d4

      t.timestamps null: false
    end
  end
end
