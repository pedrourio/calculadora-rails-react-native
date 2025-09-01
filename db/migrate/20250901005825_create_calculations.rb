class CreateCalculations < ActiveRecord::Migration[8.0]
  def change
    create_table :calculations do |t|
      t.string :expression
      t.string :result

      t.timestamps
    end
  end
end
