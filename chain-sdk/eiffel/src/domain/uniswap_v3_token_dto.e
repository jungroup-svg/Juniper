note
 description:"[
		On Chain Dapps - REST API
 		 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
  		The version of the OpenAPI document: v1
 	    Contact: support@coinapi.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class UNISWAP_V3_TOKEN_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
 	vid: INTEGER_64
    	 -- 
    id: detachable STRING_32
      -- Token address.
    symbol: detachable STRING_32
      -- Token symbol.
    name: detachable STRING_32
      -- Token name.
 	decimals: INTEGER_32
    	 -- Token decimals.
    total_supply: detachable NUMERICS_BIG_INTEGER
      
    volume: detachable STRING_32
      -- Volume in token units.
    volume_usd: detachable STRING_32
      -- Volume in derived USD.
    untracked_volume_usd: detachable STRING_32
      -- Volume in USD even on pools with less reliable USD values.
    fees_usd: detachable STRING_32
      -- Fees in USD.
    tx_count: detachable NUMERICS_BIG_INTEGER
      
    pool_count: detachable NUMERICS_BIG_INTEGER
      
    total_value_locked: detachable STRING_32
      -- Liquidity across all pools in token units.
    total_value_locked_usd: detachable STRING_32
      -- Liquidity across all pools in derived USD.
    total_value_locked_usd_untracked: detachable STRING_32
      -- TVL derived in USD untracked.
    derived_eth: detachable STRING_32
      -- Derived price in ETH.
    whitelist_pools: detachable LIST [STRING_32]
      -- Pools token is in that are white listed for USD pricing.
    token_symbol: detachable STRING_32
      

