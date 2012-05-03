-- File: hayamiz.com.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "hayamiz.com"

-- parameters
ttl = 60
ipaddr = "49.212.150.25"


-- configurations
a(_a, ipaddr, ttl)
cname("www", _a, ttl)
cname("volvox", _a, ttl)

a(concat("mailhost", _a),	ipaddr, ttl)
a(concat("lists", _a),		ipaddr, ttl)

mx(_a, concat("mailhost", _a), 10, ttl)
mx(concat("lists", _a), concat("mailhost", _a), 10, ttl)
txt(_a, "v=spf1 a mx ptr ip4:" .. ipaddr .. " ptr:mailhost." .. _a .. " mx:mailhost." .. _a .. " mx:" .. _a .. " -all", ttl)
txt(concat("lists", _a), "v=spf1 a mx ptr ip4:" .. ipaddr .. " ptr:mailhost." .. _a .. " mx:mailhost." .. _a .. " mx:" .. _a .. " -all", ttl)