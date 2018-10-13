# DB設計

## Users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||
|bio|text||
|email|string|null: false, unique: true|
|team|references|null: false, foreign_key: true|

### Index

- add_index: :users, :name

## Association

- belongs_to :team
- has_many :posts

## Teams table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Index

- add_index: :teams, :name

### Association

- has_many :users

## Posts table

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: true|
|user|references|null: false, foreign_key: true|

### Association

- belongs_to :user
