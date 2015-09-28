class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #has_many :order_items
  #如果沒用到的就直接關掉
  devise :database_authenticatable, :registerable
         #:recoverable, :rememberable, :trackable, :validatable
end
