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
#

class Image < ApplicationRecord
  mount_uploader :path, PictureUploader
end
