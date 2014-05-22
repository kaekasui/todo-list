class NoticeMailer < ActionMailer::Base
  default from: "aquariuslake@gmail.com"

  def task_notice_mail(task)
    mail to: task.user.mail, subject: I18n.t("messages.mail_subject")
  end 
end
