require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      username: "MyString",
      password: "MyString",
      email: "MyString",
      role: "MyString",
      credit: "9.99"
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input[name=?]", "account[username]"

      assert_select "input[name=?]", "account[password]"

      assert_select "input[name=?]", "account[email]"

      assert_select "input[name=?]", "account[role]"

      assert_select "input[name=?]", "account[credit]"
    end
  end
end
