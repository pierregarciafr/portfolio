class PagesController < ApplicationController

  def home
    @skills = Skill.all
    @portfolio = Project.all
    @biographies = Biography.all
  end

end
