class PagesController < ApplicationController

  def home
    @skills = Skill.all
    @portfolio = Project.all
  end

end
