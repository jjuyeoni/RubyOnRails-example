class PostsController < ApplicationController
# 자동으로 액션이름과 같은 화면을 불러서 
# 사용자에게 보여줘라
    
    # Create
    def new
    # 사용자가 데이터를 입력할 화면
    end
    
    def create
    # 입력받은 데이터를 설계 DB에 저장할 액션.
        
        # 자바를 배우신 학생은 객체생성을 기억해주세요.
        # Post라는 객체를 생성해주고 
        # 각각의 객체의 속성을 추가시켜줍니다.
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save #만들어둔 객체를 db에 저장하겠다
        
    # 액션이름과 같은 view를 설계해야하지만
    # create의 경우에는 view가 따로 필요하지 않다.
    # 이 경우에 액션이 끝난 후 사용자가 원하는 view로
    # 넘어가게 하기위해 필요한 것이 redirect_to 이다.
        redirect_to "/posts/show/#{@post.id}"
    end
    
    # Read
    def index
    # 모든 글을 보여주는 액션
        @posts = Post.all 
    end
    
    def show
    # 글 하나만 보여주는 액션
        @post = Post.find(params[:post_id]) 
        # id값을 토대로 객체를 find할수있는 method
    end
    
    # Delete
    def destroy
        post = Post.find(params[:post_id]) 
        post.destroy
        
        # view가 없기때문에 redirct명령어가 필요함
        redirect_to "/"
    end
    
    # Update
    def edit
    # 사용자가 데이터를 입력할 액션
        @post = Post.find(params[:post_id]) 
    end
    
    def update
    # 수정된 값을 실제 db에 반영할 액션
        @post = Post.find(params[:post_id]) 
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save 
        redirect_to "/posts/show/#{@post.id}"
    end
end
