class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }

  validate :mens_or_womens, on: :create

  def mens_or_womens
    unless mens_apparel.present? || womens_apparel.present?
      errors.add("Men's or women's apparel", "must be 'true'.")
    end
  end
end
