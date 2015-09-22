class Post < ActiveRecord::Base
  has_many :comentarios
  validates_presence_of :titulo, message: " - deve ser preenchido"
  validates_presence_of :texto, message: " - deve ser preenchido"

  def to_param
    "#{id} #{titulo}".parameterize
  end
end
