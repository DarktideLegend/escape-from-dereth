## [1.1.0-alpha.16](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.15...efd-server-v1.1.0-alpha.16) (2023-06-08)


### Bug Fixes

* **efd-server:** 🐛 handle RecallsDisabled properly ([16cd1dc](https://github.com/DarktideLegend/escape-from-dereth/commit/16cd1dcc3dba85c9c8c1e7220bbde226c5b05066))

## [1.1.0-alpha.15](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.14...efd-server-v1.1.0-alpha.15) (2023-06-08)


### Bug Fixes

* **efd-server:** 🐛 TeleportToHideout must be threadsafe ([dc2ee75](https://github.com/DarktideLegend/escape-from-dereth/commit/dc2ee759a7270c5cc2c0d414509fb7613a800439))

## [1.1.0-alpha.14](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.13...efd-server-v1.1.0-alpha.14) (2023-06-05)


### Features

* **efd-server:** ✨ add forgotten undead monster ([444cd2f](https://github.com/DarktideLegend/escape-from-dereth/commit/444cd2f56c7b870f21fe0171a697bfe3562b8646))
* **efd-server:** ✨ monsters have max run skill ([4e424f3](https://github.com/DarktideLegend/escape-from-dereth/commit/4e424f37e5cda54a9de18c5e6e72fcfb595baced))
* **efd-server:** ✨ players cannot evade monsters ([da6ffdb](https://github.com/DarktideLegend/escape-from-dereth/commit/da6ffdb2c2c76dd73ebae8b9a5f176bb82c42837))
* **efd-server:** ✨ players take increased flat damage from mobs based on distance ([3186af8](https://github.com/DarktideLegend/escape-from-dereth/commit/3186af8a5edb2bd265393cbbc2c3e40fd562b8e6))


### Bug Fixes

* **efd-server:** 🐛 increase TownDistanceMuliplier to 0.25 ([aae2e6d](https://github.com/DarktideLegend/escape-from-dereth/commit/aae2e6d89bb6de8e6ffa948880877955bfb3b16a))


### Documentation

* **efd-server:** ♻️ update IsOverridable comments ([e437169](https://github.com/DarktideLegend/escape-from-dereth/commit/e437169b924f91788bba27a88700ed178955da90))


### Code Refactoring

* **efd-server:** ♻️ update create creature logic ([65a6f1b](https://github.com/DarktideLegend/escape-from-dereth/commit/65a6f1bc4ac9016dec75acf9874906f268147b40))
* **efd-server:** ♻️ update ruleset naming convention ([d182445](https://github.com/DarktideLegend/escape-from-dereth/commit/d1824454d0bedd8a4c134f6b313adb931463dfef))
* **efd-server:** ♻️ update vendor world object filter ([6783063](https://github.com/DarktideLegend/escape-from-dereth/commit/6783063a0e43b86fdcedaa13bbf064d0a5261e5f))

## [1.1.0-alpha.13](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.12...efd-server-v1.1.0-alpha.13) (2023-06-05)


### Features

* **efd-server:** ✨ add HasRebuffsDisabled realm property ([22f324f](https://github.com/DarktideLegend/escape-from-dereth/commit/22f324ff15a9facf83f547e899716e6b4ae9d23d))
* **efd-server:** ✨ add hasRecallsDisabled realm property ([6c36c96](https://github.com/DarktideLegend/escape-from-dereth/commit/6c36c9683bd09cbf44358b73061d3ae62d207bfd))
* **efd-server:** ✨ add hideouts to towns ([f1c4784](https://github.com/DarktideLegend/escape-from-dereth/commit/f1c4784ecff6eefdb1ab843f0f643248eece89f8))


### Code Refactoring

* **efd-server:** ♻️ added exit portal to hideout ([b6775ef](https://github.com/DarktideLegend/escape-from-dereth/commit/b6775ef412b34c5ec6da0752cc062fc65509f296))
* **efd-server:** ♻️ make TeleportToHideout public ([1eb2560](https://github.com/DarktideLegend/escape-from-dereth/commit/1eb2560808fb61f465669f4b99625fe8ee675753))

## [1.1.0-alpha.12](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.11...efd-server-v1.1.0-alpha.12) (2023-06-04)


### Code Refactoring

* **efd-server:** ♻️ world objects can now be blacklisted and overridable ([9b2ec89](https://github.com/DarktideLegend/escape-from-dereth/commit/9b2ec89a27537c5acf47f97a2287d25d13f15ac8))

## [1.1.0-alpha.11](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.10...efd-server-v1.1.0-alpha.11) (2023-06-04)


### Bug Fixes

* **efd-server:** 🐛 PK status must be set for new chars ([e9477e8](https://github.com/DarktideLegend/escape-from-dereth/commit/e9477e8f1015d27366ed476a0444a043c74bf25e))


### Code Refactoring

* **efd-server:** ♻️ add generators to filter ([22de7e9](https://github.com/DarktideLegend/escape-from-dereth/commit/22de7e9e3af1bd106688a7c169e805131d082da0))
* **efd-server:** ♻️ update distance multiplier ([f9a1e3f](https://github.com/DarktideLegend/escape-from-dereth/commit/f9a1e3f7c96b4b522ee4ecffbd24e2a0dd233148))
* **efd-server:** ♻️ update mob awareness ([f6522da](https://github.com/DarktideLegend/escape-from-dereth/commit/f6522da30bf544a0d788b8324bc4924ffadf2955))
* **efd-server:** ♻️ update world object filtering ([71e1136](https://github.com/DarktideLegend/escape-from-dereth/commit/71e1136a6d5d49000aa5fc00d7dff510d4964583))

## [1.1.0-alpha.10](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.9...efd-server-v1.1.0-alpha.10) (2023-06-03)


### Features

* **efd-server:** ✨ add ability to open/close whitelested towns to players ([eade1eb](https://github.com/DarktideLegend/escape-from-dereth/commit/eade1ebc310b1746304c9293aa6851378ff22066))
* **efd-server:** ✨ add CreatureMobAwarenessMultiplier realm property ([e815069](https://github.com/DarktideLegend/escape-from-dereth/commit/e81506961d029725241086c236830fec6702c1f7))
* **efd-server:** ✨ add escape from dereth realm ([1945aa7](https://github.com/DarktideLegend/escape-from-dereth/commit/1945aa716a6703409ab1a219c7d95e5e316dbfb0))
* **efd-server:** ✨ add is-efd-content-only ruleset ([ce5da71](https://github.com/DarktideLegend/escape-from-dereth/commit/ce5da7125bf5d6e0c46d06ee936cc4fd31bb52eb))
* **efd-server:** ✨ add town distance multiplier ([3510742](https://github.com/DarktideLegend/escape-from-dereth/commit/35107423965a055dd8639fdd0f187a4550d04cb9))
* **efd-server:** ✨ add TownManager ([1cb7fdb](https://github.com/DarktideLegend/escape-from-dereth/commit/1cb7fdbaa6ac2fd53e648ccd6f49fea8e70ca348))


### Bug Fixes

* **efd-server:** 🐛 destroy world objects that don't pass realm ruleset filters ([b3e92f8](https://github.com/DarktideLegend/escape-from-dereth/commit/b3e92f892dfd431a71cb5280c914d5a0ed9298cc))
* **efd-server:** 🐛 temporary fix for housing ([ff9c834](https://github.com/DarktideLegend/escape-from-dereth/commit/ff9c8340d7f2af0b80f77cc0b80e7bfb1fb71638))


### Code Refactoring

* **efd-server:** ♻️ add slocToPosition helper method ([9c88d59](https://github.com/DarktideLegend/escape-from-dereth/commit/9c88d5923f2996731acacd0e2b03f2d5b473ee5f))
* **efd-server:** ♻️ added TownManagerTick to player heartbeat ([aaee7bc](https://github.com/DarktideLegend/escape-from-dereth/commit/aaee7bccdbbe17eb0ccbda91fb04eb54126f5605))
* **efd-server:** ♻️ allow generators to pass EFD filter ([fe1e76e](https://github.com/DarktideLegend/escape-from-dereth/commit/fe1e76ef29a58765354e057a6a9875a8541c3e52))
* **efd-server:** ♻️ update town restrictions logic ([766d32e](https://github.com/DarktideLegend/escape-from-dereth/commit/766d32e5020c8565d40eae79e2e725c7a12f23f2))
* **efd-server:** ♻️ world objects should interact with TownManager ([d641f8c](https://github.com/DarktideLegend/escape-from-dereth/commit/d641f8cc45156d1932d784ffd95f79199877a8f1))

## [1.1.0-alpha.9](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.8...efd-server-v1.1.0-alpha.9) (2023-05-30)


### Features

* **efd-server:** ✨ add has-no-doors-ruleset ([ea58bb8](https://github.com/DarktideLegend/escape-from-dereth/commit/ea58bb8089f23b2b0b75dc8aed53fc0c6b3bf3f6))
* **efd-server:** ✨ add has-no-lifestones ruleset ([c226a7f](https://github.com/DarktideLegend/escape-from-dereth/commit/c226a7feb2db2d0751ab94fbd7e7df1293fd01a2))
* **efd-server:** ✨ add has-no-portals ruleset ([782a61d](https://github.com/DarktideLegend/escape-from-dereth/commit/782a61d7f024c962b5e3b431fdd9773a9a1db7f1))
* **efd-server:** ✨ add is-player-only ruleset ([8ef0656](https://github.com/DarktideLegend/escape-from-dereth/commit/8ef065653a4e40afb62dcccc57b93707d081e7c6))


### Code Refactoring

* **efd-server:** ♻️ filter world objects from rulesets ([63bfd22](https://github.com/DarktideLegend/escape-from-dereth/commit/63bfd22c85c9f1e518c1fd0a69953307b931106a))

## [1.1.0-alpha.8](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.7...efd-server-v1.1.0-alpha.8) (2023-05-30)


### Features

* **efd-server:** ✨ add has-no-creatures ruleset ([3b9a78a](https://github.com/DarktideLegend/escape-from-dereth/commit/3b9a78af41bd3661f66afe212b614495baedca8c))

## [1.1.0-alpha.7](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.6...efd-server-v1.1.0-alpha.7) (2023-05-30)


### Code Refactoring

* **efd-server:** ♻️ full on death set to false by default ([9b5669a](https://github.com/DarktideLegend/escape-from-dereth/commit/9b5669abffd3206c7643730b939638825fee9b8f))

## [1.1.0-alpha.6](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.5...efd-server-v1.1.0-alpha.6) (2023-05-28)


### Features

* **efd-server:** ✨ add full-loot ruleset ([821acfa](https://github.com/DarktideLegend/escape-from-dereth/commit/821acfa4093883ca6d52dbf9039e7522b0eeac8d))


### Code Refactoring

* **efd-server:** ♻️ full loot corpses spawn in ephemeral realm ([2575a29](https://github.com/DarktideLegend/escape-from-dereth/commit/2575a299bee46c1f294a183d0ed5ccf6b2318842))

## [1.1.0-alpha.5](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.4...efd-server-v1.1.0-alpha.5) (2023-05-28)


### Bug Fixes

* **efd-server:** 🐛 add isPkOnly realm helper ([1e4bfb6](https://github.com/DarktideLegend/escape-from-dereth/commit/1e4bfb6e4bcee5288326e03540d51d9140b59b0d))
* **efd-server:** 🐛 summon portal requires summoner ([00b22d6](https://github.com/DarktideLegend/escape-from-dereth/commit/00b22d648815d61573f8dc133301db97de80da79))

## [1.1.0-alpha.4](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.3...efd-server-v1.1.0-alpha.4) (2023-05-27)


### Features

* **efd-server:** ✨ new character onboarding ([f52c483](https://github.com/DarktideLegend/escape-from-dereth/commit/f52c4832d0e016101d1d3986866818bd5d479cbe))


### Build System Dependencies

* **efd-server:** 📦️ update mysql to version 8.0.22 ([0376d6a](https://github.com/DarktideLegend/escape-from-dereth/commit/0376d6ac50366e5c9dd3d86596203a01b3868fa8))


### Code Refactoring

* **efd-realms:** ♻️ merge with latest acrealms-ace-merge ([f37fd69](https://github.com/DarktideLegend/escape-from-dereth/commit/f37fd697d52e6f0044183f5e110826f971dd92cc))
* **efd-server:** ♻️ use PlayerFactoryEx for DuelRealmHelpers ([3c2753d](https://github.com/DarktideLegend/escape-from-dereth/commit/3c2753d210aa5dc0b1ff4eaaee4ecca06a60c1e1))

## [1.1.0-alpha.3](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.2...efd-server-v1.1.0-alpha.3) (2023-05-25)


### Bug Fixes

* **efd-server:** 🐛 update realm transition game message logic ([81f57d1](https://github.com/DarktideLegend/escape-from-dereth/commit/81f57d19d64569f9d1d9f3b37fbed07483f80015))

## [1.1.0-alpha.2](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.1...efd-server-v1.1.0-alpha.2) (2023-05-25)


### Features

* **efd-server:** ✨ add default realm and position for new characters ([a3d5360](https://github.com/DarktideLegend/escape-from-dereth/commit/a3d536044a0b3d6febab014d5e46d8df2ed617ea))


### Changes to the CI configuration files and scripts

* 👷 fix Dockerfile path in release workflow ([ea68785](https://github.com/DarktideLegend/escape-from-dereth/commit/ea68785b09df215c705b5bf635ce1ace4e8b7b64))


### Build System Dependencies

* 📦️ add semantic-release-docker package ([b30d0da](https://github.com/DarktideLegend/escape-from-dereth/commit/b30d0daca04004e88138c88a69cec73075c30eca))
* **efd-server:** 📦️ add chore and ci to presetConfig ([2839205](https://github.com/DarktideLegend/escape-from-dereth/commit/28392059c2633f370e4d128d50481b028634df35))
* **efd-server:** 📦️ add Content directory to container ([8bd5d2a](https://github.com/DarktideLegend/escape-from-dereth/commit/8bd5d2a67592421420fa2d93bf3c3ec08aa6c5cf))
* **efd-server:** 📦️ add dockerContext property to release config ([2bfe952](https://github.com/DarktideLegend/escape-from-dereth/commit/2bfe952aacbee9c6a8774e9c27173b291e9fe101))
* **efd-server:** 📦️ update config for local development ([20dca27](https://github.com/DarktideLegend/escape-from-dereth/commit/20dca273ee2f9d485b447968c4a88081afe5cb4b))
* **efd-server:** 📦️ update local mysql docker config ([ef8212a](https://github.com/DarktideLegend/escape-from-dereth/commit/ef8212a5999cc0518f88e9e6d717b4af5a056599))

## [1.1.0-alpha.1](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.0.0...efd-server-v1.1.0-alpha.1) (2023-05-24)


### Features

* **efd-content:** ✨ initial release ([41e3b0d](https://github.com/DarktideLegend/escape-from-dereth/commit/41e3b0d0c0f5fe7b8a80543870724b412665cde1))


### Build System Dependencies

* **efd-server:** 📦️ add custom content to root directory ([65e4273](https://github.com/DarktideLegend/escape-from-dereth/commit/65e42734129ac475f8bae49a929f6a8cf17d0a26))
* **efd-server:** 📦️ update semantic-release config ([8820986](https://github.com/DarktideLegend/escape-from-dereth/commit/8820986dcf8e1f3e174141c12d8feb67518ae6eb))

## 1.0.0 (2023-05-14)


### Features

* **efd-server:** ✨ initial release ([e404003](https://github.com/DarktideLegend/escape-from-dereth/commit/e404003e075c310287ab32de47c79c47ded219b2))
