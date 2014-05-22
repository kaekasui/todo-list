class User < ActiveRecord::Base
  acts_as_paranoid
  has_many :tasks

  # omniauthで接続したユーザー情報を作成する
  def self.create_with_omniauth(auth)
    @user_provider = { provider: auth["provider"], uid: auth["uid"] }
    # twitter
    @user_provider.merge({ name: auth["info"]["name"], screen_name: auth["info"]["nickname"] })
    User.create(@user_provider)
  end

  # ユーザー情報を検索する
  def self.find_for_omniauth(auth)
    user = User.where( provider: "twitter", uid: auth.uid ).first
    user.update_attributes( name: auth["info"]["name"], screen_name: auth["info"]["nickname"] ) if user
    user
  end
end
