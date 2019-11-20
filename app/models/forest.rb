class Forest < ApplicationRecord
  belongs_to :visitor
  belongs_to :animal
end
