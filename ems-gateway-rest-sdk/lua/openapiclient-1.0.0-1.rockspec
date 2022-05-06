package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client generated by OpenAPI Generator",
	detailed = [[
This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> ]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.balances_api"] = "openapiclient/api/balances_api.lua";
		["openapiclient.api.orders_api"] = "openapiclient/api/orders_api.lua";
		["openapiclient.api.positions_api"] = "openapiclient/api/positions_api.lua";
		["openapiclient.model.balance"] = "openapiclient/model/balance.lua";
		["openapiclient.model.balance_data"] = "openapiclient/model/balance_data.lua";
		["openapiclient.model.fills"] = "openapiclient/model/fills.lua";
		["openapiclient.model.message_reject"] = "openapiclient/model/message_reject.lua";
		["openapiclient.model.ord_side"] = "openapiclient/model/ord_side.lua";
		["openapiclient.model.ord_status"] = "openapiclient/model/ord_status.lua";
		["openapiclient.model.ord_type"] = "openapiclient/model/ord_type.lua";
		["openapiclient.model.order_cancel_all_request"] = "openapiclient/model/order_cancel_all_request.lua";
		["openapiclient.model.order_cancel_single_request"] = "openapiclient/model/order_cancel_single_request.lua";
		["openapiclient.model.order_execution_report"] = "openapiclient/model/order_execution_report.lua";
		["openapiclient.model.order_execution_report_all_of"] = "openapiclient/model/order_execution_report_all_of.lua";
		["openapiclient.model.order_new_single_request"] = "openapiclient/model/order_new_single_request.lua";
		["openapiclient.model.position"] = "openapiclient/model/position.lua";
		["openapiclient.model.position_data"] = "openapiclient/model/position_data.lua";
		["openapiclient.model.reject_reason"] = "openapiclient/model/reject_reason.lua";
		["openapiclient.model.time_in_force"] = "openapiclient/model/time_in_force.lua";
		["openapiclient.model.validation_error"] = "openapiclient/model/validation_error.lua";
	}
}
