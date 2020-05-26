class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toilet
  belongs_to :host, class_name: "User",
                        foreign_key: "host_id"
end
