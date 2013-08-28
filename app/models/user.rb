class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :invoices #, dependant: :destroy
	#  has_many :notes , :through :invoices
 # 	has_many :services, :through :invoices

 has_one :bank

 has_many :clients, through: :invoices

 # 	has_many :clients, :through :invoices
end

