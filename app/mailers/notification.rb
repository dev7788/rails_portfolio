class Notification < ActionMailer::Base
  default :from => "rebagliatte@gmail.com"

  def contact_me(contact)
    @contact = contact
    mail(:to => "rebagliatte@gmail.com", :subject => "Contact from rebagliatte.com")
  end

end



