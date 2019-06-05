require 'gandinet'

api = 'p5WtNiKc89HokZPY41d52ibv'
domain = 'depressdog.com'

puts 'Domains list ----'
# Gandi::Domains.list(api)
puts 'Domains check ----'
# Gandi::Domains.check(api, domain, 3, 'Paris', 'Alice', 'Doe', 75001, 'FR', '5 rue neuve', '+33.123456789', 'FR-J', 0, 'alice@example.org')
puts 'Domains new ----'
# Gandi::Domains.new(api, domain, 3, 'Paris', 'Alice', 'Doe', 75001, 'FR', '5 rue neuve', '+33.123456789', 'FR-J', 0, 'alice@example.org')
puts 'Domains info ----'
# Gandi::Domains.info(api, domain)
puts 'Domains renew ----'
# Gandi::Domains.renew(api, domain, 2, 'true')
puts 'Domains Contacts get ----'
# Gandi::Domains::Contacts.get(api, domain)
puts 'Domains Contacts update ----'
# Gandi::Domains::Contacts.update(api, domain, 'en', 'Paris', 'Bob', 'Doe', 75001, '', 'FR', '8 rue neuve', 'true', 'true', '+33.123456788', 'FR-J', 0, 'bob@example.org')
puts 'Domains Glue list ----'
Gandi::Domains::Glue.list(api, domain)
a