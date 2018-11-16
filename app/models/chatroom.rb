class Chatroom < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :messages, dependent: :destroy
    validates :users, uniqueness: true
    validates :name, case_sensitive: false
end
