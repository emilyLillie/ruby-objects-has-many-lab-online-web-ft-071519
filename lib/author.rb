class Author 
attr_accessor :name 
@@count = 0 

def intialize(name)
  @name = name 
  @@posts = [] 
end
  
def add_post(post) 
  post.author = self
  @@posts << post 
  @@count += 1 
end
  
end