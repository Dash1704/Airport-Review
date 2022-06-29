class Airline < ApplicationRecord
  has_many :reviews

  #callback to set the slug for the airline before we create in our db
  before_create :slugify

  #takes the airlines name and coverts to a url safe 'slug' and sets it as the slug value
  def slugify
    self.slug = name.parameterize
  end

  def avg_score
    reviews.average(:score).round(2).to_f
  end
end
