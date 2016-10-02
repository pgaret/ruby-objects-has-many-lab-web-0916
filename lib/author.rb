class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

    def initialize(name)
      @name = name
      @posts = []
    end

    def new_post
      posts.last.author = self
      posts.last.author_name = name
      @@post_count += 1
    end

    def add_post(post)
      posts << post
      new_post
    end

    def add_post_by_title(name)
      posts << Post.new(name)
      new_post
    end

    def self.post_count
      @@post_count
    end

end
