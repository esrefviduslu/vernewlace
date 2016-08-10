# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  name           :string
#  address        :string
#  phone_number   :string
#  contact_mail   :string
#  established_at :date
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
