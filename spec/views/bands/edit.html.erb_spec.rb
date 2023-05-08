require 'rails_helper'

RSpec.describe "bands/edit", type: :view do
  let(:band) {
    Band.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:band, band)
  end

  it "renders the edit band form" do
    render

    assert_select "form[action=?][method=?]", band_path(band), "post" do

      assert_select "input[name=?]", "band[name]"
    end
  end
end
