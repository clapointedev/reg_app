class User < ActiveRecord::Base
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :state, presence: true, format: { with: /\A[a-zA-Z\s]*\z/ }
  validates :zip, presence: true, format: { with: /\A\d{5}(-\d{4})?\z/ }
  validates :country, presence: true, format: { with: /\AUS\z/ }
  
end
