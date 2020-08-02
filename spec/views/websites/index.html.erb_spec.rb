require 'rails_helper'

RSpec.describe "websites/index", type: :view do
  before(:each) do
    assign(:websites, [
      Website.create!(
        name: "Name",
        domain: "Domain",
        instance_id: "Instance",
        status: "Status"
      ),
      Website.create!(
        name: "Name",
        domain: "Domain",
        instance_id: "Instance",
        status: "Status"
      )
    ])
  end

  it "renders a list of websites" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Domain".to_s, count: 2
    assert_select "tr>td", text: "Instance".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
  end
end
