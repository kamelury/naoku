require 'test_helper'

class LeadTest < ActionMailer::TestCase
  test "confirmation" do
    @expected.subject = 'Lead#confirmation'
    @expected.body    = read_fixture('confirmation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Lead.create_confirmation(@expected.date).encoded
  end

  test "notice" do
    @expected.subject = 'Lead#notice'
    @expected.body    = read_fixture('notice')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Lead.create_notice(@expected.date).encoded
  end

end
