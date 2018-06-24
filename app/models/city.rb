class City < ApplicationRecord
  belongs_to :province

  validates :name, presence: { message: 'es un dato obligatorio.' }
  validates :name, length: { in: 2..250, message: 'debe ser entre 2 y 250 caracteres' }
  validates :name, uniqueness: { message: 'ya está siendo utilizado.', case_sensitive: false }

end
