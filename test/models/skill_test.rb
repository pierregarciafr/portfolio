require 'test_helper'

class SkillTest < ActiveSupport::TestCase

  def setup
    @skill = Skill.new(iconName: 'icon.svg', text: 'text')
  end

  test "should not save skill with empty fields" do
    skill = Skill.new
    assert_not skill.save, "Save the skill without a field"
  end

  # test "new instance should have iconName" do
  #   @skill.iconName = ''
  #   assert_not @skill.valid?
  # end

  # test "new instance should match .svg format" do
  #   @skill.iconName = 'toto'
  #   assert_not @skill.valid?
  # end

  test "new instance should have text" do
    @skill.text = ''
    assert_not @skill.valid?
  end

  test "new instance should have text < 16 char" do
    @skill.text = 'a' * 20
    assert_not @skill.valid?
  end
end
