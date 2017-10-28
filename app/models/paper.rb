class Paper < ActiveRecord::Base
  belongs_to :author
  has_many :authors
  scope :year, ->(year) {where('year = ?', year)}

  validates :title, :venue, presence: true
  validates :year, numericality: true, presence:true
end
