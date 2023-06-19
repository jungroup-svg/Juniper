/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import CRYPTOPUNKSBidDTO from '../model/CRYPTOPUNKSBidDTO';
import CRYPTOPUNKSCollectionDTO from '../model/CRYPTOPUNKSCollectionDTO';
import CRYPTOPUNKSCollectionDailySnapshotDTO from '../model/CRYPTOPUNKSCollectionDailySnapshotDTO';
import CRYPTOPUNKSDataSourcesDTO from '../model/CRYPTOPUNKSDataSourcesDTO';
import CRYPTOPUNKSItemDTO from '../model/CRYPTOPUNKSItemDTO';
import CRYPTOPUNKSMarketPlaceDTO from '../model/CRYPTOPUNKSMarketPlaceDTO';
import CRYPTOPUNKSMarketplaceDailySnapshotDTO from '../model/CRYPTOPUNKSMarketplaceDailySnapshotDTO';
import CRYPTOPUNKSTradeDTO from '../model/CRYPTOPUNKSTradeDTO';
import CRYPTOPUNKSUserDTO from '../model/CRYPTOPUNKSUserDTO';

/**
* CRYPTOPUNKS service.
* @module api/CRYPTOPUNKSApi
* @version v1
*/
export default class CRYPTOPUNKSApi {

    /**
    * Constructs a new CRYPTOPUNKSApi. 
    * @alias module:api/CRYPTOPUNKSApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the cRYPTOPUNKSBidsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSBidsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSBidDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Bids (current)
     * Gets bids.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSBidsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSBidDTO>}
     */
    cRYPTOPUNKSBidsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSBidDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/bids/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSCollectionDailySnapshotsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionDailySnapshotsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * CollectionDailySnapshots (current)
     * Gets collectionDailySnapshots.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionDailySnapshotsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>}
     */
    cRYPTOPUNKSCollectionDailySnapshotsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSCollectionDailySnapshotDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/collectionDailySnapshots/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSCollectionsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Collections (current)
     * Gets collections.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSCollectionsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDTO>}
     */
    cRYPTOPUNKSCollectionsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSCollectionDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/collections/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSDataSourcesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSDataSourcesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSDataSourcesDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * DataSources (current)
     * Gets dataSources.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSDataSourcesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSDataSourcesDTO>}
     */
    cRYPTOPUNKSDataSourcesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSDataSourcesDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/dataSources/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetBidsHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetBidsHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSBidDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Bids (historical)
     * Gets bids.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetBidsHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSBidDTO>}
     */
    cRYPTOPUNKSGetBidsHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSBidDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/bids/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetCollectionDailySnapshotsHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetCollectionDailySnapshotsHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * CollectionDailySnapshots (historical)
     * Gets collectionDailySnapshots.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetCollectionDailySnapshotsHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDailySnapshotDTO>}
     */
    cRYPTOPUNKSGetCollectionDailySnapshotsHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSCollectionDailySnapshotDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/collectionDailySnapshots/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetCollectionsHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetCollectionsHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSCollectionDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Collections (historical)
     * Gets collections.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetCollectionsHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSCollectionDTO>}
     */
    cRYPTOPUNKSGetCollectionsHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSCollectionDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/collections/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetDataSourcesHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetDataSourcesHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSDataSourcesDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * DataSources (historical)
     * Gets dataSources.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetDataSourcesHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSDataSourcesDTO>}
     */
    cRYPTOPUNKSGetDataSourcesHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSDataSourcesDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/dataSources/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetItemsHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetItemsHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSItemDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Items (historical)
     * Gets items.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetItemsHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSItemDTO>}
     */
    cRYPTOPUNKSGetItemsHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSItemDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/items/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetMarketPlacesHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetMarketPlacesHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketPlaces (historical)
     * Gets marketPlaces.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetMarketPlacesHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>}
     */
    cRYPTOPUNKSGetMarketPlacesHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSMarketPlaceDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/marketPlaces/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetMarketplaceDailySnapshotsHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketplaceDailySnapshots (historical)
     * Gets marketplaceDailySnapshots.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetMarketplaceDailySnapshotsHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>}
     */
    cRYPTOPUNKSGetMarketplaceDailySnapshotsHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSMarketplaceDailySnapshotDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/marketplaceDailySnapshots/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetTradesHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetTradesHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSTradeDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Trades (historical)
     * Gets trades.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetTradesHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSTradeDTO>}
     */
    cRYPTOPUNKSGetTradesHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSTradeDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/trades/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSGetUsersHistorical operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetUsersHistoricalCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSUserDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Users (historical)
     * Gets users.
     * @param {Object} opts Optional parameters
     * @param {Number} [startBlock] The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
     * @param {Number} [endBlock] The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
     * @param {Date} [startDate] The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
     * @param {Date} [endDate] The end date of timeframe.
     * @param {String} [id] 
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSGetUsersHistoricalCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSUserDTO>}
     */
    cRYPTOPUNKSGetUsersHistorical(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'startBlock': opts['startBlock'],
        'endBlock': opts['endBlock'],
        'startDate': opts['startDate'],
        'endDate': opts['endDate'],
        'id': opts['id']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSUserDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/users/historical', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSItemsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSItemsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSItemDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Items (current)
     * Gets items.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSItemsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSItemDTO>}
     */
    cRYPTOPUNKSItemsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSItemDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/items/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSMarketPlacesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketPlacesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketPlaces (current)
     * Gets marketPlaces.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketPlacesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketPlaceDTO>}
     */
    cRYPTOPUNKSMarketPlacesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSMarketPlaceDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/marketPlaces/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSMarketplaceDailySnapshotsCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketplaceDailySnapshotsCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * MarketplaceDailySnapshots (current)
     * Gets marketplaceDailySnapshots.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSMarketplaceDailySnapshotsCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSMarketplaceDailySnapshotDTO>}
     */
    cRYPTOPUNKSMarketplaceDailySnapshotsCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSMarketplaceDailySnapshotDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/marketplaceDailySnapshots/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSTradesCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSTradesCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSTradeDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Trades (current)
     * Gets trades.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSTradesCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSTradeDTO>}
     */
    cRYPTOPUNKSTradesCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSTradeDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/trades/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the cRYPTOPUNKSUsersCurrent operation.
     * @callback module:api/CRYPTOPUNKSApi~cRYPTOPUNKSUsersCurrentCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/CRYPTOPUNKSUserDTO>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Users (current)
     * Gets users.
     * @param {module:api/CRYPTOPUNKSApi~cRYPTOPUNKSUsersCurrentCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/CRYPTOPUNKSUserDTO>}
     */
    cRYPTOPUNKSUsersCurrent(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = [];
      let contentTypes = [];
      let accepts = ['text/plain', 'application/json', 'text/json'];
      let returnType = [CRYPTOPUNKSUserDTO];
      return this.apiClient.callApi(
        '/dapps/cryptopunks/users/current', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
