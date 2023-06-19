/*
On Chain Dapps - REST API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
	"fmt"
)

// TransactionsETradeAggressiveSide the model 'TransactionsETradeAggressiveSide'
type TransactionsETradeAggressiveSide string

// List of Transactions.ETradeAggressiveSide
const (
	BUY TransactionsETradeAggressiveSide = "Buy"
	SELL TransactionsETradeAggressiveSide = "Sell"
	ESTIMATED_BUY TransactionsETradeAggressiveSide = "EstimatedBuy"
	ESTIMATED_SELL TransactionsETradeAggressiveSide = "EstimatedSell"
	UNKNOWN TransactionsETradeAggressiveSide = "Unknown"
)

// All allowed values of TransactionsETradeAggressiveSide enum
var AllowedTransactionsETradeAggressiveSideEnumValues = []TransactionsETradeAggressiveSide{
	"Buy",
	"Sell",
	"EstimatedBuy",
	"EstimatedSell",
	"Unknown",
}

func (v *TransactionsETradeAggressiveSide) UnmarshalJSON(src []byte) error {
	var value string
	err := json.Unmarshal(src, &value)
	if err != nil {
		return err
	}
	enumTypeValue := TransactionsETradeAggressiveSide(value)
	for _, existing := range AllowedTransactionsETradeAggressiveSideEnumValues {
		if existing == enumTypeValue {
			*v = enumTypeValue
			return nil
		}
	}

	return fmt.Errorf("%+v is not a valid TransactionsETradeAggressiveSide", value)
}

// NewTransactionsETradeAggressiveSideFromValue returns a pointer to a valid TransactionsETradeAggressiveSide
// for the value passed as argument, or an error if the value passed is not allowed by the enum
func NewTransactionsETradeAggressiveSideFromValue(v string) (*TransactionsETradeAggressiveSide, error) {
	ev := TransactionsETradeAggressiveSide(v)
	if ev.IsValid() {
		return &ev, nil
	} else {
		return nil, fmt.Errorf("invalid value '%v' for TransactionsETradeAggressiveSide: valid values are %v", v, AllowedTransactionsETradeAggressiveSideEnumValues)
	}
}

// IsValid return true if the value is valid for the enum, false otherwise
func (v TransactionsETradeAggressiveSide) IsValid() bool {
	for _, existing := range AllowedTransactionsETradeAggressiveSideEnumValues {
		if existing == v {
			return true
		}
	}
	return false
}

// Ptr returns reference to Transactions.ETradeAggressiveSide value
func (v TransactionsETradeAggressiveSide) Ptr() *TransactionsETradeAggressiveSide {
	return &v
}

type NullableTransactionsETradeAggressiveSide struct {
	value *TransactionsETradeAggressiveSide
	isSet bool
}

func (v NullableTransactionsETradeAggressiveSide) Get() *TransactionsETradeAggressiveSide {
	return v.value
}

func (v *NullableTransactionsETradeAggressiveSide) Set(val *TransactionsETradeAggressiveSide) {
	v.value = val
	v.isSet = true
}

func (v NullableTransactionsETradeAggressiveSide) IsSet() bool {
	return v.isSet
}

func (v *NullableTransactionsETradeAggressiveSide) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTransactionsETradeAggressiveSide(val *TransactionsETradeAggressiveSide) *NullableTransactionsETradeAggressiveSide {
	return &NullableTransactionsETradeAggressiveSide{value: val, isSet: true}
}

func (v NullableTransactionsETradeAggressiveSide) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTransactionsETradeAggressiveSide) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

