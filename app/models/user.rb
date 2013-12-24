class User < ActiveRecord::Base
  attr_accessor :name, :email

  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true
end