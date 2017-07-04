class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :pic, styles: { medium: "300x300>", thumb: "30x20>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
  
  has_one :user
  has_one :user_address
  accepts_nested_attributes_for :user_address, reject_if: :all_blank, allow_destroy: true
  
 
end
