class Telephone < ApplicationRecord
    validates :number, presence: true, 
        format: { with: /\A[0-9-()]+\z/, allow_blank: true, message: :invalid_telephone_number},
        length: { minimum: 8, maximum: 20 }, uniqueness: true

    belongs_to :friend
end
