class Telephone < ApplicationRecord
    belongs_to :friend, class_name: "friend", foreign_key: "friend_id"

end
