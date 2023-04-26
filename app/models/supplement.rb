class Supplement < ApplicationRecord
    has_and_belongs_to_many :gymplans
end