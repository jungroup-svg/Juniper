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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OnChainDappsRestApi);
  }
}(this, function(expect, OnChainDappsRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OnChainDappsRestApi.SushiswapSwapDTO();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('SushiswapSwapDTO', function() {
    it('should create an instance of SushiswapSwapDTO', function() {
      // uncomment below and update the code to test SushiswapSwapDTO
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be.a(OnChainDappsRestApi.SushiswapSwapDTO);
    });

    it('should have the property entryTime (base name: "entry_time")', function() {
      // uncomment below and update the code to test the property entryTime
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property recvTime (base name: "recv_time")', function() {
      // uncomment below and update the code to test the property recvTime
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property blockNumber (base name: "block_number")', function() {
      // uncomment below and update the code to test the property blockNumber
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property transaction (base name: "transaction")', function() {
      // uncomment below and update the code to test the property transaction
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property timestamp (base name: "timestamp")', function() {
      // uncomment below and update the code to test the property timestamp
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property pair (base name: "pair")', function() {
      // uncomment below and update the code to test the property pair
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property sender (base name: "sender")', function() {
      // uncomment below and update the code to test the property sender
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amount0In (base name: "amount_0_in")', function() {
      // uncomment below and update the code to test the property amount0In
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amount1In (base name: "amount_1_in")', function() {
      // uncomment below and update the code to test the property amount1In
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amount0Out (base name: "amount_0_out")', function() {
      // uncomment below and update the code to test the property amount0Out
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amount1Out (base name: "amount_1_out")', function() {
      // uncomment below and update the code to test the property amount1Out
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property to (base name: "to")', function() {
      // uncomment below and update the code to test the property to
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property logIndex (base name: "log_index")', function() {
      // uncomment below and update the code to test the property logIndex
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property amountUsd (base name: "amount_usd")', function() {
      // uncomment below and update the code to test the property amountUsd
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property vid (base name: "vid")', function() {
      // uncomment below and update the code to test the property vid
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property poolId (base name: "pool_id")', function() {
      // uncomment below and update the code to test the property poolId
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property transactionId (base name: "transaction_id")', function() {
      // uncomment below and update the code to test the property transactionId
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedPrice (base name: "evaluated_price")', function() {
      // uncomment below and update the code to test the property evaluatedPrice
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedAmount (base name: "evaluated_amount")', function() {
      // uncomment below and update the code to test the property evaluatedAmount
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

    it('should have the property evaluatedAggressor (base name: "evaluated_aggressor")', function() {
      // uncomment below and update the code to test the property evaluatedAggressor
      //var instance = new OnChainDappsRestApi.SushiswapSwapDTO();
      //expect(instance).to.be();
    });

  });

}));
