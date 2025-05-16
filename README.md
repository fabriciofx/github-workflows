<!--
SPDX-FileCopyrightText: Copyright (c) 2025 Fabrício Barros Cabral
SPDX-License-Identifier: MIT
-->
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

## All

### Action Lint

`action-lint` checks workflow files for issues.
For more information, see [actionlint](https://github.com/rhysd/actionlint).

### Markdown Lint

`markdown-lint` checks Markdown files (`*.md`, `*.markdown`) using
[markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2).
For more information, see
[markdownlint-cli2-action](https://github.com/DavidAnson/markdownlint-cli2-action).

### YAML Lint

`yaml-lint` checks YAML files (`*.yml`, `*.yaml`) using
[yamllint](https://github.com/adrienverge/yamllint). To more information, see
[action-yamllint](https://github.com/ibiqlik/action-yamllint).

### Typos

`typos` checks the spelling in the source code. To more information, see
[typos](https://github.com/crate-ci/typos).

### Codecov

`codecov` checks code coverage using [Codecov](https://codecov.io). To more
information, see Codecov site.

## License

### Copyrights

`copyrights` checks for copyright header lines (e.g.,
"Copyright (C) 2025 Fabrício Barros Cabral") in source files (`*.asm`, `*.bib`,
`*.cls`, `*.cpp`, `*.dtx`, `*.g4`, `*.groovy`, `*.h`, `*.html`, `*.ini`,
`*.ins`, `*.java`, `*.js`, `*.lua`, `*.pl`, `*.properties`, `*.py`, `*.rb`,
`*.rs`, `*.sh`, `*.tex`, `*.ts`, `*.xml`, `*.xsd`, `*.xsl`, `*.yaml`, `*.yml`,
`Dockerfile`, `Makefile`, `Rakefile`).
For more information, see
[copyrights](https://github.com/yegor256/copyrights-action).

### REUSE

`reuse` checks copyright and license compliance. To more information, see
[reuse-action](https://github.com/fsfe/reuse-action),
[REUSE](https://reuse.software).

## Java

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

### Java Infer Analysis

`java-infer-analysis` checks Java code using [Infer](https://fbinfer.com/). To
more information, see Infer site.

### Java Duplication

`java-duplication` checks Java code using
[Simian](https://simian.quandarypeak.com/) for code duplication. To more
information, see Simian site.

### Java Sonar

`java-sonar` checks your code using
[Sonar](https://www.sonarsource.com/products/sonarqube/). To do it, you need set
the `secrets.GITHUB_TOKEN` and `secrets.SONAR_TOKEN`. To more information, see
Sonar site.

## Latex

### Latex Lint

`latex-lint` checks LaTeX files using [lacheck](https://ctan.org/pkg/lacheck).
To more information, see
[texlive-action](https://github.com/xu-cheng/texlive-action)

### Latex Release

`latex-release` compiles a LaTeX document and release a PDF in your GitHub
releases. To do it, edit the `latex-release.yml` file and change `DOCUMENT`
variable to the name of root LaTeX document. It will use git tag as document
version.

## Python

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

### Python Duplication

`python-duplication` checks Python code using
[Simian](https://simian.quandarypeak.com/) for code duplication. To more
information, see Simian site.

## Bash

### Bash Lint

`bash-lint` checks bash scripts for bugs, bad practices and portability
problems. To more information, see [shellcheck](https://www.shellcheck.net/).

### Bash Format

`bash-format` checks bash scripts for bad practices in code style. To more
information, see [bashate](https://github.com/openstack/bashate).

## Badge

### LOC Badge

`loc-badge` builds a lines of code (LOC) badge for your project. To more
information, see [GHA-LoC-Badge](https://github.com/shadowmoose/GHA-LoC-Badge).

### HOC Badge

`hoc-badge` build a hits of code (HOC) badge for your project. To more
information, see
[hits-of-code-badge](https://github.com/MikhailEpatko/hoc-badge-action).

## XML

### XML Lint

`xml-lint` checks XML files (`*.xml`, `*.xsl`, `*.xsd`, `*.xhtml`) using
[xcop](https://github.com/yegor256/xcop).
For more information, see [xcop-action](https://github.com/g4s8/xcop-action).

### XML Duplication

`xml-duplication` checks for code duplication using
[Simian](https://simian.quandarypeak.com/). To more information, see Simian
site.

## FSharp

### FSharp Build

`fsharp-build` builds an F# application at the terminal on multiple
environments: Linux, Windows, and Mac. Notice that you can specify the .NET
versions that must be available at the build environment (if your project
targets multiple versions). To change any configuration, edit the
`fsharp-build.yml` file. This configuration is inspired in what we have at
[Giraffe](https://github.com/giraffe-fsharp/Giraffe/blob/master/.github/workflows/build-and-test.yml).
