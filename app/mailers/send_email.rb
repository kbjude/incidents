class SendEmail < ActionMailer::Base
  default from: '"EGYO LTD" <devops@devops.innovationvillage.co.ug>'
  def sendemail(to,subject,message,sender,att,tenant)
    @subject = subject
    @message = message
    @tenant = tenant
    if att.kind_of?Hash
      att.each do |k,v|
        attachments[k] = File.read(v)
      end
    end
    mail(:to => to, :subject => subject, :mail => message, :from => sender)
  end
end

