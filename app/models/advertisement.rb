class Advertisement < ApplicationRecord
    validates :copy, presence: true
end
