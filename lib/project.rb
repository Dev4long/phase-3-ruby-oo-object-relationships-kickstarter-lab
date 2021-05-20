class Project

    attr_reader :title

    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def project_backer
        ProjectBacker.all.select do |project|
            project.project == self
        end
    end

    def backers 
        self.project_backer.map do |project|
        project.backer
        end
    end

end