# Basic Objectives

# Build a contact list
# store all of the contacts, store them in a collection and ref for later
# for a single contact, obj hash email, phone, address, first name, last name
# create a menu
# grab the user input for the menu choice, 1, 2, 3
# 1 - create a contact
  # input and out puts of the fields
  # grab and store the email, phone, address, first name, last name
  # put inside of a contact object 
  # add the object to the collection
# 2) View All Contacts
  # grab the collection of contacts and iterate through each contact 
  # display all of the values in a readable format
 # 3) Exit
  # display good bye message 
  # exit out of the program
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
# The menu should loop until the user exits
# loop, recurision

@contacts = [
  { first_name: 'bob', last_name: 'smith', phone: '123-123-1233', email: 'bob@smith.com', address: '123 street' },
  { first_name: 'jill', last_name: 'joe', phone: '123-223-1233', email: 'jack@smith.com', address: '321 street' },
  { first_name: 'jack', last_name: 'ace', phone: '123-222-1233', email: 'jill@smith.com', address: '456 street' }
]

def menu
  puts "Ruby Contact List"
  puts "1) Create a contact"
  puts "2) View All Contacts"
  puts "3) Exit"
  puts "What do you want to do?"
  menu_choice = gets.strip.to_i
  
  if menu_choice == 1
    create_contact
  elsif menu_choice == 2
    view_contacts
  elsif menu_choice == 3
    puts "Have a nice day"
    exit
  else 
    puts "error, you need to do 1, 2, 3"
  end
  menu
end

def create_contact
  puts "Creating Contact"
  puts "What is the new contact's first name?"
  first_name = gets.strip
  puts "What is the new contact's last name?"
  last_name = gets.strip
  puts "What is the new contact's email?"
  email = gets.strip
  puts "What is the new contact's phone?"
  phone = gets.strip
  puts "What is the new contact's address?"
  address = gets.strip

  new_contact = { first_name: first_name, last_name: last_name, email: email, phone: phone, address: address }
  # p new_contact
  @contacts << new_contact
  # p @contacts
end

def view_contacts
  puts "Viewing all Contacts"

  @contacts.each do |contact|
    puts "First Name: #{contact[:first_name]}"
    puts "Last Name: #{contact[:last_name]}"
    puts "Email: #{contact[:email]}"
    puts "Phone: #{contact[:phone]}"
    puts "Address: #{contact[:address]}"
    puts 
  end

end

menu 