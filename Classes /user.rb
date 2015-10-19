class BadNameError < Exception
end

class BadPhoneNumberError < Exception
end

class User
  def initialize(name)
    @name = name
    if(!name.match(/^[a-zA-Z]+$/))
      raise BadNameError.new
    end
    if @name.length < 1
      raise BadNameError.new
    end
    def name
      @name
    end

  end #def initialize

  def initialize(name, number)
    @name = name
    @number = number
    # if(!number.match(/\b\d{8}\b/))
    #   raise BadPhoneNumberError.new

    def get_number
      @number
    end

  end #def initialize


end #class User
