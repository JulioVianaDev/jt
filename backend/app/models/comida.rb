class Comida < ApplicationRecord
  has_many :pedidos, dependent: :destroy
  validates :type ,presence: true
  validates :type, uniqueness: true
  validates :type,length: {minimum: 0, maximum: 45}

end 
