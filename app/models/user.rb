class User < ApplicationRecord
  has_many :microposts

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  REGEX_PATTERN = /\A[a-z0-9+\-_.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: REGEX_PATTERN },
                    uniqueness: true, length: { minimum: 6, maximum: 30 }
end
