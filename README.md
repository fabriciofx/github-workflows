# GitHub Workflows

Collection of scripts to perform GitHub workflows.

## Introduction

Very often, we need a GitHub workflow script to perform Continuous Integration
(CI) of our software. This repository provides a set of scripts to assist with
this task.

## Usage

Simply copy the desired script file from this repository to the
`.github/workflows` directory of your repository. Note that some adjustments may
be necessary, such as changing the artifact name or customizing certain
parameters.

## Workflows

List of available GitHub workflows:

### Action Lint

`action-lint` checks workflow files for issues.
For more information, see [actionlint](https://github.com/rhysd/actionlint).

### Copyrights

`copyrights` checks for copyright header lines (e.g.,
"Copyright (C) 2025 Fabrício Barros Cabral") in source files (`*.asm`, `*.bib`,
`*.cls`, `*.cpp`, `*.dtx`, `*.g4`, `*.groovy`, `*.h`, `*.html`, `*.ini`,
`*.ins`, `*.java`, `*.js`, `*.lua`, `*.pl`, `*.properties`, `*.py`, `*.rb`,
`*.rs`, `*.sh`, `*.tex`, `*.ts`, `*.xml`, `*.xsd`, `*.xsl`, `*.yaml`, `*.yml`,
`Dockerfile`, `Makefile`, `Rakefile`).
For more information, see
[copyrights](https://github.com/yegor256/copyrights-action).

### Markdown Lint

`markdown-lint` checks Markdown files (`*.md`, `*.markdown`) using
[markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2).
For more information, see
[markdownlint-cli2-action](https://github.com/DavidAnson/markdownlint-cli2-action).

### XML Lint

`xml-lint` checks XML files (`*.xml`, `*.xsl`, `*.xsd`, `*.xhtml`) using
[xcop](https://github.com/yegor256/xcop).
For more information, see [xcop-action](https://github.com/g4s8/xcop-action).

### YAML Lint

`yaml-lint` checks YAML files (`*.yml`, `*.yaml`) using
[yamllint](https://github.com/adrienverge/yamllint). To more information, see
[action-yamllint](https://github.com/ibiqlik/action-yamllint).

### Java Build

`java-build` builds a Java application using [Maven](https://maven.apache.org/)
on multiple environments: Linux, Windows, and Java Temurin versions 11, 17, and
21. To change any configuration, edit the `java-build.yml` file.

### Java Release

`java-release` builds a Java application using
[maven](https://maven.apache.org/) in the Linux and Java Temurin 11 and deploys
it in Maven Central. To deploy into Maven Central you need:

- Create a GPG public and private keys

```bash
gpg --full-generate-key
```

- List your public key

```bash
gpg --list-secret-keys --keyid-format LONG
```

sec   rsa4096/0123456789ABDEF0 2025-05-06 [SC]
      ABCDEF0123456789ABCDEF0123456789ABCDEF01
uid                 [ultimate] Your Name <your.email@example.com>
ssb   rsa4096/FEDCBA9876543210 2025-05-06 [E]

- Publish your public key

```bash
gpg --keyserver keyserver.ubuntu.com --recv-keys 0123456789ABDEF0
```

- Add these following secrets to you GitHub secrets in your repository

`GPG_KEYNAME`: 0123456789ABDEF0
`GPG_PASSPHRASE`: Your GPG password
`OSSRH_USERNAME`: Your Maven Central username token
`OSSRH_PASSWORD`: Your Maven Central password token

### Latex Lint

`latex-lint` checks LaTeX files using [lacheck](https://ctan.org/pkg/lacheck).
To more information, see
[texlive-action](https://github.com/xu-cheng/texlive-action)

### Latex Release

`latex-release` compiles a LaTeX document and release a PDF in your GitHub
releases. To do it, edit the `latex-release.yml` file and change `DOCUMENT`
variable to the name of root LaTeX document. It will use git tag as document
version.

### Python Format

`python-format` checks Python code formatting using
[ruff](https://docs.astral.sh/ruff/) format check. To more information, see
`ruff` documentation.

### Python Lint

`python-lint` checks Python code for errors using
[ruff](https://docs.astral.sh/ruff/) lint check. To more information, see `ruff`
documentation.

### Python Tests

`python-tests` performs [pytest](https://docs.pytest.org/en/stable/) in your
project. To more information, see `pytest` documentation.

### Python Release

`python-release` builds a Python package and deploys it at
[PyPI](https://pypi.org/). To do it you will need create a PyPI account and
add `PYPI_API_TOKEN` into your GitHub repository secrets.

### Typos

`typos` checks the spelling in the source code. To more information, see
[typos](https://github.com/crate-ci/typos).
