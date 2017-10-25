class Paper < ActiveRecord::Base
  validates :title, :venue, presence: true
  validates :year, numericality: true, presence:true
end
