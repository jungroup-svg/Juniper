/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a hrefs=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
package org.openapitools.client.core

import java.util.concurrent.TimeUnit

import akka.actor.{ActorSystem, ExtendedActorSystem, Extension, ExtensionId, ExtensionIdProvider}
import akka.http.scaladsl.model.StatusCodes.CustomStatusCode
import akka.http.scaladsl.model.headers.RawHeader
import com.typesafe.config.Config

import scala.jdk.CollectionConverters._
import scala.concurrent.duration.FiniteDuration

class ApiSettings(config: Config) extends Extension {
  def this(system: ExtendedActorSystem) = this(system.settings.config)

  private def cfg = config.getConfig("org.openapitools.client.apiRequest")

  val alwaysTrustCertificates: Boolean = cfg.getBoolean("trust-certificates")
  val defaultHeaders: List[RawHeader] = cfg.getConfig("default-headers").entrySet.asScala.toList.map(c => RawHeader(c.getKey, c.getValue.render))
  val connectionTimeout = FiniteDuration(cfg.getDuration("connection-timeout", TimeUnit.MILLISECONDS), TimeUnit.MILLISECONDS)
  val compressionEnabled: Boolean = cfg.getBoolean("compression.enabled")
  val compressionSizeThreshold: Int = cfg.getBytes("compression.size-threshold").toInt
  val customCodes: List[CustomStatusCode] = cfg.getConfigList("custom-codes").asScala.toList.map { c =>
    CustomStatusCode(
      c.getInt("code"))(
      c.getString("reason"),
      if (c.hasPath("defaultMessage")) c.getString("defaultMessage") else c.getString("reason"),
      c.getBoolean("success"),
      if (c.hasPath("allowsEntity")) c.getBoolean("allowsEntity") else true
    )
  }
}

object ApiSettings extends ExtensionId[ApiSettings] with ExtensionIdProvider {

  override def lookup = ApiSettings

  override def createExtension(system: ExtendedActorSystem): ApiSettings =
    new ApiSettings(system)

  // needed to get the type right when used from Java
  override def get(system: ActorSystem): ApiSettings = super.get(system)
}
