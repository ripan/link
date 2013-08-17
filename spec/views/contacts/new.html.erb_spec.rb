require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :name => "MyString",
      :email => "MyString",
      :source => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input#contact_name[name=?]", "contact[name]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_source[name=?]", "contact[source]"
      assert_select "input#contact_user_id[name=?]", "contact[user_id]"
    end
  end
end
