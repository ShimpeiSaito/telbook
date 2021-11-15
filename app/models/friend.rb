class Friend < ApplicationRecord
    validates :name, presence: true, length: { maximum: 10 }

    has_many :telephones, dependent: :destroy
end
