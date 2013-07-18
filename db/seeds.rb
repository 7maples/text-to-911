# Messages
m1 = Message.create(body: 'help fire', phone_number: '+15558675309')
m2 = Message.create(body: nil, phone_number: '+15558675309', photo_url: 'http://placezombies.com/g/300x200')
m3 = Message.create(body: 'send help', phone_number: '+15558675309', status: 'replied_to')
m4 = Message.create(body: 'heart attack', phone_number: '+15558675309')
m5 = Message.create(body: 'velociraptors are attacking!', phone_number: '+15558675309')

r1 = Reply.create(body: 'stay calm', message_id: 3)
