--[[
  EMS - REST API

  This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- ord_side class
local ord_side = {}
local ord_side_mt = {
	__name = "ord_side";
	__index = ord_side;
}

local function cast_ord_side(t)
	return setmetatable(t, ord_side_mt)
end

local function new_ord_side()
	return cast_ord_side({
	})
end

return {
	cast = cast_ord_side;
	new = new_ord_side;
}
