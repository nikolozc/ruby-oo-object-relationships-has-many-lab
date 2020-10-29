class Author

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        new_title = Post.new(title)
        self.add_post(new_title)
    end

    def posts
        Post.all.select {|post| post.author == self}
      end

    def self.post_count
        Post.all.count {|post| post.author}
    end

end