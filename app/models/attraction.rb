class Attraction < ActiveRecord::Base
  acts_as_taggable

  before_save :create_slug

  def create_slug
    self.slug = title.parameterize
  end

  def to_param
    slug
  end
end
