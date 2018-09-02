class UserMailer < ApplicationMailer
  def account_activation(user)
    @user = user
    mail to: @user.email, subject: "Account Activation For LevelUp!"
  end

  def password_reset(user)
    @user = user
    mail to: @user.email, subject: "Reset Password For LevelUp!"
  end
end
