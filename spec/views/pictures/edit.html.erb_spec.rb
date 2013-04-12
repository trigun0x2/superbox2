require 'spec_helper'

describe "pictures/edit" do
  before(:each) do
    @picture = assign(:picture, stub_model(Picture,
      :name => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pictures_path(@picture), :method => "post" do
      assert_select "input#picture_name", :name => "picture[name]"
      assert_select "input#picture_user_id", :name => "picture[user_id]"
    end
  end
end
