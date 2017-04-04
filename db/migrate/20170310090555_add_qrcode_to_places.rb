class AddQrcodeToPlaces < ActiveRecord::Migration[5.0]
  def change
    add_column :places, :qr_code, :string
  end
end
