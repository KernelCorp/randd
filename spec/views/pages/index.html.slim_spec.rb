require 'rails_helper'

RSpec.describe "pages/index", :type => :view do
  before(:each) do
    assign(:page, [
      Page.create!(
        :title => "",
        :text => "MyText"
      ),
      Page.create!(
        :title => "",
        :text => "MyText"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
