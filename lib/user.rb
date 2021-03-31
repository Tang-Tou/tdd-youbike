class User
  attr_reader :is_login, :is_member

  def initialize
    @is_login = false
    @is_member = false
  end

  def login
    @is_login = true
    @is_member = true
  end

 

end