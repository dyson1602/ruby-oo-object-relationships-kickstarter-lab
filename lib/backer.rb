class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects.collect {|bp| bp.project}
    end

    private

    def projects
        ProjectBacker.all.select {|bp| bp.backer == self}
    end
    
end
