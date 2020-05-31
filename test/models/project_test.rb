require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
    def setup
      @project = Project.new( image: 'miniGuesswhat.jpg',
                          title: 'Blind test musical',
                          paragraph: "Ce jeu à reconnaissance vocale permet à l'utilisateur d'inviter un autre joueur de se connecter à la partie. Chacun peut jouer depuis son propre smartphone.
                Le MVP a été réalisé lors d'un sprint de 10 jours au Wagon, en équipe de 4. Nous avons utilisé les technologies ActionCable et API Rest.",
                          icons: ['rails', 'HTML', 'CSS', 'JS'],
                          link: "https://www.guesswhat.live"
                        )
    end

    test "empty element should not be valid" do
      s = Project.new
      assert_not s.valid?
    end

    test "element without image should not be valid" do
      @project.image = nil
      assert_not @project.valid?
    end

    test "element without title should not be valid" do
      @project.title = nil
      assert_not @project.valid?
    end

    test "element without paragraph should not be valid" do
      @project.paragraph = nil
      assert_not @project.valid?
    end

    test "element without link should not be valid" do
      @project.link = nil
      assert_not @project.valid?
    end

end
