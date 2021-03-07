class Book < ApplicationRecord
    validates :title, presence: { message: "must be given please" }
    validates :author, presence: { message: "must be given please" }
end
