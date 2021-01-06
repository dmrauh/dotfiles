from subprocess import CalledProcessError, check_output, PIPE, Popen


def get_pass(account):
    try:
        handle = Popen(["pass", account], stdout=PIPE)
        return check_output(["head", "-n 1"], stdin=handle.stdout).strip()
    except CalledProcessError:
        return b"Could not call pass!"
