class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string :d1
      t.string :d2

      t.timestamps null: false
    end
  end
end
