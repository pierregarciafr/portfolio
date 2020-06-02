class PagesController < ApplicationController

  def home
    @skills = Skill.all.sort { |a, b| a.id <=> b.id }
    @portfolio = Project.all.sort { |a, b| a.id <=> b.id }
    @biographies = Biography.all
  end

end
