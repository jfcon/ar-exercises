class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }

  validate :mens_or_womens, on: :create

  def mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "or women's apparel must be 'true'.")
    end
  end
end
