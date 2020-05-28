class Booking < ApplicationRecord
  before_save :set_status
  before_save :set_price
  belongs_to :user
  belongs_to :toilet

  private

  def set_status
    self.status ||= "pending"
  end

  def set_price
    self.price ||= "unpaid"
  end
end
