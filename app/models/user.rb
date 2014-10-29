class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  self.inheritance_column = :type

  def full_name
    "#{first_name } #{last_name}"
  end

  def admin?
    Admin.all.include?(self)
  end
end
