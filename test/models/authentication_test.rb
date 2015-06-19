require "test_helper"

class AuthenticationTest < ActiveSupport::TestCase
  def authentication
    @authentication ||= Authentication.new
  end

  def test_valid
    assert authentication.valid?
  end
end
