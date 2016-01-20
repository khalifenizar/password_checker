class PasswordChecker
  def check_password(email, password)
    if right_length?(password) &&
       symbol_variety?(password) &&
       no_name?(password, email) &&
       no_domain?(password, email)
      "YES"
    else
      "NO"
    end
  end

  private

  def right_length?(password)
    password.length > 7
  end

  def symbol_variety?(password)
    (password =~ /[a-z]/) != nil &&
    (password =~ /[A-Z]/) != nil &&
    (password =~ /[0-9]/) != nil &&
    (password =~ /[\W]/) != nil
  end

  def no_name?(password, email)
    mail_chunks = email.split("@")
    !password.include?(mail_chunks[0])
  end

  def no_domain?(password, email)
    mail_chunks = email.split("@")
    domain_chunks = mail_chunks[1].split(".")
    !password.include?(domain_chunks[0])
  end
end
