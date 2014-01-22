require_relative 'contact'
require_relative 'rolodex'

class CRM

  @rolodex = Rolodex.new

	def self.print_main_menu
      puts "\n"
  		puts "[1] Add a new contact"
  		puts "[2] Modify an existing contact"
  		puts "[3] Delete a contact"
  		puts "[4] Display all the contacts"
  		puts "[5] Display an attribute"
  		puts "[6] Exit"
      puts "\n"
  		puts "Enter a number: "
      puts "\n"
	end

	def self.main_menu
  		print_main_menu
  		user_selected = gets.to_i
  		call_option(user_selected)


	end


def self.call_option(user_selected)
  if user_selected == 1
      @rolodex.add_new_contact
      puts "\n"
      main_menu
  elsif user_selected == 2
      @rolodex.modify_contact
      main_menu
  elsif user_selected == 3
      @rolodex.delete_contact
      main_menu
  elsif user_selected == 4
      @rolodex.display_all
      main_menu
  elsif user_selected == 5
      @rolodex.display_attribute
       main_menu
  elsif user_selected == 6
    puts "\e[H\e[2J" + "Session Terminated."
  end
end
end

CRM.main_menu
