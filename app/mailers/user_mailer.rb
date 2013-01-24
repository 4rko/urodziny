class UserMailer < ActionMailer::Base
  include Resque::Mailer
  
  default from: "MojeEkstraKonto@gmail.com"

  def birthday_reminder(user_id, birthday_id)
    @user = User.find(user_id) # zmienne instancji są dostępne w widoku
    @birthday = Birthday.find(birthday_id)

    mail to: @user.email, subject: "Urodziny"
  end
end
