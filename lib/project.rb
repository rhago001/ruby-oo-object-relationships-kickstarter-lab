
class Project

  attr_reader :title      
  def initialize (title)
    @title = title 
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end 

  def backers
    list =[]
    list_backer = ProjectBacker.all.select do |project_backer|
      project_backer.project == self
    end 
    list_backer.each do |backers|
      list << backers.backer
    end 
    list  

  end 



end 