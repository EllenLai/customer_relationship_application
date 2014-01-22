require_relative 'contact'

class Rolodex

	def initialize
		@contacts =[]
		@id = 1000
	end

############# START ADD NEW CONTACT ###################

def add_new_contact
	puts "\n"
  	print "Enter Name: "
  	name = gets.chomp
  	print "Enter Age: "
  	age = gets.chomp
  	print "Enter Email Address: "
  	email = gets.chomp
  	@id += 1
  	contact = Contact.new(@id, name, age, email)
    @contacts << contact
end	

############# END NEW CONTACT ########################



############# START MODIFY CONTACT ###################

def modify_contact
	puts "\n"

	print "Type in the contact name you would like to modify: "
	name = gets.chomp.downcase
	contact = find_contact(name)

	print "Type in the attribute you would like to modify: "
	attribute = gets.chomp

	print "Type in the new attribute description: "
	new_input = gets.chomp.downcase

	contact.name = new_input if attribute == "name"
    contact.age = new_input if attribute === "age"
    contact.email = new_input if attribute == "email"

    puts "\n"

end

############# END NEW CONTACT ########################




############# START DELETE CONTACT ###################

def delete_contact
	puts "\n"
	puts "Enter contact name you would like to delete: "
	name = gets.chomp
	contact = find_contact(name)
	@contacts.delete(contact)
	puts "\n"
	puts "Contact has been deleted"
	puts "\n"

end

############# END DELETE CONTACT ####################




############# START DISPLAY ALL CONTACT #############

def display_all
	@contacts.each do |contact|
	puts "\n"
	puts "Contact ID: #{contact.id}"
	puts "Name: #{contact.name}"
	puts "Age: #{contact.age}"
	puts "Email: #{contact.email}"
	puts "\n"
	end
end

############# END DISPLAY ALL CONTACT ###############



############# ADDITIONAL METHOD: FIND CONTACT (to link into 'display attribute') #############

def find_contact(name)
	@contacts.select {|contact| contact.name == name}.first
end

################### END ADDITIONAL METHOD: FIND CONTACT  #####################################


############# START DISPLAY ATTRIBUTE ###############

def display_attribute
	print "Enter contact name that you would like to display attributes for: "
	name = gets.chomp
	contact = find_contact(name)

	print "Enter the attribute you would like to display: "
	attribute = gets.chomp

	puts "\n"

	if attribute == "name"
		puts "#{contact.name}"
	elsif attribute  == "age"
		puts "#{contact.age}"
	elsif attribute == "email"
		puts "#{contact.email}"
	else
		puts "you haven't put in an attribute"

	end
	puts "\n"
end

############# END DISPLAY ATTRIBUTE ###############

end