class Private < ApplicationRecord
    belongs_to :user
    has_many :receivermessages
    has_many :users, through: :receivermessages
end
