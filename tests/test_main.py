def test_import():
    import main

    assert main is not None


def test_main():
    import main

    assert main.main() is None
