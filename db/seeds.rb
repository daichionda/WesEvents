# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(eventName: 'Party1', location: 'House1', startTime: 'Mon Jul 25 12:00:00 CST 2016', startDay: 'Mon, 25 Jul 2016', endTime: 'Mon Jul 25 15:00:00 CST 2016', endDay: 'Mon, 25 Jul 2016', description: 'Desc1', facebookLink: 'http://facebook.com')
Event.create(eventName: 'Party2', location: 'House2', startTime: 'Tue Jul 26 12:00:00 CST 2016', startDay: 'Tue, 26 Jul 2016', endTime: 'Tue Jul 26 15:00:00 CST 2016', endDay: 'Tue, 26 Jul 2016', description: 'Desc2', facebookLink: 'http://google.com')
Event.create(eventName: 'Party3', location: 'House3', startTime: 'Wed Jul 27 12:00:00 CST 2016', startDay: 'Wed, 27 Jul 2016', endTime: 'Wed Jul 27 15:00:00 CST 2016', endDay: 'Wed, 27 Jul 2016', description: 'Desc3', facebookLink: 'http://yahoo.com')
Event.create(eventName: 'Party4', location: 'House4', startTime: 'Thu Jul 28 12:00:00 CST 2016', startDay: 'Thu, 28 Jul 2016', endTime: 'Thu Jul 28 15:00:00 CST 2016', endDay: 'Thu, 28 Jul 2016', description: 'Desc4', facebookLink: '')
Event.create(eventName: 'Party5', location: 'House5', startTime: 'Fri Jul 29 12:00:00 CST 2016', startDay: 'Fri, 29 Jul 2016', endTime: 'Fri Jul 29 15:00:00 CST 2016', endDay: 'Fri, 29 Jul 2016', description: 'Desc5', facebookLink: 'http://linkedin.com')
Event.create(eventName: 'Party6', location: 'House6', startTime: 'Sat Jul 30 12:00:00 CST 2016', startDay: 'Sat, 30 Jul 2016', endTime: 'Sat Jul 30 15:00:00 CST 2016', endDay: 'Sat, 30 Jul 2016', description: 'Desc6', facebookLink: '')
