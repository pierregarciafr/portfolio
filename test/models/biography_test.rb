# require 'test_helper'

class BiographyTest < ActiveSupport::TestCase

  def setup
    @biography = Biography.new(
                      title: 'Assistant-costumier',
                      content: "Sur la série Netflix 3%, j’étais en charge, auprès du designer Cassio Brasil, de la conception de silhouettes, de la transformation de vêtements, et des essayages avec les acteurs.",
                      icon: 'padNetflix.svg'
                      )
  end

  test "should not validate with empty title" do
    @biography.title = nil
    assert_not @biography.valid?
  end

  test "should not validate title over 24 char" do
    @biography.title = 'a' * 30
    assert_not @biography.valid?
  end

  test "should not validate empty content" do
    @biography.content = ''
    assert_not @biography.valid?
  end

  test "should not validate empty icon link" do
    @biography.icon = ''
    assert_not @biography.valid?
  end

  test "should refuse icon link if not .svg" do
    @biography.icon = 'duduche.jpg'
    assert_not @biography.valid?
  end

end
