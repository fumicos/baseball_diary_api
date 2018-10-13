# DB設計

## Users table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: false|
|image|string|foreign_key: false|
|bio|text|foreign_key: false|
|email|string|null: false, unique: true, foreign_key: false|
|team|references|null: false, foreign_key: true|

### Index

- add_index: :users, :name

## Association

- belongs_to :team
- has_many :posts

## Teams table

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: false|

### Index

- add_index: :teams, :name

### Association

- has_many :users

## Posts table

|Column|Type|Options|
|------|----|-------|
|text|text|null: false, foreign_key: false|
|image|string|null: true, foreign_key: false|
|user|references|null: false, foreign_key: true|

### Association

- belongs_to :user
