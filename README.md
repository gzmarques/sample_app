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

```
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
```

Both commands return the same information

<h2>Exercises 7.1.2</h2>

<b>1. Using embedded Ruby, add the created_at and updated_at “magic column” attributes to the user show page from Listing 7.4.</b>

Done!

<b>2. Using embedded Ruby, add Time.now to the user show page. What happens when you refresh the browser?</b>

The time gets updated.

<h2>Exercises 7.1.3</h2>

<b>1. With the debugger in the show action as in Listing 7.6, hit /users/1. Use puts to display the value of the YAML form of the params hash. <i>Hint: Refer to the relevant exercise in Section 7.1.1.1. How does it compare to the debug information shown by the debug method in the site template?</i></b>

```
(byebug) puts params.to_yaml
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  controller: users
  action: show
  id: '1'
```

Basically the same layout

<b>2. Put the debugger in the User new action and hit /users/new. What is the value of @user?</b>

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

<h1>Chapter 8</h1>
<h2>Exercises 8.1.1</h2>

<b>1. What is the difference between GET login_path and POST login_path?</b>

GET login_path will send a request to retrieve the page underlying in the sessions#new controller. POST login_path will send the login data to the server, to proccess the authentication.

<b>2. By piping the results of rails routes to grep, list all the routes associated with the Users resource. Do the same for Sessions. How many routes does each resource have? <i>Hint: Refer to the section on grep in Learn Enough Command Line to Be Dangerous.</i></b>

```
  signup GET    /signup(.:format)         users#new
         POST   /signup(.:format)         users#create
   users GET    /users(.:format)          users#index
         POST   /users(.:format)          users#create
new_user GET    /users/new(.:format)      users#new
edit_user GET    /users/:id/edit(.:format) users#edit
    user GET    /users/:id(.:format)      users#show
         PATCH  /users/:id(.:format)      users#update
         PUT    /users/:id(.:format)      users#update
         DELETE /users/:id(.:format)      users#destroy
```
```
login GET    /login(.:format)          sessions#new
      POST   /login(.:format)          sessions#create
logout DELETE /logout(.:format)         sessions#destroy
```

<h2>Exercises 8.1.2</h2>

<b>1. Submissions from the form defined in Listing 8.4 will be routed to the Session controller’s create action. How does Rails know to do this? Hint: Refer to Table 8.1 and the first line of Listing 8.5.</b>

Because the HTTP Verb POST defined in the form method and the controller#action syntax used in rails routes.

<h2>Exercises 8.2.1</h2>

<b>1. Log in with a valid user and inspect your browser’s cookies. What is the value of the session content? <i>Hint: If you don’t know how to view your browser’s cookies, Google for it (Box 1.1).</i></b>

The session value is eFVrREZqVGdEY1VBVFZocDFaWDVNUmlvdzN1NU0wU3Y4bmU3cWN3UzRCeVBZQ0NKTEdEa25Vb3hBVUtSOU1ucW91bi9QcDdXNDZ0bFcrWlhpYkJLNExmMmUvV0JDcE1tLzlQYkJ2RUZCcDVjVXJYTUFWeWhyZ2Z6UlVDQ1hSQlMwZUVRUWcyelBBb25EOFNUbGhZbnA0VHVXNnJnckdMRjNtaXlUK2UwdEE0PS0tcEVKTFR2TGxvVU1ZQVJKNGtkSWdVdz09

<b>2. What is the value of the Expires attribute from the previous exercise?</b>

The value is "Session"

<h2>Exercises 8.2.3</h2>

<b>1. Confirm at the console that User.find_by(id: ...) returns nil when the corresponding user doesn’t exist.</b>

Yes, it does.

<b>2. In a Rails console, create a session hash with key :user_id. By following the steps in Listing 8.17, confirm that the ||= operator works as required.</b>

```
>> session = {}
=> {}
>> session[:user_id] = nil
=> nil
>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.9ms)  SELECT  "users".* FROM "users" WHERE "users"."id" IS NULL LIMIT ?  [["LIMIT", 1]]
=> nil
>> session[:user_id]= User.first.id
  User Load (0.4ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 1
>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.3ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=> #<User id: 1, name: "Rails Tutorial", email: "example@railstutorial.org", created_at: "2017-04-04 00:10:07", updated_at: "2017-04-04 00:10:07", password_digest: "$2a$10$3yYT4CWiMnAzgb7Ew/dxjurZU8Tu7VXKkRs00cB6eWu...">
```

<h2>Exercises 8.2.5</h2>

<b>1. Is the test suite red or green if you comment out the log_in line in Listing 8.25?</b>

Test gets red, because the user don't get logged in after the sign up.

<b>By using your text editor’s ability to comment out code, toggle back and forth between commenting out code in Listing 8.25 and confirm that the test suite toggles between red and green. (You will need to save the file between toggles.)</b>

Yes, it does.

<h1>Chapter 9</h1>
<h2>Exercises 9.1.1</h2>

<b>1. In the console, assign user to the first user in the database, and verify by calling it directly that the remember method works. How do remember_token and remember_digest compare?</b>

They're much alike "key => hashed key". The remeber_token is the generated key and remember_digest is the store-ready hashed key.

<b>2. In Listing 9.3, we defined the new token and digest class methods by explicitly prefixing them with User. This works fine and, because they are actually called using User.new_token and User.digest, it is probably the clearest way to define them. But there are two perhaps more idiomatically correct ways to define class methods, one slightly confusing and one extremely confusing. By running the test suite, verify that the implementations in Listing 9.4 (slightly confusing) and Listing 9.5 (extremely confusing) are correct. (Note that, in the context of Listing 9.4 and Listing 9.5, self is the User class, whereas the other uses of self in the User model refer to a user object instance. This is part of what makes them confusing.)</b>

Works, and liked the second one better. Left that way in code, as it creates a pseudo-namespace inside the class with class methods, instead of laying down "User.method"s.

<h1>Chapter 10</h1>
<h2>Exercises 10.1.4</h2>

<b>1. Double-check that you can now make edits by making a few changes on the development version of the application.</b>

OK

<b>2. What happens when you change the email address to one without an associated Gravatar?</b>

Gravatar sends a default image to fill the space.

<h2>Exercises 10.2.1</h2>

<b>1. As noted above, by default before filters apply to every action in a controller, which in our cases is an error (requiring, e.g., that users log in to hit the signup page, which is absurd). By commenting out the only: hash in Listing 10.15, confirm that the test suite catches this error.</b>

