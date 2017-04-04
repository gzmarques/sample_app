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

<h1>Chapter 6</h1>
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

<h1>Chapter 7</h1>
<h2>Exercises 7.1.1</h2>

<b>1. Visit /about in your browser and use the debug information to determine the controller and action of the params hash.</b>

controller: static_pages
action: about

<b>2. In the Rails console, pull the first user out of the database and assign it to the variable user. What is the output of puts user.attributes.to_yaml? Compare this to using the y method via y user.attributes.</b>

´´´
>> puts user.attributes.to_yaml
---
id: 1
name: Guilherme
email: gzmarques@gmail.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &1 2017-04-03 21:35:59.645054000 Z
  zone: &2 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: \*1
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: &3 2017-04-03 21:35:59.645054000 Z
  zone: \*2
  time: \*3
password_digest: "$2a$10$jOBwHT/S0ALnrJMM8dMnjO62dybjFgnW2zUM.gPMTG14/sXD/A2d6"
´´´

Both commands return the same information

<h2>Exercises 7.1.2</h2>

<b>1. Using embedded Ruby, add the created_at and updated_at “magic column” attributes to the user show page from Listing 7.4.</b>

Done!

<b>2. Using embedded Ruby, add Time.now to the user show page. What happens when you refresh the browser?</b>

The time gets updated.

<h2>Exercises 7.1.3</h2>

<b>1. With the debugger in the show action as in Listing 7.6, hit /users/1. Use puts to display the value of the YAML form of the params hash. <i>Hint: Refer to the relevant exercise in Section 7.1.1.1. How does it compare to the debug information shown by the debug method in the site template?</i></b>

´´´YAML
(byebug) puts params.to_yaml
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  controller: users
  action: show
  id: '1'
´´´

Basically the same layout

<b>2. Put the debugger in the User new action and hit /users/new. What is the value of @user?</b<

@user is nil

<h2>Exercises 7.1.4</h2>

<b>1. Associate a Gravatar with your primary email address if you haven’t already. What is the MD5 hash associated with the image?</b>

The hash is a07c8d858277eea310cd67ff9563b94e

<b>2. Verify that the code in Listing 7.12 allows the gravatar_for helper defined in Section 7.1.4 to take an optional size parameter, allowing code like gravatar_for user, size: 50 in the view. (We’ll put this improved helper to use in Section 10.3.1.)</b>

Resized!

<b>3. The options hash used in the previous exercise is still commonly used, but as of Ruby 2.0 we can use keyword arguments instead. Confirm that the code in Listing 7.13 can be used in place of Listing 7.12. What are the diffs between the two?</b>

Both codes work, yet the latter is simpler for the example. The first code allow more options to be passed by parameter, simply organizing in a hash of options.

<h2>Exercises 7.2.1</h2>

<b>1. In Listing 7.15, replace :name with :nome. What error message do you get as a result?</b>

undefined method 'nome' for #<User:0x007fd755296358>
While trying to retrieve the attribute to render the form, since User doesn't have the 'nome' attribute, Rails can't find wht it's looking for.

<b>2. Confirm by replacing all occurrences of f with foobar that the name of the block variable is irrelevant as far as the result is concerned. Why might foobar nevertheless be a bad choice?</b>

It works, but the code becomes cluttered and hard to read.

<h2>Exercises 7.3.3</h2>

<b>1. Confirm by changing the minimum length of passwords to 5 that the error message updates automatically as well.</b>

Yep!

<b>2. How does the URL on the unsubmitted signup form (Figure 7.12) compare to the URL for a submitted signup form (Figure 7.18)? Why don’t they match?</b>

Because the action defined on the form tells to send a request by POST to /user (and it's truly sent). Then the error manipulation function defined in the controller only tells to render the 'new' partial over the 'yield' part of the layout, without redirecting it to the 'new' page itself.

<h2>Exercises 7.3.4</h2>

<b>1. Write a test for the error messages implemented in Listing 7.20. How detailed you want to make your tests is up to you; a suggested template appears in Listing 7.25.</b>

Done!

<b>2. The URLs for an unsubmitted signup form and for a submitted signup form are /signup and /users, respectively, which don’t match. This is due to our use of a custom named route in the former case (added in Listing 5.43) and a default RESTful route in the latter case (Listing 7.3). Resolve this discrepancy by adding the code shown in Listing 7.26 and Listing 7.27. Submit the new form to confirm that both cases now use the same /signup URL. Are the tests still green? Why?</b>

The tests still work because the information flow didn't change.

<b>3. Update the post in Listing 7.25 to use the new URL from the previous exercise. Confirm that the tests are still green.</b>

Still green!

<b>4. Confirm by reverting Listing 7.27 to its previous form (Listing 7.20) that the tests are still green. This is a problem, because the URL being posted to isn’t right. Add an assert_select to the test in Listing 7.25 to catch this bug and get to red, then change the form back to Listing 7.27 to get the tests green again. <i>Hint: Test for the presence of ’form[action="/signup"]’ before posting to the form in the test.</i></b>

Form and test corrected!

<h2>Exercises 7.4.2</h2>

<b>1. In the console, confirm that you can use interpolation (Section 4.2.2) to interpolate a raw symbol. For example, what is the return value of "#{:success}"?</b>

>> "#{:success}"
=> "success"

<b>2. How does the previous exercise relate to the flash iteration shown in Listing 7.30?</b>

The code in Listing 7.30 also interpolate a raw symbol to print the keys of the flash hash.

<h2>Exercises 7.4.4</h2>

<b>4. Suppose we changed @user.save to false in Listing 7.28. How does this change verify that the assert_difference block is testing the right thing?</b>

It will render 'new' every time, and the user is never saved to the database, because 'User.new' only instantiate the object in memory.
