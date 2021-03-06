class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :type
      t.decimal :amount, precision: 9, scale: 6

      t.timestamps
    end
  end
end
