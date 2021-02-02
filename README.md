# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


完成

26. 他ユーザーのプロフィールを編集できないようにする
ensure_correct_userメソッドのbefore_actionにあるアクションを追加してあげる必要があります。

↑これやってない

updateに

if @user.id == current_user.id
else
redirect_to user_path(current_user)
end

の記述をした。


コメント機能のコントローラー
createの記述意味不明

完成