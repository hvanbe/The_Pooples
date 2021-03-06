class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :toilets, dependent: :destroy
  has_many :bookings, dependent: :destroy
  
  def my_toilets_bookings
    bookings = self.toilets.map do |toilet|
      toilet.bookings
    end
    bookings.flatten
  end
end
