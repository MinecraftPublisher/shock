(module
 (type $0 (func (param i32 i32) (result i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32 i32) (result i32)))
 (type $4 (func))
 (type $5 (func (param i32)))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32) (result i32)))
 (type $8 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $../assembly/shock/_null (mut i32) (i32.const 0))
 (global $../assembly/shock/_0 (mut i32) (i32.const 0))
 (global $../assembly/shock/_1 (mut i32) (i32.const 0))
 (global $../assembly/shock/_2 (mut i32) (i32.const 0))
 (global $../assembly/shock/_3 (mut i32) (i32.const 0))
 (global $../assembly/shock/_4 (mut i32) (i32.const 0))
 (global $../assembly/shock/nullfunction (mut i32) (i32.const 0))
 (global $../assembly/shock/cat (mut i32) (i32.const 0))
 (global $../assembly/shock/constants (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2256))
 (memory $0 1)
 (data $0 (i32.const 1036) "\1c")
 (data $0.1 (i32.const 1048) "\02\00\00\00\04\00\00\00[\00]")
 (data $1 (i32.const 1068) "\1c")
 (data $1.1 (i32.const 1080) "\02")
 (data $2 (i32.const 1100) "<")
 (data $2.1 (i32.const 1112) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $3 (i32.const 1164) "<")
 (data $3.1 (i32.const 1176) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
 (data $4 (i32.const 1228) "\1c")
 (data $4.1 (i32.const 1240) "\02\00\00\00\02\00\00\00[")
 (data $5 (i32.const 1260) "\1c")
 (data $5.1 (i32.const 1272) "\02\00\00\00\02\00\00\000")
 (data $6 (i32.const 1292) "\1c")
 (data $6.1 (i32.const 1304) "\02\00\00\00\02\00\00\00]")
 (data $7 (i32.const 1324) "\1c")
 (data $7.1 (i32.const 1336) "\02\00\00\00\02\00\00\001")
 (data $8 (i32.const 1356) "\1c")
 (data $8.1 (i32.const 1368) "\01")
 (data $9 (i32.const 1388) "\1c")
 (data $9.1 (i32.const 1400) "\01")
 (data $10 (i32.const 1420) ",")
 (data $10.1 (i32.const 1432) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $11 (i32.const 1468) ",")
 (data $11.1 (i32.const 1480) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $12 (i32.const 1516) "<")
 (data $12.1 (i32.const 1528) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $13 (i32.const 1580) "|")
 (data $13.1 (i32.const 1592) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $14 (i32.const 1708) "\1c")
 (data $14.1 (i32.const 1720) "\02\00\00\00\08\00\00\00[\00[\00]\00]")
 (data $15 (i32.const 1740) ",")
 (data $15.1 (i32.const 1752) "\02\00\00\00\10\00\00\00[\00[\00]\00,\00 \00[\00]\00]")
 (data $16 (i32.const 1788) ",")
 (data $16.1 (i32.const 1800) "\02\00\00\00\18\00\00\00[\00[\00]\00,\00 \00[\00]\00,\00 \00[\00]\00]")
 (data $17 (i32.const 1836) "<")
 (data $17.1 (i32.const 1848) "\02\00\00\00 \00\00\00[\00[\00]\00,\00 \00[\00]\00,\00 \00[\00]\00,\00 \00[\00]\00]")
 (data $18 (i32.const 1900) "<")
 (data $18.1 (i32.const 1912) "\02\00\00\00 \00\00\00[\00[\00[\00]\00]\00,\00 \00[\00[\00]\00]\00,\00 \00[\00]\00]")
 (data $19 (i32.const 1964) "<")
 (data $19.1 (i32.const 1976) "\02\00\00\00(\00\00\00[\00[\00[\00]\00]\00,\00 \00[\00[\00]\00]\00,\00 \00[\00[\00[\00]\00]\00]\00]")
 (data $20 (i32.const 2028) "\1c")
 (data $20.1 (i32.const 2040) "\02\00\00\00\04\00\00\00]\00[")
 (data $21 (i32.const 2060) "\1c")
 (data $21.1 (i32.const 2072) "\02\00\00\00\08\00\00\00]\00,\00 \00[")
 (data $22 (i32.const 2092) "\1c")
 (data $22.1 (i32.const 2104) "\02\00\00\00\06\00\00\00]\00 \00[")
 (data $23 (i32.const 2124) "\1c")
 (data $23.1 (i32.const 2136) "\01")
 (data $24 (i32.const 2156) "\1c")
 (data $24.1 (i32.const 2168) "\01")
 (data $25 (i32.const 2188) "\1c")
 (data $25.1 (i32.const 2200) "\02\00\00\00\04\00\00\000\001")
 (data $26 (i32.const 2220) "\1c")
 (data $26.1 (i32.const 2232) "\01")
 (data $27 (i32.const 2256) "\t\00\00\00 \00\00\00 \00\00\00 ")
 (data $27.1 (i32.const 2280) "\02A\00\00\02\t\00\00\00\00\00\00\02A")
 (export "binaryToList" (func $../assembly/shock/binaryToList))
 (export "binaryToVisual" (func $../assembly/shock/binaryToVisual))
 (export "binary" (func $../assembly/shock/binary))
 (export "_application" (func $../assembly/shock/_application))
 (export "_function" (func $../assembly/shock/_function))
 (export "visualToBinary" (func $../assembly/shock/visualToBinary))
 (export "constants" (global $../assembly/shock/constants))
 (export "buildNumber" (func $../assembly/shock/buildNumber))
 (export "evaluate" (func $../assembly/shock/evaluate))
 (export "__new" (func $~lib/rt/stub/__new))
 (export "__pin" (func $~lib/string/String#toString))
 (export "__unpin" (func $~lib/rt/stub/__unpin))
 (export "__collect" (func $~lib/rt/stub/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $2
  local.get $0
  i32.lt_u
  if
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 33
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.set $1
  global.get $~lib/rt/stub/offset
  i32.const 4
  i32.add
  local.tee $2
  local.get $0
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.tee $0
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $1
  local.get $0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 86
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/stub/__alloc
  local.tee $3
  i32.const 4
  i32.sub
  local.tee $2
  i32.const 0
  i32.store offset=4
  local.get $2
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.get $1
  i32.le_u
  if
   i32.const 1088
   return
  end
  i32.const 2
  i32.const 2
  call $~lib/rt/stub/__new
  local.tee $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
  i32.store16
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  loop $while-continue|0
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $1
  i32.eqz
  local.get $0
  i32.eqz
  i32.or
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  local.get $2
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1088
  local.set $2
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $3
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.tee $4
  i32.add
  local.tee $5
  if
   local.get $5
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $2
   local.get $0
   local.get $3
   memory.copy
   local.get $2
   local.get $3
   i32.add
   local.get $1
   local.get $4
   memory.copy
  end
  local.get $2
 )
 (func $../assembly/shock/visualToBinary (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  i32.const 1088
  local.set $1
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/string/String#charAt
    local.tee $4
    i32.const 1248
    call $~lib/string/String.__eq
    if (result i32)
     local.get $1
     i32.const 1280
     call $~lib/string/String.__concat
    else
     local.get $4
     i32.const 1312
     call $~lib/string/String.__eq
     if (result i32)
      local.get $1
      i32.const 1344
      call $~lib/string/String.__concat
     else
      local.get $1
     end
    end
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $1
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/stub/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  i32.const 16
  local.get $1
  call $~lib/rt/stub/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $1
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 0
   i32.const 0
   call $~lib/rt/stub/__new
  end
 )
 (func $../assembly/shock/list (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 4
  i32.const 4
  call $~lib/rt/stub/__new
  call $~lib/object/Object#constructor
  local.tee $1
  i32.const 0
  i32.const 5
  i32.const 1408
  call $~lib/rt/__newArray
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
  local.get $0
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $1
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
 )
 (func $~lib/rt/stub/__realloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if
   i32.const 0
   i32.const 1184
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/stub/offset
  local.get $0
  i32.const 4
  i32.sub
  local.tee $4
  i32.load
  local.tee $3
  local.get $0
  i32.add
  i32.eq
  local.set $5
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $2
  local.get $1
  local.get $3
  i32.gt_u
  if
   local.get $5
   if
    local.get $1
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1120
     i32.const 1184
     i32.const 52
     i32.const 33
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.add
    call $~lib/rt/stub/maybeGrowMemory
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   else
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    local.tee $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    call $~lib/rt/stub/__alloc
    local.tee $1
    local.get $0
    local.get $3
    memory.copy
    local.get $1
    local.set $0
   end
  else
   local.get $5
   if
    local.get $0
    local.get $2
    i32.add
    global.set $~lib/rt/stub/offset
    local.get $4
    local.get $2
    call $~lib/rt/common/BLOCK#set:mmInfo
   end
  end
  local.get $0
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1120
   i32.const 1184
   i32.const 99
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  i32.const 16
  i32.add
  call $~lib/rt/stub/__realloc
  local.tee $0
  i32.const 4
  i32.sub
  local.get $1
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1440
    i32.const 1488
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.tee $3
   i32.const 1073741820
   local.get $2
   i32.const 1
   i32.shl
   local.tee $4
   local.get $4
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $4
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.tee $1
   local.get $1
   local.get $4
   i32.lt_u
   select
   local.tee $1
   call $~lib/rt/stub/__renew
   local.tee $4
   local.get $2
   i32.add
   i32.const 0
   local.get $1
   local.get $2
   i32.sub
   memory.fill
   local.get $3
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $4
    i32.store
    local.get $0
    local.get $4
    i32.store offset=4
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<../assembly/shock/List>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  call $~lib/array/ensureCapacity
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $3
  call $~lib/rt/common/OBJECT#set:rtId
 )
 (func $../assembly/shock/List#push (param $0 i32) (param $1 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/array/Array<../assembly/shock/List>#push
 )
 (func $../assembly/shock/binaryToList (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.set $5
  i32.const 0
  i32.const 5
  i32.const 1376
  call $~lib/rt/__newArray
  call $../assembly/shock/list
  local.set $6
  loop $while-continue|0
   local.get $1
   local.get $5
   i32.lt_s
   if
    local.get $0
    local.get $1
    call $~lib/string/String#charAt
    i32.const 1280
    call $~lib/string/String.__eq
    if
     i32.const 1088
     local.set $4
     i32.const 0
     local.set $2
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $1
     call $~lib/string/String#charAt
     local.set $3
     loop $while-continue|1
      local.get $1
      local.get $5
      i32.lt_s
      if (result i32)
       i32.const 1
       local.get $2
       i32.const 0
       i32.gt_s
       local.get $3
       i32.const 1344
       call $~lib/string/String.__ne
       select
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 1
       i32.add
       local.get $2
       local.get $3
       i32.const 1280
       call $~lib/string/String.__eq
       select
       local.tee $2
       i32.const 1
       i32.sub
       local.get $2
       local.get $3
       i32.const 1344
       call $~lib/string/String.__eq
       select
       local.set $2
       local.get $4
       local.get $3
       call $~lib/string/String.__concat
       local.set $4
       local.get $0
       local.get $1
       i32.const 1
       i32.add
       local.tee $1
       call $~lib/string/String#charAt
       local.set $3
       br $while-continue|1
      end
     end
     local.get $6
     local.get $4
     call $../assembly/shock/binaryToList
     call $../assembly/shock/List#push
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $6
 )
 (func $~lib/array/Array<../assembly/shock/List>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1536
   i32.const 1488
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 1600
   i32.const 1488
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
 )
 (func $../assembly/shock/Exports#set:_0 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $../assembly/shock/Exports#set:_1 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $../assembly/shock/Exports#set:_4 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $../assembly/shock/Exports#set:nullfunction (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
 )
 (func $../assembly/shock/Exports#set:cat (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
 )
 (func $start:../assembly/shock
  (local $0 i32)
  i32.const 2300
  global.set $~lib/rt/stub/offset
  i32.const 1056
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/_null
  global.get $../assembly/shock/_null
  global.set $../assembly/shock/_0
  i32.const 1728
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/_1
  i32.const 1760
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/_2
  i32.const 1808
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/_3
  i32.const 1856
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/_4
  i32.const 1920
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/nullfunction
  i32.const 1984
  call $../assembly/shock/visualToBinary
  call $../assembly/shock/binaryToList
  i32.load
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  global.set $../assembly/shock/cat
  i32.const 32
  i32.const 7
  call $~lib/rt/stub/__new
  call $~lib/object/Object#constructor
  local.tee $0
  global.get $../assembly/shock/_null
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  global.get $../assembly/shock/_0
  call $../assembly/shock/Exports#set:_0
  local.get $0
  global.get $../assembly/shock/_1
  call $../assembly/shock/Exports#set:_1
  local.get $0
  global.get $../assembly/shock/_2
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  global.get $../assembly/shock/_3
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $0
  global.get $../assembly/shock/_4
  call $../assembly/shock/Exports#set:_4
  local.get $0
  global.get $../assembly/shock/nullfunction
  call $../assembly/shock/Exports#set:nullfunction
  local.get $0
  global.get $../assembly/shock/cat
  call $../assembly/shock/Exports#set:cat
  local.get $0
  global.get $../assembly/shock/_null
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  global.get $../assembly/shock/_0
  call $../assembly/shock/Exports#set:_0
  local.get $0
  global.get $../assembly/shock/_1
  call $../assembly/shock/Exports#set:_1
  local.get $0
  global.get $../assembly/shock/_2
  call $~lib/rt/common/OBJECT#set:rtId
  local.get $0
  global.get $../assembly/shock/_3
  call $~lib/rt/common/OBJECT#set:rtSize
  local.get $0
  global.get $../assembly/shock/_4
  call $../assembly/shock/Exports#set:_4
  local.get $0
  global.get $../assembly/shock/nullfunction
  call $../assembly/shock/Exports#set:nullfunction
  local.get $0
  global.get $../assembly/shock/cat
  call $../assembly/shock/Exports#set:cat
  local.get $0
  global.set $../assembly/shock/constants
 )
 (func $~lib/string/String#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/string/String#get:length
  local.tee $3
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.tee $4
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $4
  local.get $2
  local.get $4
  i32.lt_s
  select
  local.set $2
  local.get $4
  local.get $3
  i32.sub
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $4
   i32.le_s
   if
    local.get $0
    local.get $2
    local.get $1
    local.get $3
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const -1
 )
 (func $~lib/string/String#replaceAll (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/string/String#get:length
  local.tee $6
  local.get $1
  call $~lib/string/String#get:length
  local.tee $9
  i32.le_u
  if
   local.get $6
   local.get $9
   i32.lt_u
   if (result i32)
    local.get $0
   else
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/string/String.__eq
    select
   end
   return
  end
  local.get $2
  call $~lib/string/String#get:length
  local.set $5
  local.get $9
  i32.eqz
  if
   local.get $5
   i32.eqz
   if
    local.get $0
    return
   end
   local.get $6
   local.get $6
   i32.const 1
   i32.add
   local.get $5
   i32.mul
   i32.add
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $4
   local.get $2
   local.get $5
   i32.const 1
   i32.shl
   memory.copy
   local.get $5
   local.set $1
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.lt_u
    if
     local.get $4
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.get $0
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $4
     local.get $1
     i32.const 1
     i32.add
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $5
     i32.add
     local.set $1
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $4
   return
  end
  local.get $5
  local.get $9
  i32.eq
  if
   local.get $6
   i32.const 1
   i32.shl
   local.tee $3
   i32.const 2
   call $~lib/rt/stub/__new
   local.tee $4
   local.get $0
   local.get $3
   memory.copy
   loop $while-continue|1
    local.get $0
    local.get $1
    local.get $7
    call $~lib/string/String#indexOf
    local.tee $3
    i32.const -1
    i32.xor
    if
     local.get $4
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $2
     local.get $5
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $9
     i32.add
     local.set $7
     br $while-continue|1
    end
   end
   local.get $4
   return
  end
  local.get $6
  local.set $4
  loop $while-continue|2
   local.get $0
   local.get $1
   local.get $7
   call $~lib/string/String#indexOf
   local.tee $10
   i32.const -1
   i32.xor
   if
    local.get $3
    if (result i32)
     local.get $3
     call $~lib/string/String#get:length
    else
     i32.const 0
    end
    i32.eqz
    if
     local.get $6
     i32.const 1
     i32.shl
     i32.const 2
     call $~lib/rt/stub/__new
     local.set $3
    end
    local.get $10
    local.get $7
    i32.sub
    local.tee $11
    local.get $8
    i32.add
    local.get $5
    i32.add
    local.get $4
    i32.gt_u
    if
     local.get $3
     local.get $4
     i32.const 1
     i32.shl
     local.tee $4
     i32.const 1
     i32.shl
     call $~lib/rt/stub/__renew
     local.set $3
    end
    local.get $8
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $0
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    local.get $11
    i32.const 1
    i32.shl
    memory.copy
    local.get $3
    local.get $8
    local.get $11
    i32.add
    local.tee $7
    i32.const 1
    i32.shl
    i32.add
    local.get $2
    local.get $5
    i32.const 1
    i32.shl
    memory.copy
    local.get $5
    local.get $7
    i32.add
    local.set $8
    local.get $9
    local.get $10
    i32.add
    local.set $7
    br $while-continue|2
   end
  end
  local.get $3
  if
   local.get $6
   local.get $7
   i32.sub
   local.tee $1
   local.get $8
   i32.add
   local.get $4
   i32.gt_u
   if
    local.get $3
    local.get $4
    i32.const 1
    i32.shl
    local.tee $4
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
    local.set $3
   end
   local.get $1
   if
    local.get $3
    local.get $8
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    local.get $1
    i32.const 1
    i32.shl
    memory.copy
   end
   local.get $1
   local.get $8
   i32.add
   local.tee $0
   local.get $4
   i32.lt_u
   if (result i32)
    local.get $3
    local.get $0
    i32.const 1
    i32.shl
    call $~lib/rt/stub/__renew
   else
    local.get $3
   end
   return
  end
  local.get $0
 )
 (func $../assembly/shock/binaryToVisual (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 1280
  i32.const 1248
  call $~lib/string/String#replaceAll
  i32.const 1344
  i32.const 1312
  call $~lib/string/String#replaceAll
  i32.const 2048
  i32.const 2080
  i32.const 2112
  local.get $1
  select
  call $~lib/string/String#replaceAll
 )
 (func $~lib/string/String#toString (param $0 i32) (result i32)
  local.get $0
 )
 (func $../assembly/shock/List#binary (param $0 i32) (result i32)
  local.get $0
  i32.const 2176
  call $byn$mgfn-shared$../assembly/shock/List#binary
 )
 (func $../assembly/shock/binary (param $0 i32) (result i32)
  local.get $0
  i32.const 2144
  call $byn$mgfn-shared$../assembly/shock/List#binary
 )
 (func $~lib/array/Array<../assembly/shock/List>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1536
    i32.const 1488
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   call $~lib/rt/common/OBJECT#set:rtId
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $../assembly/shock/_application (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 3
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  global.get $../assembly/shock/_2
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  i32.const 1
  local.get $0
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  i32.const 2
  local.get $1
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  call $../assembly/shock/list
 )
 (func $../assembly/shock/_function (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 3
  i32.const 5
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $2
  i32.load offset=4
  drop
  local.get $2
  i32.const 0
  global.get $../assembly/shock/_1
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  i32.const 1
  local.get $0
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  i32.const 2
  local.get $1
  call $~lib/array/Array<../assembly/shock/List>#__set
  local.get $2
  call $../assembly/shock/list
 )
 (func $../assembly/shock/buildNumber (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 1280
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.gt_s
   if
    local.get $1
    i32.const 2208
    call $~lib/string/String.__concat
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 1344
  call $~lib/string/String.__concat
 )
 (func $../assembly/shock/Assert.ll (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  call $../assembly/shock/List#binary
  local.get $1
  call $../assembly/shock/List#binary
  call $~lib/string/String.__eq
 )
 (func $../assembly/shock/Assert.isOne (param $0 i32) (result i32)
  local.get $0
  global.get $../assembly/shock/_1
  call $../assembly/shock/Assert.ll
 )
 (func $../assembly/shock/List#replace (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  call $../assembly/shock/Assert.ll
  if (result i32)
   local.get $2
  else
   local.get $0
   i32.load
   i32.const 0
   call $~lib/array/Array<../assembly/shock/List>#__get
   call $../assembly/shock/Assert.isOne
   if (result i32)
    local.get $0
    i32.load
    i32.load offset=12
    i32.const 3
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $1
    local.get $0
    i32.load
    i32.const 1
    call $~lib/array/Array<../assembly/shock/List>#__get
    call $../assembly/shock/Assert.ll
    if
     local.get $0
     i32.load
     i32.const 1
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.tee $1
     global.get $../assembly/shock/_null
     call $../assembly/shock/List#push
     i32.const 3
     i32.const 5
     i32.const 0
     call $~lib/rt/__newArray
     local.tee $2
     i32.load offset=4
     drop
     local.get $2
     i32.const 0
     global.get $../assembly/shock/_1
     call $~lib/array/Array<../assembly/shock/List>#__set
     local.get $2
     i32.const 1
     local.get $1
     call $~lib/array/Array<../assembly/shock/List>#__set
     local.get $2
     i32.const 2
     local.get $0
     i32.load
     i32.const 2
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.get $0
     i32.load
     i32.const 1
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.get $1
     call $../assembly/shock/List#replace
     call $~lib/array/Array<../assembly/shock/List>#__set
     local.get $2
     call $../assembly/shock/list
     return
    end
   end
   i32.const 0
   i32.const 5
   i32.const 2240
   call $~lib/rt/__newArray
   local.set $4
   loop $for-loop|0
    local.get $3
    local.get $0
    i32.load
    i32.load offset=12
    i32.lt_s
    if
     local.get $4
     local.get $0
     i32.load
     local.get $3
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.get $1
     local.get $2
     call $../assembly/shock/List#replace
     call $~lib/array/Array<../assembly/shock/List>#push
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $4
   call $../assembly/shock/list
  end
 )
 (func $../assembly/shock/evaluate (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $1
  i32.load offset=12
  i32.eqz
  if
   local.get $0
   return
  end
  local.get $1
  i32.const 0
  call $~lib/array/Array<../assembly/shock/List>#__get
  call $../assembly/shock/Assert.isOne
  if
   local.get $1
   i32.load offset=12
   i32.const 3
   i32.eq
   if
    local.get $1
    i32.const 1
    call $~lib/array/Array<../assembly/shock/List>#__get
    local.set $0
    local.get $1
    i32.const 2
    call $~lib/array/Array<../assembly/shock/List>#__get
    local.set $1
    i32.const 3
    i32.const 5
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $2
    i32.load offset=4
    drop
    local.get $2
    i32.const 0
    global.get $../assembly/shock/_1
    call $~lib/array/Array<../assembly/shock/List>#__set
    local.get $2
    i32.const 1
    local.get $0
    call $~lib/array/Array<../assembly/shock/List>#__set
    local.get $2
    i32.const 2
    local.get $1
    call $../assembly/shock/evaluate
    call $~lib/array/Array<../assembly/shock/List>#__set
    local.get $2
    call $../assembly/shock/list
    return
   end
   local.get $0
   return
  else
   local.get $1
   i32.const 0
   call $~lib/array/Array<../assembly/shock/List>#__get
   global.get $../assembly/shock/_2
   call $../assembly/shock/Assert.ll
   if
    local.get $1
    i32.load offset=12
    i32.const 3
    i32.eq
    if
     local.get $1
     i32.const 1
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.set $2
     local.get $1
     i32.const 2
     call $~lib/array/Array<../assembly/shock/List>#__get
     local.set $1
     local.get $2
     i32.load
     i32.const 0
     call $~lib/array/Array<../assembly/shock/List>#__get
     call $../assembly/shock/Assert.isOne
     if (result i32)
      local.get $2
      i32.load
      i32.load offset=12
      i32.const 3
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $2
      i32.load
      i32.const 1
      call $~lib/array/Array<../assembly/shock/List>#__get
      local.set $0
      local.get $2
      i32.load
      i32.const 2
      call $~lib/array/Array<../assembly/shock/List>#__get
      local.get $0
      local.get $1
      call $../assembly/shock/List#replace
      return
     end
    end
   end
  end
  local.get $0
 )
 (func $~lib/rt/stub/__unpin (param $0 i32)
 )
 (func $~lib/rt/stub/__collect
 )
 (func $~start
  call $start:../assembly/shock
 )
 (func $byn$mgfn-shared$../assembly/shock/List#binary (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 8
  local.get $1
  call $~lib/rt/__newArray
  local.set $4
  loop $for-loop|0
   local.get $2
   local.get $0
   i32.load
   i32.load offset=12
   i32.lt_s
   if
    local.get $4
    local.get $0
    i32.load
    local.get $2
    call $~lib/array/Array<../assembly/shock/List>#__get
    call $../assembly/shock/List#binary
    call $~lib/array/Array<../assembly/shock/List>#push
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $4
  i32.load offset=4
  local.set $1
  i32.const 1280
  block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   i32.const 1088
   local.get $4
   i32.load offset=12
   i32.const 1
   i32.sub
   local.tee $2
   i32.const 0
   i32.lt_s
   br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
   drop
   local.get $2
   i32.eqz
   if
    local.get $1
    i32.load
    local.tee $0
    i32.const 1088
    local.get $0
    i32.const 0
    call $~lib/string/String.__ne
    select
    br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
   end
   i32.const 1088
   local.set $0
   i32.const 1088
   call $~lib/string/String#get:length
   local.set $4
   loop $for-loop|00
    local.get $2
    local.get $3
    i32.gt_s
    if
     local.get $1
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $5
     i32.const 0
     call $~lib/string/String.__ne
     if
      local.get $0
      local.get $5
      call $~lib/string/String.__concat
      local.set $0
     end
     local.get $4
     if
      local.get $0
      i32.const 1088
      call $~lib/string/String.__concat
      local.set $0
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|00
    end
   end
   local.get $1
   local.get $2
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.tee $1
   i32.const 0
   call $~lib/string/String.__ne
   if (result i32)
    local.get $0
    local.get $1
    call $~lib/string/String.__concat
   else
    local.get $0
   end
  end
  call $~lib/string/String.__concat
  i32.const 1344
  call $~lib/string/String.__concat
 )
)
