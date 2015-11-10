class Post < ActiveRecord::Base
	validates :title, presence:true, lenght: { minimum: 5 } #validar minima cantidad de longitud en el titulo
	validates :body, presence:true #Lo mismo pero para el cuerpo del post
end
