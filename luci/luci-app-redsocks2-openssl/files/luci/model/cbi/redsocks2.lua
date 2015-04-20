--[[
openwrt-dist-luci: RedSocks2
]]--

local m, s, o

if luci.sys.call("pidof redsocks2 >/dev/null") == 0 then
	m = Map("redsocks2", translate("RedSocks2"), translate("RedSocks2 is running"))
else
	m = Map("redsocks2", translate("RedSocks2"), translate("RedSocks2 is not running"))
end

-- General Setting
s = m:section(TypedSection, "redsocks2", translate("General Setting"))
s.anonymous = true

o = s:option(Flag, "enable", translate("Enable"))
o.default = 1
o.rmempty = false

o = s:option(Value, "local_port", translate("Local Port"))
o.datatype = "port"
o.rmempty = false

o = s:option(ListValue, "proxy_type", translate("Proxy Type"))
o:value("socks4", translate("SOCKS4"))
o:value("socks5", translate("SOCKS5"))
o:value("shadowsocks", translate("SHADOWSOCKS"))
o:value("http-connect", translate("HTTP-CONNECT"))
o:value("http-relay", translate("HTTP-RELAY"))
o:value("direct", translate("DIRECT"))
o.rmempty = false

o = s:option(ListValue, "login", translate("Encryption"))
o:value("rc4-md5", translate("rc4-md5"))
o:value("rc4", translate("rc4"))
o:value("table", translate("table"))
o:value("aes-128-cfb", translate("aes-128-cfb"))
o:value("aes-192-cfb", translate("aes-192-cfb"))
o:value("aes-256-cfb", translate("aes-256-cfb"))
o:value("bf-cfb", translate("bf-cfb"))
o:value("camellia-128-cfb", translate("camellia-128-cfb"))
o:value("camellia-192-cfb", translate("camellia-192-cfb"))
o:value("camellia-256-cfb", translate("camellia-256-cfb"))
o:value("cast5-cfb", translate("cast5-cfb"))
o:value("des-cfb", translate("des-cfb"))
o:value("idea-cfb", translate("idea-cfb"))
o:value("rc2-cfb", translate("rc2-cfb"))
o:value("seed-cfb", translate("seed-cfb"))
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "password", translate("Password"))
o.password = true
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "proxy_ip", translate("Proxy IP"))
o.datatype = "ipaddr"
o.rmempty = false

o = s:option(Value, "proxy_port", translate("Proxy Port"))
o.datatype = "port"
o.rmempty = false

o = s:option(ListValue, "auto_proxy", translate("Auto Proxy"))
o:value("1", translate("Enable"))
o:value("0", translate("Disable"))
o.default = 1
o.rmempty = false

o = s:option(Value, "timeout", translate("Wait Timeout"))
o.datatype = "uinteger"
o.default = 5
o:depends("auto_proxy", 1)

o = s:option(Flag, "redudp", translate("DNS Forwarding"),translate("Select the option to take effect after the follow-up"))
o.default = 0
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "dest_ip", translate("Dest IP"))
o.datatype = "ipaddr"
o.default = '8.8.8.8' 
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "dest_port", translate("Dest Port"))
o.datatype = "port"
o.default = 53
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "udp_timeout", translate("UDP Timeout"))
o.datatype = "uinteger"
o.default = 5
o:depends("proxy_type", "shadowsocks")

o = s:option(Value, "udp_local_port", translate("Local DNS Port"))
o.datatype = "port"
o.default = 1053
o:depends("proxy_type", "shadowsocks")

return m
