class PagesController < ApplicationController

  def home
    @skills = Skill.all.sort { |a, b| a.id <=> b.id }
    @dev_projects = Project.all.sort { |a, b| a.id <=> b.id }
    @bios = Bio.all
  end

end
