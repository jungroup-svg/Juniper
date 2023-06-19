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
 * Dex_DepositDTO.h
 *
 * Deposit of an user.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Dex_DepositDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Dex_DepositDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// Deposit of an user.
/// </summary>
class  Dex_DepositDTO
    : public ModelBase
{
public:
    Dex_DepositDTO();
    virtual ~Dex_DepositDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Dex_DepositDTO members

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
    /// Identifier, format: (transaction hash)-(token id).
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// User address.
    /// </summary>
    utility::string_t getUser() const;
    bool userIsSet() const;
    void unsetUser();

    void setUser(const utility::string_t& value);

    /// <summary>
    /// Token address.
    /// </summary>
    utility::string_t getTokenAddress() const;
    bool tokenAddressIsSet() const;
    void unsetToken_address();

    void setTokenAddress(const utility::string_t& value);

    /// <summary>
    /// Amount of deposit.
    /// </summary>
    utility::string_t getAmount() const;
    bool amountIsSet() const;
    void unsetAmount();

    void setAmount(const utility::string_t& value);

    /// <summary>
    /// Identifier (numerical).
    /// </summary>
    utility::string_t getBatchId() const;
    bool batchIdIsSet() const;
    void unsetBatch_id();

    void setBatchId(const utility::string_t& value);

    /// <summary>
    /// Create epoch.
    /// </summary>
    utility::string_t getCreateEpoch() const;
    bool createEpochIsSet() const;
    void unsetCreate_epoch();

    void setCreateEpoch(const utility::string_t& value);

    /// <summary>
    /// Transaction hash.
    /// </summary>
    utility::string_t getTxHash() const;
    bool txHashIsSet() const;
    void unsetTx_hash();

    void setTxHash(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int64_t getVid() const;
    bool vidIsSet() const;
    void unsetVid();

    void setVid(int64_t value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    utility::string_t m_User;
    bool m_UserIsSet;
    utility::string_t m_Token_address;
    bool m_Token_addressIsSet;
    utility::string_t m_Amount;
    bool m_AmountIsSet;
    utility::string_t m_Batch_id;
    bool m_Batch_idIsSet;
    utility::string_t m_Create_epoch;
    bool m_Create_epochIsSet;
    utility::string_t m_Tx_hash;
    bool m_Tx_hashIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Dex_DepositDTO_H_ */
