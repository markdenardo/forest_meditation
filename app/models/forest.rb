class Forest < ApplicationRecord
  belongs_to :visitor
  belongs_to :animal

  def forest_name
    "#{self.forest}"
  end

end