The snippet
```
FAIL["test_invalid_signup_information", UsersSignupTest, 0.2184266750000461]
 test_invalid_signup_information#UsersSignupTest (0.22s)
        expecting <"users/new"> but rendering with <[]>
        test/integration/users_signup_test.rb:12:in 'block in <class:UsersSignupTest>'
```
tells that the user was redirected while trying to reach the sign up page.

<h2>Exercises 10.2.2</h2>

<b>1. Why is it important to protect both the edit and update actions?</b>

To prevent that any user (or even not a user!) to mess with someone's account.

<b>2. Which action could you more easily test in a browser?</b>

The edit action would be easier debugged, because it doesn't require to inspect the post params sent by the update action, only the access to the edit page.

<h2>Exercises 10.2.3</h2>

<b>1. Write a test to make sure that friendly forwarding only forwards to the given URL the first time. On subsequent login attempts, the forwarding URL should revert to the default (i.e., the profile page). <i>Hint: Add to the test in Listing 10.29 by checking for the right value of session[:forwarding_url].</i></b>

Checked!

<b>2. Put a debugger (Section 7.1.3) in the Sessions controller’s new action, then log out and try to visit /users/1/edit. Confirm in the debugger that the value of session[:forwarding_url] is correct. What is the value of request.get? for the new action? (Sometimes the terminal can freeze up or act strangely when you’re using the debugger; use your technical sophistication (Box 1.1) to resolve any issues.)</b>

session[:forwarding_url]
"http://localhost:3000/users/1/edit"

request.get?
true

<h2>Exercises 10.3.3</h2>

<b>1. Confirm at the console that setting the page to nil pulls out the first page of users.</b>

Confirmed!

<b>2. What is the Ruby class of the pagination object? How does it compare to the class of User.all?</b>

The pagination object belongs to ActiveRecord_Relation, same as the User.all class.

<h2>Exercises 10.3.4</h2>

<b>1. By commenting out the pagination links in Listing 10.45, confirm that the test in Listing 10.48 goes red.</b>

Red it is!

<b>2. Confirm that commenting out only one of the calls to will_paginate leaves the tests green. How would you test for the presence of both sets of will_paginate links? <i>Hint: Use a count from Table 5.2.</i></b>

Would be as follow:
```
assert_select 'div.pagination', count: 2
```

<h2>Exercises 10.4.2</h2>

<b>1. As the admin user, destroy a few sample users through the web interface. What are the corresponding entries in the server log?</b>

```
Started DELETE "/users/3" for 127.0.0.1 at 2017-04-11 11:42:16 -0300
Processing by UsersController#destroy as HTML
  Parameters: {"authenticity_token"=>"dQCK6TKi6gectDc3ITlCo/4l2fhX5kch5jQL4jN1Dt2xxgYuCWblHJL/sxB1PCuB7K33C3jKpyArkxmgTgaALg==", "id"=>"3"}
  User Load (0.1ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  User Load (0.1ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
   (0.2ms)  begin transaction
  SQL (3.1ms)  DELETE FROM "users" WHERE "users"."id" = ?  [["id", 3]]
   (7.9ms)  commit transaction
Redirected to http://localhost:3000/users
Completed 302 Found in 22ms (ActiveRecord: 11.3ms)
```

<h1>Chapter 11</h1>
<h2>Exercises 11.1.1</h2>

<b>1. Verify that the test suite is still green.</b>

Green as grass.

<b>2. Why does Table 11.2 list the \_url form of the named route instead of the \_path form? <i>Hint: We’re going to use it in an email.</i></b>

Because the \_url form returns the absolute path, so a link in an external email can find the root of the app. The \_path url is a relative and therefore only works inside the app.

<h2>Exercises 11.1.2</h2>

<b>1. Verify that the test suite is still green after the changes made in this section.</b>

Green as #00FF00

<b>2. By instantiating a User object in the console, confirm that calling the create_activation_digest method raises a NoMethodError due to its being a private method. What is the value of the user’s activation digest?</b>

```
>> user.activation_digest
=> "$2a$10$gBjsTye8Vt6olrYLnW0NdeokkFC6C0riNqQ9vjUras1203zVaDUNe"
```

<b>3. In Listing 6.34, we saw that email downcasing can be written more simply as email.downcase! (without any assignment). Make this change to the downcase_email method in Listing 11.3 and verify by running the test suite that it works.</b>

workworkwork

<h2>Exercises 11.2.1</h2>

<b>1. At the console, verify that the escape method in the CGI module escapes out the email address as shown in Listing 11.15. What is the escaped value of the string "Don’t panic!"?</b>

```
>> CGI.escape("Don't panic!")
=> "Don%27t+panic%21"
```

<h2>Exercises 11.2.2</h2>

<b>1. Preview the email templates in your browser. What do the Date fields read for your previews?</b>

It reads the moment date.

<h2>Exercises 11.2.4</h2>

<b>1. Sign up as a new user and verify that you’re properly redirected. What is the content of the generated email in the server log? What is the value of the activation token?</b>

Properly redirected with flash message.
Activation token is:
```
>> User.last.activation_digest
  User Load (0.3ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT ?  [["LIMIT", 1]]
=> "$2a$10$YltIDlxAj6pPQLraevqdvu2.ggWE4R9tT5nnBLDcXOZtHc8lLLPgS"
```
and content is as follows:
```
UserMailer#account_activation: processed outbound mail in 10.3ms
Sent mail to awws@fff.com (8.6ms)
Date: Tue, 11 Apr 2017 16:49:43 -0300
From: noreply@example.com
To: awws@fff.com
Message-ID: <58ed3357e6bbf_20a71545d847894c@TheCore.mail>
Subject: Account activation
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_58ed3357e5719_20a71545d847887a";
 charset=UTF-8
Content-Transfer-Encoding: 7bit


----==_mimepart_58ed3357e5719_20a71545d847887a
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi fwafw,

Welcome to the Sample App! Click on the link below to activate your account:

https://localhost:3000/account_activations/4a4C3lJYoMUKdnvyOZ1X_w/edit?email=awws%40fff.com


----==_mimepart_58ed3357e5719_20a71545d847887a
Content-Type: text/html;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
      /* Email styles need to be inline */
    </style>
  </head>

  <body>
    <h1>Sample App</h1>

<p>Hi fwafw,</p>

<p>
Welcome to the Sample App! Click on the link below to activate your account:
</p>

<a href="https://localhost:3000/account_activations/4a4C3lJYoMUKdnvyOZ1X_w/edit?email=awws%40fff.com">Activate</a>

  </body>
</html>

----==_mimepart_58ed3357e5719_20a71545d847887a--

Redirected to http://localhost:3000/

```

