#Userテーブル
string :name
string :email
string :password_digest
#Taskテーブル
strig :title
content :text
deadline :date
status :integer
priority :integer
#Labelテーブル
name :string

#デプロイ方法

Ruby on Rails 5.2.4.4
#herokuにログイン
$ heroku login

新しいレポジトリを作成
$ heroku create

#Herokuにデプロイ

$ git push heroku master

#データベースの移行

$ heroku run rails db:migrate

#アプリケーションにアクセスを行う

createした際のURL
