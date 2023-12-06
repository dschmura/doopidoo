class FeedbackMailer < ApplicationMailer
  default from: "t('feedback_mailer.from')"

  def send_feedback(feedback)
    @greeting = "This is a greeting"
    @body = "This message was generated by a default template. To customize your message, look at app/mailers/feedback_mailer.rb"
    mail  to: email_address_with_name("dave@humbledaisy.com", "Dave Chmura"),
    subject: @greeting, 
    from: email_address_with_name(feedback.email, feedback.full_name),
    bcc: email_address_with_name(feedback.email, feedback.full_name)
  end

end