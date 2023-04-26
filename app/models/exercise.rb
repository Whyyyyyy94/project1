class Exercise < ApplicationRecord
    belongs_to :gymplan, :optional => true
end

