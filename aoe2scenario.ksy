meta:
  id: aoe2scenario
  file-extension: aoe2scenario
  endian: le

seq:
  - id: version
    type: u4
  - id: x2
    type: u4
  - id: x3
    type: u4
  - id: x4
    size: x3

  - id: x5
    type: u4
  - id: x6
    type: u4
  - id: x7
    type: u4
  - id: x8
    type: u4
  - id: x9
    type: u4
  - id: x10
    type: u4
  - id: x11
    type: u4
  - id: x12
    type: u4
  - id: x13
    type: u4
  - id: x14
    type: u4
  - id: x15
    type: u4
  - id: x16
    type: u4
  - id: x17
    type: u4

  - id: author
    type: strz
    encoding: ascii
    size: x17

  - id: x18
    type: u4

  - id: data
    size-eos: true
    type: map_data
    process: zlib_raw
  

types:
  map_data:
    seq:
      - id: next_unit_id
        type: u4
      - id: version2
        type: f4
      - id: player_names
        repeat: expr
        repeat-expr: 16
        encoding: ascii
        size: 256
        type: strz
      - id: string_table_player_names
        repeat: expr
        repeat-expr: 16
        type: u4
      - id: player_data1
        repeat: expr
        repeat-expr: 16
        type: player_data1
      - id: conquest_mode
        type: u1
      - id: mission_items_counter
        type: u2
      - id: mission_available
        type: u2
      - id: mission_timeline
        type: f4
      - id: mission_item
        size: 30
        repeat: expr
        repeat-expr: mission_items_counter
      - id: original_filename
        type: string16
        

  player_data1:
    seq:
      - id: active
        type: u4 # todo: bool
      - id: human
        type: u4 # todo: bool
      - id: civilization
        type: u4
      - id: cty_mode
        type: u4

  string16:
    seq:
      - id: len
        type: u2
      - id: value
        type: strz
        size: len
        encoding: ascii