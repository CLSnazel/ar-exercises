class Employee < ActiveRecord::Base
  belongs_to :store
  validate :first_name, :last_name, :store, :reasonable_pay

  def reasonable_pay
    if self.hourly_rate >= 40 && self.hourly_rate <= 200
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end
end
