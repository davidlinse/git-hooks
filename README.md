# git-hooks
A growing collection of git commit hooks mostly written in `shell` script.


### Prerequisites

Some of the hooks rely on external tools like `xmllint` or `perl` so you'll need to install these.


#### OSX
The simpliest way to install these tools on OSX is `brew`.
```
$ brew install xmllint perl
```

#### Windows
For _perl_ use the official installer and for _xmllint_ see the link in the description of the _Valid-XML_ hook.



_Commit Message_ hook
-----------------------

Enforce a certain pattern for a commit message. The hook is inspired by the proposal of the _[AngularJS][AngularJS]_ team that wrote their styleguide for the famous _[Karma-Runner][KarmaRunner]_.

The format is like as follows:

```
TICKET-ID: An elaborate commit message
```

Pre Commit _CRLF-to-LF_ hook
------------------------------
Enforce the _*nix_ linebreaks and converts files with _CRLF_ endings to use _LF_ line endings.
This hooks also adds modified files to the git _staged_ area.


Pre Commit _Merge-Conflict-Markers_ Hook
-------------------------------
Aborts the commit when modified files contain _merge-conflict-markers_.


Pre Commit _Non-ASCII_
--------------------
Aborts the commit when modified files contain _non ASCII_ characters like german umlauts.


Pre Commit _Perl-Syntax-Check_ hook
-----------------------------------
Performs a syntax check using _perl_ and aborts the commit on syntax errors.


Pre Commit _Valid-XML_ hook
---------------------------
Checks _.xml_ files for well-formed format using _XMLLint_. For _Windows_ support see [this link][XMLLintOnWindows].


[AngularJS]: https://www.angularjs.org/
[KarmaRunner]: http://karma-runner.github.io/0.13/dev/git-commit-msg.html
[XMLLintOnWindows]: http://stackoverflow.com/a/21227833
