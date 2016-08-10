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

class Place < ApplicationRecord
	validates :name, :address, presence: true
	validates :phone_number, numericality: {only_integer: true}
	validates_format_of :contact_mail, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
