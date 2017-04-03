<h1> Chapter 4</h1>
<h2> Exercises 4.2.2</h2>

<b>4. What is the result if you replace double quotes with single quotes in the previous exercise?</b>

It prints out the literal string '#{city}, #{state}'

<h2> Exercises 4.2.3</h2>

<b>1. What is the length of the string “racecar”?</b>

The string racecar is 7 characters long.

<b>2. Confirm using the reverse method that the string in the previous exercise is the same when its letters are reversed.</b>

Yes, they're equal

<b>3.Assign the string “racecar” to the variable s. Confirm using the comparison operator == that s and s.reverse are equal.</b>

Confirmed through console.

<b>4. What is the result of running the code shown in Listing 4.9? How does it change if you reassign the variable s to the string “onomatopoeia”? Hint: Use up-arrow to retrieve and edit previous commands</b>

The result is the string "It's a palindrome!" printed. If the variable s is changed, then it's not printed anymore.

<h2>Exercises 4.2.4</h2>

<b>1. By replacing FILL_IN with the appropriate comparison test shown in Listing 4.10, define a method for testing palindromes. <i>Hint: Use the comparison shown in Listing 4.9.</i></b>

s == s.reverse

<b>2.By running your palindrome tester on “racecar” and “onomatopoeia”, confirm that the first is a palindrome and the second isn’t.</b>

Confirmed.

<b>3.By calling the nil? method on palindrome_tester("racecar"), confirm that its return value is nil (i.e., calling nil? on the result of the method should return true). This is because the code in Listing 4.10 prints its responses instead of returning them.</b>

Yes, it returns true.

<h2>Exercises 4.3.1</h2>

<b>1. Assign a to be to the result of splitting the string “A man, a plan, a canal, Panama” on comma-space.</b>

["a man", "a plan", "a canal", "Panama"]

<b>2. Assign s to the string resulting from joining a on nothing.</b>

"A mana plana canalPanama"

<b>3. Split s on whitespace and rejoin on nothing. Use the palindrome test from Listing 4.10 to confirm that the resulting string s is not a palindrome by the current definition. Using the downcase method, show that s.downcase is a palindrome.</b>

>> palindrome_tester(s)
It's not a palindrome.

>> palindrome_tester(s.downcase)
It's a palindrome!

<b>4. What is the result of selecting element 7 from the range of letters a through z? What about the same range reversed? <i>Hint: In both cases you will have to convert the range to an array.</i></b>

From a to z, the 7th element is "h". From z to a, the 7th element is "s"

<h2>Exercises 4.3.2</h2>

<b>1. Using the range 0..16, print out the first 17 powers of 2.</b>

>> (0..16).each { |i| puts 2**i }

<b>2. Define a method called yeller that takes in an array of characters and returns a string with an ALLCAPS version of the input. Verify that yeller([’o’, ’l’, ’d’]) returns "OLD". <i>Hint: Combine map, upcase, and join.</i></b>

>> def yeller(a)
>> a = a.map(&:upcase)
>> puts a.join
>> end

<b>3. Define a method called random_subdomain that returns a randomly generated string of eight letters.</b>

>> def random_subdomain
>> ('a'..'z').to_a.shuffle[0..7].join
>> end

<b>4. By replacing the question marks in Listing 4.12 with the appropriate methods, combine split, shuffle, and join to write a function that shuffles the letters in a given string.</b>

>> def string_shuffle(s)
>> s.split('').shuffle.join
>> end

<h2>Exercises 4.3.3</h2>

<b>1. Define a hash with the keys ’one’, ’two’, and ’three’, and the values ’uno’, ’dos’, and ’tres’. Iterate over the hash, and for each key/value pair print out "’#{key}’ in Spanish is ’#{value}’".</b>

>> hash = {one: "uno", two: "dos", three: "tres"}
=> {:one=>"uno", :two=>"dos", :three=>"tres"}
>> hash.each do |key, value|
?> puts "'#{key}' in Spanish is '#{value}'"
>> end
'one' in Spanish is 'uno'
'two' in Spanish is 'dos'
'three' in Spanish is 'tres'

<b>2. Create three hashes called person1, person2, and person3, with first and last names under the keys :first and :last. Then create a params hash so that params[:father] is person1, params[:mother] is person2, and params[:child] is person3. Verify that, for example, params[:father][:first] has the right value.</b>

>> person1 = { :first => "Guilherme", :last => "Marques" }
=> {:first=>"Guilherme", :last=>"Marques"}
>> person2 = { :first => "Pollyana", :last => "Leschuk" }
=> {:first=>"Pollyana", :last=>"Leschuk"}
>> person3 = { first: "Melany", last: "Marques" }
=> {:first=>"Melany", :last=>"Marques"}
>> params = { :father => person1, :mother => person2, :child => person3 }
=> {:father=>{:first=>"Guilherme", :last=>"Marques"}, :mother=>{:first=>"Pollyana", :last=>"Leschuk"}, :child=>{:first=>"Melany", :last=>"Marques"}}
>> params[:father][:first]
=> "Guilherme"

<b>3. Define a hash with symbol keys corresponding to name, email, and a “password digest”, and values equal to your name, your email address, and a random string of 16 lower-case letters.</b>

