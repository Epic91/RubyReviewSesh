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
  - Baller should be initialized with a name as string, age as integer
- `Baller.all`
  - returns **all** of the baller instances
- `Baller#reservations`
  - returns an array of all reservations for that baller
- `Baller#add_reservation(vip, day)`
  - given a **vip object** and day (as a string), create a new reservation and associate it with that baller and vip
- `Baller.oldest_baller`
  - returns the name of the oldest baller
- `Baller.flashiest_baller`
  - returns the baller with the most reservations

### Vip
- `Vip#initialize`
  - Vip should be initialized with a name as string
- `Vip#location`
  - Vip should be initialized with a location as string
- `Vip#price`
  - Vip should be initialized with a price an integer
- `Vip#ballers`
  - returns a **unique** list of all ballers who have been to this vip lounge
- `Vip.hundred_club`
  - returns the first vip instance with a price over $100

### Reservation
- `Reservation#initialize`
  - Reservation should be initialized with a name as baller, vip, and day (a string)
- `Reservation.all`
  - returns **all** of the reservation instances
- `Reservation#baller`
  - returns the baller object for that reservation
  - once a reservation is made, should not be able to change the baller
- `Reservation.monday`
  - returns the reservations made on a Monday
