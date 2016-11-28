class ChangeDecimalToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :bills, :amount, :integer
  end
end
