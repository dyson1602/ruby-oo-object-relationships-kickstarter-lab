require 'pry'

class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer.collect {|bp| bp.backer}
    end

    private

    def backer
        ProjectBacker.all.select {|bp| bp.project == self}
    end

end