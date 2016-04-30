class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      # t는 무조건 앞에 있다 왜냐면 뒤에 t니까.
      
      # t.저장할 내용의 형태 " 저장할 내용의 변수 이름"
          # 저장할 내용의 형태 -> 문자열 : string / 정수 : integer / 날짜 : datetime / 소숫점까지 : float 
      
      t.string "sender1"
      t.string "address"
      t.string "title"
      t.string "content"
      

      t.timestamps null: false
    end
  end
end
