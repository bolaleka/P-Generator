require 'securerandom'

def passwordGenerator
    puts "\t\t###############################"
    puts "\t\t#       Password Generator    #"
    puts "\t\t###############################\n\n"

    print "Enter [1] to Generate Passwor/[Exit] to quit: "
    input = gets.chomp

    loop do
      if input == "" || input != "1" and input != "Exit"
        puts "\nInvalid Input"
        print "USAGE: Enter [1] to Generate Passwor/[Exit] to quit: "
        input = gets.chomp
      elsif input === "Exit"
        break
      else
        res =  SecureRandom.hex(10)
        puts res
        print "Enter [1] to generate a new password/[Exit] to quit : "
        input = gets.chomp
      end
    end
    
end

passwordGenerator