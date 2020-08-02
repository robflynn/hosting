require 'rails_helper'

RSpec.describe "websites/edit", type: :view do
  before(:each) do
    @website = assign(:website, Website.create!(
      name: "MyString",
      domain: "MyString",
      instance_id: "MyString",
      status: "MyString"
    ))
  end

  it "renders the edit website form" do
    render

    assert_select "form[action=?][method=?]", website_path(@website), "post" do

      assert_select "input[name=?]", "website[name]"

      assert_select "input[name=?]", "website[domain]"

      assert_select "input[name=?]", "website[instance_id]"

      assert_select "input[name=?]", "website[status]"
    end
  end
end
