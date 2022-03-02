# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# coding: utf-8
# DBに設定する初期値を記述
Task.create(:id=>'1',:task_contents=>'test1',:created_date=>'2021-11-11 11:11:11',:updated_date =>'2021-11-11 11:11:11')
Task.create(:id=>'2',:task_contents=>'test2',:created_date=>'2021-11-11 11:11:12',:updated_date =>'2021-11-11 11:11:12')