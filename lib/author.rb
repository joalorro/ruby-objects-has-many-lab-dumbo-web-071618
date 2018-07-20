class Author 
	attr_accessor :name, :posts

	@@all = []

	def initialize name
		@name = name

		@@all << self
		@posts = []
	end

	def add_post post 
		post.author = self 
		@posts << post
	end

	def add_post_by_title title 
		post = Post.new(title)
		post.author = self 
		@posts << post

	end

	def self.post_count 
		Post.all.length
	end

	# def posts 
	# 	Post.all.map {|post| post.author == self}
	# end

end