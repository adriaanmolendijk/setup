from src.app import get_github_url


def test_github_url():
    root_address = 'github.com/adriaanmolendijk/setup'
    assert get_github_url('') == root_address
    assert get_github_url('b') == root_address + '/branches'
    assert get_github_url('pr') == root_address + '/pulls'
    assert get_github_url('dir/file') == root_address + '/blob/main/dir/file'
