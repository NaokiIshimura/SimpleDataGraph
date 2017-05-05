class StaticPagesController < ApplicationController

  # ログインしていないときにログイン画面にリダイレクトをかけない
  def use_before_action?
    false
  end

  def about
  end

  def how_to_use
  end
end
