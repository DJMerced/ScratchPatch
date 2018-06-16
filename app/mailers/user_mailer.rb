class UserMailer < ApplicationMailer
  default from: "davidjames91@rld.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'davidjames91@rld.com',
         subject: "A new contact form message from #{name}")
  end
end
