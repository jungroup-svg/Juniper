=begin
#On Chain Dapps - REST API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  class CRYPTOPUNKSCollectionDTO
    attr_accessor :entry_time

    attr_accessor :recv_time

    # Number of block in which entity was recorded.
    attr_accessor :block_number

    # 
    attr_accessor :vid

    # 
    attr_accessor :block_range

    # 
    attr_accessor :id

    # 
    attr_accessor :name

    # 
    attr_accessor :symbol

    # 
    attr_accessor :total_supply

    # 
    attr_accessor :royalty_fee

    # 
    attr_accessor :cumulative_trade_volume_eth

    # 
    attr_accessor :marketplace_revenue_eth

    # 
    attr_accessor :creator_revenue_eth

    # 
    attr_accessor :total_revenue_eth

    # 
    attr_accessor :trade_count

    # 
    attr_accessor :buyer_count

    # 
    attr_accessor :seller_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entry_time' => :'entry_time',
        :'recv_time' => :'recv_time',
        :'block_number' => :'block_number',
        :'vid' => :'vid',
        :'block_range' => :'block_range',
        :'id' => :'id',
        :'name' => :'name',
        :'symbol' => :'symbol',
        :'total_supply' => :'total_supply',
        :'royalty_fee' => :'royalty_fee',
        :'cumulative_trade_volume_eth' => :'cumulative_trade_volume_eth',
        :'marketplace_revenue_eth' => :'marketplace_revenue_eth',
        :'creator_revenue_eth' => :'creator_revenue_eth',
        :'total_revenue_eth' => :'total_revenue_eth',
        :'trade_count' => :'trade_count',
        :'buyer_count' => :'buyer_count',
        :'seller_count' => :'seller_count'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entry_time' => :'Time',
        :'recv_time' => :'Time',
        :'block_number' => :'Integer',
        :'vid' => :'Integer',
        :'block_range' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'symbol' => :'String',
        :'total_supply' => :'String',
        :'royalty_fee' => :'String',
        :'cumulative_trade_volume_eth' => :'String',
        :'marketplace_revenue_eth' => :'String',
        :'creator_revenue_eth' => :'String',
        :'total_revenue_eth' => :'String',
        :'trade_count' => :'Integer',
        :'buyer_count' => :'Integer',
        :'seller_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'block_range',
        :'id',
        :'name',
        :'symbol',
        :'total_supply',
        :'royalty_fee',
        :'cumulative_trade_volume_eth',
        :'marketplace_revenue_eth',
        :'creator_revenue_eth',
        :'total_revenue_eth',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CRYPTOPUNKSCollectionDTO` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CRYPTOPUNKSCollectionDTO`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entry_time')
        self.entry_time = attributes[:'entry_time']
      end

      if attributes.key?(:'recv_time')
        self.recv_time = attributes[:'recv_time']
      end

      if attributes.key?(:'block_number')
        self.block_number = attributes[:'block_number']
      end

      if attributes.key?(:'vid')
        self.vid = attributes[:'vid']
      end

      if attributes.key?(:'block_range')
        self.block_range = attributes[:'block_range']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'total_supply')
        self.total_supply = attributes[:'total_supply']
      end

      if attributes.key?(:'royalty_fee')
        self.royalty_fee = attributes[:'royalty_fee']
      end

      if attributes.key?(:'cumulative_trade_volume_eth')
        self.cumulative_trade_volume_eth = attributes[:'cumulative_trade_volume_eth']
      end

      if attributes.key?(:'marketplace_revenue_eth')
        self.marketplace_revenue_eth = attributes[:'marketplace_revenue_eth']
      end

      if attributes.key?(:'creator_revenue_eth')
        self.creator_revenue_eth = attributes[:'creator_revenue_eth']
      end

      if attributes.key?(:'total_revenue_eth')
        self.total_revenue_eth = attributes[:'total_revenue_eth']
      end

      if attributes.key?(:'trade_count')
        self.trade_count = attributes[:'trade_count']
      end

      if attributes.key?(:'buyer_count')
        self.buyer_count = attributes[:'buyer_count']
      end

      if attributes.key?(:'seller_count')
        self.seller_count = attributes[:'seller_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entry_time == o.entry_time &&
          recv_time == o.recv_time &&
          block_number == o.block_number &&
          vid == o.vid &&
          block_range == o.block_range &&
          id == o.id &&
          name == o.name &&
          symbol == o.symbol &&
          total_supply == o.total_supply &&
          royalty_fee == o.royalty_fee &&
          cumulative_trade_volume_eth == o.cumulative_trade_volume_eth &&
          marketplace_revenue_eth == o.marketplace_revenue_eth &&
          creator_revenue_eth == o.creator_revenue_eth &&
          total_revenue_eth == o.total_revenue_eth &&
          trade_count == o.trade_count &&
          buyer_count == o.buyer_count &&
          seller_count == o.seller_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entry_time, recv_time, block_number, vid, block_range, id, name, symbol, total_supply, royalty_fee, cumulative_trade_volume_eth, marketplace_revenue_eth, creator_revenue_eth, total_revenue_eth, trade_count, buyer_count, seller_count].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
