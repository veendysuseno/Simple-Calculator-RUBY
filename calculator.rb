def display_menu
    puts "============================="
    puts "      SIMPLE CALCULATOR"
    puts "============================="
    puts "Choose an operation:"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    puts "5. Exit"
    puts "============================="
end

def main
    loop do
    # Tampilkan menu
    display_menu

    # Dapatkan pilihan dari pengguna
    print "Enter your choice (1-5): "
    choice = gets.to_i

    if choice == 5
        puts "Thank you for using this calculator. Goodbye!"
        break
    end

    # Dapatkan nilai dari pengguna
    print "Enter value 1: "
    value1 = gets.to_f

    print "Enter value 2: "
    value2 = gets.to_f

    # Lakukan operasi yang dipilih
    case choice
    when 1
        result = value1 + value2
        operation = "+"
    when 2
        result = value1 - value2
        operation = "-"
    when 3
        result = value1 * value2
        operation = "*"
    when 4
        if value2 != 0
        result = value1 / value2
        operation = "/"
        else
        puts "Error: Division by zero is not allowed."
        next
        end
    else
        puts "Invalid choice. Please try again."
        next
    end

    # Tampilkan hasil
    puts "RESULT: #{value1} #{operation} #{value2} = #{result}\n"
    end
end

# Jalankan program
main