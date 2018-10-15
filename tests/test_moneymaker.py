import unittest

import moneymaker


class MoneymakerTestCase(unittest.TestCase):

    def setUp(self):
        self.app = moneymaker.app.test_client()

    def test_index(self):
        rv = self.app.get('/')
        self.assertIn('Welcome to Making Money', rv.data.decode())


if __name__ == '__main__':
    unittest.main()
