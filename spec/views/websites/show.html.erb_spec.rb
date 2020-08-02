require 'rails_helper'

RSpec.describe "websites/show", type: :view do
  before(:each) do
    @website = assign(:website, Website.create!(
      name: "Name",
      domain: "Domain",
      instance_id: "Instance",
      status: "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Domain/)
    expect(rendered).to match(/Instance/)
    expect(rendered).to match(/Status/)
  end
end
