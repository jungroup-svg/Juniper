"""
    OEML - REST API

    This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>         # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import openapi_client
from openapi_client.model.exec_inst import ExecInst
from openapi_client.model.ord_side import OrdSide
from openapi_client.model.ord_type import OrdType
from openapi_client.model.time_in_force import TimeInForce
globals()['ExecInst'] = ExecInst
globals()['OrdSide'] = OrdSide
globals()['OrdType'] = OrdType
globals()['TimeInForce'] = TimeInForce
from openapi_client.model.order_new_single_request import OrderNewSingleRequest


class TestOrderNewSingleRequest(unittest.TestCase):
    """OrderNewSingleRequest unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testOrderNewSingleRequest(self):
        """Test OrderNewSingleRequest"""
        # FIXME: construct object with mandatory attributes with example values
        # model = OrderNewSingleRequest()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
