/*
 * CRYPTOPUNKS.MarketPlaceDTO.h
 *
 * 
 */

#ifndef _CRYPTOPUNKS.MarketPlaceDTO_H_
#define _CRYPTOPUNKS.MarketPlaceDTO_H_


#include <string>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CRYPTOPUNKS.MarketPlaceDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	CRYPTOPUNKS.MarketPlaceDTO();
	CRYPTOPUNKS.MarketPlaceDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CRYPTOPUNKS.MarketPlaceDTO();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getEntryTime();

	/*! \brief Set 
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get 
	 */
	std::string getRecvTime();

	/*! \brief Set 
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get Number of block in which entity was recorded.
	 */
	long long getBlockNumber();

	/*! \brief Set Number of block in which entity was recorded.
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get 
	 */
	std::string getBlockRange();

	/*! \brief Set 
	 */
	void setBlockRange(std::string  block_range);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getSlug();

	/*! \brief Set 
	 */
	void setSlug(std::string  slug);
	/*! \brief Get 
	 */
	std::string getSchemaVersion();

	/*! \brief Set 
	 */
	void setSchemaVersion(std::string  schema_version);
	/*! \brief Get 
	 */
	std::string getSubgraphVersion();

	/*! \brief Set 
	 */
	void setSubgraphVersion(std::string  subgraph_version);
	/*! \brief Get 
	 */
	std::string getMethodologyVersion();

	/*! \brief Set 
	 */
	void setMethodologyVersion(std::string  methodology_version);
	/*! \brief Get 
	 */
	int getCollectionCount();

	/*! \brief Set 
	 */
	void setCollectionCount(int  collection_count);
	/*! \brief Get 
	 */
	int getTradeCount();

	/*! \brief Set 
	 */
	void setTradeCount(int  trade_count);
	/*! \brief Get 
	 */
	std::string getCumulativeTradeVolumeEth();

	/*! \brief Set 
	 */
	void setCumulativeTradeVolumeEth(std::string  cumulative_trade_volume_eth);
	/*! \brief Get 
	 */
	std::string getMarketplaceRevenueEth();

	/*! \brief Set 
	 */
	void setMarketplaceRevenueEth(std::string  marketplace_revenue_eth);
	/*! \brief Get 
	 */
	std::string getCreatorRevenueEth();

	/*! \brief Set 
	 */
	void setCreatorRevenueEth(std::string  creator_revenue_eth);
	/*! \brief Get 
	 */
	std::string getTotalRevenueEth();

	/*! \brief Set 
	 */
	void setTotalRevenueEth(std::string  total_revenue_eth);
	/*! \brief Get 
	 */
	int getCumulativeUniqueTraders();

	/*! \brief Set 
	 */
	void setCumulativeUniqueTraders(int  cumulative_unique_traders);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string block_range;
	std::string id;
	std::string name;
	std::string slug;
	std::string schema_version;
	std::string subgraph_version;
	std::string methodology_version;
	int collection_count;
	int trade_count;
	std::string cumulative_trade_volume_eth;
	std::string marketplace_revenue_eth;
	std::string creator_revenue_eth;
	std::string total_revenue_eth;
	int cumulative_unique_traders;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CRYPTOPUNKS.MarketPlaceDTO_H_ */
