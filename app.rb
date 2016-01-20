require_relative("lib/password_checker.rb")

checker = PasswordChecker.new

p checker.check_password("nizar@ironhack.com", "aZ0---")
p checker.check_password("nizar@ironhack.com", "Z0--------")
p checker.check_password("nizar@ironhack.com", "a0--------")
p checker.check_password("nizar@ironhack.com", "aZ--------")
p checker.check_password("nizar@ironhack.com", "aZ00000000")
p checker.check_password("nizar@ironhack.com", "aZ0*nizar")
p checker.check_password("nizar@ironhack.com", "aZ0*ironhack")
p checker.check_password("nizar@ironhack.com", "aZ0--------")
