--[[
openwrt-dist-luci: cdns
]]--

local m, s, o

if luci.sys.call("pidof cdns >/dev/null") == 0 then
	m = Map("cdns", translate("CureDNS"), translate("CureDNS is running"))
else
	m = Map("cdns", translate("CureDNS"), translate("CureDNS is not running"))
end

-- General Setting
s = m:section(TypedSection, "cdns", translate("General Setting"))
s.anonymous = true

o = s:option(Flag, "enable", translate("Enable"))
o.default = 1
o.rmempty = false

o = s:option(Value, "local_ip", translate("Local IP"))
o.datatype = "ipaddr"
o.placeholder = "127.0.0.1"
o.default = '127.0.0.1' 
o.rmempty = false

o = s:option(Value, "local_port", translate("Local Port"))
o.datatype = "port"
o.placeholder = "1053"
o.default = '1053' 
o.rmempty = false

o = s:option(Value, "timeout", translate("Wait Timeout"))
o.datatype = "uinteger"
o.placeholder = "2"
o.default = 2
o.rmempty = false

o = s:option(Value, "server_ip1", translate("DNS Server 1"))
o.placeholder = "203.80.96.10:53"
o.default = '203.80.96.10' 
o.rmempty = false

o = s:option(Value, "server_ip2", translate("DNS Server 2"))
o.placeholder = "8.8.8.8:53"
o.default = '8.8.8.8:53' 
o.rmempty = false

return m
