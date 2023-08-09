## [1.1.0-alpha.67](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.66...efd-server-v1.1.0-alpha.67) (2023-08-09)


### Features

* **efd-server:** ✨ containers, salvage, and ust no longer drop in full loot realms ([3d87052](https://github.com/DarktideLegend/escape-from-dereth/commit/3d8705230a16af5fe1a7f2b8213d547f75547d62))
* **efd-server:** ✨ manually using summoners automatically assigns their mastery to players ([4871aa7](https://github.com/DarktideLegend/escape-from-dereth/commit/4871aa7ae91d9632566e741adb95fce679cabac9))


### Bug Fixes

* **efd-server:** 🐛  temporary fix to prevent pvp summoners from crashing the server ([4230ff8](https://github.com/DarktideLegend/escape-from-dereth/commit/4230ff849a3963b9a2fcb68c48d6565262873276))
* **efd-server:** 🐛 generators should only spawn objects that exist ([1424e81](https://github.com/DarktideLegend/escape-from-dereth/commit/1424e819604766b76eddc4a45088552151b668b2))
* **efd-server:** 🐛 prevent creatures from summoning portals inside hellgates ([a298912](https://github.com/DarktideLegend/escape-from-dereth/commit/a298912b9e28317854623653cf305dbc78283ada))


### Code Refactoring

* **efd-server:** ♻️ remove dead code ([ff8d821](https://github.com/DarktideLegend/escape-from-dereth/commit/ff8d82116c76bd19bc31576e0d437c7768098e64))

## [1.1.0-alpha.66](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.65...efd-server-v1.1.0-alpha.66) (2023-08-09)


### Bug Fixes

* **efd-server:** 🐛 check if generator and ruleset exist before adding generator delay ([fc0b3f1](https://github.com/DarktideLegend/escape-from-dereth/commit/fc0b3f1d30a71bbbcdbb82416d4f7cce46b28456))
* **efd-server:** 🐛 reduce maxHp of tier 3 creature spawns ([d619adc](https://github.com/DarktideLegend/escape-from-dereth/commit/d619adc73695cec29460c2579820cc076a0285fa))

## [1.1.0-alpha.65](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.64...efd-server-v1.1.0-alpha.65) (2023-08-08)


### Code Refactoring

* **efd-server:** ♻️ landblocks destroy all non player creatures with Forgotten in their name ([db06770](https://github.com/DarktideLegend/escape-from-dereth/commit/db067705171bbfb712f90ed9c74945fc678101d7))
* **efd-server:** ♻️ no longer mutate loot tier of hellgate monsters ([d22cdd8](https://github.com/DarktideLegend/escape-from-dereth/commit/d22cdd878dec21721146c9867c27db680524e195))
* **efd-server:** ♻️ reduce maximum hp for mobs for tier 2 - 3 ([c116d28](https://github.com/DarktideLegend/escape-from-dereth/commit/c116d282e05a3e131d69323bd51fe41239f8fdb2))

## [1.1.0-alpha.64](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.63...efd-server-v1.1.0-alpha.64) (2023-08-08)


### Features

* **efd-server:** ✨ add /hellgate command to replace hellgate message spam ([c176fbd](https://github.com/DarktideLegend/escape-from-dereth/commit/c176fbdfcdee452d5fe42f47bf38278926a2439f))
* **efd-server:** ✨ hellgate bosses now spawn close to players ([dab9943](https://github.com/DarktideLegend/escape-from-dereth/commit/dab994374276e115fe791fe8bae9755c9ea07958))
* **efd-server:** ✨ monsters now spawn with a variety of monsters for each tier ([c798a94](https://github.com/DarktideLegend/escape-from-dereth/commit/c798a941275e3a9c407ff8bf07b87a047828005d))
* **efd-server:** ✨ monsters now use their own tier for loot profiles ([61ede2e](https://github.com/DarktideLegend/escape-from-dereth/commit/61ede2ee1afb9d91aa6f8005826135f866cc17eb))


### Code Refactoring

* **efd-server:** ♻️ add missing bracket ([599b06b](https://github.com/DarktideLegend/escape-from-dereth/commit/599b06bc50cbd759e607f1a894979708172eb60d))
* **efd-server:** ♻️ check for physics object after entering world for hellgate surface portal ([082dde1](https://github.com/DarktideLegend/escape-from-dereth/commit/082dde105c5758a0dcdf220dd3a0e658f9b80d47))

## [1.1.0-alpha.63](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.62...efd-server-v1.1.0-alpha.63) (2023-08-07)


### Features

* **efd-server:** ✨ hellgate bosses now drop multiple mmd notes depending on tier ([d565834](https://github.com/DarktideLegend/escape-from-dereth/commit/d5658345a896d6454543463398c790366fca6ad3))
* **efd-server:** ✨ whitelisted towns now have their own class of monsters ([bd1048d](https://github.com/DarktideLegend/escape-from-dereth/commit/bd1048d009fbedb30d4a31615f78a4784a88293c))


### Bug Fixes

* **efd-server:** 🐛 hellgate bosses and surfaces portals will now spawn correctly ([f208ca2](https://github.com/DarktideLegend/escape-from-dereth/commit/f208ca2339813266fec75ee1a83e89b31ff1aaf0))

## [1.1.0-alpha.62](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.61...efd-server-v1.1.0-alpha.62) (2023-08-06)


### Bug Fixes

* **efd-server:** 🐛 add ust back to fitness instructor anthony ([d987d84](https://github.com/DarktideLegend/escape-from-dereth/commit/d987d84851616ba539b1285117c3cdbc8e797a13))

## [1.1.0-alpha.61](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.60...efd-server-v1.1.0-alpha.61) (2023-08-06)


### Features

* **efd-server:** ✨ spell components are now enforced for all players ([b5c4bef](https://github.com/DarktideLegend/escape-from-dereth/commit/b5c4bef963165270eac83d769fe0994f29f5ea12))


### Bug Fixes

* **efd-server:** 🐛 save custom storage the same way as housing chests ([5067025](https://github.com/DarktideLegend/escape-from-dereth/commit/50670259e09dd0bbcb7f370c8e69528c6699abac))

## [1.1.0-alpha.60](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.59...efd-server-v1.1.0-alpha.60) (2023-08-06)


### Features

* **efd-server:** ✨ players can now evade monsters ([2b84340](https://github.com/DarktideLegend/escape-from-dereth/commit/2b84340223a924faee84647bcc549406bf8a2a89))
* **efd-server:** ✨ players can now respec skills ([324b466](https://github.com/DarktideLegend/escape-from-dereth/commit/324b466223e733d7647731630740de1b44460a9a))

## [1.1.0-alpha.59](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.58...efd-server-v1.1.0-alpha.59) (2023-08-06)


### Features

* **efd-server:** ✨ add ability to preload landblocks based on realm ([adde6ee](https://github.com/DarktideLegend/escape-from-dereth/commit/adde6eec4b2fe9979d0d31311712f4ca1d58d775))
* **efd-server:** ✨ components are now required, spell bars are no longer loaded ([caca352](https://github.com/DarktideLegend/escape-from-dereth/commit/caca352cf4e6a75769396b46d7ef2d55d8e2c29c))
* **efd-server:** ✨ fitness instructor anthony now sells blackmoor's favor ([97a6baa](https://github.com/DarktideLegend/escape-from-dereth/commit/97a6baad928e706a73a18c375f6b143b9da2d7ba))
* **efd-server:** ✨ hellgate surface portal now triggers on collision ([6a3698c](https://github.com/DarktideLegend/escape-from-dereth/commit/6a3698ccc6e6edab3116c387e6e798b089890c17))


### Bug Fixes

* **efd-server:** 🐛 add keepalive object to hideout landblock ([6f1de7e](https://github.com/DarktideLegend/escape-from-dereth/commit/6f1de7e194d30fe96332ae040f699f516d34aa63))
* **efd-server:** 🐛 attuned items in containers no longer drop with full loot on death ([0cb726a](https://github.com/DarktideLegend/escape-from-dereth/commit/0cb726aad5ccd4dca13640cedac3a0529bf11f03))


### Code Refactoring

* **efd-server:** ♻️ hellgate logout is handled in session ([d0bc25e](https://github.com/DarktideLegend/escape-from-dereth/commit/d0bc25eea57218b3b4e3dddbcc7cda7752f73cb6))
* **efd-server:** ♻️ keepalive object should not be filtered by MutationsManager ([244f092](https://github.com/DarktideLegend/escape-from-dereth/commit/244f092e6c3421f0c332f3448b3803188b961072))
* **efd-server:** ♻️ recalls disabled property must check if RealmRuleset exists first ([37ef7df](https://github.com/DarktideLegend/escape-from-dereth/commit/37ef7df639a6237542535c808067d805b818de64))

## [1.1.0-alpha.58](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.57...efd-server-v1.1.0-alpha.58) (2023-08-05)


### Features

* **efd-server:** ✨ hellgates are no always random dungeons ([912e0c2](https://github.com/DarktideLegend/escape-from-dereth/commit/912e0c27a5d82be97852bea055f4f98c1ef28cb0))


### Bug Fixes

* **efd-server:** 🐛 meeting halls are now properly disposed ([2c2fc39](https://github.com/DarktideLegend/escape-from-dereth/commit/2c2fc3913746941bc0b1f521a3d55a8fe36c292a))

## [1.1.0-alpha.57](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.56...efd-server-v1.1.0-alpha.57) (2023-08-04)


### Features

* **efd-server:** ✨ enable global chat channels ([5d4d553](https://github.com/DarktideLegend/escape-from-dereth/commit/5d4d55381064c1726e9366a64072b32f4da94706))


### Code Refactoring

* **efd-server:** ♻️ update portal restrictions for meeting hall ([7e43dc2](https://github.com/DarktideLegend/escape-from-dereth/commit/7e43dc26abaf1b3d9c642121e128ee993d7dc0f2))
* **efd-server:** ♻️ update preloaded landblocks ([71b6fb0](https://github.com/DarktideLegend/escape-from-dereth/commit/71b6fb049aa94f415aa2f8ca51c25979f0797c15))

## [1.1.0-alpha.56](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.55...efd-server-v1.1.0-alpha.56) (2023-08-04)


### Features

* **efd-server:** ✨ add hebian-to as a whitelisted town ([c76fc76](https://github.com/DarktideLegend/escape-from-dereth/commit/c76fc762b0c3ae73a6a0b67fd1a28688ea3ac9c7))
* **efd-server:** ✨ add yaraq as a whitelisted town ([48f32c3](https://github.com/DarktideLegend/escape-from-dereth/commit/48f32c3e45cdd6445e471db1a3fc8a7805ddd5d5))
* **efd-server:** ✨ tapers are required to cast spells ([cee6f65](https://github.com/DarktideLegend/escape-from-dereth/commit/cee6f650cf2d229975c142c7cd4bbb0a54030100))


### Bug Fixes

* **efd-server:** 🐛 update town meeting hall broadcasting to players who cannot enter ([5424690](https://github.com/DarktideLegend/escape-from-dereth/commit/5424690a5f76a1a67396d171b95daba8fdea25c0))


### Code Refactoring

* **efd-server:** ♻️ change name of exit portal in town meeting hall realm ([0bad110](https://github.com/DarktideLegend/escape-from-dereth/commit/0bad110ac65a65f22f0949fba7a081d5269dfdac))
* **efd-server:** ♻️ persistent storage should be saved to db after creation ([86823e8](https://github.com/DarktideLegend/escape-from-dereth/commit/86823e8320cc33a24c6d2dc0baaf0cc0fd0f6eb0))
* **efd-server:** ♻️ update persistent storage query ([91718f4](https://github.com/DarktideLegend/escape-from-dereth/commit/91718f4cba1f59e288c64fe88cacf2d8b4c0423a))

## [1.1.0-alpha.55](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.54...efd-server-v1.1.0-alpha.55) (2023-08-04)


### Features

* **efd-server:** ✨ new players have aetheria slots unlocked ([f0a2455](https://github.com/DarktideLegend/escape-from-dereth/commit/f0a2455cb469dfff3874cffb82799da2e83b31f5))


### Bug Fixes

* **efd-server:** 🐛 update query preventing landblock from loading ([9bd4fb6](https://github.com/DarktideLegend/escape-from-dereth/commit/9bd4fb6d1fa7a7390d38265090867943ff01c1de))

## [1.1.0-alpha.54](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.53...efd-server-v1.1.0-alpha.54) (2023-08-01)


### Code Refactoring

* **efd-server:** ♻️ change CreatureSpawnGeneratorDelay to CreatureRespawnDuration ([6c7f132](https://github.com/DarktideLegend/escape-from-dereth/commit/6c7f132226ebd682dd3a7859ac6962212771e8f6))

## [1.1.0-alpha.53](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.52...efd-server-v1.1.0-alpha.53) (2023-08-01)


### Features

* **efd-server:** ✨ enable portals in meeting hall realm ([b42986c](https://github.com/DarktideLegend/escape-from-dereth/commit/b42986cbcff0c05b41518c90608d5c6da2ed9971))
* **efd-server:** ✨ hellgate boss is now created and spawned dynamically ([7d6a24b](https://github.com/DarktideLegend/escape-from-dereth/commit/7d6a24b7fddc5b2d218555b643197f863be4d044))
* **efd-server:** ✨ hellgate creature respawn is between 30 to 120 seconds ([d8b2e59](https://github.com/DarktideLegend/escape-from-dereth/commit/d8b2e592f172dec6db44a5e7391daacabacd2385))
* **efd-server:** ✨ hellgate surface portals no longer trigger from player collision ([c0144e0](https://github.com/DarktideLegend/escape-from-dereth/commit/c0144e061c918a0ce0832366a3354291bb1b8377))
* **efd-server:** ✨ invisibility potions can only be used in non-combat mode ([57ebffb](https://github.com/DarktideLegend/escape-from-dereth/commit/57ebffba65c1329689e9d4eceac20626c95b3b84))
* **efd-server:** ✨ new players are white for 5 minutes to prevent greifing ([7695e80](https://github.com/DarktideLegend/escape-from-dereth/commit/7695e80fa48073a319f62021f2c22bdd862f5464))
* **efd-server:** ✨ players now spawn in the basement of agent of arcanum ([df82420](https://github.com/DarktideLegend/escape-from-dereth/commit/df824208b65f9722b8f20726cf1ee73f216732e9))


### Code Refactoring

* **efd-server:** ♻️ check if landblock is permaloaded before adding to the destruction queue ([9a42103](https://github.com/DarktideLegend/escape-from-dereth/commit/9a421037a1e0db09cef69b1256bdbda9812de291))
* **efd-server:** ♻️ PropertyManager only reads default properties into the cache ([131d014](https://github.com/DarktideLegend/escape-from-dereth/commit/131d014f09d65ef318e8987c6a55a7793a8ce11d))
* **efd-server:** ♻️ update hellgate creature death treasure logic ([4a774b9](https://github.com/DarktideLegend/escape-from-dereth/commit/4a774b9063dfb9b5ab592b1d85b3aa7858379a2f))


### Other changes that don't modify src or test files

* **efd-server:** 🔧 change welcome motd ([776170d](https://github.com/DarktideLegend/escape-from-dereth/commit/776170dbf08b6343a0ded407f0a44ec15faba67b))

## [1.1.0-alpha.52](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.51...efd-server-v1.1.0-alpha.52) (2023-07-29)


### Features

* **efd-server:** ✨ town tax rate is capped at 50% ([3424cdb](https://github.com/DarktideLegend/escape-from-dereth/commit/3424cdb945535af96fc474f854c9444ecb4aaafd))

## [1.1.0-alpha.51](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.50...efd-server-v1.1.0-alpha.51) (2023-07-29)


### Code Refactoring

* **efd-server:** ♻️ /myxp command should exist in CustomCommands ([c9c269d](https://github.com/DarktideLegend/escape-from-dereth/commit/c9c269d46a963ea4927046119dd5d2790e3935ee))


### Other changes that don't modify src or test files

* **efd-server:** 🔧 add logging to GetPlayerLevelAverage ([85bfc2d](https://github.com/DarktideLegend/escape-from-dereth/commit/85bfc2dab540d161381be1ab82aea91be1498b59))
* **efd-server:** 🔧 disable automatically creating admin account on fresh start ([96e747f](https://github.com/DarktideLegend/escape-from-dereth/commit/96e747ffd46d59d7a77419484d8c5fddb47df447))

## [1.1.0-alpha.50](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.49...efd-server-v1.1.0-alpha.50) (2023-07-28)


### Bug Fixes

* **efd-server:** 🐛 vendors now properly handle tax related transactions without freezing ([92fc2bf](https://github.com/DarktideLegend/escape-from-dereth/commit/92fc2bf0c8d633926b770b008902f9bf61fbfaa8))

## [1.1.0-alpha.49](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.48...efd-server-v1.1.0-alpha.49) (2023-07-28)


### Features

* **efd-server:** ✨ add invisibility potions with 30 sec duration, 30 min cooldown ([01af7d7](https://github.com/DarktideLegend/escape-from-dereth/commit/01af7d7a0829d3e69fdecce97be31c61b9d16381))

## [1.1.0-alpha.48](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.47...efd-server-v1.1.0-alpha.48) (2023-07-27)


### Features

* **efd-server:** ✨ add ust to Fitness Instructor Anthony ([461babf](https://github.com/DarktideLegend/escape-from-dereth/commit/461babf072db399ecd9715d0c342fd7aeb48ca67))


### Code Refactoring

* **efd-server:** ♻️ remove ACRealms content from Holtburg ([ebe81ab](https://github.com/DarktideLegend/escape-from-dereth/commit/ebe81abdde5feee2a24f1ee61419d75ce34e0dea))

## [1.1.0-alpha.47](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.46...efd-server-v1.1.0-alpha.47) (2023-07-27)


### Bug Fixes

* **efd-server:** 🐛 TownManager needs to update next heartbeat on every tick ([0c312ee](https://github.com/DarktideLegend/escape-from-dereth/commit/0c312ee12d368342aab39676dda3c9f783510049))

## [1.1.0-alpha.46](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.45...efd-server-v1.1.0-alpha.46) (2023-07-26)


### Code Refactoring

* **efd-server:** ♻️ add HellgateRepository ([a852be7](https://github.com/DarktideLegend/escape-from-dereth/commit/a852be729c8158f5fe2d63af85df42413de67775))
* **efd-server:** ♻️ remove Meeting Hall from TownJsonDto ([b237fb4](https://github.com/DarktideLegend/escape-from-dereth/commit/b237fb4136074e8e53c6ce581c6dab6f4f6dd9f7))

## [1.1.0-alpha.45](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.44...efd-server-v1.1.0-alpha.45) (2023-07-26)


### Features

* **efd-server:** ✨ add /town-info and /update-town-tax player commands ([3510f1d](https://github.com/DarktideLegend/escape-from-dereth/commit/3510f1d0885219c1655c3ff0fbead0497d0b35d1))
* **efd-server:** ✨ add open-meeting-hall command for admin ([4702ae7](https://github.com/DarktideLegend/escape-from-dereth/commit/4702ae75b146a89d331d49643e0bf634ea0b38d8))
* **efd-server:** ✨ add tax rate implementation to vendor purchases and sales ([ebbc327](https://github.com/DarktideLegend/escape-from-dereth/commit/ebbc327c36b81d079e03788e3b8892e40154918a))
* **efd-server:** ✨ add Town Control with Town Meeting Hall instancing ([e534b54](https://github.com/DarktideLegend/escape-from-dereth/commit/e534b5493fef7ef3767cfe2eee1b95bffeb8774a))
* **efd-server:** ✨ all taxed vendor pyreals are added to Town Storage ([50cdb08](https://github.com/DarktideLegend/escape-from-dereth/commit/50cdb089574e1e6a635bd78518d695004815f46e))


### Code Refactoring

* **efd-server:** ♻️ add TownManger tick ([248ba40](https://github.com/DarktideLegend/escape-from-dereth/commit/248ba40d08b1371b43205ef188433af04f9d59fe))
* **efd-server:** ♻️ Hellgates now extend Arena class ([ae872b4](https://github.com/DarktideLegend/escape-from-dereth/commit/ae872b478535eacfd0062095b6ccae4cee3d22ba))
* **efd-server:** ♻️ hideout storage is now managed by MutationManager ([459d111](https://github.com/DarktideLegend/escape-from-dereth/commit/459d111442dd8c070486a96ac508256d772568ff))
* **efd-server:** ♻️ players must wait 15 minutes upon exiting a meeting hall instance ([630497a](https://github.com/DarktideLegend/escape-from-dereth/commit/630497a59ca55b693541c62229413c0dac031d4f))
* **efd-server:** ♻️ update hellgate/meeting hall transition logic ([0f2c9fc](https://github.com/DarktideLegend/escape-from-dereth/commit/0f2c9fc82d9449eca692ae31263cf06d7db41264))
* **efd-server:** ♻️ update town meeting hall transitions ([b810337](https://github.com/DarktideLegend/escape-from-dereth/commit/b810337f9ae643284afda355c11a65f16661e37b))
* **efd-server:** ♻️ update weenie content directory structure ([c310f3b](https://github.com/DarktideLegend/escape-from-dereth/commit/c310f3b5ebddcd110a3634a6ef5764ca2e6b9611))
* **efd-server:** ♻️ vitae penalty is now set to 5 ([d93b8c3](https://github.com/DarktideLegend/escape-from-dereth/commit/d93b8c3acd27b03e9bf414e32d234837ea438f57))
* **efd-server:** ♻️ WorldObjectProcessor is now the MutationsManager ([f7279f0](https://github.com/DarktideLegend/escape-from-dereth/commit/f7279f059d9ec22da259e503f34e551ed95363c6))

## [1.1.0-alpha.44](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.43...efd-server-v1.1.0-alpha.44) (2023-07-22)


### Features

* **efd-server:** ✨ add /spawn-hellgate-boss admin command ([a7e02ff](https://github.com/DarktideLegend/escape-from-dereth/commit/a7e02ffaab26f72137912325c885253bcad25aa3))
* **efd-server:** ✨ hellgate boss spawns an exit portal on death ([833064e](https://github.com/DarktideLegend/escape-from-dereth/commit/833064e50a50b3b48dd44c30cf9d6f5ff6647929))
* **efd-server:** ✨ vendors can only be accessed in whitelisted towns ([72942fe](https://github.com/DarktideLegend/escape-from-dereth/commit/72942fe52c109d35d9ee2a3068d25ec532c8eacb))


### Code Refactoring

* **efd-server:** ♻️ handle removing players from hellgates on server shutdown ([2c43e4a](https://github.com/DarktideLegend/escape-from-dereth/commit/2c43e4ab570a0e7dfcfdaad3847ead5dc642a2ae))
* **efd-server:** ♻️ portal sending only works when mobs invoke it on players ([179a859](https://github.com/DarktideLegend/escape-from-dereth/commit/179a859843d7f80e5b434c7d6c71aca88c9e087d))
* **efd-server:** ♻️ re-calcuate the global server level average on player level up ([21bd136](https://github.com/DarktideLegend/escape-from-dereth/commit/21bd136720be1afed11366b666ffdd73d437499f))
* **efd-server:** ♻️ remove SetToDefaultRealmInstance call in /telepoi command ([068ebbc](https://github.com/DarktideLegend/escape-from-dereth/commit/068ebbc8c4e97729c30cfa100cb82634fe14ce75))
* **efd-server:** ♻️ update creature death loot logic ([cc72db3](https://github.com/DarktideLegend/escape-from-dereth/commit/cc72db38419f4553a4d24eefc71e5dee28cc1442))
* **efd-server:** ♻️ update ProcessHellgateGenerator logic ([477cd8d](https://github.com/DarktideLegend/escape-from-dereth/commit/477cd8d12a55e3fe62c55f0cbba5fe94d1360bff))

## [1.1.0-alpha.43](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.42...efd-server-v1.1.0-alpha.43) (2023-07-20)


### Features

* **efd-server:** ✨ add realm rulesets for creature spawn rate, spawn amount, and generator delay ([1abac21](https://github.com/DarktideLegend/escape-from-dereth/commit/1abac21c39ef074eb1c82acfd007e190e5563e9e))


### Performance Improvements

* **efd-server:** ⚡️ purge forgotten monster biotas when the server starts ([f554bf6](https://github.com/DarktideLegend/escape-from-dereth/commit/f554bf6c44ee96f28c88d3b2cd6f9756707960ef))


### Code Refactoring

* **efd-server:** ♻️ hellgate realm property CreatureSpawnGeneratorDelay is set to 30 seconds ([fc2d7df](https://github.com/DarktideLegend/escape-from-dereth/commit/fc2d7df78f6a393ca3c1aabb70be73542b2333cb))
* **efd-server:** ♻️ set creature respawn to 5 seconds ([83d7a52](https://github.com/DarktideLegend/escape-from-dereth/commit/83d7a52384c706878f082b30cbbee6dd5a0b78f5))

## [1.1.0-alpha.42](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.41...efd-server-v1.1.0-alpha.42) (2023-07-20)


### Features

* **efd-server:** ✨ using allegiance bindstone teleports players to their lifestone ([36d5fbd](https://github.com/DarktideLegend/escape-from-dereth/commit/36d5fbd8788cce3efc5157fcd5e40d5c9b31adab))


### Code Refactoring

* **efd-server:** ♻️ disable recalls in hideouts ([5237408](https://github.com/DarktideLegend/escape-from-dereth/commit/5237408d7c58d485503dedf2de1aafb21916b74e))
* **efd-server:** ♻️ loot quality in home realm has been reduced ([9e323ac](https://github.com/DarktideLegend/escape-from-dereth/commit/9e323acaa66a42e4a7680eccce7ffe0187b27860))
* **efd-server:** ♻️ process world object links ([610ad73](https://github.com/DarktideLegend/escape-from-dereth/commit/610ad73d805cc42475cf714729956b8ff3360392))
* **efd-server:** ♻️ update whitelisted town network portal range ([4d4de60](https://github.com/DarktideLegend/escape-from-dereth/commit/4d4de60e4bcc9600e9bd25f771c428d460221567))
* **efd-server:** ♻️ xp inside hellgates is 2x ([8651374](https://github.com/DarktideLegend/escape-from-dereth/commit/8651374b1645381866fd89ce65db425ad12f4f7e))

## [1.1.0-alpha.41](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.40...efd-server-v1.1.0-alpha.41) (2023-07-19)


### Features

* **efd-server:** ✨ add configurable tax rate for town ownership ([9330791](https://github.com/DarktideLegend/escape-from-dereth/commit/9330791c5cca16851e716556dee6ec95b6232f28))
* **efd-server:** ✨ add town control ([abb96bb](https://github.com/DarktideLegend/escape-from-dereth/commit/abb96bb0326803b84c632cf366a86647aac44ace))


### Code Refactoring

* **efd-server:** ♻️ only check Town Network portals based on town distance ([0fcf2fc](https://github.com/DarktideLegend/escape-from-dereth/commit/0fcf2fc26b0b9f7022de27a6e2f1b4aaf440ffe9))
* **efd-server:** ♻️ reduce gatekeeper spawn rate to 8% ([eae31a5](https://github.com/DarktideLegend/escape-from-dereth/commit/eae31a5fe272fb4a60769e6b1e015424d5a7f156))

## [1.1.0-alpha.40](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.39...efd-server-v1.1.0-alpha.40) (2023-07-18)


### Features

* **efd-server:** ✨ monsters below level 80 turn into forgotten monsters ([ee7d40a](https://github.com/DarktideLegend/escape-from-dereth/commit/ee7d40a49e7e519ce69503491d2f7898cfef0d60))
* **efd-server:** ✨ Town Network portals only exist in whitelisted towns ([86f276c](https://github.com/DarktideLegend/escape-from-dereth/commit/86f276cf5ddf239bee609e01d78b0b05ae5ef03c))


### Code Refactoring

* **efd-server:** ♻️ decrease home realm global xp modifier from 0.25 to 0.1 ([3e52fd0](https://github.com/DarktideLegend/escape-from-dereth/commit/3e52fd0ef45c910de65971221365efe52a3fecd6))
* **efd-server:** ♻️ disable recalls in home realm ([d9aca76](https://github.com/DarktideLegend/escape-from-dereth/commit/d9aca7627498c35a8463b4d595351fde111da900))
* **efd-server:** ♻️ enable portal access with HasRecalls disabled ([0ce67e3](https://github.com/DarktideLegend/escape-from-dereth/commit/0ce67e3ca48716ca44e8c6f7618088c3a0a6ac01))
* **efd-server:** ♻️ forgotten monsters never spawn indoors of home realm ([e6eb99c](https://github.com/DarktideLegend/escape-from-dereth/commit/e6eb99c7e13469d784c61f10eacb4b4279adeff1))
* **efd-server:** ♻️ increase gatekeeper spawn rate to 25% ([c8ecd43](https://github.com/DarktideLegend/escape-from-dereth/commit/c8ecd43b5ff8a6e1106ddd96e38736657a9af4e2))
* **efd-server:** ♻️ increased town distance range between tiers ([ea7b836](https://github.com/DarktideLegend/escape-from-dereth/commit/ea7b836dfbbe6b917fedc5a4621652bbf51d859d))
* **efd-server:** ♻️ pvp summoners no longer target allegiance/fellowship members of owner ([e6c83d7](https://github.com/DarktideLegend/escape-from-dereth/commit/e6c83d79e0aa7e57f527b1662080d776423d3cdd))
* **efd-server:** ♻️ update handling hellgate tiered loot ([62b68ce](https://github.com/DarktideLegend/escape-from-dereth/commit/62b68ce0f2c901d7ebc7ddfb3594ce05f2fd3aab))

## [1.1.0-alpha.39](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.38...efd-server-v1.1.0-alpha.39) (2023-07-17)


### Features

* **efd-server:** ✨ add CreatureSpawnRateMultiplier realm ruleset ([fc7da29](https://github.com/DarktideLegend/escape-from-dereth/commit/fc7da29ffe34f4316135c8ab8f98bbf0f537280c))


### Code Refactoring

* **efd-server:** ♻️ add custom itemMax and mundaneMax for hellgate bosses ([9e47675](https://github.com/DarktideLegend/escape-from-dereth/commit/9e47675304b86a5ce4c93f5863b2cc82bf161626))
* **efd-server:** ♻️ forgotten monsters have a 10% chance to spawn a gatekeeper ([9c9ba9c](https://github.com/DarktideLegend/escape-from-dereth/commit/9c9ba9ca732f4d3ccdae71f0dea5805960a77626))
* **efd-server:** ♻️ home realm has 2x spawn multiplier ([fa2662d](https://github.com/DarktideLegend/escape-from-dereth/commit/fa2662d91d85dc031f09ff031e32bd98e95f8786))

## [1.1.0-alpha.38](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.37...efd-server-v1.1.0-alpha.38) (2023-07-17)


### Features

* **efd-server:** ✨ creature deaths in hellgate reduce boss timer by 10 seconds ([82c8227](https://github.com/DarktideLegend/escape-from-dereth/commit/82c8227635c77d1575a2949a5342f4b849fd60ad))


### Code Refactoring

* **efd-server:** ♻️ disable temporary ruleset validation ([873c5de](https://github.com/DarktideLegend/escape-from-dereth/commit/873c5debe2c965347777b0316809e21287c1cdc6))
* **efd-server:** ♻️ filter world objects in WorldObjectProcessor ([1b1799f](https://github.com/DarktideLegend/escape-from-dereth/commit/1b1799f514c036ed51b2510a2c93f994bd9b7921))
* **efd-server:** ♻️ gatekeepers spawn increased from 25% to 50% ([351bce1](https://github.com/DarktideLegend/escape-from-dereth/commit/351bce114e409c1e5971a85752638dd23079e88f))
* **efd-server:** ♻️ hellgate boss drop up to 250 magic items on death ([81aef75](https://github.com/DarktideLegend/escape-from-dereth/commit/81aef752f314b5537cef379e75bfdc8e5febabf0))
* **efd-server:** ♻️ temporarily open all hellgates ([47e1350](https://github.com/DarktideLegend/escape-from-dereth/commit/47e13502e6a57f23c8b2e41f0d6edc699ed7b32a))
* **efd-server:** ♻️ update creature death profile generation ([0438a27](https://github.com/DarktideLegend/escape-from-dereth/commit/0438a27ba5b75b477be143b66ddc0e12c82674fb))
* **efd-server:** ♻️ update hideout storage weenie_class_id ([8e4a8d7](https://github.com/DarktideLegend/escape-from-dereth/commit/8e4a8d792a81e927e6e4262d8b85d85de654f240))
* **efd-server:** ♻️ use TreasureDeath profile for ItemMax and MundaneMax ([05e50a7](https://github.com/DarktideLegend/escape-from-dereth/commit/05e50a765188f8e7a3ad7e541dd48fd12a7d066b))

## [1.1.0-alpha.37](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.36...efd-server-v1.1.0-alpha.37) (2023-07-16)


### Features

* **efd-server:** ✨ monster loot in the home realm has 10% chance to drop its actual tier ([204a728](https://github.com/DarktideLegend/escape-from-dereth/commit/204a72831b0fb29cee841fc3847775a77f4ae83a))


### Bug Fixes

* **efd-server:** 🐛 use RealmRuleset from activator ([8d31ebb](https://github.com/DarktideLegend/escape-from-dereth/commit/8d31ebba48f871a44a022813454766ae743a42e8))


### Code Refactoring

* **efd-server:** ♻️ custom mobs in home realm should always have nerfed loot ([b0b6b26](https://github.com/DarktideLegend/escape-from-dereth/commit/b0b6b26a800e89b608aa366a7e0df105f008aa6b))
* **efd-server:** ♻️ update creature loot generation based on realm ([918e48f](https://github.com/DarktideLegend/escape-from-dereth/commit/918e48f71bc95ad6699475942512e3a71768ff9b))
* **efd-server:** ♻️ update world object filtering with realms ([3b2d933](https://github.com/DarktideLegend/escape-from-dereth/commit/3b2d9337835474855a1c17486ecdbcac1a1fbaf4))

## [1.1.0-alpha.36](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.35...efd-server-v1.1.0-alpha.36) (2023-07-13)


### Bug Fixes

* **efd-server:** 🐛 remove summoning mastery requirements ([1d3f500](https://github.com/DarktideLegend/escape-from-dereth/commit/1d3f500c028aeaaa8c96b51559ba251d00a2f1c1))


### Code Refactoring

* **efd-server:** ♻️ add wield requirements check for all world objects ([a657a50](https://github.com/DarktideLegend/escape-from-dereth/commit/a657a50c8d12aaa8111aced4e1022fea4a18334b))

## [1.1.0-alpha.35](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.34...efd-server-v1.1.0-alpha.35) (2023-07-12)


### Bug Fixes

* **efd-server:** 🐛  add null checks to GetPlayerLevelAverage ([880639c](https://github.com/DarktideLegend/escape-from-dereth/commit/880639cca9fd32014fba7369987ea93246199c05))

## [1.1.0-alpha.34](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.33...efd-server-v1.1.0-alpha.34) (2023-07-12)


### Bug Fixes

* **efd-server:** 🐛 remove duplicate attuned property for sanguinary aegis ([5546ad8](https://github.com/DarktideLegend/escape-from-dereth/commit/5546ad8d0cc0845d7c6d349cfa2f081951f9c97b))

## [1.1.0-alpha.33](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.32...efd-server-v1.1.0-alpha.33) (2023-07-11)


### Features

* **efd-server:** ✨ add player level average xp modifier ([902e0ae](https://github.com/DarktideLegend/escape-from-dereth/commit/902e0aec14c945828d2dc457be31203cbe7a75af))

## [1.1.0-alpha.32](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.31...efd-server-v1.1.0-alpha.32) (2023-07-10)


### Features

* **efd-server:** ✨ add HasPvpSummoners ruleset ([8d9061a](https://github.com/DarktideLegend/escape-from-dereth/commit/8d9061a2923421c014ec08d8c613e877b84b1aa0))


### Code Refactoring

* **efd-server:** ♻️  add capitalized properties for Town/TownManager ([35d7ccb](https://github.com/DarktideLegend/escape-from-dereth/commit/35d7ccb23cfe8b8b48b1962e7e115df5ca35e5ed))
* **efd-server:** ♻️ combat pets cannot be mutated into a Gatekeeper ([94d8e17](https://github.com/DarktideLegend/escape-from-dereth/commit/94d8e179b165ba26cf2b37fc41cec21863d11d3d))

## [1.1.0-alpha.31](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.30...efd-server-v1.1.0-alpha.31) (2023-07-08)


### Code Refactoring

* **efd-server:** ♻️ create new hellgate group if countdown is less than 20 minutes ([f52eef9](https://github.com/DarktideLegend/escape-from-dereth/commit/f52eef99701fc171a35edf8d590d6cc4c84a6636))
* **efd-server:** ♻️ hellgates are open for an hour by default ([b24e29d](https://github.com/DarktideLegend/escape-from-dereth/commit/b24e29db7fb57a5589781a23b76d13080ef07a39))
* **efd-server:** ♻️ if HellgateGroups is empty exit HellgateManager.Tick ([2fe14eb](https://github.com/DarktideLegend/escape-from-dereth/commit/2fe14eb9501fd19e960f7b6e2ff0b1550a5b6c4f))
* **efd-server:** ♻️ recycle hellgate group guid outside of HellgateGroup entity ([fdb0b27](https://github.com/DarktideLegend/escape-from-dereth/commit/fdb0b27dc20b949ff816d02e84ee49416a3b6994))
* **efd-server:** ♻️ remove old validation logic from CreateNewWorldObject ([10fdf9d](https://github.com/DarktideLegend/escape-from-dereth/commit/10fdf9d54e59306bc888ec6dc1b63a50059929ce))

## [1.1.0-alpha.30](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.29...efd-server-v1.1.0-alpha.30) (2023-07-07)


### Bug Fixes

* **efd-server:** 🐛 check if realm is overridable when weenie has custom content ([a9b1234](https://github.com/DarktideLegend/escape-from-dereth/commit/a9b1234434165addaed6a13f91b67882a3bd7fd6))


### Code Refactoring

* **efd-server:** ♻️ add better logging when adding landblock to destruction queue ([52df338](https://github.com/DarktideLegend/escape-from-dereth/commit/52df33818541891ce8dded3864d8d914ac0f14aa))

## [1.1.0-alpha.29](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.28...efd-server-v1.1.0-alpha.29) (2023-07-06)


### Code Refactoring

* **efd-server:** ♻️ add lifespan to hellgate surface portal ([7aad37f](https://github.com/DarktideLegend/escape-from-dereth/commit/7aad37f09f98c399ba9503f59431f226dfc49f19))

## [1.1.0-alpha.28](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.27...efd-server-v1.1.0-alpha.28) (2023-07-06)


### Features

* **efd-server:** ✨ scale the amount of items dropped by hellgate boss using custom tier ([d51b0bd](https://github.com/DarktideLegend/escape-from-dereth/commit/d51b0bdea0d1e4fe02d6ef35e03a224321e21ced))
* **efd-server:** ✨ use custom tiers when creating loot objects ([a14196c](https://github.com/DarktideLegend/escape-from-dereth/commit/a14196c66a684ecb8ad8b3be6ee36308e9ee68e9))


### Code Refactoring

* **efd-server:** ♻️ add amateur explorer weapons to fitness instructor anthony ([bcc27f4](https://github.com/DarktideLegend/escape-from-dereth/commit/bcc27f4fd232c198db8157d469cff4cb14610e5c))
* **efd-server:** ♻️ add diamond scarabs to archmage ([c1ee88d](https://github.com/DarktideLegend/escape-from-dereth/commit/c1ee88d5647b3be4970e8593ee915f14e16449d9))
* **efd-server:** ♻️ characters start at level 80 ([ec64390](https://github.com/DarktideLegend/escape-from-dereth/commit/ec64390bdc52bf9288d6d1039d22d6319721a8f3))
* **efd-server:** ♻️ reduce gatekeeper spawn chance from 10% to 8% ([cfbc3d0](https://github.com/DarktideLegend/escape-from-dereth/commit/cfbc3d03c19fbe7c1aeacb4e11cac593a1fec3d1))
* **efd-server:** ♻️ update default server properties ([00d4eb5](https://github.com/DarktideLegend/escape-from-dereth/commit/00d4eb594d2ee6c04ee0841eb7ebc987a07dc29c))


### Other changes that don't modify src or test files

* **efd-server:** 🔧 remove merge conflict artifacts ([2146317](https://github.com/DarktideLegend/escape-from-dereth/commit/2146317fe4fa7cfe44e8d87ede98b4923cf2ac26))
* **efd-server:** 🔧 remove merge conflict artifacts ([e8e0800](https://github.com/DarktideLegend/escape-from-dereth/commit/e8e0800862f7fd9b93aa3d9ad258e782fbee733e))

## [1.1.0-alpha.27](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.26...efd-server-v1.1.0-alpha.27) (2023-07-06)


### Features

* **efd-server:** ✨ add ability to bind to another player's hideout with /set-hideout command ([388f25e](https://github.com/DarktideLegend/escape-from-dereth/commit/388f25ee1204e85b44f59a6a2db5b9dc4100e6a2))
* **efd-server:** ✨ add BossLocation and ExitLocation to hellgates ([8efddeb](https://github.com/DarktideLegend/escape-from-dereth/commit/8efddeb4f9b44baf53f1411390b2b8787bce0c11))
* **efd-server:** ✨ add Gatekeeper Mutations ([2618f8c](https://github.com/DarktideLegend/escape-from-dereth/commit/2618f8ca1ccd28b7440ae90e641152e46228813f))
* **efd-server:** ✨ add hellgate boss spawn ([d2ab32d](https://github.com/DarktideLegend/escape-from-dereth/commit/d2ab32da5be20cfc185e5ce63adb1b0302c3ba54))
* **efd-server:** ✨ add Hellgate Surface Portal for exits ([a29b367](https://github.com/DarktideLegend/escape-from-dereth/commit/a29b367bb215229bcc120eedf035c444edddf683))
* **efd-server:** ✨ add linked hellgates ([3c9977f](https://github.com/DarktideLegend/escape-from-dereth/commit/3c9977f7df8d47e683a5f87223103084bf76af36))
* **efd-server:** ✨ add single use /currency command per account ([e86477c](https://github.com/DarktideLegend/escape-from-dereth/commit/e86477c28e06760242d8e677b6aa5caeef2b2b40))
* **efd-server:** ✨ add SpawnHellgateOnDeath WorldObject property ([ef6112f](https://github.com/DarktideLegend/escape-from-dereth/commit/ef6112f0ae33ffc5a8f9c2e296379718e05fdeb5))
* **efd-server:** ✨ add tier system that scales with town distance ([2878e40](https://github.com/DarktideLegend/escape-from-dereth/commit/2878e403f7de890c1f58affd9204c5d48b963c0d))
* **efd-server:** ✨ Corpses in hellgates do not require looting permissions ([a171760](https://github.com/DarktideLegend/escape-from-dereth/commit/a1717606501d6e1c8f1c654b567d09a6409315fd))
* **efd-server:** ✨ fellowships may only have 3 players to enter a hellgate ([90e3905](https://github.com/DarktideLegend/escape-from-dereth/commit/90e3905d60fafba0b78ebb5034cd7692e5720b26))


### Build System Dependencies

* **efd-server:** 📦️ update Dockerfile to use dotnet 6.0 ([7ddc46f](https://github.com/DarktideLegend/escape-from-dereth/commit/7ddc46f48ef1e89b10ae85a5aa83e205d1722c01))


### Code Refactoring

* **efd-server:** ♻️ add BossPosition and ExitPosition to Hellgate constructor ([30a9227](https://github.com/DarktideLegend/escape-from-dereth/commit/30a92277619ffcf87b8258b32237fc66ccf6f247))
* **efd-server:** ♻️ add IsCleaningupHellgateGroup flag ([62e8bef](https://github.com/DarktideLegend/escape-from-dereth/commit/62e8beffde1300a86f27fdda749faf566dd915cf))
* **efd-server:** ♻️ add logging for when adding landblock to DestructionQueue ([20edf37](https://github.com/DarktideLegend/escape-from-dereth/commit/20edf378771d5398d439d05e90a6f05ed72b6f96))
* **efd-server:** ♻️ change hellgate duration to 30 minutes ([02e5944](https://github.com/DarktideLegend/escape-from-dereth/commit/02e59441f5a6f0973c9b45e9d86eb184d630f098))
* **efd-server:** ♻️ check IsLoggingOut flag before killing hellgate players logging out ([6cefb2a](https://github.com/DarktideLegend/escape-from-dereth/commit/6cefb2ad34e6261dacd122f63a3625eec65320fc))
* **efd-server:** ♻️ disable /rebuffs in home realm ([661eb19](https://github.com/DarktideLegend/escape-from-dereth/commit/661eb197ca51d74e7b1d97edc12455de2f328378))
* **efd-server:** ♻️ handle adding/removing players from hellgate in OnTransitionToNewRealm ([c2030ba](https://github.com/DarktideLegend/escape-from-dereth/commit/c2030ba64f2e7884a7c4e799a0b95bdeab1e2285))
* **efd-server:** ♻️ move WorldObject mutation logic to WorldObjectFactory ([d9ebeff](https://github.com/DarktideLegend/escape-from-dereth/commit/d9ebeff762ba8176c4ac241441902cfb6959dbbe))
* **efd-server:** ♻️ remove assigning a player's pk status based on realm ([614d4b5](https://github.com/DarktideLegend/escape-from-dereth/commit/614d4b59bde78c0008874d62f33ae1180398a398))
* **efd-server:** ♻️ remove HellgatePurgatory ([5af166f](https://github.com/DarktideLegend/escape-from-dereth/commit/5af166fcc1ffa0cfec0543069a8294e973518170))
* **efd-server:** ♻️ remove HP modifier ruleset for hellgates ([e2ff6bf](https://github.com/DarktideLegend/escape-from-dereth/commit/e2ff6bf7b1c0b252c4c906bfbbfad79ba82ad4da))
* **efd-server:** ♻️ remove lock for read access of ActiveHellgates ([df5ef09](https://github.com/DarktideLegend/escape-from-dereth/commit/df5ef09fd0cdc4ea70d88033ac66f69580a272cb))
* **efd-server:** ♻️ set boss spawn timer to half the duration of a hellgate ([649e73c](https://github.com/DarktideLegend/escape-from-dereth/commit/649e73ca33ea342fe5ac9c3ebca803cc65dcbd16))
* **efd-server:** ♻️ update HellgateGroup cleanup ([d348886](https://github.com/DarktideLegend/escape-from-dereth/commit/d3488869ff04c97a2181352bdb2c98d6d1f4e2fe))
* **efd-server:** ♻️ update hellgates implementation ([95fb342](https://github.com/DarktideLegend/escape-from-dereth/commit/95fb342ca703f3b5fff864917831bdb0de130282))
* **efd-server:** ♻️ update Player.Hellgate_Tick ([ee9c87f](https://github.com/DarktideLegend/escape-from-dereth/commit/ee9c87f5cf44dbcbc3f737fec87e002a3e7024a0))

## [1.1.0-alpha.26](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.25...efd-server-v1.1.0-alpha.26) (2023-06-26)


### Features

* **efd-server:** ✨ merge acrealms-ace-merge branch v1.39.4192 ([d535f9a](https://github.com/DarktideLegend/escape-from-dereth/commit/d535f9a933562b60e5ee90a289ad6e571f438a25))

## [1.1.0-alpha.25](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.24...efd-server-v1.1.0-alpha.25) (2023-06-25)


### Features

* **efd-server:** ✨ add UseWieldRequirements realm ruleset ([a04c73b](https://github.com/DarktideLegend/escape-from-dereth/commit/a04c73b063d14e7b382fd2155fe11cedb8273f6a))
* **efd-server:** ✨ disable wield requirements for home realm ([539c395](https://github.com/DarktideLegend/escape-from-dereth/commit/539c3953648190ba969a98c18b9608a93fe66b37))
* **efd-server:** ✨ set IsPkOnly to true for hideouts ([7f8dd8b](https://github.com/DarktideLegend/escape-from-dereth/commit/7f8dd8b5a1ba4bc4a0f60d6a4ba7eb430335b9f1))


### Bug Fixes

* **efd-server:** 🐛 remove hellgate group before destroying ([466f13f](https://github.com/DarktideLegend/escape-from-dereth/commit/466f13f5456e7619bfd0cd89e344a178abdce254))


### Code Refactoring

* **efd-server:** ♻️ add dynamic guid to HellgateGroup ([29fb1d3](https://github.com/DarktideLegend/escape-from-dereth/commit/29fb1d3dfbf8d1798892e0eb9b9d6a2e30ec6a4f))
* **efd-server:** ♻️ hellgates expire in 3 minutes for testing ([63bc725](https://github.com/DarktideLegend/escape-from-dereth/commit/63bc725d0509f1217e8da1115397d79a143007dc))
* **efd-server:** ♻️ move Drudge Orb to Fitness Instructor Anthony ([ef4c631](https://github.com/DarktideLegend/escape-from-dereth/commit/ef4c63166799578f48fdf88c30a655ec90e6e362))
* **efd-server:** ♻️ use TimeRemaining instead of HellgateGroupExpiration ([e8d2c62](https://github.com/DarktideLegend/escape-from-dereth/commit/e8d2c62e34d98173d88d8ca6de41434ea1ce007a))

## [1.1.0-alpha.24](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.23...efd-server-v1.1.0-alpha.24) (2023-06-24)


### Bug Fixes

* **efd-server:** 🐛 save creature to biota after outdoor death treasure mutation ([b4155db](https://github.com/DarktideLegend/escape-from-dereth/commit/b4155db13456f19e495fb9913367df2505bf9480))


### Code Refactoring

* **efd-server:** ♻️ organize realms weenie content ([4d8feef](https://github.com/DarktideLegend/escape-from-dereth/commit/4d8feefc35e27f0ecab21d1b24a03b75d2341b9d))

## [1.1.0-alpha.23](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.22...efd-server-v1.1.0-alpha.23) (2023-06-24)


### Features

* **efd-server:** ✨ add Black Spear Temple Upper and Moarsmen Priory to HellgateLandblock pool ([9d8d288](https://github.com/DarktideLegend/escape-from-dereth/commit/9d8d28800f3ad1e1cb799a6ea86c7f70018216f4))
* **efd-server:** ✨ add Fitness Instructor Anthony NPC to towns ([b70c028](https://github.com/DarktideLegend/escape-from-dereth/commit/b70c0282f1575eb30597cd7d8ff2caa88ef1f29a))
* **efd-server:** ✨ add HellgateLandblock entity ([318a61c](https://github.com/DarktideLegend/escape-from-dereth/commit/318a61cd3708978d7fd1e74eb1b1098b487077bf))
* **efd-server:** ✨ add Olthoi Arcade South + Apostate Nexus to HellgateLandblock pool ([09984b2](https://github.com/DarktideLegend/escape-from-dereth/commit/09984b246f342870617c09ce9af44b8e5fc872b6))
* **efd-server:** ✨ add Rynthid Genesis + Northern Infiltrator Keep to HellgateLandblock pool ([c6d034b](https://github.com/DarktideLegend/escape-from-dereth/commit/c6d034b0973e6862c317a34125e16eec9a06271a))
* **efd-server:** ✨ disable corpse_destroy_pyreals property ([f783b30](https://github.com/DarktideLegend/escape-from-dereth/commit/f783b3052de7eb9d5c4e14c993350e9fd646d6fa))
* **efd-server:** ✨ enable HasLifestones ruleset in home realm ([e58ce37](https://github.com/DarktideLegend/escape-from-dereth/commit/e58ce3745707cfb7f511d74e8126140604a69b58))
* **efd-server:** ✨ make Sanguinary Aegis attuned ([182f10f](https://github.com/DarktideLegend/escape-from-dereth/commit/182f10fc71a5f2ba0cd49462f9df796307bdfe2b))


### Bug Fixes

* **efd-server:** 🐛 attuned items do not drop with full loot ruleset ([8fc212e](https://github.com/DarktideLegend/escape-from-dereth/commit/8fc212e7d423778a3a5f95f43a45ef8457e882ba))
* **efd-server:** 🐛 corpses should pass CustomContentOnly filter ([05b3ce3](https://github.com/DarktideLegend/escape-from-dereth/commit/05b3ce339bd78f0845d1d531ce574f63fad7c0ad))
* **efd-server:** 🐛 remove stack of mmds from starter items ([59aeec6](https://github.com/DarktideLegend/escape-from-dereth/commit/59aeec6a636d6cf2437f9688c81fe2c51b2f51bd))


### Performance Improvements

* **efd-server:** ⚡️ add HellgateManager heartbeat ([5d84cb3](https://github.com/DarktideLegend/escape-from-dereth/commit/5d84cb378dcccf3551bab7d5a5752038ca491db3))


### Build System Dependencies

* **efd-server:** 📦️ add ace-web service to docker compose ([772faaa](https://github.com/DarktideLegend/escape-from-dereth/commit/772faaa1b2fae754cb32e4b49b4f78d21ebe3b97))


### Code Refactoring

* **efd-server:** ♻️ GetRandomTown only returns towns that are open ([8f4a302](https://github.com/DarktideLegend/escape-from-dereth/commit/8f4a302e201e896a264154d6db71529cc263123b))
* **efd-server:** ♻️ organize weenie content ([3fca40e](https://github.com/DarktideLegend/escape-from-dereth/commit/3fca40ead510ce90248bbe9dd272b4bc9288f86a))
* **efd-server:** ♻️ update HasReachedCapacity equality logic ([0cc1202](https://github.com/DarktideLegend/escape-from-dereth/commit/0cc1202b5b48e451140d8b72b035aecaa42f9cd5))
* **efd-server:** ♻️ update rithwic drop position ([de62bd1](https://github.com/DarktideLegend/escape-from-dereth/commit/de62bd1374ca417bd181fa6ed79671f90519d619))

## [1.1.0-alpha.22](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.21...efd-server-v1.1.0-alpha.22) (2023-06-19)


### Features

* **efd-server:** ✨ add HellgateGroup and HellgatePurgatory ([140a614](https://github.com/DarktideLegend/escape-from-dereth/commit/140a6144f631a70c0585ff5704387e6deea4b705))
* **efd-server:** ✨ add player death when logging out from a hellgate ([bd8eef0](https://github.com/DarktideLegend/escape-from-dereth/commit/bd8eef0721bdd03f3bd125b4111909a916b648f0))


### Bug Fixes

* **efd-server:** 🐛 set location to exitLoc if possible when player enters world ([8fb4ff5](https://github.com/DarktideLegend/escape-from-dereth/commit/8fb4ff5e89960d3486488851fe4c8193672d95b8))


### Code Refactoring

* **efd-server:** ♻️ assign list of players to ephemeral realm ([92cf1d0](https://github.com/DarktideLegend/escape-from-dereth/commit/92cf1d0f59e6bd4fa174b623f0657229927034fd))
* **efd-server:** ♻️ remove player from hellgate cache on realm transition ([9f63037](https://github.com/DarktideLegend/escape-from-dereth/commit/9f6303747b61c35d376680acec350c308fbbcde7))

## [1.1.0-alpha.21](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.20...efd-server-v1.1.0-alpha.21) (2023-06-16)


### Features

* **efd-server:** ✨ add HasBindstones realm property ([5533e7b](https://github.com/DarktideLegend/escape-from-dereth/commit/5533e7b4f8dbd95c7255d76fca5af460f3cd9fb7))
* **efd-server:** ✨ add HasHousing realm property ([53fc3bb](https://github.com/DarktideLegend/escape-from-dereth/commit/53fc3bb46ea131eb9d940d1d001a8c97038fd89f))


### Bug Fixes

* **efd-server:** 🐛 add hooks and house world objects to HasHousing filter ([16f390a](https://github.com/DarktideLegend/escape-from-dereth/commit/16f390aa7a236b6a0ffcfa11a0d4a917c53be6d6))

## [1.1.0-alpha.20](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.19...efd-server-v1.1.0-alpha.20) (2023-06-16)


### Features

* **efd-server:** ✨ add ExperienceMultiplierAll realm implementation ([e7fb359](https://github.com/DarktideLegend/escape-from-dereth/commit/e7fb3597396b98c4091d0c79ff9063a5261f7639))
* **efd-server:** ✨ add Forgotten Revenant, Olthoi Slayer, Demilich monsters ([7d415cb](https://github.com/DarktideLegend/escape-from-dereth/commit/7d415cbab59706dad4d87cf329ef37708d0b3efd))
* **efd-server:** ✨ add loot tier based on town distance multiplier ([557acb0](https://github.com/DarktideLegend/escape-from-dereth/commit/557acb048f5e59f3b7a069905ed7fe303f4d2880))
* **efd-server:** ✨ add persistent storage to hideouts ([6429427](https://github.com/DarktideLegend/escape-from-dereth/commit/6429427b0dbf6b56727141314f63d635881e803a))
* **efd-server:** ✨ add realm property to only allow custom content ([ceafa77](https://github.com/DarktideLegend/escape-from-dereth/commit/ceafa7737c679377f7b72e4748255c9799056ba4))
* **efd-server:** ✨ clear a players inventory before creation ([eabc06c](https://github.com/DarktideLegend/escape-from-dereth/commit/eabc06cd2f2c10ed1ed9b833e7c6ae729b85344d))
* **efd-server:** ✨ cows create monsters or hellgates ([d449f24](https://github.com/DarktideLegend/escape-from-dereth/commit/d449f245f3dcb6659a8978e87edd711baf5b1156))
* **efd-server:** ✨ mutate creature DeathTreasureType to scale with town distance multiplier ([c65c9ab](https://github.com/DarktideLegend/escape-from-dereth/commit/c65c9aba755f0de158365656fa3177701ba99901))
* **efd-server:** ✨ new players get a stack of mmds ([a8487f3](https://github.com/DarktideLegend/escape-from-dereth/commit/a8487f3b18643b20d7054e29a7439c2a7a4a7566))
* **efd-server:** ✨ new players start at level 50 with max augs and all skills specialized ([9acf170](https://github.com/DarktideLegend/escape-from-dereth/commit/9acf17085278b56d7825c51349c62231e366ea09))
* **efd-server:** ✨ set ExperienceMultiplierAll to 0.25 globally ([2fa4783](https://github.com/DarktideLegend/escape-from-dereth/commit/2fa4783600a76b1514e22c61de3e5f3f5e8b9a34))
* **efd-server:** ✨ set ExperienceMultiplierAll to 0.75 for hellgate ruleset ([1844c1c](https://github.com/DarktideLegend/escape-from-dereth/commit/1844c1c9f9686106d03411dda6f98da5800474c1))


### Bug Fixes

* **efd-server:** 🐛 check for location before creating hideout storage ([4768da7](https://github.com/DarktideLegend/escape-from-dereth/commit/4768da79b823f338203a8720e01acadaaf191f20))
* **efd-server:** 🐛 properly check if position is in hellgate ([6764bf3](https://github.com/DarktideLegend/escape-from-dereth/commit/6764bf3510872171afa7945088386faf000b5540))
* **efd-server:** 🐛 properly specialize all skills ([5c4d932](https://github.com/DarktideLegend/escape-from-dereth/commit/5c4d9324c1aa38ab994ff113886bfa763fac74e6))
* **efd-server:** 🐛 remove level requirement for hideout, hellgate, and home realm portals ([0d78dc7](https://github.com/DarktideLegend/escape-from-dereth/commit/0d78dc7f4d7743ded0bb535aa8870ce07669b170))


### Code Refactoring

* **efd-server:** ♻️ add demilich and olthoi slayer mobs to distance multiplier check ([3b39299](https://github.com/DarktideLegend/escape-from-dereth/commit/3b3929978bcb5b1f11ac3612739f957da7514262))
* **efd-server:** ♻️ organize weenie content ([57d83c1](https://github.com/DarktideLegend/escape-from-dereth/commit/57d83c119638d21b72d6e52c7cf16d9820be085f))

## [1.1.0-alpha.19](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.18...efd-server-v1.1.0-alpha.19) (2023-06-12)


### Features

* **efd-server:** ✨ add forgotten monsters ([0cf33a5](https://github.com/DarktideLegend/escape-from-dereth/commit/0cf33a57d3733afd374e9b3b33bc174d51e57dcc))


### Code Refactoring

* **efd-server:** ♻️ change access level for custom realm commands ([34460c6](https://github.com/DarktideLegend/escape-from-dereth/commit/34460c6c4aec5a100c9dc0910d68484a8561a4c3))
* **efd-server:** ♻️ remove damage scale based on distance multiplier ([3deec82](https://github.com/DarktideLegend/escape-from-dereth/commit/3deec82c94d35eca523bced1e621b09292eb5bc7))
* **efd-server:** ♻️ simplify distance multiplier ([f80ccb6](https://github.com/DarktideLegend/escape-from-dereth/commit/f80ccb688a39d1c351b7f04d389c75c4e7e48880))
* **efd-server:** ♻️ update game message when transitioning between realms ([f4dfb32](https://github.com/DarktideLegend/escape-from-dereth/commit/f4dfb32287d6e536b51f4278c29a428f90d5c04d))
* **efd-server:** ♻️ update tier of mobs that spawn in hellgate based on distance ([25f2fcf](https://github.com/DarktideLegend/escape-from-dereth/commit/25f2fcfee92757dee07e2227d651955ff44b1598))

## [1.1.0-alpha.18](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.17...efd-server-v1.1.0-alpha.18) (2023-06-11)


### Code Refactoring

* **efd-server:** ♻️ allowedPlayers must be mutable list when creating ephermeral realm ([4410cd8](https://github.com/DarktideLegend/escape-from-dereth/commit/4410cd8cd086e6a8be6f1df827e75dc74fbb0e1a))
* **efd-server:** ♻️ check if player is in hellgate on login ([2adbe5e](https://github.com/DarktideLegend/escape-from-dereth/commit/2adbe5e94cc61689cd60fbe37f86875f9c6d0512))
* **efd-server:** ♻️ log info when a player enters a hellgate ([19a42b9](https://github.com/DarktideLegend/escape-from-dereth/commit/19a42b9943e30277799617b8b2da9977ac266536))
* **efd-server:** ♻️ move Hellgate entity to its own file ([26544f9](https://github.com/DarktideLegend/escape-from-dereth/commit/26544f957b773789ffa1efe15ed5002fdc6a1728))
* **efd-server:** ♻️ remove player from hellgate when exiting instance ([ef31de9](https://github.com/DarktideLegend/escape-from-dereth/commit/ef31de980de8423e2292592d15afe7bb29b5d599))
* **efd-server:** ♻️ update hellgate cleanup ([025b360](https://github.com/DarktideLegend/escape-from-dereth/commit/025b3600859a8f1ed7fcbbae562a99e138004531))
* **efd-server:** ♻️ use List instead of ImmutableList for allowed players ([6cd003e](https://github.com/DarktideLegend/escape-from-dereth/commit/6cd003eac3d830e067d20f089860633b905685f6))

## [1.1.0-alpha.17](https://github.com/DarktideLegend/escape-from-dereth/compare/efd-server-v1.1.0-alpha.16...efd-server-v1.1.0-alpha.17) (2023-06-08)


### Features

* **efd-server:** ✨ add hellgate instancing management ([6b51bde](https://github.com/DarktideLegend/escape-from-dereth/commit/6b51bdedd4ef2a63dfb2aca3c6a1e922417d1978))
* **efd-server:** ✨ add hellgate realm ruleset ([f366cb5](https://github.com/DarktideLegend/escape-from-dereth/commit/f366cb58bac2fb6132c60438977f1d7508f40c45))
* **efd-server:** ✨ support creating EphemeralLandblock with whitelisted list of players ([c6f10dc](https://github.com/DarktideLegend/escape-from-dereth/commit/c6f10dcd6ca30d333ddf8954a43e650a193c22a8))


### Documentation

* **efd-server:** 📚️ update IsCustomContent property comments ([b68ab8a](https://github.com/DarktideLegend/escape-from-dereth/commit/b68ab8adac57c9d67628bd8ee006e8f17addccfb))


### Code Refactoring

* **efd-server:** ♻️ update applying TownDistanceMultiplier to Creature attributes ([b26fabd](https://github.com/DarktideLegend/escape-from-dereth/commit/b26fabd7cc76f61c82b7ddb6cbb08a7ee7669b35))

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
