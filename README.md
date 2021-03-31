# YouBike TDD 練習

## 收費規則

- 會員：
  - 前 30 分鐘 5 元
  - 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
  - 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
  - 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。
- 非會員（單次租車）：
  - 4 小時內，費率為每 30 分鐘 10 元。
  - 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。

ref: [臺北市政府交通局](https://www.dot.gov.taipei/News_Content.aspx?n=8AF5CCCCF7B8610A&sms=87415A8B9CE81B16&s=7F22D0A704345945)

## 目標

1. 使用 [RSpec](https://rspec.info/) 撰寫適當的測試個案，並通過全部測試。
2. 關於時間的問題，可適時使用 [timecop](https://github.com/travisjeffery/timecop) 套件

## 設定

1. 下載本專案後，執行 `bundle install` 指令安裝所需套件。
2. 執行 `rspec` 並通過全部測試。

by eddie@5xcampus.com
