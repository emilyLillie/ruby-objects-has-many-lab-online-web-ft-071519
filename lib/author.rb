class Author 
attr_accessor :name, :post  
@@count = 1 

def intialize(name)
  @name = name 
  @@posts = [] 
end
  
def add_post(post) 
  @@count += 1
  @@posts << post 
  post.author = self
end

def add_post_by_title(title)
  @@count +=1 
  post = Post.new(title)
  @@posts << title 
  post.author = self 
end

def self.post_count
  @@count
end

end 