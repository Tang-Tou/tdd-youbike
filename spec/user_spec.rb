require './lib/user'

RSpec.describe User do
  # pending '試著動手寫一些測試吧！'

  it "會員登入" do
    user = User.new
    user.login
    expect(user.is_login).to be true
    expect(user.is_member).to be true
  end

  it "非會員不會登入" do
    user = User.new
    expect(user.is_member).to be false
  end
end
