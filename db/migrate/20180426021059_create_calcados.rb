class CreateCalcados < ActiveRecord::Migration[5.1]
  def change
    create_table :calcados do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
