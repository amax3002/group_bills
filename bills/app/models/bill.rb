class Bill < ApplicationRecord
  belongs_to :user

  def amount=(input)
    self.amount_in_cents = input.to_f * 100
  end

  def amount
    self.amount_in_cents.to_f / 100.0
  end
end
