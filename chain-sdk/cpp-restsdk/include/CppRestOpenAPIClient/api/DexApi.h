/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.6.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * DexApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_DexApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_DexApi_H_



#include "CppRestOpenAPIClient/ApiClient.h"

#include "CppRestOpenAPIClient/model/Dex_BatchDTO.h"
#include "CppRestOpenAPIClient/model/Dex_DepositDTO.h"
#include "CppRestOpenAPIClient/model/Dex_OrderDTO.h"
#include "CppRestOpenAPIClient/model/Dex_PriceDTO.h"
#include "CppRestOpenAPIClient/model/Dex_SolutionDTO.h"
#include "CppRestOpenAPIClient/model/Dex_StatsDTO.h"
#include "CppRestOpenAPIClient/model/Dex_TokenDTO.h"
#include "CppRestOpenAPIClient/model/Dex_TradeDTO.h"
#include "CppRestOpenAPIClient/model/Dex_UserDTO.h"
#include "CppRestOpenAPIClient/model/Dex_WithdrawDTO.h"
#include "CppRestOpenAPIClient/model/Dex_WithdrawRequestDTO.h"
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  DexApi 
{
public:

    explicit DexApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~DexApi();

    /// <summary>
    /// Batches (current)
    /// </summary>
    /// <remarks>
    /// Gets batches.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_BatchDTO>>> dex_Batches__current(
    ) const;
    /// <summary>
    /// Deposits (current)
    /// </summary>
    /// <remarks>
    /// Gets deposits.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_DepositDTO>>> dex_Deposits__current(
    ) const;
    /// <summary>
    /// Batches (historical)
    /// </summary>
    /// <remarks>
    /// Gets batches.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_BatchDTO>>> dex_GetBatches__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id
    ) const;
    /// <summary>
    /// Deposits (historical)
    /// </summary>
    /// <remarks>
    /// Gets deposits.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier, format: (transaction hash)-(token id). (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="user">User address. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_DepositDTO>>> dex_GetDeposits__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> user
    ) const;
    /// <summary>
    /// Orders (historical)
    /// </summary>
    /// <remarks>
    /// Gets orders.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier, format: (owner address)-(order id) (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="buyToken">Identifier of token that was bought. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="sellToken">Identifier of token that was sold. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_OrderDTO>>> dex_GetOrders__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> buyToken,
        boost::optional<utility::string_t> sellToken
    ) const;
    /// <summary>
    /// Prices (historical)
    /// </summary>
    /// <remarks>
    /// Gets prices.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier, format: (token id)-(batch id). (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_PriceDTO>>> dex_GetPrices__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id
    ) const;
    /// <summary>
    /// Solutions (historical)
    /// </summary>
    /// <remarks>
    /// Gets solutions.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_SolutionDTO>>> dex_GetSolutions__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id
    ) const;
    /// <summary>
    /// Stats (historical)
    /// </summary>
    /// <remarks>
    /// Gets stats.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_StatsDTO>>> dex_GetStats__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id
    ) const;
    /// <summary>
    /// Tokens (historical)
    /// </summary>
    /// <remarks>
    /// Gets tokens.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="address"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="symbol"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="name"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_TokenDTO>>> dex_GetTokens__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> address,
        boost::optional<utility::string_t> symbol,
        boost::optional<utility::string_t> name
    ) const;
    /// <summary>
    /// Trades (historical)
    /// </summary>
    /// <remarks>
    /// Gets trades.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="buyToken"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="sellToken"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_TradeDTO>>> dex_GetTrades__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> buyToken,
        boost::optional<utility::string_t> sellToken
    ) const;
    /// <summary>
    /// Users (historical)
    /// </summary>
    /// <remarks>
    /// Gets users.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_UserDTO>>> dex_GetUsers__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id
    ) const;
    /// <summary>
    /// WithdrawRequests (historical)
    /// </summary>
    /// <remarks>
    /// Gets withdrawRequests.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier, format: (transaction hash)-(id). (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="user"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_WithdrawRequestDTO>>> dex_GetWithdrawRequests__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> user
    ) const;
    /// <summary>
    /// Withdraws (historical)
    /// </summary>
    /// <remarks>
    /// Gets withdraws.
    /// </remarks>
    /// <param name="startBlock">The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional, default to 0L)</param>
    /// <param name="endBlock">The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional, default to 0L)</param>
    /// <param name="startDate">The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional, default to utility::datetime())</param>
    /// <param name="endDate">The end date of timeframe. (optional, default to utility::datetime())</param>
    /// <param name="id">Identifier, format: (transaction hash)-(id). (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    /// <param name="user"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<Dex_WithdrawDTO>>> dex_GetWithdraws__historical(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> id,
        boost::optional<utility::string_t> user
    ) const;
    /// <summary>
    /// Orders (current)
    /// </summary>
    /// <remarks>
    /// Gets orders.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_OrderDTO>>> dex_Orders__current(
    ) const;
    /// <summary>
    /// Prices (current)
    /// </summary>
    /// <remarks>
    /// Gets prices.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_PriceDTO>>> dex_Prices__current(
    ) const;
    /// <summary>
    /// Solutions (current)
    /// </summary>
    /// <remarks>
    /// Gets solutions.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_SolutionDTO>>> dex_Solutions__current(
    ) const;
    /// <summary>
    /// Stats (current)
    /// </summary>
    /// <remarks>
    /// Gets stats.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_StatsDTO>>> dex_Stats__current(
    ) const;
    /// <summary>
    /// Tokens (current)
    /// </summary>
    /// <remarks>
    /// Gets tokens.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_TokenDTO>>> dex_Tokens__current(
    ) const;
    /// <summary>
    /// Trades (current)
    /// </summary>
    /// <remarks>
    /// Gets trades.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_TradeDTO>>> dex_Trades__current(
    ) const;
    /// <summary>
    /// Users (current)
    /// </summary>
    /// <remarks>
    /// Gets users.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_UserDTO>>> dex_Users__current(
    ) const;
    /// <summary>
    /// WithdrawRequests (current)
    /// </summary>
    /// <remarks>
    /// Gets withdrawRequests.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_WithdrawRequestDTO>>> dex_WithdrawRequests__current(
    ) const;
    /// <summary>
    /// Withdraws (current)
    /// </summary>
    /// <remarks>
    /// Gets withdraws.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<Dex_WithdrawDTO>>> dex_Withdraws__current(
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_DexApi_H_ */

