class Author 
attr_accessor :name 
@@count = 0 

def intialize(name)
  @name = name 
  @@posts = [] 
end
  
def add_post(post) 
  @@count += 1
  @@posts << post 
  post.author = self
end
  
end