require 'geocoder'
require "address_me/version"

module AddressMe
  module_function

  def parse(string, options={})
    result = Geocoder.search(string)[0]
    {
      street: result.address_components_of_type(:route)[0]["long_name"],
      number: result.address_components_of_type(:street_number)[0]["long_name"],
      zip_code: result.postal_code,
      city: result.city,
      state: result.address_components_of_type("administrative_area_level_1")[0]["short_name"]
    }
  end
end
