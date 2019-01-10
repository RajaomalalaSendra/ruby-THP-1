require "io/console"
# Notrere signup
def signup
    puts("Entrez un mot de passe")
    print("> ")
    mot_de_pass = STDIN.noecho(&:gets).chomp()
end
# Notre login
def login
    puts("\nSaisir à nouveau le mot de passe")
    print("> ")
    confirm_pass = STDIN.noecho(&:gets).chomp()
end
# Notre welcome
def welcome
    puts("\nBIENVENU SUR VOTRE SESSION ")
end
# Notre perform
def perform
    signer = signup().to_s
    while true     
        resigner = login().to_s   
        if resigner == signer
            welcome()
            break
        else
            puts("\nMot de passe incorect")
            resigner
        end
    end
end
perform()