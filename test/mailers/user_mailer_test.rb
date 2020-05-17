require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "make_contact" do
    mail = UserMailer.make_contact
    assert_equal "Make contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
