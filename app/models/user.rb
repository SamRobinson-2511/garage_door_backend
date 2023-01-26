class User < ApplicationRecord
    has_many :garages 
    has_many :bicycles, through: :garages
    has_many :inventories
    has_many :parts, through: :inventories

    has_secure_password

    post '/login', to: 'users#login'




    #password require confirmation - see module for this
end
