def gamestairway

    error = false

    @number_enter=0

    @marche = 1



    while !error do



        while !error do



            puts "¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"

            puts "Lancez le dé (press enter or \"quit\"):"

            print "> "

            confirm = gets.chomp



            if confirm == "quit"

			

                return "Merci d'avoir joué et aurevoir !"



            elsif confirm



                puts move

                @number_enter +=1

                if @marche == 10

                    return "Vous avez gagné ! Vous avez fait #{@number_enter} entrees"

                end



                break

            else

                return "Error !"

            end



        end

        

    end

end



def move

    des = rand (1..6)

    if des == 1

        if @marche == 1

            return "Vous avez fait #{des}, Vous est déjà au premier étage, il ne peut pas descendre plus bas..."

        else

            @marche -= 1

            return "Vous avez fait #{des}, Vous est descendu d'un étage, il est à l'étage #{@marche}..."

        end

    elsif des == 5 || des == 6

        @marche += 1



        return "Vous avez fait #{des}, Vous est monté d'un étage, il est à l'étage #{@marche} !"

    else

        return "Vous avez fait #{des}, Vous n'a pas bougé."

    end

end

puts gamestairway

def average_finish_time

	for i in (1..100)	

		puts @number_enter

	end

end

puts average_finish_time