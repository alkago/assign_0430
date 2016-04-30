
require 'mailgun'


class HomeController < ApplicationController
  def index
      #@baba = ["만두", "바둑"] : 배열
      #Hash : 해쉬는 무엇인가?
      #Array 정말로 중요합니다. 이 두개 꼭 기억해주세요!
    
  end
  def write
      
      @sender1 = params[:sender1]
      @title = params[:title]
      @content = params[:content]  
      @address = params[:address]
      
      mg_client = Mailgun::Client.new("key-fef8d155ef824487441a5e33c0b5c8fd")

      message_params =  {
                   from: @sender1,
                   to:   @address,
                   subject: @title,
                   text: @content
                   }

    result = mg_client.send_message('sandbox17a78dd58ed04a86ade1ff3305b2acce.mailgun.org', message_params).to_h!
  
    message_id = result['id']
    message = result['message']
      
      # params[:name]이 기본 구조이다.
      # params 는 parameters /// title과 content, 즉 name 은 form 의 input등에 부여시킨 name
      
      # 1. redirect_to "/list" 해주고 2. list 컨트롤러에 추가 해주고(def - end) 3. route에 주소 지정해주면 되겠습니다. 그러면 write는 의미가 없어지겠죠~
      # rails g mode 제목 -> model 생성. 즉 db를 만들어 주었다. 1) model-제목 랑 2) db-migrate-숫자 & db-migrate-
      
      new_post = Post.new
      new_post.title = @title
      new_post.content = @content
      new_post.save
      #Post에서 P는 대문자여야 한다. rails g model post -> Post로!
      
      @every_post = Post.all.order("id desc")
  end
  
  def destroy
    
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    
    redirect_to '/'
    
  end
  
  def update_view
    
    @one_post = Post.find(params[:post_id])
    
  end
  def really
    
      @one_post = Post.find(params[:post_id])
      @one_post.title = params[:title]
      @one_post.content = params[:content]
      @one_post.save
      redirect_to "/"
  end
  

end
