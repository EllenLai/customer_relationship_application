class Contact
	attr_accessor :name, :age, :email
	attr_reader :id
	def initialize(id, name, age, email)
		@id = id
		@name = name
		@age = age
		@email = email
	end
end




# mina = Contact.new(...)

# rolo = Rolodex.new
# rolo.new_contact



