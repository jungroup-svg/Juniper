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



#include "CppRestOpenAPIClient/model/UniswapV2_TransactionDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UniswapV2_TransactionDTO::UniswapV2_TransactionDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Timestamp = utility::conversions::to_string_t("");
    m_TimestampIsSet = false;
    m_MintsIsSet = false;
    m_BurnsIsSet = false;
    m_SwapsIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

UniswapV2_TransactionDTO::~UniswapV2_TransactionDTO()
{
}

void UniswapV2_TransactionDTO::validate()
{
    // TODO: implement validation
}

web::json::value UniswapV2_TransactionDTO::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Entry_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("entry_time"))] = ModelBase::toJson(m_Entry_time);
    }
    if(m_Recv_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("recv_time"))] = ModelBase::toJson(m_Recv_time);
    }
    if(m_Block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("block_number"))] = ModelBase::toJson(m_Block_number);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_TimestampIsSet)
    {
        val[utility::conversions::to_string_t(U("timestamp"))] = ModelBase::toJson(m_Timestamp);
    }
    if(m_MintsIsSet)
    {
        val[utility::conversions::to_string_t(U("mints"))] = ModelBase::toJson(m_Mints);
    }
    if(m_BurnsIsSet)
    {
        val[utility::conversions::to_string_t(U("burns"))] = ModelBase::toJson(m_Burns);
    }
    if(m_SwapsIsSet)
    {
        val[utility::conversions::to_string_t(U("swaps"))] = ModelBase::toJson(m_Swaps);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool UniswapV2_TransactionDTO::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("entry_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("entry_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setEntryTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEntryTime);
            setEntryTime(refVal_setEntryTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("recv_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("recv_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setRecvTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setRecvTime);
            setRecvTime(refVal_setRecvTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("block_number")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBlockNumber);
            setBlockNumber(refVal_setBlockNumber);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setId);
            setId(refVal_setId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTimestamp);
            setTimestamp(refVal_setTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("mints"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("mints")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setMints;
            ok &= ModelBase::fromJson(fieldValue, refVal_setMints);
            setMints(refVal_setMints);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("burns"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("burns")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setBurns;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBurns);
            setBurns(refVal_setBurns);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("swaps"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("swaps")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setSwaps;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSwaps);
            setSwaps(refVal_setSwaps);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("vid"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("vid")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setVid;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVid);
            setVid(refVal_setVid);
        }
    }
    return ok;
}

void UniswapV2_TransactionDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Entry_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("entry_time")), m_Entry_time));
    }
    if(m_Recv_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("recv_time")), m_Recv_time));
    }
    if(m_Block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("block_number")), m_Block_number));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_TimestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("timestamp")), m_Timestamp));
    }
    if(m_MintsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("mints")), m_Mints));
    }
    if(m_BurnsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("burns")), m_Burns));
    }
    if(m_SwapsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("swaps")), m_Swaps));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool UniswapV2_TransactionDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("entry_time"))))
    {
        utility::datetime refVal_setEntryTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("entry_time"))), refVal_setEntryTime );
        setEntryTime(refVal_setEntryTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("recv_time"))))
    {
        utility::datetime refVal_setRecvTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("recv_time"))), refVal_setRecvTime );
        setRecvTime(refVal_setRecvTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("block_number"))))
    {
        int64_t refVal_setBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("block_number"))), refVal_setBlockNumber );
        setBlockNumber(refVal_setBlockNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("timestamp"))))
    {
        utility::string_t refVal_setTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("timestamp"))), refVal_setTimestamp );
        setTimestamp(refVal_setTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("mints"))))
    {
        std::vector<utility::string_t> refVal_setMints;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("mints"))), refVal_setMints );
        setMints(refVal_setMints);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("burns"))))
    {
        std::vector<utility::string_t> refVal_setBurns;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("burns"))), refVal_setBurns );
        setBurns(refVal_setBurns);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("swaps"))))
    {
        std::vector<utility::string_t> refVal_setSwaps;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("swaps"))), refVal_setSwaps );
        setSwaps(refVal_setSwaps);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime UniswapV2_TransactionDTO::getEntryTime() const
{
    return m_Entry_time;
}

void UniswapV2_TransactionDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UniswapV2_TransactionDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UniswapV2_TransactionDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UniswapV2_TransactionDTO::getRecvTime() const
{
    return m_Recv_time;
}

void UniswapV2_TransactionDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UniswapV2_TransactionDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UniswapV2_TransactionDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UniswapV2_TransactionDTO::getBlockNumber() const
{
    return m_Block_number;
}

void UniswapV2_TransactionDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UniswapV2_TransactionDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UniswapV2_TransactionDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t UniswapV2_TransactionDTO::getId() const
{
    return m_Id;
}

void UniswapV2_TransactionDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UniswapV2_TransactionDTO::idIsSet() const
{
    return m_IdIsSet;
}

void UniswapV2_TransactionDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t UniswapV2_TransactionDTO::getTimestamp() const
{
    return m_Timestamp;
}

void UniswapV2_TransactionDTO::setTimestamp(const utility::string_t& value)
{
    m_Timestamp = value;
    m_TimestampIsSet = true;
}

bool UniswapV2_TransactionDTO::timestampIsSet() const
{
    return m_TimestampIsSet;
}

void UniswapV2_TransactionDTO::unsetTimestamp()
{
    m_TimestampIsSet = false;
}
std::vector<utility::string_t>& UniswapV2_TransactionDTO::getMints()
{
    return m_Mints;
}

void UniswapV2_TransactionDTO::setMints(const std::vector<utility::string_t>& value)
{
    m_Mints = value;
    m_MintsIsSet = true;
}

bool UniswapV2_TransactionDTO::mintsIsSet() const
{
    return m_MintsIsSet;
}

void UniswapV2_TransactionDTO::unsetMints()
{
    m_MintsIsSet = false;
}
std::vector<utility::string_t>& UniswapV2_TransactionDTO::getBurns()
{
    return m_Burns;
}

void UniswapV2_TransactionDTO::setBurns(const std::vector<utility::string_t>& value)
{
    m_Burns = value;
    m_BurnsIsSet = true;
}

bool UniswapV2_TransactionDTO::burnsIsSet() const
{
    return m_BurnsIsSet;
}

void UniswapV2_TransactionDTO::unsetBurns()
{
    m_BurnsIsSet = false;
}
std::vector<utility::string_t>& UniswapV2_TransactionDTO::getSwaps()
{
    return m_Swaps;
}

void UniswapV2_TransactionDTO::setSwaps(const std::vector<utility::string_t>& value)
{
    m_Swaps = value;
    m_SwapsIsSet = true;
}

bool UniswapV2_TransactionDTO::swapsIsSet() const
{
    return m_SwapsIsSet;
}

void UniswapV2_TransactionDTO::unsetSwaps()
{
    m_SwapsIsSet = false;
}
int64_t UniswapV2_TransactionDTO::getVid() const
{
    return m_Vid;
}

void UniswapV2_TransactionDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UniswapV2_TransactionDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UniswapV2_TransactionDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


