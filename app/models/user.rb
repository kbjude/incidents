class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_confirmation_of :password
  validates_uniqueness_of :email
  validates_presence_of :name
  validates_presence_of :role

  def admin?
    role == 'Admin' || 'admin'
  end

  def user?
    role == 'User'
  end

end
