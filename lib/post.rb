class Post
    attr_accessor :title, :author
    @@all = Array.new

    def initialize(title)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def save 
        @@all << self
    end

    def author_name
        (self.author) ? self.author.name : nil
    end

end