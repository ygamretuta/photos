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

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
