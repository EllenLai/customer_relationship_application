require_relative 'contact'

class Rolodex

	def initialize
		@contacts =[]
		@id = 1000
	end

	# def add_new_contact(name, age, email)
	# 	@id += 1
	# 	@contacts << Contact.new(@id, name, age, email)
	# 	@contacts.last
	#end

	# def find_contact(id)
	# 	@contacts.each do |c|
	# 		return c if c.id == id
	# 	end		
	# end	

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

def find_contact(name)
	@contacts.select {|contact| contact.name == name}.first
end

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

end