drop database packages;
create database packages;

-- Author table
create table user (
    id primary key autoincrement,
    username varchar 255 NOT NULL,
    password varchar 255 NOT NULL,
    name varchar 255 NOT NULL,
    email varchar 255 NOT NULL,
);

-- Package table; hold the package name,
-- the pm it's for and it's subtype (like
-- i386, risk, or ANY
create table packages (
    id primary key autoincrement,
    package_name varchar 255 NOT NULL,
    package_manager_id NOT NULL,
    subtype_id NOT NULL,
    author_id NOT NULL,
    package blob NOT NULL
);    
    
-- list of available pms    
create table package_manager (
    id primary key autoincrement,
    name varchar 255 NOT NULL
);    

-- list of known subtypes
create table subtype (
    id primary key autoincrement,
    name varchar 255 NOT NULL
);    

-- subtype + pm link table
create table package_manager_subtype (
    id primary key autoincrement,
    package_manager_id NOT NULL,
    subtype_id NOT NULL
);    
