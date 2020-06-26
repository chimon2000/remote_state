<a name="unreleased"></a>
## [Unreleased]


<a name="1.3.0"></a>
## [1.3.0] - 2020-06-26
### Fixed
- added freezed_annotation back to deps


<a name="v1.2.0"></a>
## [v1.2.0] - 2020-06-26
### Fixed
- readme example


<a name="v1.1.0"></a>
## [v1.1.0] - 2020-06-26
### Added
- upgrade freezed dependency


<a name="v1.0.0"></a>
## [v1.0.0] - 2020-05-05
### Added
- add flutter_hooks example.
- add docs for state predicates
- updated examples
- removed empty, added stacktrace to error, added predicates

### Changed
- state notifier hook per suggestions.

### Documented
- removed `empty` from docs

### BREAKING CHANGE

empty is no longer supported because it is not considered a valid remote state.


<a name="v0.19.0"></a>
## [v0.19.0] - 2020-04-21
### Fixed
- bad documentation


<a name="v0.18.0"></a>
## [v0.18.0] - 2020-04-21
### Added
- more documentation to readme
- document public apis & hide constructors
- readme health, usage & maintainer sections

### Changed
- state notifier example


<a name="v0.17.0"></a>
## [v0.17.0] - 2020-04-21
### Added
- example in packages/remote_state

### Fixed
- add gitignore to packages/remote_state


<a name="v0.16.0"></a>
## [v0.16.0] - 2020-04-21
### Fixed
- move changelog and add better package description


<a name="v0.15.0"></a>
## [v0.15.0] - 2020-04-21
### Fixed
- space in publish.yml


<a name="v0.14.0"></a>
## [v0.14.0] - 2020-04-21
### Added
- git-chglog configuration
- add script to prepare release
- add publish github action
- add code coverage
- add more tests & coverage
- add github action to build packages
- add bloc example
- add provider example

### Changed
- add name to coverage step
- same text styles in examples
- simplify examples
- rename state notifier example to counter_state_notifier
- move remote_state into packages & example into examples
- remove android & ios generated files
- use StateNotifier instead of ValueNotifier

### Fixed
- update working directory in github action

### Removed
- flutter dependency remote_state package


[Unreleased]: https://github.com/chimon2000/remote_state/compare/1.3.0...HEAD
[1.3.0]: https://github.com/chimon2000/remote_state/compare/v1.2.0...1.3.0
[v1.2.0]: https://github.com/chimon2000/remote_state/compare/v1.1.0...v1.2.0
[v1.1.0]: https://github.com/chimon2000/remote_state/compare/v1.0.0...v1.1.0
[v1.0.0]: https://github.com/chimon2000/remote_state/compare/v0.19.0...v1.0.0
[v0.19.0]: https://github.com/chimon2000/remote_state/compare/v0.18.0...v0.19.0
[v0.18.0]: https://github.com/chimon2000/remote_state/compare/v0.17.0...v0.18.0
[v0.17.0]: https://github.com/chimon2000/remote_state/compare/v0.16.0...v0.17.0
[v0.16.0]: https://github.com/chimon2000/remote_state/compare/v0.15.0...v0.16.0
[v0.15.0]: https://github.com/chimon2000/remote_state/compare/v0.14.0...v0.15.0
