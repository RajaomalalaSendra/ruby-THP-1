def say_hello(first_name)
    print("Bonjour, #{first_name}")
end
def ask_first_name
    puts ("Entrez votre nom de famille: ")
    print("> ")
    first_name = gets.chomp()
    return first_name
end
def perform
    naming = ask_first_name()
    say_hello(naming)
end
perform