import environ
env = environ.Env()
environ.Env.read_env()


def run():
    print("*** POPULATING DATABASE ***")
