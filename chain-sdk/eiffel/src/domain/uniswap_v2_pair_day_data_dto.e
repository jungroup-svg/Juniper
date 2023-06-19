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
class UNISWAP_V2_PAIR_DAY_DATA_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- 
 	date: INTEGER_32
    	 -- Unix timestamp for start of day.
    pair_address: detachable STRING_32
      -- Address for pair contract.
    token_0: detachable STRING_32
      -- Reference to token0.
    token_1: detachable STRING_32
      -- Reference to token1.
    reserve_0: detachable STRING_32
      -- Reserve of token0 (updated during each transaction on pair).
    reserve_1: detachable STRING_32
      -- Reserve of token1 (updated during each transaction on pair).
    total_supply: detachable STRING_32
      -- Total supply of liquidity token distributed to LPs.
    reserve_usd: detachable STRING_32
      -- Reserve of token0 plus token1 stored as a derived USD amount.
    daily_volume_token_0: detachable STRING_32
      -- Total amount of token0 swapped throughout day.
    daily_volume_token_1: detachable STRING_32
      -- Total amount of token1 swapped throughout day.
    daily_volume_usd: detachable STRING_32
      -- Total volume within pair throughout day.
    daily_txns: detachable STRING_32
      -- Amount of transactions on pair throughout day.
 	vid: INTEGER_64
    	 -- 

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

    set_id (a_name: like id)
        -- Set 'id' with 'a_name'.
      do
        id := a_name
      ensure
        id_set: id = a_name
      end

    set_date (a_name: like date)
        -- Set 'date' with 'a_name'.
      do
        date := a_name
      ensure
        date_set: date = a_name
      end

    set_pair_address (a_name: like pair_address)
        -- Set 'pair_address' with 'a_name'.
      do
        pair_address := a_name
      ensure
        pair_address_set: pair_address = a_name
      end

    set_token_0 (a_name: like token_0)
        -- Set 'token_0' with 'a_name'.
      do
        token_0 := a_name
      ensure
        token_0_set: token_0 = a_name
      end

    set_token_1 (a_name: like token_1)
        -- Set 'token_1' with 'a_name'.
      do
        token_1 := a_name
      ensure
        token_1_set: token_1 = a_name
      end

    set_reserve_0 (a_name: like reserve_0)
        -- Set 'reserve_0' with 'a_name'.
      do
        reserve_0 := a_name
      ensure
        reserve_0_set: reserve_0 = a_name
      end

    set_reserve_1 (a_name: like reserve_1)
        -- Set 'reserve_1' with 'a_name'.
      do
        reserve_1 := a_name
      ensure
        reserve_1_set: reserve_1 = a_name
      end

    set_total_supply (a_name: like total_supply)
        -- Set 'total_supply' with 'a_name'.
      do
        total_supply := a_name
      ensure
        total_supply_set: total_supply = a_name
      end

    set_reserve_usd (a_name: like reserve_usd)
        -- Set 'reserve_usd' with 'a_name'.
      do
        reserve_usd := a_name
      ensure
        reserve_usd_set: reserve_usd = a_name
      end

    set_daily_volume_token_0 (a_name: like daily_volume_token_0)
        -- Set 'daily_volume_token_0' with 'a_name'.
      do
        daily_volume_token_0 := a_name
      ensure
        daily_volume_token_0_set: daily_volume_token_0 = a_name
      end

    set_daily_volume_token_1 (a_name: like daily_volume_token_1)
        -- Set 'daily_volume_token_1' with 'a_name'.
      do
        daily_volume_token_1 := a_name
      ensure
        daily_volume_token_1_set: daily_volume_token_1 = a_name
      end

    set_daily_volume_usd (a_name: like daily_volume_usd)
        -- Set 'daily_volume_usd' with 'a_name'.
      do
        daily_volume_usd := a_name
      ensure
        daily_volume_usd_set: daily_volume_usd = a_name
      end

    set_daily_txns (a_name: like daily_txns)
        -- Set 'daily_txns' with 'a_name'.
      do
        daily_txns := a_name
      ensure
        daily_txns_set: daily_txns = a_name
      end

    set_vid (a_name: like vid)
        -- Set 'vid' with 'a_name'.
      do
        vid := a_name
      ensure
        vid_set: vid = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass UNISWAP_V2_PAIR_DAY_DATA_DTO%N")
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
        if attached id as l_id then
          Result.append ("%Nid:")
          Result.append (l_id.out)
          Result.append ("%N")
        end
        if attached date as l_date then
          Result.append ("%Ndate:")
          Result.append (l_date.out)
          Result.append ("%N")
        end
        if attached pair_address as l_pair_address then
          Result.append ("%Npair_address:")
          Result.append (l_pair_address.out)
          Result.append ("%N")
        end
        if attached token_0 as l_token_0 then
          Result.append ("%Ntoken_0:")
          Result.append (l_token_0.out)
          Result.append ("%N")
        end
        if attached token_1 as l_token_1 then
          Result.append ("%Ntoken_1:")
          Result.append (l_token_1.out)
          Result.append ("%N")
        end
        if attached reserve_0 as l_reserve_0 then
          Result.append ("%Nreserve_0:")
          Result.append (l_reserve_0.out)
          Result.append ("%N")
        end
        if attached reserve_1 as l_reserve_1 then
          Result.append ("%Nreserve_1:")
          Result.append (l_reserve_1.out)
          Result.append ("%N")
        end
        if attached total_supply as l_total_supply then
          Result.append ("%Ntotal_supply:")
          Result.append (l_total_supply.out)
          Result.append ("%N")
        end
        if attached reserve_usd as l_reserve_usd then
          Result.append ("%Nreserve_usd:")
          Result.append (l_reserve_usd.out)
          Result.append ("%N")
        end
        if attached daily_volume_token_0 as l_daily_volume_token_0 then
          Result.append ("%Ndaily_volume_token_0:")
          Result.append (l_daily_volume_token_0.out)
          Result.append ("%N")
        end
        if attached daily_volume_token_1 as l_daily_volume_token_1 then
          Result.append ("%Ndaily_volume_token_1:")
          Result.append (l_daily_volume_token_1.out)
          Result.append ("%N")
        end
        if attached daily_volume_usd as l_daily_volume_usd then
          Result.append ("%Ndaily_volume_usd:")
          Result.append (l_daily_volume_usd.out)
          Result.append ("%N")
        end
        if attached daily_txns as l_daily_txns then
          Result.append ("%Ndaily_txns:")
          Result.append (l_daily_txns.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
      end
end

