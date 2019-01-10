# Creation de methode half_pyramid et full_pyramid
def half_pyramid
    puts("Salut. Bienvenu dans  ma super pyramide ! Combien d'étages veux-tu ?")
    print("> ")
    number = gets.chomp.to_i
    count = 0
    space = " "
    number_two = number
    counter_two = count
    
    # Notre pyramide ascendente en ruby
    puts("Voici la pyramide:")
    for number in (1..number) do
        count += 1
        number_two -= 1
        pyramid = space * number_two + "#" * count
        puts pyramid
    end
end
def full_pyramid
    puts("Salut. Bienvenu dans  ma super pyramide ! Combien d'étages veux-tu ?")
    print("> ")
    number = gets.chomp.to_i
    count = 0
    space = " "
    number_two = number
    # Notre pyramide version complete en ruby
    puts("Voici la pyramide:")
    for number in (1..number) do
        number_two -= 1
        pyramid = space * number_two + "#" * (2 * count + 1)
        count += 1
        puts pyramid
    end
end
def wtf_pyramid
    puts("Salut. Bienvenu dans  ma super pyramide ! Combien d'étages veux-tu ?")
    print("> ")
    number = gets.chomp.to_i
    n=number
    space = " "
    space_count = (n+1)/2
    number.times do |row|
    if row < (n+1)/2
        space_count -= 1
        star_count = row * 2 + 1
        print space * space_count
    else
        space_count += 1
        star_count = (number - 1 - row) * 2 + 1
        print space * space_count
    end
    puts '*' * star_count
    end
end 
wtf_pyramid