<b>2. Verify at the console that the new user has been created but that it is not yet activated.</b>

```
>> User.last.activated?
  User Load (0.3ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" DESC LIMIT ?  [["LIMIT", 1]]
=> false
```

<h2>Exercises 11.3.1</h2>

<b>1. Create and remember new user at the console. What are the user’s remember and activation tokens? What are the corresponding digests?</b>

```
>> u = User.create!(name: 'newuser', email: 'mail@mail.com', password: 'abc123', password_confirmation: 'abc123')

>> u.remember

>> u.remember_token
=> "wpn0lVG7mr6dNFM5wnxDpw"

>> u.remember_digest
=> "$2a$10$7rwZm3wU6ea38QMr.44FCO/2mNq/k0ieqtcBdmn/ctjOlOP134psu"
```

<b>2. Using the generalized authenticated? method from Listing 11.26, verify that the user is authenticated according to both the remember token and the activation token.</b>

```
>> u.authenticated?(:remember, u.remember_token)
=> true
>> u.activated?
=> false
```

<h2>Exercises 11.3.2</h2>

<b>1. Paste in the URL from the email generated in Section 11.2.4. What is the activation token?</b>

https://localhost:3000/account_activations/Xt8CTrkQJq6_8EIeP--6ZA/edit?email=ggg%40aaa.com

and the token is inserted in the URL as "Xt8CTrkQJq6_8EIeP--6ZA".

<b>2. Verify at the console that the User is authenticated according to the activation token in the URL from the previous exercise. Is the user now activated?</b>

```
>> u.authenticated?(:activation, "Xt8CTrkQJq6_8EIeP--6ZA")
=> true
>> u.activated?
=> true
```

<h2>Exercises 11.4.1</h2>

<b>1. Sign up for a new account in production. Did you get the email?</b>

Yes!

```
from:	noreply@example.com via sendgrid.me
to:	marquesg@alunos.utfpr.edu.br
date:	Fri, Apr 14, 2017 at 5:44 AM
subject:	Account activation
signed-by:	sendgrid.me
encryption:	Standard (TLS) Learn more
```

<b>2. Click on the link in the activation email to confirm that it works. What is the corresponding entry in the server log? Hint: Run heroku logs at the command line.</b>

```
2017-04-14T08:57:31.651190+00:00 app[web.1]: I, [2017-04-14T08:57:31.651097 #6]  INFO -- : [581fc4de-1c69-441b-83d9-5d6586682a82] Processing by AccountActivationsController#edit as HTML
2017-04-14T08:57:31.651285+00:00 app[web.1]: I, [2017-04-14T08:57:31.651232 #6]  INFO -- : [581fc4de-1c69-441b-83d9-5d6586682a82]   Parameters: {"email"=>"marquesg@alunos.utfpr.edu.br", "id"=>"uFI7jfOaY0lX1CDI4BPffw"}
2017-04-14T08:57:31.833736+00:00 app[web.1]: D, [2017-04-14T08:57:31.833631 #6] DEBUG -- : [581fc4de-1c69-441b-83d9-5d6586682a82]   SQL (1.9ms)  UPDATE "users" SET "activated" = 't', "activated_at" = '2017-04-14 08:57:31.830099' WHERE "users"."id" = $1  [["id", 102]]
2017-04-14T08:57:31.647368+00:00 app[web.1]: I, [2017-04-14T08:57:31.647281 #6]  INFO -- : [581fc4de-1c69-441b-83d9-5d6586682a82] Started GET "/account_activations/uFI7jfOaY0lX1CDI4BPffw/edit?email=marquesg%40alunos.utfpr.edu.br" for 177.79.71.91 at 2017-04-14 08:57:31 +0000
2017-04-14T08:57:31.835660+00:00 app[web.1]: D, [2017-04-14T08:57:31.835589 #6] DEBUG -- : [581fc4de-1c69-441b-83d9-5d6586682a82]    (0.4ms)  BEGIN
2017-04-14T08:57:31.661949+00:00 app[web.1]: D, [2017-04-14T08:57:31.661791 #6] DEBUG -- : [581fc4de-1c69-441b-83d9-5d6586682a82]   User Load (0.9ms)  SELECT  "users".* FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "marquesg@alunos.utfpr.edu.br"], ["LIMIT", 1]]
2017-04-14T08:57:31.843202+00:00 app[web.1]: D, [2017-04-14T08:57:31.843127 #6] DEBUG -- : [581fc4de-1c69-441b-83d9-5d6586682a82]   SQL (2.0ms)  UPDATE "users" SET "activated_at" = $1, "updated_at" = $2 WHERE "users"."id" = $3  [["activated_at", 2017-04-14 08:57:31 UTC], ["updated_at", 2017-04-14 08:57:31 UTC], ["id", 102]]
2017-04-14T08:57:31.855999+00:00 app[web.1]: I, [2017-04-14T08:57:31.855916 #6]  INFO -- : [581fc4de-1c69-441b-83d9-5d6586682a82] Redirected to https://gzmarques-sample-app.herokuapp.com/users/102
2017-04-14T08:57:31.844911+00:00 app[web.1]: D, [2017-04-14T08:57:31.844858 #6] DEBUG -- : [581fc4de-1c69-441b-83d9-5d6586682a82]    (1.2ms)  COMMIT
2017-04-14T08:57:31.856322+00:00 app[web.1]: I, [2017-04-14T08:57:31.856251 #6]  INFO -- : [581fc4de-1c69-441b-83d9-5d6586682a82] Completed 302 Found in 205ms (ActiveRecord: 7.0ms)
2017-04-14T08:57:31.865738+00:00 heroku[router]: at=info method=GET path="/account_activations/uFI7jfOaY0lX1CDI4BPffw/edit?email=marquesg%40alunos.utfpr.edu.br" host=gzmarques-sample-app.herokuapp.com request_id=581fc4de-1c69-441b-83d9-5d6586682a82 fwd="177.79.71.91" dyno=web.1 connect=1ms service=213ms status=302 bytes=1037 protocol=https
```

<h1>Chapter 12</h1>
<h2>Exercises 12.1.1</h2>

