class ChangeAmountNameToAmountInCents < ActiveRecord::Migration[5.0]
  def change
    rename_column :bills, :amount, :amount_in_cents
  end
end
