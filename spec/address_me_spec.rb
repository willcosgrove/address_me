require 'spec_helper'

describe AddressMe do
  describe "#parse" do
    it "should parse a single line address" do
      AddressMe.parse("7912 Vista Ridge Dr N Fort Worth, TX 76132").should eq({
        street: "Vista Ridge Dr N",
        number: "7912",
        zip_code: "76132",
        city: "Fort Worth",
        state: "TX"
      })
    end
    it "should parse a multi line address" do
      address = "7912 Vista Ridge Dr N\nFort Worth, TX 76132"
      AddressMe.parse(address).should eq({
        street: "Vista Ridge Dr N",
        number: "7912",
        zip_code: "76132",
        city: "Fort Worth",
        state: "TX"
      })
    end
  end
end
