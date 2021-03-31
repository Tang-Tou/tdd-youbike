class Bike
  # 初始化的原因是要讓他一開始就表示他使用了30分鐘，後續的會被定義成其他值
  def initialize(user = nil)
    @time = 30
    @user = user
  end 

  def time(time)
    @time = time
  end

  def cost
    if @user
      if @time <= 30
        return 5
      end
  
      if @time > 30 && @time < 240
        @cost = 5 + ((@time - 30) / 30.0 * 10 ).round
      elsif @time >= 240 && @time < 480
        @cost = 5 + 70 + (((@time - 240) / 30.0).ceil * 20 ).round
      else
        @cost = 5 + 70 + 160 + (((@time - 480) / 30.0).ceil * 40 ).round
      end

    else  
      if @time < 240
        @cost = ((@time /30.0).ceil * 10).round
      elsif @time >= 240 && @time < 480
        @cost = 80 + (((@time - 240) /30.0).ceil * 20 ).round
      else
        @cost = 80 + 160 + (((@time - 480) /30.0).ceil * 40 ).round
      end
    end 
  end 
end


