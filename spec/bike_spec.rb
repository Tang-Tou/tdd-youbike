# 會員：
# 前 30 分鐘 5 元
# 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
# 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。

# 非會員（單次租車）：
# 4 小時內，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。

# pending '' 測試還沒寫完時，可以放置這個拿來提醒自己還有什麼功能沒有寫到

require './lib/bike'
require './lib/user'

RSpec.describe Bike do
  context '會員' do
    it "前 30 分鐘 5 元" do
      user = User.new
      user.login
      bike = Bike.new(user)
                    #  設定現在時間加上經過的時間,再確認timecop用法
      # Timecop.travel(Time.now + 60*35)
      expect(bike.cost).to be 5
    end

    it "超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。" do
      user = User.new
      user.login
      bike = Bike.new(user)
      bike.time(120)
      expect(bike.cost).to be 35
    end

    it "超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。" do
      user = User.new
      user.login
      bike = Bike.new(user)
      bike.time(300)
      expect(bike.cost).to be 115
    end

    it "超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。" do
      user = User.new
      user.login
      bike = Bike.new(user)
      bike.time(620)
      expect(bike.cost).to be 435
    end
  end

  context '非會員' do
    it " 4 小時內，費率為每 30 分鐘 10 元。" do
      user = User.new
      bike = Bike.new(user)
      bike.time(160)
      expect(bike.cost).to be 60
    end

    it "超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元" do
      user = User.new
      bike = Bike.new(user)
      bike.time(315)
      expect(bike.cost).to be 140
    end

    it "超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。" do
      user = User.new
      bike = Bike.new(user)
      bike.time(620)
      expect(bike.cost).to be 440
    end
  end
end
