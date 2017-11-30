Rails.application.routes.draw do
  # Create
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  
  # Read
  root 'posts#index'
  get 'posts/show/:post_id' => 'posts#show'
    # 여기서 :post_id는 url에 담긴 post.id 값을 저장할 변수 
    
  # Delete
  post 'posts/destroy/:post_id' => 'posts#destroy'
  
  # Update
  get 'posts/edit/:post_id' => 'posts#edit'
    # 몇번 게시물에 대한 수정인지 알아야하기 때문에 id값 필요
  post 'posts/update/:post_id' => 'posts#update'
  
  
  # Comment
  ## Create
  post '/comments/create/:post_id' => 'comments#create'
  ## Destroy
  post '/comments/destroy/:post_id/:comment_id' => 'comments#destroy'
  
end

