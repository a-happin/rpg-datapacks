health_modifier
==

## Features

### Event Handlers

|tag/function|description|
|:--|:--|

### Scores

|objective|description|
|:--|:--|
|health_modifier.health|the value of health to be set to `@s`(scale 1024)|

### Predicates

|objective|description|
|:--|:--|

### Functions

#### `health_modifier:damage/`
- input
  - `storage : _[-1].damage` double: damage amount
  - `storage : _[-1].death_message` string of JSON
  - `storage : nbt` (optional) NBT cache of `@s`



## Usage

call `tag/function #minecraft:load_once` once

## Requirement

- Minecraft JE 1.19
- [player.tick](https://github.com/a-happin/player-datapacks/tree/master/10.player.tick)
- [player.initialize](https://github.com/a-happin/player-datapacks/tree/master/11.player.initialize)

## Installation

## License
Creative Commons Zero v1.0 Universal
