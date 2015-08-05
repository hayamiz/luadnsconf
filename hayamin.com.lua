-- File: hayamiz.com.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "hayamin.com"

-- parameters
ttl = 3600
ipaddr = "49.212.150.25"

-- configurations
a(_a, ipaddr, ttl)

a(concat("mail", _a),	ipaddr, ttl)
a(concat("mailhost", _a),	ipaddr, ttl)

mx(_a, concat("mailhost", _a), 10, ttl)
txt(_a, "v=spf1 a mx ptr ip4:" .. ipaddr .. " ptr:mailhost." .. _a .. " mx:mailhost." .. _a .. " mx:" .. _a .. " -all", ttl)
