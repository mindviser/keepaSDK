/**
 * Keepa API
 * The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.
 *
 * OpenAPI spec version: 1.0.0
 * Contact: info@keepa.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.api

import java.text.SimpleDateFormat

import org.openapitools.client.model.Category
import org.openapitools.client.{ApiInvoker, ApiException}

import collection.mutable
import com.sun.jersey.multipart.FormDataMultiPart
import com.sun.jersey.multipart.file.FileDataBodyPart
import com.wordnik.swagger.client._
import com.wordnik.swagger.client.ClientResponseReaders.Json4sFormatsReader._
import com.wordnik.swagger.client.RequestWriters.Json4sFormatsWriter._

import java.net.URI
import java.io.File
import java.util.Date
import java.util.TimeZone
import javax.ws.rs.core.MediaType

import scala.concurrent.ExecutionContext.Implicits.global
import scala.concurrent._
import scala.concurrent.duration._
import scala.collection.mutable.HashMap
import scala.util.{Failure, Success, Try}

import org.json4s._

class CategoryApi(
  val defBasePath: String = "https://virtserver.swaggerhub.com/magicCashew/keepa/1.0.0",
  defApiInvoker: ApiInvoker = ApiInvoker
) {
  private lazy val dateTimeFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  private val dateFormatter = {
    val formatter = new SimpleDateFormat("yyyy-MM-dd")
    formatter.setTimeZone(TimeZone.getTimeZone("UTC"))
    formatter
  }
  implicit val formats = new org.json4s.DefaultFormats {
    override def dateFormatter = dateTimeFormatter
  }
  implicit val stringReader: ClientResponseReader[String] = ClientResponseReaders.StringReader
  implicit val unitReader: ClientResponseReader[Unit] = ClientResponseReaders.UnitReader
  implicit val jvalueReader: ClientResponseReader[JValue] = ClientResponseReaders.JValueReader
  implicit val jsonReader: ClientResponseReader[Nothing] = JsonFormatsReader
  implicit val stringWriter: RequestWriter[String] = RequestWriters.StringWriter
  implicit val jsonWriter: RequestWriter[Nothing] = JsonFormatsWriter

  var basePath: String = defBasePath
  var apiInvoker: ApiInvoker = defApiInvoker

  def addHeader(key: String, value: String): mutable.HashMap[String, String] = {
    apiInvoker.defaultHeaders += key -> value
  }

  val config: SwaggerConfig = SwaggerConfig.forUrl(new URI(defBasePath))
  val client = new RestClient(config)
  val helper = new CategoryApiAsyncHelper(client, config)

  /**
   * Returns Amazon category information from Keepa API.
   * Retrieve category objects using their node ids and (optional) their parent tree.
   *
   * @param key Your private API key. 
   * @param domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au) 
   * @param category The category node id of the category you want to request. For batch requests a comma separated list of ids (up to 10, the token cost stays the same). Alternatively you can specify the value 0, which will retrieve a list of all root categories. 
   * @param parents Whether or not to include the category tree for each category. (1 &#x3D; include, 0 &#x3D; do not include.) 
   * @return List[Category]
   */
  def category(key: String, domain: Integer, category: Integer, parents: Integer): Option[List[Category]] = {
    val await = Try(Await.result(categoryAsync(key, domain, category, parents), Duration.Inf))
    await match {
      case Success(i) => Some(await.get)
      case Failure(t) => None
    }
  }

  /**
   * Returns Amazon category information from Keepa API. asynchronously
   * Retrieve category objects using their node ids and (optional) their parent tree.
   *
   * @param key Your private API key. 
   * @param domain Integer value for the Amazon locale you want to access. (1-com, 2-co.uk, 3-de, 4-fr, 5-co.jp, 6-ca, 7-cn, 8-it, 9-es, 10-in, 11-com.mx, 12-com.br, 13-com.au) 
   * @param category The category node id of the category you want to request. For batch requests a comma separated list of ids (up to 10, the token cost stays the same). Alternatively you can specify the value 0, which will retrieve a list of all root categories. 
   * @param parents Whether or not to include the category tree for each category. (1 &#x3D; include, 0 &#x3D; do not include.) 
   * @return Future(List[Category])
   */
  def categoryAsync(key: String, domain: Integer, category: Integer, parents: Integer): Future[List[Category]] = {
      helper.category(key, domain, category, parents)
  }

}

class CategoryApiAsyncHelper(client: TransportClient, config: SwaggerConfig) extends ApiClient(client, config) {

  def category(key: String,
    domain: Integer,
    category: Integer,
    parents: Integer)(implicit reader: ClientResponseReader[List[Category]]): Future[List[Category]] = {
    // create path and map variables
    val path = (addFmt("/category"))

    // query params
    val queryParams = new mutable.HashMap[String, String]
    val headerParams = new mutable.HashMap[String, String]

    if (key == null) throw new Exception("Missing required parameter 'key' when calling CategoryApi->category")

    queryParams += "key" -> key.toString
    queryParams += "domain" -> domain.toString
    queryParams += "category" -> category.toString
    queryParams += "parents" -> parents.toString

    val resFuture = client.submit("GET", path, queryParams.toMap, headerParams.toMap, "")
    resFuture flatMap { resp =>
      process(reader.read(resp))
    }
  }


}
