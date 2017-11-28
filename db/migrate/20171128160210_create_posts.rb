class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      # post의 table을 아래와 같이 형성하도록 함
      
      t.string :title
      # 제목은 string 형식으로 받음
      t.text :content
      # 내용은 text형식으로 받음
      t.timestamps null: false
    end
  end
end
