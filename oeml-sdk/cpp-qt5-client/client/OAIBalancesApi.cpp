/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIBalancesApi.h"
#include "OAIHelpers.h"
#include "OAIServerConfiguration.h"
#include <QJsonArray>
#include <QJsonDocument>

namespace OpenAPI {

OAIBalancesApi::OAIBalancesApi(const QString &scheme, const QString &host, int port, const QString &basePath, const int timeOut)
    : _scheme(scheme),
      _host(host),
      _port(port),
      _basePath(basePath),
      _timeOut(timeOut),
      _manager(nullptr),
      isResponseCompressionEnabled(false),
      isRequestCompressionEnabled(false) {
      initializeServerConfigs();
      }

OAIBalancesApi::~OAIBalancesApi() {
}

void OAIBalancesApi::initializeServerConfigs(){

//Default server
QList<OAIServerConfiguration> defaultConf = QList<OAIServerConfiguration>();
//varying endpoint server 
QList<OAIServerConfiguration> serverConf = QList<OAIServerConfiguration>();
defaultConf.append(OAIServerConfiguration(
    "https://13d16e9d-d8b1-4ef4-bc4a-ed8156b2b159.mock.pstmn.io",
    "No description provided",
    QMap<QString, OAIServerVariable>()));
_serverConfigs.insert("v1BalancesGet",defaultConf);
_serverIndices.insert("v1BalancesGet",0);


}

/**
* returns 0 on success and -1, -2 or -3 on failure.
* -1 when the variable does not exist and -2 if the value is not defined in the enum and -3 if the operation or server index is not found 
*/
int OAIBalancesApi::setDefaultServerValue(int serverIndex, const QString &operation, const QString &variable, const QString &value){
    auto it = _serverConfigs.find(operation);
    if(it != _serverConfigs.end() && serverIndex < it.value().size() ){
      return _serverConfigs[operation][serverIndex].setDefaultValue(variable,value);
    }
    return -3;
}
void OAIBalancesApi::setServerIndex(const QString &operation, int serverIndex){
    if(_serverIndices.contains(operation) && serverIndex < _serverConfigs.find(operation).value().size() )
        _serverIndices[operation] = serverIndex;
}

void OAIBalancesApi::setScheme(const QString &scheme) {
    _scheme = scheme;
}

void OAIBalancesApi::setHost(const QString &host) {
    _host = host;
}

void OAIBalancesApi::setPort(int port) {
    _port = port;
}

void OAIBalancesApi::setApiKey(const QString &apiKeyName, const QString &apiKey){
    _apiKeys.insert(apiKeyName,apiKey);
}

void OAIBalancesApi::setBearerToken(const QString &token){
    _bearerToken = token;
}

void OAIBalancesApi::setUsername(const QString &username) {
    _username = username;
}

void OAIBalancesApi::setPassword(const QString &password) {
    _password = password;
}

void OAIBalancesApi::setBasePath(const QString &basePath) {
    _basePath = basePath;
}

void OAIBalancesApi::setTimeOut(const int timeOut) {
    _timeOut = timeOut;
}

void OAIBalancesApi::setWorkingDirectory(const QString &path) {
    _workingDirectory = path;
}

void OAIBalancesApi::setNetworkAccessManager(QNetworkAccessManager* manager) {
    _manager = manager;  
}

void OAIBalancesApi::addHeaders(const QString &key, const QString &value) {
    defaultHeaders.insert(key, value);
}

void OAIBalancesApi::enableRequestCompression() {
    isRequestCompressionEnabled = true;
}

void OAIBalancesApi::enableResponseCompression() {
    isResponseCompressionEnabled = true;
}

void OAIBalancesApi::abortRequests(){
    emit abortRequestsSignal();
}

void OAIBalancesApi::v1BalancesGet(const QString &exchange_id) {
    QString fullPath = QString(_serverConfigs["v1BalancesGet"][_serverIndices.value("v1BalancesGet")].URL()+"/v1/balances");


    if (fullPath.indexOf("?") > 0)
        fullPath.append("&");
    else
        fullPath.append("?");
    fullPath.append(QUrl::toPercentEncoding("exchange_id")).append("=").append(QUrl::toPercentEncoding(::OpenAPI::toStringValue(exchange_id)));

    OAIHttpRequestWorker *worker = new OAIHttpRequestWorker(this, _manager);
    worker->setTimeOut(_timeOut);
    worker->setWorkingDirectory(_workingDirectory);
    OAIHttpRequestInput input(fullPath, "GET");

    foreach (QString key, this->defaultHeaders.keys()) { input.headers.insert(key, this->defaultHeaders.value(key)); }

    connect(worker, &OAIHttpRequestWorker::on_execution_finished, this, &OAIBalancesApi::v1BalancesGetCallback);
    connect(this, &OAIBalancesApi::abortRequestsSignal, worker, &QObject::deleteLater); 
    worker->execute(&input);
}

void OAIBalancesApi::v1BalancesGetCallback(OAIHttpRequestWorker *worker) {
    QString msg;
    QString error_str = worker->error_str;
    QNetworkReply::NetworkError error_type = worker->error_type;

    if (worker->error_type == QNetworkReply::NoError) {
        msg = QString("Success! %1 bytes").arg(worker->response.length());
    } else {
        msg = "Error: " + worker->error_str;
        error_str = QString("%1, %2").arg(worker->error_str).arg(QString(worker->response));
    }
    QList<OAIBalance> output;
    QString json(worker->response);
    QByteArray array(json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonArray jsonArray = doc.array();
    foreach (QJsonValue obj, jsonArray) {
        OAIBalance val;
        ::OpenAPI::fromJsonValue(val, obj);
        output.append(val);
    }
    worker->deleteLater();

    if (worker->error_type == QNetworkReply::NoError) {
        emit v1BalancesGetSignal(output);
        emit v1BalancesGetSignalFull(worker, output);
    } else {
        emit v1BalancesGetSignalE(output, error_type, error_str);
        emit v1BalancesGetSignalEFull(worker, error_type, error_str);
    }
}

} // namespace OpenAPI
