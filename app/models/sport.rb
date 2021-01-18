class Sport < ApplicationRecord

  validates :name, presence: true, inclusion:{ in: %w( football mountaineering riding_bike Chess )}

  # Relationship one_to_many for tables
  belongs_to :user

end
