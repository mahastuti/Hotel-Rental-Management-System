-- table users
create table users (
    id serial primary key,
    email varchar(255) unique not null,
    username varchar(255) not null,
    password varchar(255) not null,
    deposit_amount decimal(10,2) default 0 not null,
    latitude decimal(10,8) not null,
    longitude decimal(10,8) not null,
    phone varchar(20)
);

-- table categories
create table categories (
    id serial primary key,
    category varchar(20) not null
);

-- table hotels
create table hotels (
    id serial primary key,
    category_id int references categories(id) on delete set null,
    name varchar(255) not null,
    contact varchar(13) not null,
    address varchar(300) not null,
    latitude decimal(10,8) not null,
    longitude decimal(10,8) not null
);

-- table rooms
create table rooms (
    id serial primary key,
    hotel_id int references hotels(id) on delete cascade,
    room_type varchar(50) not null,
    capacity int not null
);

-- table booking_status
create table booking_status (
    id serial primary key,
    status varchar(20) not null,
    description text not null
);

-- table bookings
create table bookings (
    id serial primary key,
    user_id int references users(id),
    room_id int references rooms(id),
    booking_status_id int references booking_status(id) on delete set null,
    check_in_date timestamp not null,
    check_out_date timestamp not null
);

-- table payment_methods
create table payment_methods (
    id serial primary key,
    payment_method varchar(30) not null
);

-- table payment_status
create table payment_status (
    id serial primary key,
    status varchar(20) not null
);

-- table payments
create table payments (
    id serial primary key,
    booking_id int references bookings(id) on delete cascade,
    payment_method_id int references payment_methods(id) on delete set null,
    payment_status_id int references payment_status(id) on delete set null,
    payment_date timestamp not null
);
