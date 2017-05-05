class MemberPagesController < ApplicationController
  def graph
    data_num = params[:data].to_i

    # 値の名称
    case data_num
      when 1
        @label = "data1"
      when 2
        @label = "data2"
      when 3
        @label = "data3"
      when 4
        @label = "data4"
      when 5
        @label = "data5"
    end

    # グラフの背景色
    @bg_color = "rgba(220,220,220,0.5)"


    # データのラベル
    @graph_labels = []
    # データの値
    @graph_data = []

    # データのラベルと値を取得する
    #all_data = GraphDatum.limit(10).order("created_time DESC")
    #all_data = GraphDatum.last(10)
    all_data = GraphDatum.joins(:user).where(user_id: current_user.id).last(10)

    # データとラベルをインスタンス変数に格納する
    # データに数字以外が入力されていた場合、「.to_f」によって「0.0」に変換される
    all_data.each do |d|
      @graph_labels.push(Time.at(d.created_at).strftime("%H:%M"))
      case data_num
        when 1
          @graph_data.push(d.data1.to_f)
        when 2
          @graph_data.push(d.data2.to_f)
        when 3
          @graph_data.push(d.data3.to_f)
        when 4
          @graph_data.push(d.data4.to_f)
        when 5
          @graph_data.push(d.data5.to_f)
      end
    end

  end

  def list
    #@graph_data = GraphDatum.joins(:user).where(user_id: current_user.id).reverse_order
    #@data = GraphDatum.page(params[:page]).reverse_order
    @data = GraphDatum.page(params[:page]).joins(:user).where(user_id: current_user.id).reverse_order.per(5)
  end

  def token
    user_auth_token = AuthToken.joins(:user).find_by(user_id: current_user.id)

    # tokenを払い出したことがない場合、
    if user_auth_token == nil
      require 'securerandom'

      a = AuthToken.new
      a.user_id = current_user.id
      a.auth_token = SecureRandom.hex(16)
      a.save

      user_auth_token = AuthToken.joins(:user).find_by(user_id: current_user.id)
    end

    @token = user_auth_token.auth_token

  end

  def refresh_token

    # tokenを更新する
    user_auth_token = AuthToken.joins(:user).find_by(user_id: current_user.id)

    require 'securerandom'
    user_auth_token.auth_token = SecureRandom.hex(16)
    user_auth_token.save

    redirect_to member_pages_token_path
  end
end

