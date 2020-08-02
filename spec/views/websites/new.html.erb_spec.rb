require 'rails_helper'

RSpec.describe "websites/new", type: :view do
  before(:each) do
    assign(:website, Website.new(
      name: "MyString",
      domain: "MyString",
      instance_id: "MyString",
      status: "MyString"
    ))
  end

  it "renders new website form" do
    render

    assert_select "form[action=?][method=?]", websites_path, "post" do

      assert_select "input[name=?]", "website[name]"

      assert_select "input[name=?]", "website[domain]"

      assert_select "input[name=?]", "website[instance_id]"

      assert_select "input[name=?]", "website[status]"
    end
  end
end