>> profile = { name: "Guilherme", email: "gzmarques90@gmail.com", password_digest: random_subdomain + random_subdomain }
=> {:name=>"Guilherme", :email=>"gzmarques90@gmail.com", :password_digest=>"ekvwqxlajaodmyvs"}

<b>4. Find an online version of the Ruby API and read about the Hash method merge. What is the value of the following expression?</b>

>> { a: 100, b: 200}.merge({ b: 300 })
=> {:a=>100, :b=>300}

The merge method will overwrite the duplicate keys with the ones on merged hash. If one'd want other logic, it can be specified on a particular block.

<h2>Exercises 4.4.1</h2>

<b>1. What is the literal constructor for the range of integers from 1 to 10?</b>

(1..10)

<b>2. What is the constructor using the Range class and the new method? Hint: new takes two arguments in this context.</b>

Range.new(1,10)

<b>3. Confirm using the == operator that the literal and named constructors from the previous two exercises are identical.</b>

>> (1..10) == Range.new(1,10)
=> true

<h2>Exercises 4.4.2</h2>

<b>1. What is the class hierarchy for a range? For a hash? For a symbol?</b>

Range < Object < BasicObject
Hash < Object < BasicObject
Symbol < Object < BasicObject

<b>2. Confirm that the method shown in Listing 4.15 works even if we replace self.reverse with just reverse.</b>

It works!

<h2>Exercises 4.4.3</h2>

<b>1. Verify that “racecar” is a palindrome and “onomatopoeia” is not. What about the name of the South Indian language “Malayalam”? <i>Hint: Downcase it first.</i></b>

"racecar" is a palindrome
"onomatopoeia" is not a palindrome
"malayalam" is a palindrome

<b>2. Using Listing 4.16 as a guide, add a shuffle method to the String class. <i>Hint: Refer to Listing 4.12.</i></b>

>> class String
>> def shuffle
>> self.split('').shuffle.join
>> end
>> end

<b>3. Verify that Listing 4.16 works even if you remove self..</b>

Works too!

<h2>Exercises 4.4.4</h2>

<b>1. By running the Rails console in the toy app’s directory from Chapter 2, confirm that you can create a user object using User.new.</b>

It's possible

<b>2. Determine the class hierarchy of the user object.</b>

User < ApplicationRecord < ActiveRecord::Base < Object < BasicObject

<h2>Exercises 4.4.5</h2>

<b>1. In the example User class, change from name to separate first and last name attributes, and then add a method called full_name that returns the first and last names separated by a space. Use it to replace the use of name in the formatted email method.</b>

```ruby
class User
  attr_accessor :first_name, :last_name, :email

  def initialize(attributes = {})
    @first_name  = attributes[:first_name]
    @last_name = attributes[:last_name]
    @email = attributes[:email]
  end

  def formatted_email
    "full_name <#{@email}>"
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end
end
```

<b>2. Add a method called alphabetical_name that returns the last name and first name separated by comma-space.</b>
```ruby
def alphabetical_name
  "#{@last_name}, #{@first_name}"
end
```
<b>3. Verify that full_name.split is the same as alphabetical_name.split(’, ’).reverse.</b>

>> user.full_name.split == user.alphabetical_name.split(', ').reverse
=> true

<h2>Exercises 6.1.1</h2>

<b>1. Rails uses a file called schema.rb in the db/ directory to keep track of the structure of the database (called the schema, hence the filename). Examine your local copy of db/schema.rb and compare its contents to the migration code in Listing 6.2.</b>

The file schema.rb defines the overall structure of the database and the version of each migration, based on model changings. On the other hand, the migration file is the actual ruby code that will create or change the database.

<b>2. Most migrations (including all the ones in this tutorial) are reversible, which means we can “migrate down” and undo them with a single command, called db:rollback:
  $ rails db:rollback
After running this command, examine db/schema.rb to confirm that the rollback was successful. (See Box 3.1 for another technique useful for reversing migrations.) Under the hood, this command executes the drop_table command to remove the users table from the database. The reason this works is that the change method knows that drop_table is the inverse of create_table, which means that the rollback migration can be easily inferred. In the case of an irreversible migration, such as one to remove a database column, it is necessary to define separate up and down methods in place of the single change method. Read about migrations in the Rails Guides for more information.</b>

Yes, it returned to version 0.

<b>3. Re-run the migration by executing rails db:migrate again. Confirm that the contents of db/schema.rb have been restored.</b>

All contents were restored.

</h2>Exercises 6.2.2</h2>

<b>1. Make a new user called u and confirm that it’s initially invalid. What are the full error messages?</b>

>> u.errors.full_messages
=> ["Name can't be blank", "Email can't be blank"]

<b>2. Confirm that u.errors.messages is a hash of errors. How would you access just the email errors?</b>

>> u.errors[:email]
=> ["can't be blank"]

<h2>Exercises 6.3.2</h2>

<b>1. Confirm that a user with valid name and email still isn’t valid overall.</b>

Its not valid indeed.

<b>2. What are the error messages for a user with no password?</b>

>> u.errors.full_messages
=> ["Password can't be blank"]

<h2>Exercises 6.3.3</h2>

<b>1. Confirm that a user with valid name and email but a too-short password isn’t valid.</b>

Confirmed sir!

<b>2. What are the associated error messages?</b>

>> u.errors.full_messages
=> ["Password is too short (minimum is 6 characters)"]
