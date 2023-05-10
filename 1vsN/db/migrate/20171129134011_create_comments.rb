class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      
      # t.integer :post_id 
      # 어떤 post에 담겼는지에 대한 정보
      # 즉 post의 id값을 담는 컬럼을 생성
      
      t.belongs_to :post
      # 위의 코드는 좀 더 직관적으로 표현함
      # 이 comment는 post에 속해있다는 코드임
      t.timestamps null: false
    end
  end
end