feature -- Change Element

    set_entry_time (a_name: like entry_time)
        -- Set 'entry_time' with 'a_name'.
      do
        entry_time := a_name
      ensure
        entry_time_set: entry_time = a_name
      end

    set_recv_time (a_name: like recv_time)
        -- Set 'recv_time' with 'a_name'.
      do
        recv_time := a_name
      ensure
        recv_time_set: recv_time = a_name
      end

    set_block_number (a_name: like block_number)
        -- Set 'block_number' with 'a_name'.
      do
        block_number := a_name
      ensure
        block_number_set: block_number = a_name
      end

    set_vid (a_name: like vid)
        -- Set 'vid' with 'a_name'.
      do
        vid := a_name
      ensure
        vid_set: vid = a_name
      end

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_symbol (a_name: like symbol)
        -- Set 'symbol' with 'a_name'.
      do
        symbol := a_name
      ensure
        symbol_set: symbol = a_name
      end

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name
      end

    set_decimals (a_name: like decimals)
        -- Set 'decimals' with 'a_name'.
      do
        decimals := a_name
      ensure
        decimals_set: decimals = a_name
      end

    set_total_supply (a_name: like total_supply)
        -- Set 'total_supply' with 'a_name'.
      do
        total_supply := a_name
      ensure
        total_supply_set: total_supply = a_name
      end

    set_volume (a_name: like volume)
        -- Set 'volume' with 'a_name'.
      do
        volume := a_name
      ensure
        volume_set: volume = a_name
      end

    set_volume_usd (a_name: like volume_usd)
        -- Set 'volume_usd' with 'a_name'.
      do
        volume_usd := a_name
      ensure
        volume_usd_set: volume_usd = a_name
      end

    set_untracked_volume_usd (a_name: like untracked_volume_usd)
        -- Set 'untracked_volume_usd' with 'a_name'.
      do
        untracked_volume_usd := a_name
      ensure
        untracked_volume_usd_set: untracked_volume_usd = a_name
      end

    set_fees_usd (a_name: like fees_usd)
        -- Set 'fees_usd' with 'a_name'.
      do
        fees_usd := a_name
      ensure
        fees_usd_set: fees_usd = a_name
      end

    set_tx_count (a_name: like tx_count)
        -- Set 'tx_count' with 'a_name'.
      do
        tx_count := a_name
      ensure
        tx_count_set: tx_count = a_name
      end

    set_pool_count (a_name: like pool_count)
        -- Set 'pool_count' with 'a_name'.
      do
        pool_count := a_name
      ensure
        pool_count_set: pool_count = a_name
      end

    set_total_value_locked (a_name: like total_value_locked)
        -- Set 'total_value_locked' with 'a_name'.
      do
        total_value_locked := a_name
      ensure
        total_value_locked_set: total_value_locked = a_name
      end

    set_total_value_locked_usd (a_name: like total_value_locked_usd)
        -- Set 'total_value_locked_usd' with 'a_name'.
      do
        total_value_locked_usd := a_name
      ensure
        total_value_locked_usd_set: total_value_locked_usd = a_name
      end

    set_total_value_locked_usd_untracked (a_name: like total_value_locked_usd_untracked)
        -- Set 'total_value_locked_usd_untracked' with 'a_name'.
      do
        total_value_locked_usd_untracked := a_name
      ensure
        total_value_locked_usd_untracked_set: total_value_locked_usd_untracked = a_name
      end

    set_derived_eth (a_name: like derived_eth)
        -- Set 'derived_eth' with 'a_name'.
      do
        derived_eth := a_name
      ensure
        derived_eth_set: derived_eth = a_name
      end

    set_whitelist_pools (a_name: like whitelist_pools)
        -- Set 'whitelist_pools' with 'a_name'.
      do
        whitelist_pools := a_name
      ensure
        whitelist_pools_set: whitelist_pools = a_name
      end

    set_token_symbol (a_name: like token_symbol)
        -- Set 'token_symbol' with 'a_name'.
      do
        token_symbol := a_name
      ensure
        token_symbol_set: token_symbol = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass UNISWAP_V3_TOKEN_DTO%N")
        if attached entry_time as l_entry_time then
          Result.append ("%Nentry_time:")
          Result.append (l_entry_time.out)
          Result.append ("%N")
        end
        if attached recv_time as l_recv_time then
          Result.append ("%Nrecv_time:")
          Result.append (l_recv_time.out)
          Result.append ("%N")
        end
        if attached block_number as l_block_number then
          Result.append ("%Nblock_number:")
          Result.append (l_block_number.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached symbol as l_symbol then
          Result.append ("%Nsymbol:")
          Result.append (l_symbol.out)
          Result.append ("%N")
        end
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")
        end
        if attached decimals as l_decimals then
          Result.append ("%Ndecimals:")
          Result.append (l_decimals.out)
          Result.append ("%N")
        end
        if attached total_supply as l_total_supply then
          Result.append ("%Ntotal_supply:")
          Result.append (l_total_supply.out)
          Result.append ("%N")
        end
        if attached volume as l_volume then
          Result.append ("%Nvolume:")
          Result.append (l_volume.out)
          Result.append ("%N")
        end
        if attached volume_usd as l_volume_usd then
          Result.append ("%Nvolume_usd:")
          Result.append (l_volume_usd.out)
          Result.append ("%N")
        end
        if attached untracked_volume_usd as l_untracked_volume_usd then
          Result.append ("%Nuntracked_volume_usd:")
          Result.append (l_untracked_volume_usd.out)
          Result.append ("%N")
        end
        if attached fees_usd as l_fees_usd then
          Result.append ("%Nfees_usd:")
          Result.append (l_fees_usd.out)
          Result.append ("%N")
        end
        if attached tx_count as l_tx_count then
          Result.append ("%Ntx_count:")
          Result.append (l_tx_count.out)
          Result.append ("%N")
        end
        if attached pool_count as l_pool_count then
          Result.append ("%Npool_count:")
          Result.append (l_pool_count.out)
          Result.append ("%N")
        end
        if attached total_value_locked as l_total_value_locked then
          Result.append ("%Ntotal_value_locked:")
          Result.append (l_total_value_locked.out)
          Result.append ("%N")
        end
        if attached total_value_locked_usd as l_total_value_locked_usd then
          Result.append ("%Ntotal_value_locked_usd:")
          Result.append (l_total_value_locked_usd.out)
          Result.append ("%N")
        end
        if attached total_value_locked_usd_untracked as l_total_value_locked_usd_untracked then
          Result.append ("%Ntotal_value_locked_usd_untracked:")
          Result.append (l_total_value_locked_usd_untracked.out)
          Result.append ("%N")
        end
        if attached derived_eth as l_derived_eth then
          Result.append ("%Nderived_eth:")
          Result.append (l_derived_eth.out)
          Result.append ("%N")
        end
        if attached whitelist_pools as l_whitelist_pools then
          across l_whitelist_pools as ic loop
            Result.append ("%N whitelist_pools:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached token_symbol as l_token_symbol then
          Result.append ("%Ntoken_symbol:")
          Result.append (l_token_symbol.out)
          Result.append ("%N")
        end
      end
end

