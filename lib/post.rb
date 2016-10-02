class Post

  attr_accessor :title, :author_name
  attr_reader :author

  def initialize(title)
    @title = title
  end

  def author=(theauthor)
    @author = theauthor
    @author_name = @author.name
  end

end
