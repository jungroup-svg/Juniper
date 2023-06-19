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


class DexSolutionDTO(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
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
            
            
            class batch(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'batch':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class solver(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'solver':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class fee_reward(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fee_reward':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class objective_value(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'objective_value':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class utility(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'utility':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class trades(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    items = schemas.StrSchema
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'trades':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class create_epoch(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'create_epoch':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class revert_epoch(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'revert_epoch':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class tx_hash(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tx_hash':
                    return super().__new__(
                        cls,
                        *_args,
                        _configuration=_configuration,
                    )
            
            
            class tx_log_index(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *_args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tx_log_index':
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
                "batch": batch,
                "solver": solver,
                "fee_reward": fee_reward,
                "objective_value": objective_value,
                "utility": utility,
                "trades": trades,
                "create_epoch": create_epoch,
                "revert_epoch": revert_epoch,
                "tx_hash": tx_hash,
                "tx_log_index": tx_log_index,
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
    def __getitem__(self, name: typing_extensions.Literal["batch"]) -> MetaOapg.properties.batch: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["solver"]) -> MetaOapg.properties.solver: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee_reward"]) -> MetaOapg.properties.fee_reward: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["objective_value"]) -> MetaOapg.properties.objective_value: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["utility"]) -> MetaOapg.properties.utility: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["trades"]) -> MetaOapg.properties.trades: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["create_epoch"]) -> MetaOapg.properties.create_epoch: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["revert_epoch"]) -> MetaOapg.properties.revert_epoch: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tx_hash"]) -> MetaOapg.properties.tx_hash: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tx_log_index"]) -> MetaOapg.properties.tx_log_index: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vid"]) -> MetaOapg.properties.vid: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["batch"], typing_extensions.Literal["solver"], typing_extensions.Literal["fee_reward"], typing_extensions.Literal["objective_value"], typing_extensions.Literal["utility"], typing_extensions.Literal["trades"], typing_extensions.Literal["create_epoch"], typing_extensions.Literal["revert_epoch"], typing_extensions.Literal["tx_hash"], typing_extensions.Literal["tx_log_index"], typing_extensions.Literal["vid"], ]):
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
    def get_item_oapg(self, name: typing_extensions.Literal["batch"]) -> typing.Union[MetaOapg.properties.batch, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["solver"]) -> typing.Union[MetaOapg.properties.solver, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee_reward"]) -> typing.Union[MetaOapg.properties.fee_reward, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["objective_value"]) -> typing.Union[MetaOapg.properties.objective_value, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["utility"]) -> typing.Union[MetaOapg.properties.utility, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["trades"]) -> typing.Union[MetaOapg.properties.trades, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["create_epoch"]) -> typing.Union[MetaOapg.properties.create_epoch, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["revert_epoch"]) -> typing.Union[MetaOapg.properties.revert_epoch, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tx_hash"]) -> typing.Union[MetaOapg.properties.tx_hash, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tx_log_index"]) -> typing.Union[MetaOapg.properties.tx_log_index, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vid"]) -> typing.Union[MetaOapg.properties.vid, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["entry_time"], typing_extensions.Literal["recv_time"], typing_extensions.Literal["block_number"], typing_extensions.Literal["id"], typing_extensions.Literal["batch"], typing_extensions.Literal["solver"], typing_extensions.Literal["fee_reward"], typing_extensions.Literal["objective_value"], typing_extensions.Literal["utility"], typing_extensions.Literal["trades"], typing_extensions.Literal["create_epoch"], typing_extensions.Literal["revert_epoch"], typing_extensions.Literal["tx_hash"], typing_extensions.Literal["tx_log_index"], typing_extensions.Literal["vid"], ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *_args: typing.Union[dict, frozendict.frozendict, ],
        entry_time: typing.Union[MetaOapg.properties.entry_time, str, datetime, schemas.Unset] = schemas.unset,
        recv_time: typing.Union[MetaOapg.properties.recv_time, str, datetime, schemas.Unset] = schemas.unset,
        block_number: typing.Union[MetaOapg.properties.block_number, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        id: typing.Union[MetaOapg.properties.id, None, str, schemas.Unset] = schemas.unset,
        batch: typing.Union[MetaOapg.properties.batch, None, str, schemas.Unset] = schemas.unset,
        solver: typing.Union[MetaOapg.properties.solver, None, str, schemas.Unset] = schemas.unset,
        fee_reward: typing.Union[MetaOapg.properties.fee_reward, None, str, schemas.Unset] = schemas.unset,
        objective_value: typing.Union[MetaOapg.properties.objective_value, None, str, schemas.Unset] = schemas.unset,
        utility: typing.Union[MetaOapg.properties.utility, None, str, schemas.Unset] = schemas.unset,
        trades: typing.Union[MetaOapg.properties.trades, list, tuple, None, schemas.Unset] = schemas.unset,
        create_epoch: typing.Union[MetaOapg.properties.create_epoch, None, str, schemas.Unset] = schemas.unset,
        revert_epoch: typing.Union[MetaOapg.properties.revert_epoch, None, str, schemas.Unset] = schemas.unset,
        tx_hash: typing.Union[MetaOapg.properties.tx_hash, None, str, schemas.Unset] = schemas.unset,
        tx_log_index: typing.Union[MetaOapg.properties.tx_log_index, None, str, schemas.Unset] = schemas.unset,
        vid: typing.Union[MetaOapg.properties.vid, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'DexSolutionDTO':
        return super().__new__(
            cls,
            *_args,
            entry_time=entry_time,
            recv_time=recv_time,
            block_number=block_number,
            id=id,
            batch=batch,
            solver=solver,
            fee_reward=fee_reward,
            objective_value=objective_value,
            utility=utility,
            trades=trades,
            create_epoch=create_epoch,
            revert_epoch=revert_epoch,
            tx_hash=tx_hash,
            tx_log_index=tx_log_index,
            vid=vid,
            _configuration=_configuration,
        )
