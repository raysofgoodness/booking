# Booking Platform

Single-provider appointment booking context where clients browse services, pick available time slots from the master's working schedule, and manage their bookings.

## Language

### Actors

**Client**:
A registered person who books services for themselves.
_Avoid_: Customer, buyer, patient, guest, member

**Admin**:
The single service provider (master) who owns the schedule, manages the service catalog, and oversees all bookings.
_Avoid_: Master, specialist, staff, manager, owner, provider

**Guest**:
An unauthenticated visitor browsing the service catalog and available slots before signing in.
_Avoid_: Anonymous user, visitor, public user

### Catalog & Availability

**Service**:
A bookable offering defined by its title, duration, price, and active state.
_Avoid_: Procedure, treatment, item, product, package

**Schedule**:
The recurring weekly working hours and break window defined by the Admin for each day of the week.
_Avoid_: Timetable, shift, calendar, availability rule, roster

**Break**:
A recurring daily time window within a Schedule during which no Slots can be offered.
_Avoid_: Pause, lunch, downtime, time off, block

**Slot**:
A computed, bookable time window on a specific date that falls within the Schedule, outside any Break, in the future, and does not overlap with any Confirmed Booking.
_Avoid_: Interval, time window, open time, cell, session

### Bookings

**Booking**:
A Client's reservation of a specific Service at a specific Slot.
_Avoid_: Appointment, order, reservation, visit, event, ticket

**Confirmed**:
The state of a Booking that currently holds a Slot and prevents any other Booking from overlapping that time.
_Avoid_: Active, booked, scheduled, pending, approved

**Cancelled**:
The terminal state of a Booking that was called off by the Client or Admin; it remains in history but releases its Slot for new Bookings.
_Avoid_: Deleted, removed, rejected, voided, archived
