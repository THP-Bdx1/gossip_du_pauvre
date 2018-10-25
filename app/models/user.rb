class User < ApplicationRecord
    has_many :privates
    has_many :receivermessages
    has_and_belongs_to_many :privates, through: :receivermessages
end
