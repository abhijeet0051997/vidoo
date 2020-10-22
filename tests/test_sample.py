import os


class TestSample:
    def test_sample(self):
        print(os.getenv('SOME_VAR'))
        print(os.getenv('PYPI_TOKEN'))
        assert False
