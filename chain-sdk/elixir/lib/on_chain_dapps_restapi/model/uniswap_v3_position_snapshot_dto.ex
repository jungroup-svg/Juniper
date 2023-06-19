# NOTE: This file is auto generated by OpenAPI Generator 6.6.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule OnChainDapps-RESTAPI.Model.UniswapV3PositionSnapshotDto do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :entry_time,
    :recv_time,
    :block_number,
    :id,
    :owner,
    :pool,
    :position,
    :timestamp,
    :liquidity,
    :deposited_token_0,
    :deposited_token_1,
    :withdrawn_token_0,
    :withdrawn_token_1,
    :collected_fees_token_0,
    :collected_fees_token_1,
    :transaction,
    :fee_growth_inside_0_last_x128,
    :fee_growth_inside_1_last_x128,
    :vid
  ]

  @type t :: %__MODULE__{
    :entry_time => DateTime.t | nil,
    :recv_time => DateTime.t | nil,
    :block_number => integer() | nil,
    :id => String.t | nil,
    :owner => String.t | nil,
    :pool => String.t | nil,
    :position => String.t | nil,
    :timestamp => String.t | nil,
    :liquidity => String.t | nil,
    :deposited_token_0 => String.t | nil,
    :deposited_token_1 => String.t | nil,
    :withdrawn_token_0 => String.t | nil,
    :withdrawn_token_1 => String.t | nil,
    :collected_fees_token_0 => String.t | nil,
    :collected_fees_token_1 => String.t | nil,
    :transaction => String.t | nil,
    :fee_growth_inside_0_last_x128 => String.t | nil,
    :fee_growth_inside_1_last_x128 => String.t | nil,
    :vid => integer() | nil
  }
end

defimpl Poison.Decoder, for: OnChainDapps-RESTAPI.Model.UniswapV3PositionSnapshotDto do
  def decode(value, _options) do
    value
  end
end

