# Code Challenge Review - BALLERS

For this assignment, we'll be working with an exclusive ballers club yo!

We have three models: `Baller`, `Reservation`, and `Vip`.

For our purposes, a `Baller` has many `Vips`, a `Vip` has many `Baller`s, and a `Reservation` belongs to a `Baller` and to a `Vip`.

`Baller` - `Vip` is a many to many relationship.

## Instructions

To get started, run `bundle install` while inside of this directory.

We've provided you with a tool that you can use to test your code. To use it, run `ruby tools/console.rb` from the command line. 

## Deliverables

Deliverables use the notation `#` for instance methods, and `.` for class methods.

### Baller

- `Baller#initialize`
  - baller should be initialized with a name"

### Vip

### Reservation
