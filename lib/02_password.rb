def signup()
    puts "Please define your password :"
    password = gets.chomp
    return password
end

def login(password)
    puts "Please enter your password below :"
    attempt = gets.chomp
    while (attempt != password) do
        puts "WRONG"
        attempt = gets.chomp
    end
end

def welcome_screen()

end

def perform()
    password = signup()
    login(password)
end

perform()