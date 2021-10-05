def signup()
    puts "Please define your password :"
    password = gets.chomp
    return password
end

def login(password)
    puts "Please enter your password below :"
    attempt = gets.chomp
    while (attempt != password) do
        puts "THIS IS NOT THE PASSWORD, TRY AGAIN BEFORE SELF-DESTRUCTION"
        attempt = gets.chomp
    end
    if attempt == password
        welcome_screen()
    end
end

def welcome_screen()
    puts "Welcome to your secret numeric platform, special agent !"
    puts "The last secret information we've got is that THP holds many motivated mates ..."
    puts "Now you are logged off for safety and your account is self-destruct"
end

def perform()
    password = signup()
    login(password)

end

perform()