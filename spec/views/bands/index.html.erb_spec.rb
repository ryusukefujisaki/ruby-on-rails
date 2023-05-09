require 'rails_helper'

RSpec.describe "bands/index", type: :view do
  before(:each) do
    assign(:bands, [
      Band.create!(
        name: "Name"
      ),
      Band.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of bands" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
