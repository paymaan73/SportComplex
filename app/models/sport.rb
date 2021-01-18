class Sport < ApplicationRecord

  validates :name, presence: true, inclusion:{ in: %w( football mountaineering riding_bike Chess )}

  # Relationship one_to_one for tables
  belongs_to :activity, :class_name => 'User', :foreign_key => 'user_id'

end
