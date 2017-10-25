class Paper < ActiveRecord::Base
  belongs_to :author
  has_many :authors

  validates :title, :venue, presence: true
  validates :year, numericality: true, presence:true
end
