import click
import pyperclip
from pygit2 import Repository


def address_to_url(address):
    return 'https://' + address


def origin_url_to_address(origin_url):
    if origin_url[0:4] == 'git@':
        # origin URL SSH (e.g. git@github.com:adriaanmolendijk/github-remote-url.git)
        return origin_url[4:].replace(":", "/")[:-4]
    else:
        # origin URL HTTPS (e.g.https://github.com/adriaanmolendijk/github-remote-url.git)
        return origin_url[8:]


def get_address(root_address, arg):
    if arg == '':
        return root_address
    elif arg == 'pr':
        return root_address + '/pulls'
    elif arg == 'b':
        return root_address + '/branches'
    else:
        raise ValueError('Unrecognized input argument')


def get_github_url(arg):
    origin_url = Repository('.').remotes.__getitem__('origin').url
    root_address = origin_url_to_address(origin_url)
    return get_address(root_address, arg)


@click.command()
@click.argument('arg', default='')
def github_url(arg):
    """get GitHub remote URL"""
    address = get_github_url(arg)

    url = address_to_url(address)
    print(url)
    pyperclip.copy(url)


if __name__ == '__main__':
    github_url()
