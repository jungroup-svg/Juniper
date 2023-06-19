--[[
  On Chain Dapps - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- curve_gauge_deposit_dto class
local curve_gauge_deposit_dto = {}
local curve_gauge_deposit_dto_mt = {
	__name = "curve_gauge_deposit_dto";
	__index = curve_gauge_deposit_dto;
}

local function cast_curve_gauge_deposit_dto(t)
	return setmetatable(t, curve_gauge_deposit_dto_mt)
end

local function new_curve_gauge_deposit_dto(entry_time, recv_time, block_number, id, gauge, provider, value, vid, block_range)
	return cast_curve_gauge_deposit_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["gauge"] = gauge;
		["provider"] = provider;
		["value"] = value;
		["vid"] = vid;
		["block_range"] = block_range;
	})
end

return {
	cast = cast_curve_gauge_deposit_dto;
	new = new_curve_gauge_deposit_dto;
}