<b>1. Verify that the test suite is still green.</b>

Green as expected.

<b>2. Why does Table 12.1 list the \_url form of the edit named route instead of the \_path form? Hint: The answer is the same as for the similar account activations exercise (Section 11.1.1.1).</b>

Because as this link will be present inside the mail sent, it has to be accessed from outside the root of the app, therefore demanding a full absolute URL instead of a relative path.

<h2>Exercises 12.1.2</h2>

<b>1. Why does the form_for in Listing 12.4 use :password_reset instead of @password_reset?</b>

Because @password_reset ships unused features to the form, as password_reset is not a model itself. Passing :password_reset allow us to control the url and free up the form to control table inheritance-oriented fields.

<h2>Exercises 12.1.3</h2>

<b>1. Submit a valid email address to the form shown in Figure 12.6. What error message do you get?</b>

I got "wrong number of arguments (given 1, expected 0)"

<b>2. Confirm at the console that the user in the previous exercise has valid reset_digest and reset_sent_at attributes, despite the error. What are the attribute values?</b>

Yes, it does. The values are the following:
```
>> u.reset_digest
=> "$2a$10$byYAECQudzX0BZ/Sqxx0ZO2BS3TISy7y7bSQTM7aCRMPDa/NxZUVC"
>> u.reset_sent_at
=> Fri, 14 Apr 2017 09:42:08 UTC +00:00
```
<h2>Exercises 12.2.1</h2>

<b>1. Preview the email templates in your browser. What do the Date fields read for your previews?</b>

It shows the present date.

<b>2. Submit a valid email address to the new password reset form. What is the content of the generated email in the server log?</b>

The content is as follow:
```
Started POST "/password_resets" for 127.0.0.1 at 2017-04-14 07:06:51 -0300
Processing by PasswordResetsController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"y5QnSEvEfcDILNo9nZ3G0PiMLLdDL4UnUuwzZMTHmIkPUquPcABy28ZnXhrJmK/y6gQCRGwDZSafSyEmubQWeg==", "password_reset"=>"[FILTERED]", "commit"=>"Submit"}
  User Load (0.1ms)  SELECT  "users".* FROM "users" WHERE "users"."email" = ? LIMIT ?  [["email", "gzmarques90@gmail.com"], ["LIMIT", 1]]
   (0.1ms)  begin transaction
  SQL (0.5ms)  UPDATE "users" SET "reset_digest" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["reset_digest", "$2a$10$bXQr5WT/nTQCw.X1CFlX7el6wrurH.Hqo9clWkREdHx4eObXIKL9e"], ["updated_at", 2017-04-14 10:06:51 UTC], ["id", 2]]
   (5.5ms)  commit transaction
   (0.1ms)  begin transaction
  SQL (2.0ms)  UPDATE "users" SET "updated_at" = ?, "reset_sent_at" = ? WHERE "users"."id" = ?  [["updated_at", 2017-04-14 10:06:51 UTC], ["reset_sent_at", 2017-04-14 10:06:51 UTC], ["id", 2]]
   (5.0ms)  commit transaction
  Rendering user_mailer/password_reset.html.erb within layouts/mailer
  Rendered user_mailer/password_reset.html.erb within layouts/mailer (4.4ms)
  Rendering user_mailer/password_reset.text.erb within layouts/mailer
  Rendered user_mailer/password_reset.text.erb within layouts/mailer (0.7ms)
UserMailer#password_reset: processed outbound mail in 207.1ms
Sent mail to gzmarques90@gmail.com (7.7ms)
Date: Fri, 14 Apr 2017 07:06:52 -0300
From: noreply@example.com
To: gzmarques90@gmail.com
Message-ID: <58f09f3cf65d_20472b50f84523c8@TheCore.mail>
Subject: Password reset
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="--==_mimepart_58f09f3ce7ea_20472b50f84522b7";
 charset=UTF-8
Content-Transfer-Encoding: 7bit


----==_mimepart_58f09f3ce7ea_20472b50f84522b7
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

To reset your password click the link below:

https://localhost:3000/password_resets/P7f9bLWohoAA4ccnMhp8dw/edit?email=gzmarques90%40gmail.com

This link will expire in two hours.

If you did not request your password to be reset, please ignore this email and
your password will stay as it is.


----==_mimepart_58f09f3ce7ea_20472b50f84522b7
Content-Type: text/html;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
      /* Email styles need to be inline */
    </style>
  </head>

  <body>
    <h1>Password reset</h1>

<p>To reset your password click the link below:</p>

<a href="https://localhost:3000/password_resets/P7f9bLWohoAA4ccnMhp8dw/edit?email=gzmarques90%40gmail.com">Reset password</a>

<p>This link will expire in two hours.</p>

<p>
If you did not request your password to be reset, please ignore this email and
your password will stay as it is.
</p>

  </body>
</html>

----==_mimepart_58f09f3ce7ea_20472b50f84522b7--

Redirected to http://localhost:3000/
Completed 302 Found in 324ms (ActiveRecord: 13.9ms)
```

<b>3. At the console, find the user object corresponding to the email address from the previous exercise and verify that it has valid reset_digest and reset_sent_at attributes.</b>

Yes, it does, and with reset_sent_at updated:
```
>> u.reset_digest
=> "$2a$10$bXQr5WT/nTQCw.X1CFlX7el6wrurH.Hqo9clWkREdHx4eObXIKL9e"
>> u.reset_sent_at
=> Fri, 14 Apr 2017 10:06:51 UTC +00:00
```

<h2>Exercises 12.2.2</h2>

<b>1. Run just the mailer tests. Are they green?</b>

Yes, as shown by the command $rails test:mailers

<b>2. Confirm that the test goes red if you remove the second call to CGI.escape in Listing 12.12.</b>

Yes, it's no more escaping the email to build the URL

<h2>Exercises 12.3.1</h2>

<b>1. Follow the link in the email from the server log in Section 12.2.1.1. Does it properly render the form as shown in Figure 12.11?</b>

Yes, the form is properly rendered

<b>2. What happens if you submit the form from the previous exercise?</b>

Rails says there's no implemented update action in the controller

<h2>Exercises 12.3.2</h2>

<b>1. Follow the email link from Section 12.2.1.1 again and submit mismatched passwords to the form. What is the error message?</b>

The error message is "Password confirmation doesn't match Password"

