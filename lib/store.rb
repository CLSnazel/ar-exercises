class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than:-1}
  validate :must_carry_at_least_one_apparel

  def must_carry_at_least_one_apparel
    if(!self.mens_apparel && !self.womens_apparel)
      errors.add(:name, "Must have one of womens_apparel or mens_apparel")
    end
  end
end
