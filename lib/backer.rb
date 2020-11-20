require 'pry'
class Backer
  

  attr_reader :name
  def initialize (name)
    @name = name 
  end

 

  def back_project(project)
      ProjectBacker.new(project, self)    
  end 

  def backed_projects
    list = []
    project_list= ProjectBacker.all.select do |project_backer|
      project_backer.backer == self
    end 
      project_list.each do |projects|
        list <<projects.project
    end 
    list
    
  end 
end 
# binding.pry
# 0
