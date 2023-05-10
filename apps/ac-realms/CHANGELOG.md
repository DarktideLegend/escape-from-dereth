## [2.0.0](https://github.com/DarktideLegend/escape-from-dereth/compare/ac-realms-v1.0.1...ac-realms-v2.0.0) (2023-05-10)


### ⚠ BREAKING CHANGES

* **ac-realms:** replaced LandblockId with ACRealms instancing implementation
* **ac-realms:** Latest ACE requires manually creating an execution
strategy for transactions to be handled properly

### Features

* **ac-realms:** ✨ add GetOrApplyRuleset to Landblock entity ([a2cb880](https://github.com/DarktideLegend/escape-from-dereth/commit/a2cb88010c856e38f4298f7d455270fb41795f2e))
* **ac-realms:** ✨ add ObjCellID constructor initialization to Position ([af8095a](https://github.com/DarktideLegend/escape-from-dereth/commit/af8095a41c49ff843f57aeb8a290903cac7dfbde))
* **ac-realms:** ✨ add ObjCellID property to PositionExtensions ([7978b7c](https://github.com/DarktideLegend/escape-from-dereth/commit/7978b7c3ff2ddb3b1ef31dcbba92cb6614f63650))
* **ac-realms:** 💥 ✨ add instancing from ACRealms to latest ACE ([97bf1d9](https://github.com/DarktideLegend/escape-from-dereth/commit/97bf1d906ff2ee478956a02eaff3f36975587b02))


### Bug Fixes

* **ac-realms:** 🐛 initialize RealmManager ([5d1412b](https://github.com/DarktideLegend/escape-from-dereth/commit/5d1412b63565afb23c7738140ba0dcaef8730da0))
* **ac-realms:** 🐛 merge realms into latest ACE ([f5c5536](https://github.com/DarktideLegend/escape-from-dereth/commit/f5c553689ecb5e30e7a1360e2628991921e537d5))
* **ac-realms:** 🐛 replace autoincrement with default 0 for add realm ([c474f59](https://github.com/DarktideLegend/escape-from-dereth/commit/c474f59ad3f05cb199b76555b96d2c576b1c9ebe))
* **ac-realms:** 🐛 starter position uses accountId for instance argument ([e975cab](https://github.com/DarktideLegend/escape-from-dereth/commit/e975caba39fcfbfdef12fd04334d6241cb497a1a))
* **ac-realms:** 🐛 update config.js being overwritten ([7b5d9f9](https://github.com/DarktideLegend/escape-from-dereth/commit/7b5d9f927ac0b7ba0e29ab687f12a4f4ae5de347))
* **ac-realms:** 🐛 update CurCell to properly set current landblock ([9deff33](https://github.com/DarktideLegend/escape-from-dereth/commit/9deff33e344fbd49333dd9c413af5bc5b0b5dc9c))
* **ac-realms:** 🐛 update home realm vendor logic ([5471e99](https://github.com/DarktideLegend/escape-from-dereth/commit/5471e995c0493a3deb15f303063c8c296f94a9a9))


### Code Refactoring

* **ac-realms:** ♻️ update GetFreeInstance method ([e7dea91](https://github.com/DarktideLegend/escape-from-dereth/commit/e7dea91a6604a2dc8b44f2a2cea22cd4dc371e31))
* **ac-realms:** 💥 ♻️ use manual execution strategy ([318e0e8](https://github.com/DarktideLegend/escape-from-dereth/commit/318e0e84e1ed89d101c6ff132f003dc3a96c7b30))

## [1.0.1](https://github.com/DarktideLegend/escape-from-dereth/compare/ac-realms-v1.0.0...ac-realms-v1.0.1) (2023-05-03)


### Bug Fixes

* **ac-realms:** 🐛 add auto incr to id column in realm table ([8c134e8](https://github.com/DarktideLegend/escape-from-dereth/commit/8c134e855fe061c3cd4297684be6d031298e685c))
* **ac-realms:** 🐛 properly replace all realms ([7aea25c](https://github.com/DarktideLegend/escape-from-dereth/commit/7aea25cb950b65ccf36d6a46dc0ceb0542468011))
* **ac-realms:** 🐛 remove EFCore dependency ([b1ebc2b](https://github.com/DarktideLegend/escape-from-dereth/commit/b1ebc2b9a409eadc6afa9c074c5f34092252480f))


### Code Refactoring

* **ac-realms:** ♻️ remove log ([a5670dc](https://github.com/DarktideLegend/escape-from-dereth/commit/a5670dc3096eed94a99567d284d2cdf78bca845b))

## 1.0.0 (2023-04-28)


### Features

* **ac-realms:** ✨ initial release ([021c977](https://github.com/DarktideLegend/escape-from-dereth/commit/021c977b9cc5bac526da9d4631a9c0d3d5f84a5d))
