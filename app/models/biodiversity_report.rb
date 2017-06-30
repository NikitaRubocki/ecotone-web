class BiodiversityReport < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :plot

  has_one :soil_sample
  accepts_nested_attributes_for :soil_sample, allow_destroy: true, reject_if: :all_blank

  has_many :plant_samples
  accepts_nested_attributes_for :plant_samples, allow_destroy: true, reject_if: :all_blank

  has_attached_file :photo, default_url: "missing.png", styles: { default: "400x400#", thumbnail: "50x50#" }
  validates_attachment_content_type :photo, content_type: /\Aimage/

  validates_presence_of :measured_on
  validates_presence_of :measured_at
  validates_numericality_of :temperature, allow_nil: true
  validates_numericality_of :biomass_estimate, greater_than: 0, allow_nil: true
  validates_numericality_of :species_richness, only_integer: true, greater_than: 0

  paginates_per 10

  def to_s
    "Biodiversity Report #{id}"
  end

  def byline
    "by #{author} on #{measured_on.to_s(:long)} at #{measured_at.to_s(:ampm)}"
  end

  def editable_by?(user)
    user.admin? || user == author
  end

end
