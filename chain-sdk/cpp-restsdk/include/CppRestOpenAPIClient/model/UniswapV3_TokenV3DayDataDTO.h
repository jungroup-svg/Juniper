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
 * UniswapV3_TokenV3DayDataDTO.h
 *
 * Token data aggregated across all pairs that include token.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_TokenV3DayDataDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_TokenV3DayDataDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// Token data aggregated across all pairs that include token.
/// </summary>
class  UniswapV3_TokenV3DayDataDTO
    : public ModelBase
{
public:
    UniswapV3_TokenV3DayDataDTO();
    virtual ~UniswapV3_TokenV3DayDataDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UniswapV3_TokenV3DayDataDTO members

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getEntryTime() const;
    bool entryTimeIsSet() const;
    void unsetEntry_time();

    void setEntryTime(const utility::datetime& value);

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getRecvTime() const;
    bool recvTimeIsSet() const;
    void unsetRecv_time();

    void setRecvTime(const utility::datetime& value);

    /// <summary>
    /// Number of block in which entity was recorded.
    /// </summary>
    int64_t getBlockNumber() const;
    bool blockNumberIsSet() const;
    void unsetBlock_number();

    void setBlockNumber(int64_t value);

    /// <summary>
    /// 
    /// </summary>
    int64_t getVid() const;
    bool vidIsSet() const;
    void unsetVid();

    void setVid(int64_t value);

    /// <summary>
    /// Token address concatendated with date.
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Timestamp rounded to current day by dividing by 86400.
    /// </summary>
    int32_t getDate() const;
    bool dateIsSet() const;
    void unsetdate();

    void setDate(int32_t value);

    /// <summary>
    /// Pointer to token.
    /// </summary>
    utility::string_t getToken() const;
    bool tokenIsSet() const;
    void unsetToken();

    void setToken(const utility::string_t& value);

    /// <summary>
    /// Volume in token units.
    /// </summary>
    utility::string_t getVolume() const;
    bool volumeIsSet() const;
    void unsetVolume();

    void setVolume(const utility::string_t& value);

    /// <summary>
    /// Volume in derived USD.
    /// </summary>
    utility::string_t getVolumeUsd() const;
    bool volumeUsdIsSet() const;
    void unsetVolume_usd();

    void setVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Volume in USD even on pools with less reliable USD values.
    /// </summary>
    utility::string_t getUntrackedVolumeUsd() const;
    bool untrackedVolumeUsdIsSet() const;
    void unsetUntracked_volume_usd();

    void setUntrackedVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Liquidity across all pools in token units.
    /// </summary>
    utility::string_t getTotalValueLocked() const;
    bool totalValueLockedIsSet() const;
    void unsetTotal_value_locked();

    void setTotalValueLocked(const utility::string_t& value);

    /// <summary>
    /// Liquidity across all pools in derived USD.
    /// </summary>
    utility::string_t getTotalValueLockedUsd() const;
    bool totalValueLockedUsdIsSet() const;
    void unsetTotal_value_locked_usd();

    void setTotalValueLockedUsd(const utility::string_t& value);

    /// <summary>
    /// Price at end of period in USD.
    /// </summary>
    utility::string_t getPriceUsd() const;
    bool priceUsdIsSet() const;
    void unsetPrice_usd();

    void setPriceUsd(const utility::string_t& value);

    /// <summary>
    /// Fees in USD.
    /// </summary>
    utility::string_t getFeesUsd() const;
    bool feesUsdIsSet() const;
    void unsetFees_usd();

    void setFeesUsd(const utility::string_t& value);

    /// <summary>
    /// Opening price USD.
    /// </summary>
    utility::string_t getOpen() const;
    bool openIsSet() const;
    void unsetOpen();

    void setOpen(const utility::string_t& value);

    /// <summary>
    /// High price USD.
    /// </summary>
    utility::string_t getHigh() const;
    bool highIsSet() const;
    void unsetHigh();

    void setHigh(const utility::string_t& value);

    /// <summary>
    /// Low price USD.
    /// </summary>
    utility::string_t getLow() const;
    bool lowIsSet() const;
    void unsetLow();

    void setLow(const utility::string_t& value);

    /// <summary>
    /// Close price USD.
    /// </summary>
    utility::string_t getClose() const;
    bool closeIsSet() const;
    void unsetClose();

    void setClose(const utility::string_t& value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    int32_t m_date;
    bool m_dateIsSet;
    utility::string_t m_Token;
    bool m_TokenIsSet;
    utility::string_t m_Volume;
    bool m_VolumeIsSet;
    utility::string_t m_Volume_usd;
    bool m_Volume_usdIsSet;
    utility::string_t m_Untracked_volume_usd;
    bool m_Untracked_volume_usdIsSet;
    utility::string_t m_Total_value_locked;
    bool m_Total_value_lockedIsSet;
    utility::string_t m_Total_value_locked_usd;
    bool m_Total_value_locked_usdIsSet;
    utility::string_t m_Price_usd;
    bool m_Price_usdIsSet;
    utility::string_t m_Fees_usd;
    bool m_Fees_usdIsSet;
    utility::string_t m_Open;
    bool m_OpenIsSet;
    utility::string_t m_High;
    bool m_HighIsSet;
    utility::string_t m_Low;
    bool m_LowIsSet;
    utility::string_t m_Close;
    bool m_CloseIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_TokenV3DayDataDTO_H_ */
