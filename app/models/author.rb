class Author < ActiveRecord::Base
  has_many :papers
  validates :last_name, presence: true
  def name
    "#{first_name} #{last_name}"
  end
end
