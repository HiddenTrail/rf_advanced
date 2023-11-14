from robot.libraries.BuiltIn import BuiltIn

class AnotherListener:

    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.ROBOT_LIBRARY_SCOPE = 'GLOBAL'
        self.builtin = BuiltIn()

    def end_test(self, attrs):
        if attrs['status'] == 'FAIL':
            self.builtin.fail("Stopping execution due to test case failure.")