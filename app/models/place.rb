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
require 'rqrcode_png'
class Place < ApplicationRecord
	validates :name, :address, presence: true
	validates :phone_number, numericality: {only_integer: true}
	validates_format_of :contact_mail, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, message: "Invalid email!"

	validate :check_established_at
    
	belongs_to :category
	has_many :comments, dependent: :destroy
	belongs_to :owner
	has_many :reservations, dependent: :destroy
	has_one :social_profile

	before_create :qrcode_create
	accepts_nested_attributes_for :social_profile
	#has_many :customers, through :reservations // bu yapılcak
	private

	def check_established_at
		if established_at.present? && established_at >= Date.today
			errors.add(:established_at, "Kuruluş tarihi gecelek bir tarih veya bugün olamaz!!")
		end
	end

	def qrcode_create
		self.qr_code = RQRCode::QRCode.new("#{self.name} #{self.phone_number}").to_img.resize(200, 200).to_data_url
	end

end
