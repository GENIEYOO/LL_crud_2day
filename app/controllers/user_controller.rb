class UserController < ApplicationController
    
    
#1번 유저 환영해주는 서비스 하하    
def index
 if session[:user_id] #만약에 세션에 1번 아이디를 가진 사람이 있다면
     @email = User.find(session[:user_id]).email
 end
end

def new
    
end

def login
end

def login_process
    #데이터베이스에 해당하는 유저정보가 있는지 찾는다.
    require 'digest'
        if User.exists?(email: params[:user_email])
            user = User.find_by(email: params[:user_email])
            if user.password == Digest::MD5.hexdigest(params[:user_password])
             # 로그인 허용은 세션 저장과 같다
                session[:user_id] = user.id
                redirect_to '/'
                p "로그인이 되었습니다."
            end
        end
end





def create
    require 'digest'
    @email = params[:user_email]
    @password = params[:user_password]
    hidden_password = Digest::MD5.hexdigest(@password)
    User.create(
    email: @email,
    password: hidden_password
      )
end
    
    
    # def index
    #     @posts = Post.all
    # end
    
    # def create
    #     @email= params[:title]
    #     @password = params[:content]
    
    #     Post.create(
    #         title: @title,
    #         content: @content
    #         )
    #     redirect_to "/"
    # end
    
    
    # def destroy
    #   @id = params[:id]
    #   @post = Post.find(@id)
    # end
end

