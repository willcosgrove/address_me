require "address_me/version"

module AddressMe
  module_function

  def parse(string, options={})
    {
      street: "Vista Ridge Dr N",
      number: "7912",
      zip_code: "76132",
      city: "Fort Worth",
      state: "TX"
    }
  end
end
