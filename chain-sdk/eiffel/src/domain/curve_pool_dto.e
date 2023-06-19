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
class CURVE_POOL_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- Pool address.
    name: detachable STRING_32
      -- Pool's human-readable name.
 	is_meta: BOOLEAN
    	 -- Identify whether pool is a metapool.
    registry_address: detachable STRING_32
      -- Registry contract address from where this pool was registered.
    swap_address: detachable STRING_32
      -- Swap contract address.
    lp_token: detachable STRING_32
      -- Address of the token representing LP share.
    coin_count: detachable STRING_32
      -- Number of coins composing the pool.
    underlying_count: detachable STRING_32
      -- Number of underlying coins composing the pool.
    a: detachable STRING_32
      -- Amplification coefficient multiplied by n * (n - 1).
    fee: detachable STRING_32
      -- Fee to charge for exchanges.
    admin_fee: detachable STRING_32
      -- Admin fee is represented as a percentage of the total fee collected on a swap.
    owner: detachable STRING_32
      -- Admin address.
    virtual_price: detachable STRING_32
      -- Average dollar value of pool token.
    locked: detachable STRING_32
      -- 
    added_at: detachable DATE_TIME
      -- 
    added_at_block: detachable STRING_32
      -- 
    added_at_transaction: detachable STRING_32
      -- 
    removed_at: detachable STRING_32
      -- 
    removed_at_block: detachable STRING_32
      -- 
    removed_at_transaction: detachable STRING_32
      -- 
    exchange_count: detachable STRING_32
      -- 
    gauge_count: detachable STRING_32
      -- 
 	vid: INTEGER_64
    	 -- 
 	evaluated_ask: REAL_64
    	 

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

    set_name (a_name: like name)
        -- Set 'name' with 'a_name'.
      do
        name := a_name
      ensure
        name_set: name = a_name
      end

    set_is_meta (a_name: like is_meta)
        -- Set 'is_meta' with 'a_name'.
      do
        is_meta := a_name
      ensure
        is_meta_set: is_meta = a_name
      end

    set_registry_address (a_name: like registry_address)
        -- Set 'registry_address' with 'a_name'.
      do
        registry_address := a_name
      ensure
        registry_address_set: registry_address = a_name
      end

    set_swap_address (a_name: like swap_address)
        -- Set 'swap_address' with 'a_name'.
      do
        swap_address := a_name
      ensure
        swap_address_set: swap_address = a_name
      end

    set_lp_token (a_name: like lp_token)
        -- Set 'lp_token' with 'a_name'.
      do
        lp_token := a_name
      ensure
        lp_token_set: lp_token = a_name
      end

    set_coin_count (a_name: like coin_count)
        -- Set 'coin_count' with 'a_name'.
      do
        coin_count := a_name
      ensure
        coin_count_set: coin_count = a_name
      end

    set_underlying_count (a_name: like underlying_count)
        -- Set 'underlying_count' with 'a_name'.
      do
        underlying_count := a_name
      ensure
        underlying_count_set: underlying_count = a_name
      end

    set_a (a_name: like a)
        -- Set 'a' with 'a_name'.
      do
        a := a_name
      ensure
        a_set: a = a_name
      end

    set_fee (a_name: like fee)
        -- Set 'fee' with 'a_name'.
      do
        fee := a_name
      ensure
        fee_set: fee = a_name
      end

    set_admin_fee (a_name: like admin_fee)
        -- Set 'admin_fee' with 'a_name'.
      do
        admin_fee := a_name
      ensure
        admin_fee_set: admin_fee = a_name
      end

    set_owner (a_name: like owner)
        -- Set 'owner' with 'a_name'.
      do
        owner := a_name
      ensure
        owner_set: owner = a_name
      end

    set_virtual_price (a_name: like virtual_price)
        -- Set 'virtual_price' with 'a_name'.
      do
        virtual_price := a_name
      ensure
        virtual_price_set: virtual_price = a_name
      end

    set_locked (a_name: like locked)
        -- Set 'locked' with 'a_name'.
      do
        locked := a_name
      ensure
        locked_set: locked = a_name
      end

    set_added_at (a_name: like added_at)
        -- Set 'added_at' with 'a_name'.
      do
        added_at := a_name
      ensure
        added_at_set: added_at = a_name
      end

    set_added_at_block (a_name: like added_at_block)
        -- Set 'added_at_block' with 'a_name'.
      do
        added_at_block := a_name
      ensure
        added_at_block_set: added_at_block = a_name
      end

    set_added_at_transaction (a_name: like added_at_transaction)
        -- Set 'added_at_transaction' with 'a_name'.
      do
        added_at_transaction := a_name
      ensure
        added_at_transaction_set: added_at_transaction = a_name
      end

    set_removed_at (a_name: like removed_at)
        -- Set 'removed_at' with 'a_name'.
      do
        removed_at := a_name
      ensure
        removed_at_set: removed_at = a_name
      end

    set_removed_at_block (a_name: like removed_at_block)
        -- Set 'removed_at_block' with 'a_name'.
      do
        removed_at_block := a_name
      ensure
        removed_at_block_set: removed_at_block = a_name
      end

    set_removed_at_transaction (a_name: like removed_at_transaction)
        -- Set 'removed_at_transaction' with 'a_name'.
      do
        removed_at_transaction := a_name
      ensure
        removed_at_transaction_set: removed_at_transaction = a_name
      end

    set_exchange_count (a_name: like exchange_count)
        -- Set 'exchange_count' with 'a_name'.
      do
        exchange_count := a_name
      ensure
        exchange_count_set: exchange_count = a_name
      end

    set_gauge_count (a_name: like gauge_count)
        -- Set 'gauge_count' with 'a_name'.
      do
        gauge_count := a_name
      ensure
        gauge_count_set: gauge_count = a_name
      end

    set_vid (a_name: like vid)
        -- Set 'vid' with 'a_name'.
      do
        vid := a_name
      ensure
        vid_set: vid = a_name
      end

    set_evaluated_ask (a_name: like evaluated_ask)
        -- Set 'evaluated_ask' with 'a_name'.
      do
        evaluated_ask := a_name
      ensure
        evaluated_ask_set: evaluated_ask = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass CURVE_POOL_DTO%N")
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
        if attached name as l_name then
          Result.append ("%Nname:")
          Result.append (l_name.out)
          Result.append ("%N")
        end
        if attached is_meta as l_is_meta then
          Result.append ("%Nis_meta:")
          Result.append (l_is_meta.out)
          Result.append ("%N")
        end
        if attached registry_address as l_registry_address then
          Result.append ("%Nregistry_address:")
          Result.append (l_registry_address.out)
          Result.append ("%N")
        end
        if attached swap_address as l_swap_address then
          Result.append ("%Nswap_address:")
          Result.append (l_swap_address.out)
          Result.append ("%N")
        end
        if attached lp_token as l_lp_token then
          Result.append ("%Nlp_token:")
          Result.append (l_lp_token.out)
          Result.append ("%N")
        end
        if attached coin_count as l_coin_count then
          Result.append ("%Ncoin_count:")
          Result.append (l_coin_count.out)
          Result.append ("%N")
        end
        if attached underlying_count as l_underlying_count then
          Result.append ("%Nunderlying_count:")
          Result.append (l_underlying_count.out)
          Result.append ("%N")
        end
        if attached a as l_a then
          Result.append ("%Na:")
          Result.append (l_a.out)
          Result.append ("%N")
        end
        if attached fee as l_fee then
          Result.append ("%Nfee:")
          Result.append (l_fee.out)
          Result.append ("%N")
        end
        if attached admin_fee as l_admin_fee then
          Result.append ("%Nadmin_fee:")
          Result.append (l_admin_fee.out)
          Result.append ("%N")
        end
        if attached owner as l_owner then
          Result.append ("%Nowner:")
          Result.append (l_owner.out)
          Result.append ("%N")
        end
        if attached virtual_price as l_virtual_price then
          Result.append ("%Nvirtual_price:")
          Result.append (l_virtual_price.out)
          Result.append ("%N")
        end
        if attached locked as l_locked then
          Result.append ("%Nlocked:")
          Result.append (l_locked.out)
          Result.append ("%N")
        end
        if attached added_at as l_added_at then
          Result.append ("%Nadded_at:")
          Result.append (l_added_at.out)
          Result.append ("%N")
        end
        if attached added_at_block as l_added_at_block then
          Result.append ("%Nadded_at_block:")
          Result.append (l_added_at_block.out)
          Result.append ("%N")
        end
        if attached added_at_transaction as l_added_at_transaction then
          Result.append ("%Nadded_at_transaction:")
          Result.append (l_added_at_transaction.out)
          Result.append ("%N")
        end
        if attached removed_at as l_removed_at then
          Result.append ("%Nremoved_at:")
          Result.append (l_removed_at.out)
          Result.append ("%N")
        end
        if attached removed_at_block as l_removed_at_block then
          Result.append ("%Nremoved_at_block:")
          Result.append (l_removed_at_block.out)
          Result.append ("%N")
        end
        if attached removed_at_transaction as l_removed_at_transaction then
          Result.append ("%Nremoved_at_transaction:")
          Result.append (l_removed_at_transaction.out)
          Result.append ("%N")
        end
        if attached exchange_count as l_exchange_count then
          Result.append ("%Nexchange_count:")
          Result.append (l_exchange_count.out)
          Result.append ("%N")
        end
        if attached gauge_count as l_gauge_count then
          Result.append ("%Ngauge_count:")
          Result.append (l_gauge_count.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
        if attached evaluated_ask as l_evaluated_ask then
          Result.append ("%Nevaluated_ask:")
          Result.append (l_evaluated_ask.out)
          Result.append ("%N")
        end
      end
end

