require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      username: "MyString",
      password: "MyString",
      email: "MyString",
      role: "MyString",
      credit: "9.99"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input[name=?]", "account[username]"

      assert_select "input[name=?]", "account[password]"

      assert_select "input[name=?]", "account[email]"

      assert_select "input[name=?]", "account[role]"

      assert_select "input[name=?]", "account[credit]"
    end
  end
end
