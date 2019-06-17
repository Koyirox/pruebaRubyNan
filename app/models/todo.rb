class Todo < ApplicationRecord

has_many :progresations

has_many :users, through: :progresations
end