<b>2. In the console, find the user belonging to the email link, and retrieve the value of the password_digest attribute. Now submit valid matching passwords to the form shown in Figure 12.12. Did the submission appear to work? How did it affect the value of password_digest? <i>Hint: Use user.reload to retrieve the new value.</i></b>

It's working, because the password_digest attribute has changed:
```
>> u.password_digest
=> "$2a$10$9rZqdQw/IIqd0Y8ZaLvmU.OCYWTk2u8EPSSVq7oFJRuw3PdxoSJDO"
>> u.reload
>> u.password_digest
=> "$2a$10$bFt.ezWtiwiH/D8tFVFmv.q5UXWCtY.5As4Sgz.EHSYq7hePryxze"
```

<h2>Exercises 12.4.1</h2>

<b>1. Sign up for a new account in production. Did you get the email?</b>

Yes
```
de:	noreply@example.com por  sendgrid.me
para:	pollyana.leschuk@gmail.com
data:	14 de abril de 2017 08:01
assunto:	Account activation
enviado por:	sendgrid.net
assinado por:	sendgrid.me
criptografia:	Padrão (TLS) Saiba mais
```

<b>2. Click on the link in the activation email to confirm that it works. What is the corresponding entry in the server log? Hint: Run heroku logs at the command line.</b>

Logs are as follow:
```
2017-04-14T11:03:14.380717+00:00 heroku[router]: at=info method=GET path="/account_activations/QJI3oczDvCv3IeVgE124Sw/edit?email=pollyana.leschuk%40gmail.com" host=gzmarques-sample-app.herokuapp.com request_id=5818a3a8-d643-4ba2-9798-85e0a62cbc07 fwd="177.79.67.215" dyno=web.1 connect=0ms service=90ms status=302 bytes=955 protocol=https
2017-04-14T11:03:14.291340+00:00 app[web.1]: I, [2017-04-14T11:03:14.291247 #6]  INFO -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07] Started GET "/account_activations/QJI3oczDvCv3IeVgE124Sw/edit?email=pollyana.leschuk%40gmail.com" for 177.79.67.215 at 2017-04-14 11:03:14 +0000
2017-04-14T11:03:14.293158+00:00 app[web.1]: I, [2017-04-14T11:03:14.293088 #6]  INFO -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07] Processing by AccountActivationsController#edit as HTML
2017-04-14T11:03:14.293256+00:00 app[web.1]: I, [2017-04-14T11:03:14.293197 #6]  INFO -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07]   Parameters: {"email"=>"pollyana.leschuk@gmail.com", "id"=>"QJI3oczDvCv3IeVgE124Sw"}
2017-04-14T11:03:14.298011+00:00 app[web.1]: D, [2017-04-14T11:03:14.297950 #6] DEBUG -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07]   User Load (0.9ms)  SELECT  "users".* FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "pollyana.leschuk@gmail.com"], ["LIMIT", 1]]
2017-04-14T11:03:14.372568+00:00 app[web.1]: D, [2017-04-14T11:03:14.372443 #6] DEBUG -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07]   SQL (1.9ms)  UPDATE "users" SET "activated" = 't', "activated_at" = '2017-04-14 11:03:14.369606' WHERE "users"."id" = $1  [["id", 103]]
2017-04-14T11:03:14.373842+00:00 app[web.1]: D, [2017-04-14T11:03:14.373794 #6] DEBUG -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07]    (0.6ms)  BEGIN
2017-04-14T11:03:14.376769+00:00 app[web.1]: D, [2017-04-14T11:03:14.376717 #6] DEBUG -- : [5818a3a8-d643-4ba2-9798-85e0a62cbc07]   SQL (0.8ms)  UPDATE "users" SET "activated_at" = $1, "updated_at" = $2 WHERE "users"."id" = $3  [["activated_at", 2017-04-14 11:03:14 UTC], ["updated_at", 2017-04-14 11:03:14 UTC], ["id", 103]]
```

<b>3. Are you able to successfully update your password?</b>

Perfectly possible:
```
2017-04-14T11:10:24.196801+00:00 app[web.1]: I, [2017-04-14T11:10:24.196693 #10]  INFO -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2] Started PATCH "/password_resets/OfSOv4EwSmOhoNyLOEDOMg" for 177.79.67.215 at 2017-04-14 11:10:24 +0000
2017-04-14T11:10:24.198346+00:00 app[web.1]: I, [2017-04-14T11:10:24.198280 #10]  INFO -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2] Processing by PasswordResetsController#update as HTML
2017-04-14T11:10:24.198451+00:00 app[web.1]: I, [2017-04-14T11:10:24.198383 #10]  INFO -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]   Parameters: {"utf8"=>"✓", "authenticity_token"=>"Xgx9Mkf8duxpJtra87h/qA2n1Godfaea/5CT09ek5FE0kgzuDnZwdz444MlFGcIedWfYQJGlloYQBeyZCouyow==", "email"=>"pollyana.leschuk@gmail.com", "user"=>{"password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Update password", "id"=>"OfSOv4EwSmOhoNyLOEDOMg"}
2017-04-14T11:10:24.223558+00:00 app[web.1]: D, [2017-04-14T11:10:24.223438 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]   User Load (1.3ms)  SELECT  "users".* FROM "users" WHERE "users"."email" = $1 LIMIT $2  [["email", "pollyana.leschuk@gmail.com"], ["LIMIT", 1]]
2017-04-14T11:10:24.321463+00:00 app[web.1]: D, [2017-04-14T11:10:24.321358 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]    (2.0ms)  BEGIN
2017-04-14T11:10:24.400625+00:00 app[web.1]: D, [2017-04-14T11:10:24.400505 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]   User Exists (1.2ms)  SELECT  1 AS one FROM "users" WHERE LOWER("users"."email") = LOWER($1) AND ("users"."id" != $2) LIMIT $3  [["email", "pollyana.leschuk@gmail.com"], ["id", 103], ["LIMIT", 1]]
2017-04-14T11:10:24.406108+00:00 app[web.1]: D, [2017-04-14T11:10:24.406022 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]   SQL (0.8ms)  UPDATE "users" SET "password_digest" = $1, "updated_at" = $2 WHERE "users"."id" = $3  [["password_digest", "$2a$10$lovTIdryEZ2XpcQGinNggeUWqhM0k0HiMFInlEIzMap4NYCqFTo2u"], ["updated_at", 2017-04-14 11:10:24 UTC], ["id", 103]]
2017-04-14T11:10:24.408765+00:00 app[web.1]: D, [2017-04-14T11:10:24.408694 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]    (1.7ms)  COMMIT
2017-04-14T11:10:24.411056+00:00 app[web.1]: D, [2017-04-14T11:10:24.410230 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]    (1.0ms)  BEGIN
2017-04-14T11:10:24.413857+00:00 app[web.1]: D, [2017-04-14T11:10:24.413798 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]   SQL (1.0ms)  UPDATE "users" SET "reset_digest" = $1, "updated_at" = $2 WHERE "users"."id" = $3  [["reset_digest", nil], ["updated_at", 2017-04-14 11:10:24 UTC], ["id", 103]]
2017-04-14T11:10:24.415936+00:00 app[web.1]: D, [2017-04-14T11:10:24.415868 #10] DEBUG -- : [4607d1c7-fc08-45b9-a1d4-2edb6a5027e2]    (1.6ms)  COMMIT
```

