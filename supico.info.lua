-- File: supico.info.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "supico.info"

-- parameters
ttl = 3600
ipaddr = "49.212.150.25"

-- configurations
a(_a, ipaddr, ttl)
cname("www", "ghs.google.com", ttl)

a(concat("mail", _a),	ipaddr, ttl)
a(concat("mailhost", _a),	ipaddr, ttl)
a(concat("lists", _a),		ipaddr, ttl)

mx(_a, "aspmx.l.google.com", 1, ttl)
mx(_a, "alt1.aspmx.l.google.com", 5, ttl)
mx(_a, "alt2.aspmx.l.google.com", 5, ttl)
