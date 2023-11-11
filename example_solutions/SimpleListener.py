from robot.libraries.BuiltIn import BuiltIn

class SimpleListener:
    ROBOT_LISTENER_API_VERSION = 2

    def __init__(self):
        self.ROBOT_LIBRARY_SCOPE = 'GLOBAL'
        self.ROBOT_LIBRARY_LISTENER = self
        self.builtin = BuiltIn()

    def start_test(self, name, attrs):
        self.builtin.log("Starting test: {}".format(name))

    def end_test(self, name, attrs):
        self.builtin.log("Ending test: {}".format(name))
