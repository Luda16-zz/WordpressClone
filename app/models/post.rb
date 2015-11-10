class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence:true, length: { minimum: 5 } #validar minima cantidad de longitud en el titulo
	validates :body, presence:true #Lo mismo pero para el cuerpo del post
end
