User.destroy_all

User.create(id: 1, name: "admin", email: "admin@email.com", password: "adminadmin", role_type: "admin", credit: 0)
User.create(id: 2, name: "jansonsiy", email: "jansonsiy@email.com", password: "jansonsiy", role_type: "Buyer", credit: 100)
User.create(id: 3, name: "emcieestudillo", email: "emcieestudillo@email.com", password: "emcieestudillo", role_type: "Broker", credit: 200)