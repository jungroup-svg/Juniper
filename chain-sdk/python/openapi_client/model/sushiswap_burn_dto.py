# coding: utf-8

"""
    On Chain Dapps - REST API

     This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                               # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from openapi_client import schemas  # noqa: F401


class SushiswapBurnDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.

    Burn entities are created for every emitted Burn event on the Uniswap core contracts. The Burn entity stores key data about the event like token amounts, who burned LP tokens, who received tokens, and more. This entity can be used to track liquidity removals on pairs.
    """


    class MetaOapg:
        
        class properties:
            entry_time = schemas.DateTimeSchema
            recv_time = schemas.DateTimeSchema
            block_number = schemas.Int64Schema
            
            
            class id(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'id':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class transaction(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'transaction':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class timestamp(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'timestamp':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class pair(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'pair':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class liquidity(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'liquidity':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class sender(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'sender':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class amount_0(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'amount_0':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class amount_1(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'amount_1':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class to(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'to':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class log_index(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'log_index':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class amount_usd(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'amount_usd':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            complete = schemas.BoolSchema
            
            
            class fee_to(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fee_to':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class fee_liquidity(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fee_liquidity':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            vid = schemas.Int64Schema
            __annotations__ = {
                "entry_time": entry_time,
                "recv_time": recv_time,
                "block_number": block_number,
                "id": id,
                "transaction": transaction,
                "timestamp": timestamp,
                "pair": pair,
                "liquidity": liquidity,
                "sender": sender,
                "amount_0": amount_0,
                "amount_1": amount_1,
                "to": to,
                "log_index": log_index,
                "amount_usd": amount_usd,
                "complete": complete,
                "fee_to": fee_to,
                "fee_liquidity": fee_liquidity,
                "vid": vid,
            }
        additional_properties = schemas.NotAnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["entry_time"]) -> MetaOapg.properties.entry_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["recv_time"]) -> MetaOapg.properties.recv_time: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["block_number"]) -> MetaOapg.properties.block_number: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["transaction"]) -> MetaOapg.properties.transaction: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["timestamp"]) -> MetaOapg.properties.timestamp: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["pair"]) -> MetaOapg.properties.pair: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["liquidity"]) -> MetaOapg.properties.liquidity: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sender"]) -> MetaOapg.properties.sender: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["amount_0"]) -> MetaOapg.properties.amount_0: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["amount_1"]) -> MetaOapg.properties.amount_1: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["to"]) -> MetaOapg.properties.to: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["log_index"]) -> MetaOapg.properties.log_index: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["amount_usd"]) -> MetaOapg.properties.amount_usd: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["complete"]) -> MetaOapg.properties.complete: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_to"]) -> MetaOapg.properties.fee_to: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_liquidity"]) -> MetaOapg.properties.fee_liquidity: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["transaction"], typing_extensions.Literal["timestamp"], typing_extensions.Literal["pair"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sender"], typing_extensions.Literal["amount_0"], typing_extensions.Literal["amount_1"], typing_extensions.Literal["to"], typing_extensions.Literal["log_index"], typing_extensions.Literal["amount_usd"], typing_extensions.Literal["complete"], typing_extensions.Literal["fee_to"], typing_extensions.Literal["fee_liquidity"], typing_extensions.Literal["vid"], ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["entry_time"]) -> typing.Union[MetaOapg.properties.entry_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["recv_time"]) -> typing.Union[MetaOapg.properties.recv_time, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["block_number"]) -> typing.Union[MetaOapg.properties.block_number, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["transaction"]) -> typing.Union[MetaOapg.properties.transaction, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["timestamp"]) -> typing.Union[MetaOapg.properties.timestamp, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["pair"]) -> typing.Union[MetaOapg.properties.pair, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["liquidity"]) -> typing.Union[MetaOapg.properties.liquidity, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sender"]) -> typing.Union[MetaOapg.properties.sender, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["amount_0"]) -> typing.Union[MetaOapg.properties.amount_0, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["amount_1"]) -> typing.Union[MetaOapg.properties.amount_1, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["to"]) -> typing.Union[MetaOapg.properties.to, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["log_index"]) -> typing.Union[MetaOapg.properties.log_index, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["amount_usd"]) -> typing.Union[MetaOapg.properties.amount_usd, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["complete"]) -> typing.Union[MetaOapg.properties.complete, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_to"]) -> typing.Union[MetaOapg.properties.fee_to, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_liquidity"]) -> typing.Union[MetaOapg.properties.fee_liquidity, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["transaction"], typing_extensions.Literal["timestamp"], typing_extensions.Literal["pair"], typing_extensions.Literal["liquidity"], typing_extensions.Literal["sender"], typing_extensions.Literal["amount_0"], typing_extensions.Literal["amount_1"], typing_extensions.Literal["to"], typing_extensions.Literal["log_index"], typing_extensions.Literal["amount_usd"], typing_extensions.Literal["complete"], typing_extensions.Literal["fee_to"], typing_extensions.Literal["fee_liquidity"], typing_extensions.Literal["vid"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        transaction: typing.Union[MetaOapg.properties.transaction, None, str, schemas.Unset] = schemas.unset,
        timestamp: typing.Union[MetaOapg.properties.timestamp, None, str, schemas.Unset] = schemas.unset,
        pair: typing.Union[MetaOapg.properties.pair, None, str, schemas.Unset] = schemas.unset,
        liquidity: typing.Union[MetaOapg.properties.liquidity, None, str, schemas.Unset] = schemas.unset,
        sender: typing.Union[MetaOapg.properties.sender, None, str, schemas.Unset] = schemas.unset,
        amount_0: typing.Union[MetaOapg.properties.amount_0, None, str, schemas.Unset] = schemas.unset,
        amount_1: typing.Union[MetaOapg.properties.amount_1, None, str, schemas.Unset] = schemas.unset,
        to: typing.Union[MetaOapg.properties.to, None, str, schemas.Unset] = schemas.unset,
        log_index: typing.Union[MetaOapg.properties.log_index, None, str, schemas.Unset] = schemas.unset,
        amount_usd: typing.Union[MetaOapg.properties.amount_usd, None, str, schemas.Unset] = schemas.unset,
        complete: typing.Union[MetaOapg.properties.complete, bool, schemas.Unset] = schemas.unset,
        fee_to: typing.Union[MetaOapg.properties.fee_to, None, str, schemas.Unset] = schemas.unset,
        fee_liquidity: typing.Union[MetaOapg.properties.fee_liquidity, None, str, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SushiswapBurnDTO':
        return super().__new__(
            cls,
            *_args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            id=id,
            transaction=transaction,
            timestamp=timestamp,
            pair=pair,
            liquidity=liquidity,
            sender=sender,
            amount_0=amount_0,
            amount_1=amount_1,
            to=to,
            log_index=log_index,
            amount_usd=amount_usd,
            complete=complete,
            fee_to=fee_to,
            fee_liquidity=fee_liquidity,
            vid=vid,
            _configuration=_configuration,
        )
