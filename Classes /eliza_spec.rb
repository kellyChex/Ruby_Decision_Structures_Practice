#rspec --init
require "spec_helper"
require_relative 'eliza_questions'

describe 'Response' do
  it "will create the Response class" do
    expect { Response }.to_not raise_error
    expect { George }.to_not raise_error
  end
  it "will turn response to all caps by typing !" do
    expect Response.get_answer.to be_upcase
  end
  it "will return response to lowercase by typing another !" do
    expect Response.get_answer.to be_downcase
  end
end #describe
