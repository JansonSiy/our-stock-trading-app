require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        username: "Username",
        password: "Password",
        email: "Email",
        role: "Role",
        credit: "9.99"
      ),
      Account.create!(
        username: "Username",
        password: "Password",
        email: "Email",
        role: "Role",
        credit: "9.99"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", text: "Username".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Role".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
