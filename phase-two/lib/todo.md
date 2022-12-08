# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

The interface of a class includes:

- The name of the class. MusicList
- The design of its initializer and the parameters it takes.
  @list = [ ]
- The design of its public methods, including:
  - Their names and purposes
    addtrack(String) - push to list variable
    printtracks - return the list variable
  - What parameters they take and the data types.
  - What they return and that data type

Steps 3 and 4 then operate as a cycle.

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

It will retunr an empty list if given no tracks
Error if we try to print tracks with no tracks added
return the track list when we call the printtracks method
return a full track list when multiple tracks are added

```ruby
# EXAMPLE



_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


```
