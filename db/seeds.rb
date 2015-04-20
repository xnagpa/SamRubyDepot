# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create({title:'Fucking pokemon', description:'Who wants a fucking pokemon?', image_url:' 	http://images4.fanpop.com/image/photos/24100000/Pokemon-pokemon-24187190-1920-1200.jpg 	', price:100 })
Product.create({title:'TEH REI', description:'THEI REI!!! GEnoddoo!! Sindzhi is a faggot!!!', image_url:' 	http://awtlblog.vitsco.com/wp-content/uploads/2005/04/Ayanami-Rei.jpg', price:200 })
Product.create({title:'Simeon', description:'Where is the exit from sovionok?', image_url:' 	http://bakemono.ru/uploads/posts/2013-12/1387725031_5-beskonechnoe-leto.jpg', price:300 })

Order.transaction do
  (1..100).each do |i|
    Order.create(name:"Customer #{i}",address:"#{i}th Main street", email:"customer#{i}@exapmle.com", pay_type:"Check")
  end
end
