class Author

  attr_accessor :name, :posts, :title, :post

  def initialize(name)
    @name = name
    #binding.pry
    @posts = self
  end

  def posts
    Post.all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    Post.all.length
  end




end