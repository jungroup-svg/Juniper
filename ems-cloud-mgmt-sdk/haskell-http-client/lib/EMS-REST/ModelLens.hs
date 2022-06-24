{-
   EMS - REST API

   This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 

   OpenAPI Version: 3.0.0
   EMS - REST API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : EMS-REST.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module EMS-REST.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import EMS-REST.Model
import EMS-REST.Core


-- * Balance

-- | 'balanceExchangeId' Lens
balanceExchangeIdL :: Lens_' Balance (Maybe Text)
balanceExchangeIdL f Balance{..} = (\balanceExchangeId -> Balance { balanceExchangeId, ..} ) <$> f balanceExchangeId
{-# INLINE balanceExchangeIdL #-}

-- | 'balanceData' Lens
balanceDataL :: Lens_' Balance (Maybe [BalanceDataInner])
balanceDataL f Balance{..} = (\balanceData -> Balance { balanceData, ..} ) <$> f balanceData
{-# INLINE balanceDataL #-}



-- * BalanceDataInner

-- | 'balanceDataInnerAssetIdExchange' Lens
balanceDataInnerAssetIdExchangeL :: Lens_' BalanceDataInner (Maybe Text)
balanceDataInnerAssetIdExchangeL f BalanceDataInner{..} = (\balanceDataInnerAssetIdExchange -> BalanceDataInner { balanceDataInnerAssetIdExchange, ..} ) <$> f balanceDataInnerAssetIdExchange
{-# INLINE balanceDataInnerAssetIdExchangeL #-}

-- | 'balanceDataInnerAssetIdCoinapi' Lens
balanceDataInnerAssetIdCoinapiL :: Lens_' BalanceDataInner (Maybe Text)
balanceDataInnerAssetIdCoinapiL f BalanceDataInner{..} = (\balanceDataInnerAssetIdCoinapi -> BalanceDataInner { balanceDataInnerAssetIdCoinapi, ..} ) <$> f balanceDataInnerAssetIdCoinapi
{-# INLINE balanceDataInnerAssetIdCoinapiL #-}

-- | 'balanceDataInnerBalance' Lens
balanceDataInnerBalanceL :: Lens_' BalanceDataInner (Maybe Double)
balanceDataInnerBalanceL f BalanceDataInner{..} = (\balanceDataInnerBalance -> BalanceDataInner { balanceDataInnerBalance, ..} ) <$> f balanceDataInnerBalance
{-# INLINE balanceDataInnerBalanceL #-}

-- | 'balanceDataInnerAvailable' Lens
balanceDataInnerAvailableL :: Lens_' BalanceDataInner (Maybe Double)
balanceDataInnerAvailableL f BalanceDataInner{..} = (\balanceDataInnerAvailable -> BalanceDataInner { balanceDataInnerAvailable, ..} ) <$> f balanceDataInnerAvailable
{-# INLINE balanceDataInnerAvailableL #-}

-- | 'balanceDataInnerLocked' Lens
balanceDataInnerLockedL :: Lens_' BalanceDataInner (Maybe Double)
balanceDataInnerLockedL f BalanceDataInner{..} = (\balanceDataInnerLocked -> BalanceDataInner { balanceDataInnerLocked, ..} ) <$> f balanceDataInnerLocked
{-# INLINE balanceDataInnerLockedL #-}

-- | 'balanceDataInnerLastUpdatedBy' Lens
balanceDataInnerLastUpdatedByL :: Lens_' BalanceDataInner (Maybe E'LastUpdatedBy)
balanceDataInnerLastUpdatedByL f BalanceDataInner{..} = (\balanceDataInnerLastUpdatedBy -> BalanceDataInner { balanceDataInnerLastUpdatedBy, ..} ) <$> f balanceDataInnerLastUpdatedBy
{-# INLINE balanceDataInnerLastUpdatedByL #-}

-- | 'balanceDataInnerRateUsd' Lens
balanceDataInnerRateUsdL :: Lens_' BalanceDataInner (Maybe Double)
balanceDataInnerRateUsdL f BalanceDataInner{..} = (\balanceDataInnerRateUsd -> BalanceDataInner { balanceDataInnerRateUsd, ..} ) <$> f balanceDataInnerRateUsd
{-# INLINE balanceDataInnerRateUsdL #-}

-- | 'balanceDataInnerTraded' Lens
balanceDataInnerTradedL :: Lens_' BalanceDataInner (Maybe Double)
balanceDataInnerTradedL f BalanceDataInner{..} = (\balanceDataInnerTraded -> BalanceDataInner { balanceDataInnerTraded, ..} ) <$> f balanceDataInnerTraded
{-# INLINE balanceDataInnerTradedL #-}



-- * Fills

-- | 'fillsTime' Lens
fillsTimeL :: Lens_' Fills (Maybe Date)
fillsTimeL f Fills{..} = (\fillsTime -> Fills { fillsTime, ..} ) <$> f fillsTime
{-# INLINE fillsTimeL #-}

-- | 'fillsPrice' Lens
fillsPriceL :: Lens_' Fills (Maybe Double)
fillsPriceL f Fills{..} = (\fillsPrice -> Fills { fillsPrice, ..} ) <$> f fillsPrice
{-# INLINE fillsPriceL #-}

-- | 'fillsAmount' Lens
fillsAmountL :: Lens_' Fills (Maybe Double)
fillsAmountL f Fills{..} = (\fillsAmount -> Fills { fillsAmount, ..} ) <$> f fillsAmount
{-# INLINE fillsAmountL #-}



-- * MessageReject

-- | 'messageRejectType' Lens
messageRejectTypeL :: Lens_' MessageReject (Maybe Text)
messageRejectTypeL f MessageReject{..} = (\messageRejectType -> MessageReject { messageRejectType, ..} ) <$> f messageRejectType
{-# INLINE messageRejectTypeL #-}

-- | 'messageRejectRejectReason' Lens
messageRejectRejectReasonL :: Lens_' MessageReject (Maybe RejectReason)
messageRejectRejectReasonL f MessageReject{..} = (\messageRejectRejectReason -> MessageReject { messageRejectRejectReason, ..} ) <$> f messageRejectRejectReason
{-# INLINE messageRejectRejectReasonL #-}

-- | 'messageRejectExchangeId' Lens
messageRejectExchangeIdL :: Lens_' MessageReject (Maybe Text)
messageRejectExchangeIdL f MessageReject{..} = (\messageRejectExchangeId -> MessageReject { messageRejectExchangeId, ..} ) <$> f messageRejectExchangeId
{-# INLINE messageRejectExchangeIdL #-}

-- | 'messageRejectMessage' Lens
messageRejectMessageL :: Lens_' MessageReject (Maybe Text)
messageRejectMessageL f MessageReject{..} = (\messageRejectMessage -> MessageReject { messageRejectMessage, ..} ) <$> f messageRejectMessage
{-# INLINE messageRejectMessageL #-}

-- | 'messageRejectRejectedMessage' Lens
messageRejectRejectedMessageL :: Lens_' MessageReject (Maybe Text)
messageRejectRejectedMessageL f MessageReject{..} = (\messageRejectRejectedMessage -> MessageReject { messageRejectRejectedMessage, ..} ) <$> f messageRejectRejectedMessage
{-# INLINE messageRejectRejectedMessageL #-}



-- * OrdSide



-- * OrdStatus



-- * OrdType



-- * OrderCancelAllRequest

-- | 'orderCancelAllRequestExchangeId' Lens
orderCancelAllRequestExchangeIdL :: Lens_' OrderCancelAllRequest (Text)
orderCancelAllRequestExchangeIdL f OrderCancelAllRequest{..} = (\orderCancelAllRequestExchangeId -> OrderCancelAllRequest { orderCancelAllRequestExchangeId, ..} ) <$> f orderCancelAllRequestExchangeId
{-# INLINE orderCancelAllRequestExchangeIdL #-}



-- * OrderCancelSingleRequest

-- | 'orderCancelSingleRequestExchangeId' Lens
orderCancelSingleRequestExchangeIdL :: Lens_' OrderCancelSingleRequest (Text)
orderCancelSingleRequestExchangeIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestExchangeId -> OrderCancelSingleRequest { orderCancelSingleRequestExchangeId, ..} ) <$> f orderCancelSingleRequestExchangeId
{-# INLINE orderCancelSingleRequestExchangeIdL #-}

-- | 'orderCancelSingleRequestExchangeOrderId' Lens
orderCancelSingleRequestExchangeOrderIdL :: Lens_' OrderCancelSingleRequest (Maybe Text)
orderCancelSingleRequestExchangeOrderIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestExchangeOrderId -> OrderCancelSingleRequest { orderCancelSingleRequestExchangeOrderId, ..} ) <$> f orderCancelSingleRequestExchangeOrderId
{-# INLINE orderCancelSingleRequestExchangeOrderIdL #-}

-- | 'orderCancelSingleRequestClientOrderId' Lens
orderCancelSingleRequestClientOrderIdL :: Lens_' OrderCancelSingleRequest (Maybe Text)
orderCancelSingleRequestClientOrderIdL f OrderCancelSingleRequest{..} = (\orderCancelSingleRequestClientOrderId -> OrderCancelSingleRequest { orderCancelSingleRequestClientOrderId, ..} ) <$> f orderCancelSingleRequestClientOrderId
{-# INLINE orderCancelSingleRequestClientOrderIdL #-}



-- * OrderExecutionReport

-- | 'orderExecutionReportExchangeId' Lens
orderExecutionReportExchangeIdL :: Lens_' OrderExecutionReport (Text)
orderExecutionReportExchangeIdL f OrderExecutionReport{..} = (\orderExecutionReportExchangeId -> OrderExecutionReport { orderExecutionReportExchangeId, ..} ) <$> f orderExecutionReportExchangeId
{-# INLINE orderExecutionReportExchangeIdL #-}

-- | 'orderExecutionReportClientOrderId' Lens
orderExecutionReportClientOrderIdL :: Lens_' OrderExecutionReport (Text)
orderExecutionReportClientOrderIdL f OrderExecutionReport{..} = (\orderExecutionReportClientOrderId -> OrderExecutionReport { orderExecutionReportClientOrderId, ..} ) <$> f orderExecutionReportClientOrderId
{-# INLINE orderExecutionReportClientOrderIdL #-}

-- | 'orderExecutionReportSymbolIdExchange' Lens
orderExecutionReportSymbolIdExchangeL :: Lens_' OrderExecutionReport (Maybe Text)
orderExecutionReportSymbolIdExchangeL f OrderExecutionReport{..} = (\orderExecutionReportSymbolIdExchange -> OrderExecutionReport { orderExecutionReportSymbolIdExchange, ..} ) <$> f orderExecutionReportSymbolIdExchange
{-# INLINE orderExecutionReportSymbolIdExchangeL #-}

-- | 'orderExecutionReportSymbolIdCoinapi' Lens
orderExecutionReportSymbolIdCoinapiL :: Lens_' OrderExecutionReport (Maybe Text)
orderExecutionReportSymbolIdCoinapiL f OrderExecutionReport{..} = (\orderExecutionReportSymbolIdCoinapi -> OrderExecutionReport { orderExecutionReportSymbolIdCoinapi, ..} ) <$> f orderExecutionReportSymbolIdCoinapi
{-# INLINE orderExecutionReportSymbolIdCoinapiL #-}

-- | 'orderExecutionReportAmountOrder' Lens
orderExecutionReportAmountOrderL :: Lens_' OrderExecutionReport (Double)
orderExecutionReportAmountOrderL f OrderExecutionReport{..} = (\orderExecutionReportAmountOrder -> OrderExecutionReport { orderExecutionReportAmountOrder, ..} ) <$> f orderExecutionReportAmountOrder
{-# INLINE orderExecutionReportAmountOrderL #-}

-- | 'orderExecutionReportPrice' Lens
orderExecutionReportPriceL :: Lens_' OrderExecutionReport (Double)
orderExecutionReportPriceL f OrderExecutionReport{..} = (\orderExecutionReportPrice -> OrderExecutionReport { orderExecutionReportPrice, ..} ) <$> f orderExecutionReportPrice
{-# INLINE orderExecutionReportPriceL #-}

-- | 'orderExecutionReportSide' Lens
orderExecutionReportSideL :: Lens_' OrderExecutionReport (OrdSide)
orderExecutionReportSideL f OrderExecutionReport{..} = (\orderExecutionReportSide -> OrderExecutionReport { orderExecutionReportSide, ..} ) <$> f orderExecutionReportSide
{-# INLINE orderExecutionReportSideL #-}

-- | 'orderExecutionReportOrderType' Lens
orderExecutionReportOrderTypeL :: Lens_' OrderExecutionReport (OrdType)
orderExecutionReportOrderTypeL f OrderExecutionReport{..} = (\orderExecutionReportOrderType -> OrderExecutionReport { orderExecutionReportOrderType, ..} ) <$> f orderExecutionReportOrderType
{-# INLINE orderExecutionReportOrderTypeL #-}

-- | 'orderExecutionReportTimeInForce' Lens
orderExecutionReportTimeInForceL :: Lens_' OrderExecutionReport (TimeInForce)
orderExecutionReportTimeInForceL f OrderExecutionReport{..} = (\orderExecutionReportTimeInForce -> OrderExecutionReport { orderExecutionReportTimeInForce, ..} ) <$> f orderExecutionReportTimeInForce
{-# INLINE orderExecutionReportTimeInForceL #-}

-- | 'orderExecutionReportExpireTime' Lens
orderExecutionReportExpireTimeL :: Lens_' OrderExecutionReport (Maybe Date)
orderExecutionReportExpireTimeL f OrderExecutionReport{..} = (\orderExecutionReportExpireTime -> OrderExecutionReport { orderExecutionReportExpireTime, ..} ) <$> f orderExecutionReportExpireTime
{-# INLINE orderExecutionReportExpireTimeL #-}

-- | 'orderExecutionReportExecInst' Lens
orderExecutionReportExecInstL :: Lens_' OrderExecutionReport (Maybe [E'ExecInst])
orderExecutionReportExecInstL f OrderExecutionReport{..} = (\orderExecutionReportExecInst -> OrderExecutionReport { orderExecutionReportExecInst, ..} ) <$> f orderExecutionReportExecInst
{-# INLINE orderExecutionReportExecInstL #-}

-- | 'orderExecutionReportClientOrderIdFormatExchange' Lens
orderExecutionReportClientOrderIdFormatExchangeL :: Lens_' OrderExecutionReport (Text)
orderExecutionReportClientOrderIdFormatExchangeL f OrderExecutionReport{..} = (\orderExecutionReportClientOrderIdFormatExchange -> OrderExecutionReport { orderExecutionReportClientOrderIdFormatExchange, ..} ) <$> f orderExecutionReportClientOrderIdFormatExchange
{-# INLINE orderExecutionReportClientOrderIdFormatExchangeL #-}

-- | 'orderExecutionReportExchangeOrderId' Lens
orderExecutionReportExchangeOrderIdL :: Lens_' OrderExecutionReport (Maybe Text)
orderExecutionReportExchangeOrderIdL f OrderExecutionReport{..} = (\orderExecutionReportExchangeOrderId -> OrderExecutionReport { orderExecutionReportExchangeOrderId, ..} ) <$> f orderExecutionReportExchangeOrderId
{-# INLINE orderExecutionReportExchangeOrderIdL #-}

-- | 'orderExecutionReportAmountOpen' Lens
orderExecutionReportAmountOpenL :: Lens_' OrderExecutionReport (Double)
orderExecutionReportAmountOpenL f OrderExecutionReport{..} = (\orderExecutionReportAmountOpen -> OrderExecutionReport { orderExecutionReportAmountOpen, ..} ) <$> f orderExecutionReportAmountOpen
{-# INLINE orderExecutionReportAmountOpenL #-}

-- | 'orderExecutionReportAmountFilled' Lens
orderExecutionReportAmountFilledL :: Lens_' OrderExecutionReport (Double)
orderExecutionReportAmountFilledL f OrderExecutionReport{..} = (\orderExecutionReportAmountFilled -> OrderExecutionReport { orderExecutionReportAmountFilled, ..} ) <$> f orderExecutionReportAmountFilled
{-# INLINE orderExecutionReportAmountFilledL #-}

-- | 'orderExecutionReportAvgPx' Lens
orderExecutionReportAvgPxL :: Lens_' OrderExecutionReport (Maybe Double)
orderExecutionReportAvgPxL f OrderExecutionReport{..} = (\orderExecutionReportAvgPx -> OrderExecutionReport { orderExecutionReportAvgPx, ..} ) <$> f orderExecutionReportAvgPx
{-# INLINE orderExecutionReportAvgPxL #-}

-- | 'orderExecutionReportStatus' Lens
orderExecutionReportStatusL :: Lens_' OrderExecutionReport (OrdStatus)
orderExecutionReportStatusL f OrderExecutionReport{..} = (\orderExecutionReportStatus -> OrderExecutionReport { orderExecutionReportStatus, ..} ) <$> f orderExecutionReportStatus
{-# INLINE orderExecutionReportStatusL #-}

-- | 'orderExecutionReportStatusHistory' Lens
orderExecutionReportStatusHistoryL :: Lens_' OrderExecutionReport (Maybe [[Text]])
orderExecutionReportStatusHistoryL f OrderExecutionReport{..} = (\orderExecutionReportStatusHistory -> OrderExecutionReport { orderExecutionReportStatusHistory, ..} ) <$> f orderExecutionReportStatusHistory
{-# INLINE orderExecutionReportStatusHistoryL #-}

-- | 'orderExecutionReportErrorMessage' Lens
orderExecutionReportErrorMessageL :: Lens_' OrderExecutionReport (Maybe Text)
orderExecutionReportErrorMessageL f OrderExecutionReport{..} = (\orderExecutionReportErrorMessage -> OrderExecutionReport { orderExecutionReportErrorMessage, ..} ) <$> f orderExecutionReportErrorMessage
{-# INLINE orderExecutionReportErrorMessageL #-}

-- | 'orderExecutionReportFills' Lens
orderExecutionReportFillsL :: Lens_' OrderExecutionReport (Maybe [Fills])
orderExecutionReportFillsL f OrderExecutionReport{..} = (\orderExecutionReportFills -> OrderExecutionReport { orderExecutionReportFills, ..} ) <$> f orderExecutionReportFills
{-# INLINE orderExecutionReportFillsL #-}



-- * OrderExecutionReportAllOf

-- | 'orderExecutionReportAllOfClientOrderIdFormatExchange' Lens
orderExecutionReportAllOfClientOrderIdFormatExchangeL :: Lens_' OrderExecutionReportAllOf (Text)
orderExecutionReportAllOfClientOrderIdFormatExchangeL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfClientOrderIdFormatExchange -> OrderExecutionReportAllOf { orderExecutionReportAllOfClientOrderIdFormatExchange, ..} ) <$> f orderExecutionReportAllOfClientOrderIdFormatExchange
{-# INLINE orderExecutionReportAllOfClientOrderIdFormatExchangeL #-}

-- | 'orderExecutionReportAllOfExchangeOrderId' Lens
orderExecutionReportAllOfExchangeOrderIdL :: Lens_' OrderExecutionReportAllOf (Maybe Text)
orderExecutionReportAllOfExchangeOrderIdL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfExchangeOrderId -> OrderExecutionReportAllOf { orderExecutionReportAllOfExchangeOrderId, ..} ) <$> f orderExecutionReportAllOfExchangeOrderId
{-# INLINE orderExecutionReportAllOfExchangeOrderIdL #-}

-- | 'orderExecutionReportAllOfAmountOpen' Lens
orderExecutionReportAllOfAmountOpenL :: Lens_' OrderExecutionReportAllOf (Double)
orderExecutionReportAllOfAmountOpenL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfAmountOpen -> OrderExecutionReportAllOf { orderExecutionReportAllOfAmountOpen, ..} ) <$> f orderExecutionReportAllOfAmountOpen
{-# INLINE orderExecutionReportAllOfAmountOpenL #-}

-- | 'orderExecutionReportAllOfAmountFilled' Lens
orderExecutionReportAllOfAmountFilledL :: Lens_' OrderExecutionReportAllOf (Double)
orderExecutionReportAllOfAmountFilledL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfAmountFilled -> OrderExecutionReportAllOf { orderExecutionReportAllOfAmountFilled, ..} ) <$> f orderExecutionReportAllOfAmountFilled
{-# INLINE orderExecutionReportAllOfAmountFilledL #-}

-- | 'orderExecutionReportAllOfAvgPx' Lens
orderExecutionReportAllOfAvgPxL :: Lens_' OrderExecutionReportAllOf (Maybe Double)
orderExecutionReportAllOfAvgPxL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfAvgPx -> OrderExecutionReportAllOf { orderExecutionReportAllOfAvgPx, ..} ) <$> f orderExecutionReportAllOfAvgPx
{-# INLINE orderExecutionReportAllOfAvgPxL #-}

-- | 'orderExecutionReportAllOfStatus' Lens
orderExecutionReportAllOfStatusL :: Lens_' OrderExecutionReportAllOf (OrdStatus)
orderExecutionReportAllOfStatusL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfStatus -> OrderExecutionReportAllOf { orderExecutionReportAllOfStatus, ..} ) <$> f orderExecutionReportAllOfStatus
{-# INLINE orderExecutionReportAllOfStatusL #-}

-- | 'orderExecutionReportAllOfStatusHistory' Lens
orderExecutionReportAllOfStatusHistoryL :: Lens_' OrderExecutionReportAllOf (Maybe [[Text]])
orderExecutionReportAllOfStatusHistoryL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfStatusHistory -> OrderExecutionReportAllOf { orderExecutionReportAllOfStatusHistory, ..} ) <$> f orderExecutionReportAllOfStatusHistory
{-# INLINE orderExecutionReportAllOfStatusHistoryL #-}

-- | 'orderExecutionReportAllOfErrorMessage' Lens
orderExecutionReportAllOfErrorMessageL :: Lens_' OrderExecutionReportAllOf (Maybe Text)
orderExecutionReportAllOfErrorMessageL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfErrorMessage -> OrderExecutionReportAllOf { orderExecutionReportAllOfErrorMessage, ..} ) <$> f orderExecutionReportAllOfErrorMessage
{-# INLINE orderExecutionReportAllOfErrorMessageL #-}

-- | 'orderExecutionReportAllOfFills' Lens
orderExecutionReportAllOfFillsL :: Lens_' OrderExecutionReportAllOf (Maybe [Fills])
orderExecutionReportAllOfFillsL f OrderExecutionReportAllOf{..} = (\orderExecutionReportAllOfFills -> OrderExecutionReportAllOf { orderExecutionReportAllOfFills, ..} ) <$> f orderExecutionReportAllOfFills
{-# INLINE orderExecutionReportAllOfFillsL #-}



-- * OrderNewSingleRequest

-- | 'orderNewSingleRequestExchangeId' Lens
orderNewSingleRequestExchangeIdL :: Lens_' OrderNewSingleRequest (Text)
orderNewSingleRequestExchangeIdL f OrderNewSingleRequest{..} = (\orderNewSingleRequestExchangeId -> OrderNewSingleRequest { orderNewSingleRequestExchangeId, ..} ) <$> f orderNewSingleRequestExchangeId
{-# INLINE orderNewSingleRequestExchangeIdL #-}

-- | 'orderNewSingleRequestClientOrderId' Lens
orderNewSingleRequestClientOrderIdL :: Lens_' OrderNewSingleRequest (Text)
orderNewSingleRequestClientOrderIdL f OrderNewSingleRequest{..} = (\orderNewSingleRequestClientOrderId -> OrderNewSingleRequest { orderNewSingleRequestClientOrderId, ..} ) <$> f orderNewSingleRequestClientOrderId
{-# INLINE orderNewSingleRequestClientOrderIdL #-}

-- | 'orderNewSingleRequestSymbolIdExchange' Lens
orderNewSingleRequestSymbolIdExchangeL :: Lens_' OrderNewSingleRequest (Maybe Text)
orderNewSingleRequestSymbolIdExchangeL f OrderNewSingleRequest{..} = (\orderNewSingleRequestSymbolIdExchange -> OrderNewSingleRequest { orderNewSingleRequestSymbolIdExchange, ..} ) <$> f orderNewSingleRequestSymbolIdExchange
{-# INLINE orderNewSingleRequestSymbolIdExchangeL #-}

-- | 'orderNewSingleRequestSymbolIdCoinapi' Lens
orderNewSingleRequestSymbolIdCoinapiL :: Lens_' OrderNewSingleRequest (Maybe Text)
orderNewSingleRequestSymbolIdCoinapiL f OrderNewSingleRequest{..} = (\orderNewSingleRequestSymbolIdCoinapi -> OrderNewSingleRequest { orderNewSingleRequestSymbolIdCoinapi, ..} ) <$> f orderNewSingleRequestSymbolIdCoinapi
{-# INLINE orderNewSingleRequestSymbolIdCoinapiL #-}

-- | 'orderNewSingleRequestAmountOrder' Lens
orderNewSingleRequestAmountOrderL :: Lens_' OrderNewSingleRequest (Double)
orderNewSingleRequestAmountOrderL f OrderNewSingleRequest{..} = (\orderNewSingleRequestAmountOrder -> OrderNewSingleRequest { orderNewSingleRequestAmountOrder, ..} ) <$> f orderNewSingleRequestAmountOrder
{-# INLINE orderNewSingleRequestAmountOrderL #-}

-- | 'orderNewSingleRequestPrice' Lens
orderNewSingleRequestPriceL :: Lens_' OrderNewSingleRequest (Double)
orderNewSingleRequestPriceL f OrderNewSingleRequest{..} = (\orderNewSingleRequestPrice -> OrderNewSingleRequest { orderNewSingleRequestPrice, ..} ) <$> f orderNewSingleRequestPrice
{-# INLINE orderNewSingleRequestPriceL #-}

-- | 'orderNewSingleRequestSide' Lens
orderNewSingleRequestSideL :: Lens_' OrderNewSingleRequest (OrdSide)
orderNewSingleRequestSideL f OrderNewSingleRequest{..} = (\orderNewSingleRequestSide -> OrderNewSingleRequest { orderNewSingleRequestSide, ..} ) <$> f orderNewSingleRequestSide
{-# INLINE orderNewSingleRequestSideL #-}

-- | 'orderNewSingleRequestOrderType' Lens
orderNewSingleRequestOrderTypeL :: Lens_' OrderNewSingleRequest (OrdType)
orderNewSingleRequestOrderTypeL f OrderNewSingleRequest{..} = (\orderNewSingleRequestOrderType -> OrderNewSingleRequest { orderNewSingleRequestOrderType, ..} ) <$> f orderNewSingleRequestOrderType
{-# INLINE orderNewSingleRequestOrderTypeL #-}

-- | 'orderNewSingleRequestTimeInForce' Lens
orderNewSingleRequestTimeInForceL :: Lens_' OrderNewSingleRequest (TimeInForce)
orderNewSingleRequestTimeInForceL f OrderNewSingleRequest{..} = (\orderNewSingleRequestTimeInForce -> OrderNewSingleRequest { orderNewSingleRequestTimeInForce, ..} ) <$> f orderNewSingleRequestTimeInForce
{-# INLINE orderNewSingleRequestTimeInForceL #-}

-- | 'orderNewSingleRequestExpireTime' Lens
orderNewSingleRequestExpireTimeL :: Lens_' OrderNewSingleRequest (Maybe Date)
orderNewSingleRequestExpireTimeL f OrderNewSingleRequest{..} = (\orderNewSingleRequestExpireTime -> OrderNewSingleRequest { orderNewSingleRequestExpireTime, ..} ) <$> f orderNewSingleRequestExpireTime
{-# INLINE orderNewSingleRequestExpireTimeL #-}

-- | 'orderNewSingleRequestExecInst' Lens
orderNewSingleRequestExecInstL :: Lens_' OrderNewSingleRequest (Maybe [E'ExecInst])
orderNewSingleRequestExecInstL f OrderNewSingleRequest{..} = (\orderNewSingleRequestExecInst -> OrderNewSingleRequest { orderNewSingleRequestExecInst, ..} ) <$> f orderNewSingleRequestExecInst
{-# INLINE orderNewSingleRequestExecInstL #-}



-- * Position

-- | 'positionExchangeId' Lens
positionExchangeIdL :: Lens_' Position (Maybe Text)
positionExchangeIdL f Position{..} = (\positionExchangeId -> Position { positionExchangeId, ..} ) <$> f positionExchangeId
{-# INLINE positionExchangeIdL #-}

-- | 'positionData' Lens
positionDataL :: Lens_' Position (Maybe [PositionDataInner])
positionDataL f Position{..} = (\positionData -> Position { positionData, ..} ) <$> f positionData
{-# INLINE positionDataL #-}



-- * PositionDataInner

-- | 'positionDataInnerSymbolIdExchange' Lens
positionDataInnerSymbolIdExchangeL :: Lens_' PositionDataInner (Maybe Text)
positionDataInnerSymbolIdExchangeL f PositionDataInner{..} = (\positionDataInnerSymbolIdExchange -> PositionDataInner { positionDataInnerSymbolIdExchange, ..} ) <$> f positionDataInnerSymbolIdExchange
{-# INLINE positionDataInnerSymbolIdExchangeL #-}

-- | 'positionDataInnerSymbolIdCoinapi' Lens
positionDataInnerSymbolIdCoinapiL :: Lens_' PositionDataInner (Maybe Text)
positionDataInnerSymbolIdCoinapiL f PositionDataInner{..} = (\positionDataInnerSymbolIdCoinapi -> PositionDataInner { positionDataInnerSymbolIdCoinapi, ..} ) <$> f positionDataInnerSymbolIdCoinapi
{-# INLINE positionDataInnerSymbolIdCoinapiL #-}

-- | 'positionDataInnerAvgEntryPrice' Lens
positionDataInnerAvgEntryPriceL :: Lens_' PositionDataInner (Maybe Double)
positionDataInnerAvgEntryPriceL f PositionDataInner{..} = (\positionDataInnerAvgEntryPrice -> PositionDataInner { positionDataInnerAvgEntryPrice, ..} ) <$> f positionDataInnerAvgEntryPrice
{-# INLINE positionDataInnerAvgEntryPriceL #-}

-- | 'positionDataInnerQuantity' Lens
positionDataInnerQuantityL :: Lens_' PositionDataInner (Maybe Double)
positionDataInnerQuantityL f PositionDataInner{..} = (\positionDataInnerQuantity -> PositionDataInner { positionDataInnerQuantity, ..} ) <$> f positionDataInnerQuantity
{-# INLINE positionDataInnerQuantityL #-}

-- | 'positionDataInnerSide' Lens
positionDataInnerSideL :: Lens_' PositionDataInner (Maybe OrdSide)
positionDataInnerSideL f PositionDataInner{..} = (\positionDataInnerSide -> PositionDataInner { positionDataInnerSide, ..} ) <$> f positionDataInnerSide
{-# INLINE positionDataInnerSideL #-}

-- | 'positionDataInnerUnrealizedPnl' Lens
positionDataInnerUnrealizedPnlL :: Lens_' PositionDataInner (Maybe Double)
positionDataInnerUnrealizedPnlL f PositionDataInner{..} = (\positionDataInnerUnrealizedPnl -> PositionDataInner { positionDataInnerUnrealizedPnl, ..} ) <$> f positionDataInnerUnrealizedPnl
{-# INLINE positionDataInnerUnrealizedPnlL #-}

-- | 'positionDataInnerLeverage' Lens
positionDataInnerLeverageL :: Lens_' PositionDataInner (Maybe Double)
positionDataInnerLeverageL f PositionDataInner{..} = (\positionDataInnerLeverage -> PositionDataInner { positionDataInnerLeverage, ..} ) <$> f positionDataInnerLeverage
{-# INLINE positionDataInnerLeverageL #-}

-- | 'positionDataInnerCrossMargin' Lens
positionDataInnerCrossMarginL :: Lens_' PositionDataInner (Maybe Bool)
positionDataInnerCrossMarginL f PositionDataInner{..} = (\positionDataInnerCrossMargin -> PositionDataInner { positionDataInnerCrossMargin, ..} ) <$> f positionDataInnerCrossMargin
{-# INLINE positionDataInnerCrossMarginL #-}

-- | 'positionDataInnerLiquidationPrice' Lens
positionDataInnerLiquidationPriceL :: Lens_' PositionDataInner (Maybe Double)
positionDataInnerLiquidationPriceL f PositionDataInner{..} = (\positionDataInnerLiquidationPrice -> PositionDataInner { positionDataInnerLiquidationPrice, ..} ) <$> f positionDataInnerLiquidationPrice
{-# INLINE positionDataInnerLiquidationPriceL #-}

-- | 'positionDataInnerRawData' Lens
positionDataInnerRawDataL :: Lens_' PositionDataInner (Maybe A.Value)
positionDataInnerRawDataL f PositionDataInner{..} = (\positionDataInnerRawData -> PositionDataInner { positionDataInnerRawData, ..} ) <$> f positionDataInnerRawData
{-# INLINE positionDataInnerRawDataL #-}



-- * RejectReason



-- * TimeInForce



-- * ValidationError

-- | 'validationErrorType' Lens
validationErrorTypeL :: Lens_' ValidationError (Maybe Text)
validationErrorTypeL f ValidationError{..} = (\validationErrorType -> ValidationError { validationErrorType, ..} ) <$> f validationErrorType
{-# INLINE validationErrorTypeL #-}

-- | 'validationErrorTitle' Lens
validationErrorTitleL :: Lens_' ValidationError (Maybe Text)
validationErrorTitleL f ValidationError{..} = (\validationErrorTitle -> ValidationError { validationErrorTitle, ..} ) <$> f validationErrorTitle
{-# INLINE validationErrorTitleL #-}

-- | 'validationErrorStatus' Lens
validationErrorStatusL :: Lens_' ValidationError (Maybe Double)
validationErrorStatusL f ValidationError{..} = (\validationErrorStatus -> ValidationError { validationErrorStatus, ..} ) <$> f validationErrorStatus
{-# INLINE validationErrorStatusL #-}

-- | 'validationErrorTraceId' Lens
validationErrorTraceIdL :: Lens_' ValidationError (Maybe Text)
validationErrorTraceIdL f ValidationError{..} = (\validationErrorTraceId -> ValidationError { validationErrorTraceId, ..} ) <$> f validationErrorTraceId
{-# INLINE validationErrorTraceIdL #-}

-- | 'validationErrorErrors' Lens
validationErrorErrorsL :: Lens_' ValidationError (Maybe Text)
validationErrorErrorsL f ValidationError{..} = (\validationErrorErrors -> ValidationError { validationErrorErrors, ..} ) <$> f validationErrorErrors
{-# INLINE validationErrorErrorsL #-}