<h1>Chapter 13</h1>
<h2>Exercises 13.1.1</h2>

<b>1. Using Micropost.new in the console, instantiate a new Micropost object called micropost with content “Lorem ipsum” and user id equal to the id of the first user in the database. What are the values of the magic columns created_at and updated_at?</b>

They're both nil
```
>> micropost.created_at
=> nil
>> micropost.updated_at
=> nil
```

<b>2.What is micropost.user for the micropost in the previous exercise? What about micropost.user.name?</b>

```
>> micropost.user.name
=> "Example User"
```

<b>3. Save the micropost to the database. What are the values of the magic columns now?</b>

After saving, their values got set.
```
>> micropost.save
>> micropost.created_at
=> Fri, 14 Apr 2017 20:36:05 UTC +00:00
>> micropost.updated_at
=> Fri, 14 Apr 2017 20:36:05 UTC +00:00
```

<h2>Exercises 13.1.2</h2>

<b>1. At the console, instantiate a micropost with no user id and blank content. Is it valid? What are the full error messages?</b>

It's not valid, and messages are the following:
```
>> y m.errors.messages
---
:user:
- must exist
:user_id:
- can't be blank
:content:
- can't be blank
```

<b>2. At the console, instantiate a second micropost with no user id and content that’s too long. Is it valid? What are the full error messages?</b>

It's not valid either, and the error messages are:
```
>> y m2.errors.messages
---
:user:
- must exist
:user_id:
- can't be blank
:content:
- is too long (maximum is 140 characters)
```

<h2>Exercises 13.1.3</h2>

<b>1. Set user to the first user in the database. What happens when you execute the command micropost = user.microposts.create(content: "Lorem ipsum")?</b>

The new micropost is saved to the database, vinculated to the first user, as shown in the micropost user_id attribute.

<b>2. The previous exercise should have created a micropost in the database. Confirm this by running user.microposts.find(micropost.id). What if you write micropost instead of micropost.id?</b>

Both commands works the same way, but the latter throws a deprecation warning when passing the instance instead of its id.

<b>3. What is the value of user == micropost.user? How about user.microposts.first == micropost?</b>

Both are true.

<h2>Exercises 13.1.4</h2>

<b>1. How does the value of Micropost.first.created_at compare to Micropost.last.created_at?</b>

The first is newer than the last
```
>> Micropost.first.created_at
=> Fri, 14 Apr 2017 21:05:26 UTC +00:00
>> Micropost.last.created_at
=> Fri, 14 Apr 2017 20:36:05 UTC +00:00
```

<b>2. What are the SQL queries for Micropost.first and Micropost.last? Hint: They are printed out by the console.</b>

```
>> Micropost.first
  Micropost Load (0.5ms)  SELECT  "microposts".* FROM "microposts" ORDER BY "microposts"."created_at" DESC LIMIT ?  [["LIMIT", 1]]
```
```
>> Micropost.last
  Micropost Load (0.5ms)  SELECT  "microposts".* FROM "microposts" ORDER BY "microposts"."created_at" ASC LIMIT ?  [["LIMIT", 1]]
```

<b>3. Let user be the first user in the database. What is the id of its first micropost? Destroy the first user in the database using the destroy method, then confirm using Micropost.find that the user’s first micropost was also destroyed.</b>

```
>> user.microposts.first.id
=> 2
>> user.destroy
=> ...
>> Micropost.find(2)
  ActiveRecord::RecordNotFound: Couldn't find Micropost with 'id'=2
```

<h2>Exercises 13.2.1</h2>

<b>1. As mentioned briefly in Section 7.3.3, helper methods like time_ago_in_words are available in the Rails console via the helper object. Using helper, apply time_ago_in_words to 3.weeks.ago and 6.months.ago.</b>

```
>> helper.time_ago_in_words(3.weeks.ago)
=> "21 days"
>> helper.time_ago_in_words(6.months.ago)
=> "6 months"
```

<b>2. What is the result of helper.time_ago_in_words(1.year.ago)?</b>

```
>> helper.time_ago_in_words(1.year.ago)
=> "about 1 year"
```

<b>3. What is the Ruby class for a page of microposts? <i>Hint: Use the code in Listing 13.23 as your model, and call the class method on paginate with the argument page: nil.</i></b>

```
>> microposts.class
=> Micropost::ActiveRecord_AssociationRelation
```

<h2>Exercises 13.2.2</h2>

<b>1. See if you can guess the result of running (1..10).to_a.take(6). Check at the console to see if your guess is right.</b>

Guess it returns the six first numbers in the range from 1 to 10. Oh! That's what happened! :)

<b>2. Is the to_a method in the previous exercise necessary?</b>

Not really. As the class Range has included the Enumerable Module, it can be passed to take method as an Enum, returning an array.

<b>3. Faker has a huge number of occasionally amusing applications. By consulting the Faker documentation, learn how to print out a fake university name, a fake phone number, a fake Hipster Ipsum sentence, and a fake Chuck Norris fact.</b>

Faker::University.name #=> "South Texas College"
Faker::PhoneNumber.phone_number #=> "397.693.1309"
Faker::Hipster.sentences(1, true) #=> ["Et sustainable optio aesthetic et."]
Faker::ChuckNorris.fact #=> "Chuck Norris can solve the Towers of Hanoi in one move."

<h2>Exercises 13.2.3</h2>

<b>1. Comment out the application code needed to change the two ’h1’ lines in Listing 13.28 from green to red.</b>

on app/views/users/show.html.erb:
```
<%#= gravatar_for @user %>
<%#= @user.name %>
```

