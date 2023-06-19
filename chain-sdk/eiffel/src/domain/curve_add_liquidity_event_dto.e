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
class CURVE_ADD_LIQUIDITY_EVENT_DTO




feature --Access

    entry_time: detachable DATE_TIME
      
    recv_time: detachable DATE_TIME
      
 	block_number: INTEGER_64
    	 -- Number of block in which entity was recorded.
    id: detachable STRING_32
      -- 
    pool: detachable STRING_32
      -- 
    provider: detachable STRING_32
      -- 
    token_amounts: detachable LIST [STRING_32]
      -- 
    fees: detachable LIST [STRING_32]
      -- 
    var_invariant: detachable STRING_32
      -- 
    token_supply: detachable STRING_32
      -- 
    block: detachable STRING_32
      -- 
    timestamp: detachable STRING_32
      -- 
    transaction: detachable STRING_32
      -- 
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

    set_pool (a_name: like pool)
        -- Set 'pool' with 'a_name'.
      do
        pool := a_name
      ensure
        pool_set: pool = a_name
      end

    set_provider (a_name: like provider)
        -- Set 'provider' with 'a_name'.
      do
        provider := a_name
      ensure
        provider_set: provider = a_name
      end

    set_token_amounts (a_name: like token_amounts)
        -- Set 'token_amounts' with 'a_name'.
      do
        token_amounts := a_name
      ensure
        token_amounts_set: token_amounts = a_name
      end

    set_fees (a_name: like fees)
        -- Set 'fees' with 'a_name'.
      do
        fees := a_name
      ensure
        fees_set: fees = a_name
      end

    set_var_invariant (a_name: like var_invariant)
        -- Set 'var_invariant' with 'a_name'.
      do
        var_invariant := a_name
      ensure
        var_invariant_set: var_invariant = a_name
      end

    set_token_supply (a_name: like token_supply)
        -- Set 'token_supply' with 'a_name'.
      do
        token_supply := a_name
      ensure
        token_supply_set: token_supply = a_name
      end

    set_block (a_name: like block)
        -- Set 'block' with 'a_name'.
      do
        block := a_name
      ensure
        block_set: block = a_name
      end

    set_timestamp (a_name: like timestamp)
        -- Set 'timestamp' with 'a_name'.
      do
        timestamp := a_name
      ensure
        timestamp_set: timestamp = a_name
      end

    set_transaction (a_name: like transaction)
        -- Set 'transaction' with 'a_name'.
      do
        transaction := a_name
      ensure
        transaction_set: transaction = a_name
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
        Result.append("%Nclass CURVE_ADD_LIQUIDITY_EVENT_DTO%N")
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
        if attached pool as l_pool then
          Result.append ("%Npool:")
          Result.append (l_pool.out)
          Result.append ("%N")
        end
        if attached provider as l_provider then
          Result.append ("%Nprovider:")
          Result.append (l_provider.out)
          Result.append ("%N")
        end
        if attached token_amounts as l_token_amounts then
          across l_token_amounts as ic loop
            Result.append ("%N token_amounts:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached fees as l_fees then
          across l_fees as ic loop
            Result.append ("%N fees:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
        if attached var_invariant as l_var_invariant then
          Result.append ("%Nvar_invariant:")
          Result.append (l_var_invariant.out)
          Result.append ("%N")
        end
        if attached token_supply as l_token_supply then
          Result.append ("%Ntoken_supply:")
          Result.append (l_token_supply.out)
          Result.append ("%N")
        end
        if attached block as l_block then
          Result.append ("%Nblock:")
          Result.append (l_block.out)
          Result.append ("%N")
        end
        if attached timestamp as l_timestamp then
          Result.append ("%Ntimestamp:")
          Result.append (l_timestamp.out)
          Result.append ("%N")
        end
        if attached transaction as l_transaction then
          Result.append ("%Ntransaction:")
          Result.append (l_transaction.out)
          Result.append ("%N")
        end
        if attached vid as l_vid then
          Result.append ("%Nvid:")
          Result.append (l_vid.out)
          Result.append ("%N")
        end
      end
end

