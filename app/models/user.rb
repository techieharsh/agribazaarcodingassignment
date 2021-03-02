class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address

  accepts_nested_attributes_for :address

  after_create :assign_default_role

  mount_uploader :avatar, AvatarUploader

  private 
  	def assign_default_role
	    self.add_role(:subscriber) if self.roles.blank?
	  end
end
