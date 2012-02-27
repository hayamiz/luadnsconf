-- File: hayamiz.com.lua
-- Variable _a is replaced with zone name by Luadns
-- _a = "hayamiz.com"

a(_a, "59.106.186.140")
cname("www", _a)
cname("volvox", _a)

a(concat("mailhost", _a),	"59.106.186.140")
a(concat("lists", _a),		"59.106.186.140")

mx(_a, concat("mailhost", _a), 10)
mx(concat("lists", _a), concat("mailhost", _a), 10)