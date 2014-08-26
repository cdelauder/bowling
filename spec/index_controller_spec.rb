require 'spec_helper'

describe "IndexController" do

  describe 'index' do
    it 'should respond with status 200' do
      get "/"
      expect(last_response).to be_ok
    end
  end

end
