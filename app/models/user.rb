class User < ApplicationRecord

  before_save {self.email  = email.downcase}

  VALID_EMAIL  = /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/i

  validates :name, :email, :age, :height, :weight, presence: true
  validates :age, numericality: {less_than_or_equal_to: 45}
  validates :height, inclusion: { in: 70..220 }
  validates :weight, inclusion: {in: 40..150}
  validates :email,
            length: {maximum: 120},
            format: {with: VALID_EMAIL},
            uniqueness: true
end
