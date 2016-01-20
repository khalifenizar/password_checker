require("sinatra")
require_relative("lib/password_checker.rb")

checker = PasswordChecker.new


get "/" do
  erb(:form)
end

post "/login" do
  email = params[:email]
  password = params[:password]

  if checker.check_password(email, password) == "NO"
    redirect to("/")
  else
    redirect to("/congratulations")
  end
end

get "/congratulations" do
  erb(:congratulations)
end
