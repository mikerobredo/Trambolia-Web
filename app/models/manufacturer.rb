class Manufacturer < ActiveRecord::Base
    has_many :phones
    validates_presence_of :name, :message => 'No ha introducido ningun nombre.'
    validates_uniqueness_of :name, :message => 'El nombre introducido ya existe.'
    validates_length_of :name, :in => 2..255, :message => 'El nombre introducido esta fuera de rango (0 - 255).'
end