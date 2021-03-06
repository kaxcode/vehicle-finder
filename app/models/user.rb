class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  SELLERS = [ "", "Dealer", "Broker", "Private Party" ]

  has_many :listings
  has_many :reviews
end
