class ReceiveDataController < ApplicationController

  # ログインしていないときにログイン画面にリダイレクトをかけない
  def use_before_action?
    false
  end

  #CSRF対策をスキップさせる
  protect_from_forgery :except => ["post"]

  def post

    # ヘッダー内の「X-Auth-Token」を取得する
    redceive_token = request.headers["X-Auth-Token"]
    user = AuthToken.find_by(auth_token: redceive_token)
    if user == nil
      head 401
      return
    end

    # ボディ内のデータを取得する
    begin
      # jsonをParseする
      json_request = JSON.parse(request.body.read)
      # dataを保存する
      g = GraphDatum.new
      g.user_id = user.id
      g.data1 = json_request["data1"]
      g.data2 = json_request["data2"]
      g.data3 = json_request["data3"]
      g.data4 = json_request["data4"]
      g.data5 = json_request["data5"]
      g.save

      head 200

    rescue
      head 400

    end

  end
end
