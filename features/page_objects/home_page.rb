class HomePage < SitePrism::Page
  element :mail_field, "#remind_email_input"

  def set_email(email)
    mail_field.set(email)
  end 

  def get_email_submit_button()
    return mail_field.first(:xpath,".//..").find("input[type='submit']")
  end
end
