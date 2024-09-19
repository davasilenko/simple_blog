class User < ApplicationRecord
  has_secure_password
  has_many :comments
  validates :email, presence: true, uniqueness: true

  # Добавляем метод для проверки, является ли пользователь администратором
  def admin?
    admin
  end
end
