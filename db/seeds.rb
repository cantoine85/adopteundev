# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Skill.destroy_all

user1=User.new(first_name: 'John', last_name: 'max', gender:'male', mail:'max@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )
User.create(first_name: 'Alice', last_name: 'doe', gender:'female', mail:'alice@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )
User.create(first_name: 'Elie', last_name: 'Biu', gender:'male', mail:'miles@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )
User.create(first_name: 'Vincent', last_name: 'Bitout', gender:'male', mail:'georges@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )
User.create(first_name: 'Caroline', last_name: 'Mipo', gender:'male', mail:'caroline@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )
User.create(first_name: 'Kristal', last_name: 'Mipo', gender:'male', mail:'plop@mkjube.com', phone_number:'0897765467', description:'dkdhjfbskjdfhskjdbfshsdjb', address:'14rue du pater 75000 paris' )




# skill1=Skill.new(name: 'ruby', description: 'ancien élève du wagon', level: 'ninja', price_per_hour: '12€/h')
# skill1.valid?
# skill1.save
# skill1.user=user1

Skill.create (name: 'ruby', description: 'ancien élève du wagon', level: 'beginner', price_per_hour: '12€/h')
Skill.create (name: 'java', description: 'ancien élève du bus', level: 'ninja', price_per_hour: '18€/h')
Skill.create (name: 'html', description: 'ancien élève du train', level: 'middle samourai', price_per_hour: '42€/h')
