# iocage-plugin-index

A boutique set of community [iocage][] plugins for [FreeNAS][], [TrueOS][], and
[FreeBSD][]

This project takes inspiration and direction from iXsystems' [ix-plugin-hub
index][], which acts as the official community plugins for FreeNAS and TrueOS.

|         |                                      |
| ------: | ------------------------------------ |
|      CI | [![CI Status][badge-ci-overall]][ci] |
| License | [![License][badge-license]][license] |

[iocage]: https://github.com/iocage/iocage
[ix-plugin-hub index]: https://github.com/ix-plugin-hub/iocage-plugin-index
[freenas]: https://www.freenas.org/
[trueos]: https://www.trueos.org/
[freebsd]: http://www.freebsd.org

**Table of Contents**

<!-- toc -->

- [Creating Plugins](#creating-plugins)
- [Installing Plugins](#installing-plugins)
  - [Using A Local File](#using-a-local-file)
  - [Pulling From The Internet](#pulling-from-the-internet)
- [Code of Conduct](#code-of-conduct)
- [Issues](#issues)
- [Contributing](#contributing)
- [Release History](#release-history)
- [Authors](#authors)
- [License](#license)

<!-- tocstop -->

## Creating Plugins

Add a plugin JSON file to this repo along with an appropriate icon in the
[icons directory](icons/).

After creating the JSON file and adding an icon, add the plugin to the
[INDEX file](INDEX). If the plugin is approved, it appears in the list of iocage
plugins.

For more detailed information on creating a plugin, see [Create a Plugin][].

[create a plugin]:
  https://www.truenas.com/docs/hub/contributing/creating-plugins/

## Installing Plugins

### Using A Local File

Install a plugin using a local file:

```sh
iocage fetch -P /path/to/local/file.json ip4_addr="vnet0|$ipaddress"
```

where `$ipaddress` is the desired IP address for the plugin. For example,
`ip4_addr="vnet0|10.238.4.196"`.

### Pulling From The Internet

Install a plugin from the internet:

```sh
iocage fetch \
  -P gitea \
  -g https://github.com/fnichol/iocage-plugin-index \
  ip4_addr="vnet0|$ipaddress"
```

where `$ipaddress` is the desired IP address for the plugin. For example,
`ip4_addr="vnet0|192.168.0.91"`

## Code of Conduct

This project adheres to the Contributor Covenant [code of
conduct][code-of-conduct]. By participating, you are expected to uphold this
code. Please report unacceptable behavior to fnichol@nichol.ca.

## Issues

If you have any problems with or questions about this project, please contact us
through a [GitHub issue][issues].

## Contributing

You are invited to contribute to new features, fixes, or updates, large or
small; we are always thrilled to receive pull requests, and do our best to
process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub
issue][issues], especially for more ambitious contributions. This gives other
contributors a chance to point you in the right direction, give you feedback on
your design, and help you find out if someone else is working on the same thing.

## Release History

This project uses a "deployable master" strategy, meaning that the `master`
branch is assumed to be working and production ready. As such there is no formal
versioning process and therefore also no formal changelog documentation.

## Authors

Created and maintained by [Fletcher Nichol][fnichol] (<fnichol@nichol.ca>).

## License

Licensed under the Mozilla Public License Version 2.0 ([LICENSE.txt][license]).

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the MPL-2.0 license, shall be
licensed as above, without any additional terms or conditions.

**Note** the contents of this project fall under the above license, however the
liked plugin projects contain their own respective licenses.

[badge-license]: https://img.shields.io/badge/License-MPL%202.0%20-blue.svg
[badge-ci-overall]:
  https://api.cirrus-ci.com/github/fnichol/iocage-plugin-index.svg
[ci]: https://cirrus-ci.com/github/fnichol/iocage-plugin-index
[code-of-conduct]:
  https://github.com/fnichol/iocage-plugin-index/blob/master/CODE_OF_CONDUCT.md
[fnichol]: https://github.com/fnichol
[issues]: https://github.com/fnichol/iocage-plugin-index/issues
[license]:
  https://github.com/fnichol/iocage-plugin-index/blob/master/LICENSE.txt
