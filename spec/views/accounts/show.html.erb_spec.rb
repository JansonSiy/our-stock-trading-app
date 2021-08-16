require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      username: "Username",
      password: "Password",
      email: "Email",
      role: "Role",
      credit: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/9.99/)
  end
end