<b>2. Update Listing 13.28 to test that will_paginate appears only once. Hint: Refer to Table 5.2.</b>

assert_select 'div.pagination', count: 1

<h2>Exercises 13.3.1</h2>

<b>1. Why is it a bad idea to leave a copy of logged_in_user in the Users controller?</b>

Firstly, because of the need to avoid code repetition. Secondly, to avoid that any modification we need to do in the method be unique; if there's two methods with the same name doing opposite things, strange things can happen, since Ruby will replace the ApplicationController method when controlling users, but not when dealing with other controllers.

<h2>Exercises 13.3.3</h2>

<b>1. Use the newly created micropost UI to create the first real micropost. What are the contents of the INSERT command in the server log?</b>

```
INSERT INTO "microposts" ("content", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["content", "oi"], ["user_id", 2], ["created_at", 2017-04-15 01:27:20 UTC], ["updated_at", 2017-04-15 01:27:20 UTC]]
```

<b>2. In the console, set user to the first user in the database. Confirm that the values of by Micropost.where("user_id = ?", user.id), user.microposts, and user.feed are all the same. <i>Hint: It’s probably easiest to compare directly using ==.</i></b>

Confirmed!
```
>> Micropost.where("user_id = ?", user.id) == user.microposts
=> true
>> Micropost.where("user_id = ?", user.id) == user.feed
=> true
>> user.feed == user.microposts
=> true
```

<h2>Exercises 13.3.4</h2>

<b>1. Create a new micropost and then delete it. What are the contents of the DELETE command in the server log?</b>

```
DELETE FROM "microposts" WHERE "microposts"."id" = ?  [["id", 302]]
```

<b>2. Confirm directly in the browser that the line redirect_to request.referrer || root_url can be replaced with the line redirect_back(fallback_location: root_url). (This method was added in Rails 5.)</b>

Yes, it does.

<h2>Exercises 13.3.5</h2>

<b>1. For each of the four scenarios indicated by comments in Listing 13.55 (starting with “Invalid submission”), comment out application code to get the corresponding test to red, then uncomment to get back to green.</b>

<h3>Invalid submission</h3>
on app/models/micropost.rb:

```
# validates :content, presence: true, length: { maximum: 140 }
```

<h3>Valid submission</h3>
on app/controllers/micropost_controller.rb

```
def create
  ...
  @micropost = #current_user.microposts.build(micropost_params)
```

<h3>Delete post</h3>
on app/controllers/micropost_controller.rb:

```
def destroy
  @micropost#.destroy
```

<h3>Visit different user (no delete link)</h3>
on app/views/microposts/\_micropost.html.erb:

```
<% #if current_user?(micropost.user) %>
  <%= link_to "delete", micropost, method: :delete,
                                   data: { confirm: "You sure?" } %>
<% #end %>
```

<b>2. Add tests for the sidebar micropost count (including proper pluralization). Listing 13.57 will help get you started.</b>

Tests added.

<h2>Exercises 13.4.2</h2>

<b>1. What happens if you try uploading an image bigger than 5 megabytes?</b>

An alert pops up and prevents the upload.

<b>2. What happens if you try uploading a file with an invalid extension?</b>

An error is thrown and prevents the upload.

<h2>Exercises 13.4.3</h2>

<b>1. Upload a large image and confirm directly that the resizing is working. Does the resizing work even if the image isn’t square?</b>

Yes, it works, as ImageMagick resizes the biggest dimension to the limit and scale the smallest dimension.

<b>2. If you completed the image upload test in Listing 13.63, at this point your test suite may be giving you a confusing error message. Fix this issue by configuring CarrierWave to skip image resizing in tests using the initializer file shown in Listing 13.68.</b>

Test were green anyway, but done :P

<h1>Chapter 14</h1>
<h2>Exercises 14.1.1</h2>

<b>1. For the user with id equal to 1 from Figure 14.7, what would the value of user.following.map(&:id) be? (Recall the map(&:method_name) pattern from Section 4.3.2; user.following.map(&:id) just returns the array of ids.)</b>

The value would be [2, 7, 8, 10]

<b>2. By referring again to Figure 14.7, determine the ids of user.following for the user with id equal to 2. What would the value of user.following.map(&:id) be for this user?</b>

The value would be [1]

<h2>Exercises 14.1.2</h2>

<b>1. Using the create method from Table 14.1 in the console, create an active relationship for the first user in the database where the followed id is the second user.</b>

```
>> User.first.active_relationships.create!(followed_id: User.second.id)
```

<b>2. Confirm that the values for active_relationship.followed and active_relationship.follower are correct.</b>

```
>> Relationship.first.follower
=> #<User id: 1, ...
>> Relationship.first.followed
=> #<User id: 2, ...
```

<h2>Exercises 14.1.4</h2>

<b>1. At the console, replicate the steps shown in Listing 14.9.</b>

Replicated, details below.

<b>2. What is the SQL for each of the commands in the previous exercise?</b>

First user load:
```
>> f = User.first
  User Load (0.3ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
```
Second user load:
```
>> s = User.second
  User Load (0.3ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ? OFFSET ?  [["LIMIT", 1], ["OFFSET", 1]]
```
Is first user following the second user?
```
>> f.following?(s)
  User Exists (0.6ms)  SELECT  1 AS one FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ? AND "users"."id" = ? LIMIT ?  [["follower_id", 1], ["id", 2], ["LIMIT", 1]]
=> false
```
First user will then follow the second user:
```
>> f.follow(s)
  SQL (1.3ms)  INSERT INTO "relationships" ("follower_id", "followed_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["follower_id", 1], ["followed_id", 2], ["created_at", 2017-04-15 20:26:37 UTC], ["updated_at", 2017-04-15 20:26:37 UTC]]
```
Did it work?
```
>> f.following?(s)
=> true
```
Nah, unfollow him! :P
```
>> f.unfollow(s)
  SQL (4.4ms)  DELETE FROM "relationships" WHERE "relationships"."follower_id" = ? AND "relationships"."followed_id" = 2  [["follower_id", 1]]
```
Is he following now?
```
>> f.following?(s)
=> false
```

<h2>Exercises 14.1.5</h2>

<b>1. At the console, create several followers for the first user in the database (which you should call user). What is the value of user.followers.map(&:id)?</b>

>> user.followers.map(&:id)
  User Load (2.3ms)  SELECT "users".* FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]
=> [2, 3, 101]

