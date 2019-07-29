class Author 
attr_accessor :name 
@@posts = [] 
@@count = 0 

def intialize(name)
  @name = name 
end
  
def add_post(post) 
  post.author = self
  @@posts << post 
  @@count += 1 
end
  
end