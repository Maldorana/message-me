class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true, length: { maximum: 300 }
    scope :last_messages, -> { order(:created_at).last(50) }
end
