# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  yr         :integer          not null
#  band_id    :integer          not null
#  studio     :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
  validates :title, :yr, :band_id, presence:true
  
  belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: 'Band'
end
