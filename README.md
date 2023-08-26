<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `provision/generator/README.yaml`
  ** 2) Run`task readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->

[![Latest Release](https://img.shields.io/github/release/hadenlabs/zsh-flutter)](https://github.com/hadenlabs/zsh-flutter/releases) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/zsh-flutter/lint-code)](https://github.com/hadenlabs/zsh-flutter/actions?workflow=lint-code) [![CI](https://img.shields.io/github/workflow/status/hadenlabs/zsh-flutter/ci)](https://github.com/hadenlabs/zsh-flutter/actions?workflow=ci) [![Test](https://img.shields.io/github/workflow/status/hadenlabs/zsh-flutter/test)](https://github.com/hadenlabs/zsh-flutter/actions?workflow=test) [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org) [![KeepAChangelog](https://img.shields.io/badge/changelog-Keep%20a%20Changelog%20v1.0.0-orange)](https://keepachangelog.com)

# zsh-flutter

zsh-flutter plugin for zsh.

## Requirements

This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

- [gomplate](https://github.com/hairyhenderson/gomplate)
- [python](https://www.python.org)
- [taskfile](https://github.com/go-task/task)

## Installation

<!-- Space: Projects -->
<!-- Parent: ZshFlutter -->
<!-- Title: Installation Oh-My-Zsh ZshFlutter -->
<!-- Label: ZshFlutter -->
<!-- Label: Project -->
<!-- Label: Installation -->
<!-- Label: Oh-My-Zsh -->
<!-- Include: ./../../disclaimer.md -->
<!-- Include: ac:toc -->

### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) users

If you're using [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh), install this plugin by doing the following:

1. Go to your oh-my-zsh custom plugins directory -`cd ~/.oh-my-zsh/custom/plugins`
2. Clone the plugin `bash git clone https://github.com/hadenlabs/zsh-flutter`bash
3. Edit your `.zshrc` and add `plugins=( ... zsh-flutter )` to your list of plugins
4. Open a new terminal and enjoy!
   <!-- Space: Projects -->
   <!-- Parent: ZshFlutter -->
   <!-- Title: Installation Antigen ZshFlutter-->
   <!-- Label: ZshFlutter -->
   <!-- Label: Project -->
   <!-- Label: Installation -->
   <!-- Label: Antigen -->
   <!-- Include: ./../../disclaimer.md -->
   <!-- Include: ac:toc -->

### [antigen](https://github.com/zsh-users/antigen) users

If you're using [Antigen](https://github.com/zsh-users/antigen), install this plugin by doing the following:

1. Add `antigen bundle hadenlabs/zsh-flutter` to your `.zshrc` where you're adding your other plugins.
2. Either open a new terminal to force zsh to load the new plugin, or run `antigen bundle hadenlabs/zsh-flutter` in a running zsh session.
3. Enjoy!
   <!-- Space: Projects -->
   <!-- Parent: ZshFlutter -->
   <!-- Title: Installation Antibody ZshFlutter-->
   <!-- Label: ZshFlutter -->
   <!-- Label: Project -->
   <!-- Label: Installation -->
   <!-- Include: ./../../disclaimer.md -->
   <!-- Include: ac:toc -->

### [antibody](https://github.com/getantibody/antibody) users

If you're using [Antibody](https://github.com/getantibody/antibody), install this plugin by doing the following:

1. Add :

```{.sourceCode .bash}
antibody bundle hadenlabs/zsh-flutter
```

to your `.zshrc` where you're adding your other plugins.

2. Either open a new terminal to force zsh to load the new plugin, or run `antibody bundle hadenlabs/zsh-flutter` in a running zsh session.
3. Enjoy!

## Usage

# How to use this project

```bash
task setup
```

## Examples

<!-- Space: Projects -->
<!-- Parent: ZshFlutter -->
<!-- Title: Examples ZshFlutter -->
<!-- Label: Examples -->
<!-- Include: ./../disclaimer.md -->
<!-- Include: ac:toc -->

### Common

 <!-- Space: Projects -->
<!-- Parent: ZshFlutter -->
<!-- Title: Functions ZshFlutter -->
<!-- Label: Functions -->
<!-- Include: disclaimer.md -->
<!-- Include: ac:toc -->

## Functions

## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/zsh-flutter/issues).

## Contributing

See [Contributing](./docs/contributing.md).

## Module Versioning

This Module follows the principles of [Semantic Versioning (SemVer)](https://semver.org/).

Using the given version number of `MAJOR.MINOR.PATCH`, we apply the following constructs:

1. Use the `MAJOR` version for incompatible changes.
1. Use the `MINOR` version when adding functionality in a backwards compatible manner.
1. Use the `PATCH` version when introducing backwards compatible bug fixes.

### Backwards compatibility in `0.0.z` and `0.y.z` version

- In the context of initial development, backwards compatibility in versions `0.0.z` is **not guaranteed** when `z` is increased. (Initial development)
- In the context of pre-release, backwards compatibility in versions `0.y.z` is **not guaranteed** when `y` is increased. (Pre-release)

## Copyright

Copyright © 2018-2023 [Hadenlabs](https://hadenlabs.com)

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).

## Don't forget to 🌟 Star 🌟 the repo if you like zsh-flutter

[Your feedback is appreciated](https://github.com/hadenlabs/zsh-flutter/issues)
