require 'rqrcode_png'
namespace :qrcode do
  desc 'Create All Places QrCode'
  task place: [:environment] do
    @places = Place.all
    @places.each do |place|
      if place.qr_code.nil? || place.qr_code == ""
        puts "#{place.name}"
        place.qr_code = RQRCode::QRCode.new("#{place.name} #{place.phone_number}").to_img.resize(200, 200).to_data_url
        place.save
      end
    end
  end
end