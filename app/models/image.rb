# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  path        :string
#  description :string
#  category_id :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  highlight   :boolean          default(FALSE)
#  title       :string
#

class Image < ApplicationRecord
  # carrierwave
  mount_uploader :path, PictureUploader

  # acts_as_taggable
  acts_as_taggable

  validates :title, presence: true

  validates :description, presence: true
  
  validates :path, presence: true
end
