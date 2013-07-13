# Messages
m1 = Message.create(body: 'help fire', phone_number: '555-867-5309')
m2 = Message.create(body: 'omg i need a doc', phone_number: '800-555-1234')
m3 = Message.create(body: 'send help', phone_number: '555-888-6240')
m4 = Message.create(body: 'heart attack', phone_number: '555-360-5309')
m5 = Message.create(body: 'velociraptors are attacking!', phone_number: '800-733-5309')

r1 = Reply.create(body: 'stay calm', message_id: 5)
