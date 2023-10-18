class ChangeTypeOfPhoneNumberInRestaurants < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :phone_number, :text
  end
end
