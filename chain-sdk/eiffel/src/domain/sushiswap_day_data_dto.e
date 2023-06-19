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
class SUSHISWAP_DAY_DATA_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- Unix timestamp for start of day / 86400 giving a unique day index.
 	date: INTEGER_32
    	 -- Unix timestamp for start of day.
    factory: detachable STRING_32
      -- Factory address.
    volume_eth: detachable STRING_32
      -- Total volume across all pairs on this day, stored as a derived amount of ETH.
    volume_usd: detachable STRING_32
      -- Total volume across all pairs on this day, stored as a derived amount of USD.
    untracked_volume: detachable STRING_32
      -- Total volume across all pairs on this day, untracked
    liquidity_eth: detachable STRING_32
      -- Total liquidity across all pairs in ETH up to and including this day.
    liquidity_usd: detachable STRING_32
      -- Total liquidity across all pairs in USD up to and including this day.
    tx_count: detachable STRING_32
      -- Number of transactions throughout this day.
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

    set_factory (a_name: like factory)
        -- Set 'factory' with 'a_name'.
      do
        factory := a_name
      ensure
        factory_set: factory = a_name
      end

    set_volume_eth (a_name: like volume_eth)
        -- Set 'volume_eth' with 'a_name'.
      do
        volume_eth := a_name
      ensure
        volume_eth_set: volume_eth = a_name
      end

    set_volume_usd (a_name: like volume_usd)
        -- Set 'volume_usd' with 'a_name'.
      do
        volume_usd := a_name
      ensure
        volume_usd_set: volume_usd = a_name
      end

    set_untracked_volume (a_name: like untracked_volume)
        -- Set 'untracked_volume' with 'a_name'.
      do
        untracked_volume := a_name
      ensure
        untracked_volume_set: untracked_volume = a_name
      end

    set_liquidity_eth (a_name: like liquidity_eth)
        -- Set 'liquidity_eth' with 'a_name'.
      do
        liquidity_eth := a_name
      ensure
        liquidity_eth_set: liquidity_eth = a_name
      end

    set_liquidity_usd (a_name: like liquidity_usd)
        -- Set 'liquidity_usd' with 'a_name'.
      do
        liquidity_usd := a_name
      ensure
        liquidity_usd_set: liquidity_usd = a_name
      end

    set_tx_count (a_name: like tx_count)
        -- Set 'tx_count' with 'a_name'.
      do
        tx_count := a_name
      ensure
        tx_count_set: tx_count = a_name
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
        Result.append("%Nclass SUSHISWAP_DAY_DATA_DTO%N")
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
        if attached factory as l_factory then
          Result.append ("%Nfactory:")
          Result.append (l_factory.out)
          Result.append ("%N")
        end
        if attached volume_eth as l_volume_eth then
          Result.append ("%Nvolume_eth:")
          Result.append (l_volume_eth.out)
          Result.append ("%N")
        end
        if attached volume_usd as l_volume_usd then
          Result.append ("%Nvolume_usd:")
          Result.append (l_volume_usd.out)
          Result.append ("%N")
        end
        if attached untracked_volume as l_untracked_volume then
          Result.append ("%Nuntracked_volume:")
          Result.append (l_untracked_volume.out)
          Result.append ("%N")
        end
        if attached liquidity_eth as l_liquidity_eth then
          Result.append ("%Nliquidity_eth:")
          Result.append (l_liquidity_eth.out)
          Result.append ("%N")
        end
        if attached liquidity_usd as l_liquidity_usd then
          Result.append ("%Nliquidity_usd:")
          Result.append (l_liquidity_usd.out)
          Result.append ("%N")
        end
        if attached tx_count as l_tx_count then
          Result.append ("%Ntx_count:")
          Result.append (l_tx_count.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
      end
end