<b>2. Confirm that user.followers.count matches the number of followers you created in the previous exercise.</b>

>> user.followers.count
   (0.2ms)  SELECT COUNT(\*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]
=> 3

<b>3. What is the SQL used by user.followers.count? How is this different from user.followers.to_a.count? Hint: Suppose that the user had a million followers.</b>

The latter uses only one SQL query, saving the result to a cache on the server and returning as needed. If there's a million followers, it saves database requests and thus, time.

<h2>Exercises 14.2.1</h2>

<b>1. Using the console, confirm that User.first.followers.count matches the value expected from Listing 14.14.</b>

>> User.first.followers.count
  User Load (0.2ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
   (0.2ms)  SELECT COUNT(\*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]
=> 38

<b>2. Confirm that User.first.following.count is correct as well.</b>

>> User.first.following.count
  User Load (0.4ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
   (0.4ms)  SELECT COUNT(\*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ?  [["follower_id", 1]]
=> 49

<h2>Exercises 14.2.2</h2>

<b>1. Verify that /users/2 has a follow form and that /users/5 has an unfollow form. Is there a follow form on /users/1?</b>

All confirmed and there's no follow form on /users/1 because it's the same user logged in!

<b>2. Confirm in the browser that the stats appear correctly on the Home page and on the profile page.</b>

Correct!

<b>3. Write tests for the stats on the Home page. Hint: Add to the test in Listing 13.28. Why don’t we also have to test the stats on the profile page?</b>

Included "assert_select 'div.stats'" on site_layout_test. Also added to users_profile_test. This exercise sounded confusing... Anyway I "wrote tests for the stats on home page" as asked first and "added to the test users_profile_test" as hinted.

<h2>Exercises 14.2.3</h2>

<b>1. Verify in a browser that /users/1/followers and /users/1/following work. Do the image links in the sidebar work as well?</b>

All links are working.

<b>2. Comment out the application code needed to turn the assert_select tests in Listing 14.29 red to confirm they’re testing the right thing.</b>

Commented lines:

```ruby
def following
  @title = "Following"
  @user  = User.find(params[:id])
  #@users = @user.following.paginate(page: params[:page])
  render 'show_follow'
end

def followers
  @title = "Followers"
  @user  = User.find(params[:id])
  #@users = @user.followers.paginate(page: params[:page])
  render 'show_follow'
end
```

<h2>Exercises 14.2.4</h2>

<b>1. Follow and unfollow /users/2 through the web. Did it work?</b>

Works beautifully.

<b>2. According to the server log, which templates are rendered in each case?</b>

When follow button is clicked, server logged:

```
Rendered users/_unfollow.html.erb (6.2ms)
Rendered users/_follow_form.html.erb (12.2ms)
...
Rendered users/show.html.erb within layouts/application (60.6ms)
Rendered layouts/_rails_default.html.erb (75.3ms)
Rendered layouts/_shim.html.erb (0.3ms)
Rendered layouts/_header.html.erb (0.9ms)
Rendered layouts/_footer.html.erb (0.4ms)
```

On the other hand, when unfollow button is clicked, server shows:

```
Rendered users/_follow.html.erb (5.4ms)
Rendered users/_follow_form.html.erb (12.2ms)
...
Rendered users/show.html.erb within layouts/application (60.6ms)
Rendered layouts/_rails_default.html.erb (75.3ms)
Rendered layouts/_shim.html.erb (0.3ms)
Rendered layouts/_header.html.erb (0.9ms)
Rendered layouts/_footer.html.erb (0.4ms)

```

<h2>Exercises 14.2.5</h2>

<b>1. Unfollow and refollow /users/2 through the web. Did it work?</b>

Worked aswell.

<b>2. According to the server log, which templates are rendered in each case?</b>

This time, only the partials \_unfollow/\_follow area rendered. The complete layout is the same rendered to show initially the page.

<h2>Exercises 14.2.6</h2>

<b>1. By commenting and uncommenting each of the lines in the respond_to blocks (Listing 14.36), verify that the tests are testing the right things. Which test fails in each case?</b>

The tests return error about an unknown format for each line commented, as Rails doesn't know where to redirect.

<b>2. What happens if you delete one of the occurrences of xhr: true in Listing 14.40? Explain why this is a problem, and why the procedure in the previous exercise would catch it.</b>

Well... Tests using Ajax are never caught, even commenting the 'format.js' line and leaving 'xhr: true' on the test suite. Apparently the requests are thrown at the standard way anyway. Future Guilherme may figure it out, hope Future Diego catches this exception and return an appropriate answer, personally or even through comments in the evaluation Google Sheet :)

<h2>Exercises 14.3.1</h2>

<b>1. Assuming the micropost’s ids are numbered sequentially, with larger numbers being more recent, what would user.feed.map(&:id) return for the feed shown in Figure 14.22? Hint: Recall the default scope from Section 13.1.4.</b>

The command would return an array like: [10, 9, 7, 5, 4, 2, 1].

<h2>Exercises 14.3.2</h2>

<b>1. In Listing 14.44, remove the part of the query that finds the user’s own posts. Which test in Listing 14.42 breaks?</b>

The 'feed should have the right posts' breaks, as expected, because it doesn't have the 'Posts from self' part of test.

<b>2. In Listing 14.44, remove the part of the query that finds the followed users’ posts. Which test in Listing 14.42 breaks?</b>

At this time, the test 'feed should have the right posts' breaks because the 'Posts from followed user' part breaks

<b>3. How could you change the query in Listing 14.44 to have the feed erroneously return microposts of unfollowed users, thereby breaking the third test in Listing 14.42? Hint: Returning all the microposts would do the trick.</b>

Would be as follows:

```ruby
def feed
  Micropost.all
end
```

<h2>Exercises 14.3.3</h2>

<b>1. Write an integration test to verify that the first page of the feed appears on the Home page as required. A template appears in Listing 14.49.</b>

Integration test wrote!

<b>2. Note that Listing 14.49 escapes the expected HTML using CGI.escapeHTML (which is closely related to the CGI.escape method we used in Section 11.2.3 to escape URLs). Why is escaping the HTML necessary in this case? Hint: Try removing the escaping and carefully inspect the page source for the micropost content that doesn’t match. Using the search feature of your terminal shell (Cmd-F on Ctrl-F on most systems) to find the word “sorry” may prove particularly helpful.</b>

The micropost.content needs to be escaped to match the response.body raw HTML. If not, no matches are found because the content has special characters and the body has not.
