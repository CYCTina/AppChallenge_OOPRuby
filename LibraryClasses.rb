class Library

    def initialize( aName, aAddress, aPhone )
		@name = aName
		@address = aAddress
		@phone = aPhone
	end 

	def printShelf              #return number of shelfs 
		Shelf.printCount()
	end

end 


class Shelf
	
	@@count = 0

	def initialize( aShelfNum, aCategory )
		@shelfNum = aShelfNum
		@category = aCategory

		 @@count += 1
	end 

	def self.printCount()
		puts "shelf count is : #@@count"
	end

end 


class Book

	def initialize( aISBN, aTitle, aAuthor, aPublisher )
		@isbn = aISBN
		@title = aTitle
		@author = aAuthor
		@publisher = aPublisher
	end 

	def setDescription=(value)
		@Description=value 
	end

	def getDescription
		@Description
	end 

	def setShelfNum=(value)
		@shelfNo=value 
	end

	def getShelfNum
		@shelfNo
	end 

	def setShelf=(value)   
		@isOnShelf = value 
	end

	def getShelf
		@isOnShelf
	end 
	
	def to_s
		"ISBN:#@isbn, Author:#@author, Title:#@title, Publisher:#@publisher, Description:#@Description"
	end 

end 


#testing#
book1 = Book.new("123445", "Intro to Ruby", "Jenny Smith", "AAA Publisher")
book1.setDescription = "this is a new ruby book teaching oop."
puts "string representation of book1 is: #{book1}" 

book2 = Book.new("98765431", "Intro to .NET", "Erin Huang", "BBB Publisher")
book2.setDescription = "Master C#/.NET."
puts "string representation of book2 is: #{book2}"

shelf1 = Shelf.new("123", "Programming")
shelf2 = Shelf.new("456", "Science")

library1 = Library.new("SeattleLib", "123 st.", "525-372-444")
puts Shelf.printCount