require 'rspec'
require_relative 'user'

describe User do
  describe "Name property" do
    it "should have a name that matches the name given" do
      expect(User.new("George").name).to be
      expect(User.new("Bob").name).to be_eql("Bob")
    end

    it "should be alpha charb acters, spaces, and apostrophes only" do
      expect{User.new("George5")}.to raise_error(BadNameError)
    end
    it "should be of class string" do
      user = User.new('Bob')
      name = user.name
      expect(name).to be_a(String)
    end
    it "should be at least 1 character" do
      user = User.new('Mary')
      name = user.name.length
      expect(name).to be > 1
    end
    it "should be no more than 10" do
      user = User.new('Mary')
      name = user.name.length
      expect(name).to be < 10
    end

    describe "Setting the name" do
      it "will accept a name on new" do
        expect{User.new("George")}.to_not raise_error
      end
    end

  end #Name property

  describe "phone number property" do
    it "has a name and number" do
          number = (User.new("George", "5555555555").number).to be
        end
    #     it "will only accept digits" do
    #       expect{User.new.name.length>40}.to raise_error(BadNameError)
    # end
end #describe phone number

#
#   it "should have an email"

end #user
