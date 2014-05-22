desc "This task is called by the Heroku scheduler add-on"
task :send_reminders => :environment do
  tasks = Task.where(due_at: Date.tomorrow)
  tasks.each do |task|
    NoticeMailer.task_notice_mail(task).deliver
  end
end
