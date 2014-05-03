
bootloader.elf:     file format elf32-zpu

Disassembly of section .fixed_vectors:

00000000 <_start>:
   0:	0b          	nop
   1:	0b          	nop
   2:	0b          	nop
   3:	98          	im 24
   4:	b6          	im 54
   5:	04          	poppc
	...

00000020 <_zpu_interrupt_vector>:
  20:	0b          	nop
  21:	0b          	nop
  22:	0b          	nop
  23:	98          	im 24
  24:	97          	im 23
  25:	04          	poppc
	...

00000040 <_loadh>:
  40:	71          	loadsp 4
  41:	fd          	im -3
  42:	06          	and
  43:	08          	load
  44:	72          	loadsp 8
  45:	83          	im 3
  46:	06          	and
  47:	09          	not
  48:	81          	im 1
  49:	05          	add
  4a:	82          	im 2
  4b:	05          	add
  4c:	83          	im 3
  4d:	2b          	ashiftleft
  4e:	2a          	lshiftright
  4f:	83          	im 3
  50:	ff          	im -1
  51:	ff          	im -1
  52:	06          	and
  53:	52          	storesp 8
  54:	04          	poppc
	...

00000060 <_storeh>:
  60:	71          	loadsp 4
  61:	fd          	im -3
  62:	06          	and
  63:	08          	load
  64:	83          	im 3
  65:	ff          	im -1
  66:	ff          	im -1
  67:	73          	loadsp 12
  68:	83          	im 3
  69:	06          	and
  6a:	09          	not
  6b:	81          	im 1
  6c:	05          	add
  6d:	82          	im 2
  6e:	05          	add
  6f:	83          	im 3
  70:	2b          	ashiftleft
  71:	2b          	ashiftleft
  72:	09          	not
  73:	06          	and
  74:	73          	loadsp 12
  75:	83          	im 3
  76:	ff          	im -1
  77:	ff          	im -1
  78:	0b          	nop
  79:	0b          	nop
  7a:	0b          	nop
  7b:	0b          	nop
  7c:	83          	im 3
  7d:	a7          	im 39
  7e:	04          	poppc
	...

00000080 <_lessthan>:
  80:	72          	loadsp 8
  81:	09          	not
  82:	81          	im 1
  83:	05          	add
  84:	72          	loadsp 8
  85:	05          	add
  86:	73          	loadsp 12
  87:	73          	loadsp 12
  88:	09          	not
  89:	06          	and
  8a:	09          	not
  8b:	06          	and
  8c:	73          	loadsp 12
  8d:	09          	not
  8e:	73          	loadsp 12
  8f:	06          	and
  90:	07          	or
  91:	0a          	flip
  92:	81          	im 1
  93:	06          	and
  94:	53          	storesp 12
  95:	51          	storesp 4
  96:	04          	poppc
	...

000000a0 <_lessthanorequal>:
  a0:	72          	loadsp 8
  a1:	72          	loadsp 8
  a2:	24          	lessthan
  a3:	73          	loadsp 12
  a4:	73          	loadsp 12
  a5:	2e          	eq
  a6:	07          	or
  a7:	53          	storesp 12
  a8:	51          	storesp 4
  a9:	04          	poppc
	...

000000c0 <_ulessthan>:
  c0:	71          	loadsp 4
  c1:	73          	loadsp 12
  c2:	71          	loadsp 4
  c3:	09          	not
  c4:	71          	loadsp 4
  c5:	06          	and
  c6:	81          	im 1
  c7:	06          	and
  c8:	30          	neg
  c9:	72          	loadsp 8
  ca:	0a          	flip
  cb:	10          	addsp 0
  cc:	0a          	flip
  cd:	72          	loadsp 8
  ce:	0a          	flip
  cf:	10          	addsp 0
  d0:	0a          	flip
  d1:	31          	sub
  d2:	05          	add
  d3:	0a          	flip
  d4:	81          	im 1
  d5:	06          	and
  d6:	51          	storesp 4
  d7:	51          	storesp 4
  d8:	53          	storesp 12
  d9:	51          	storesp 4
  da:	04          	poppc
  db:	00          	breakpoint
  dc:	00          	breakpoint
  dd:	00          	breakpoint
	...

000000e0 <_ulessthanorequal>:
  e0:	72          	loadsp 8
  e1:	72          	loadsp 8
  e2:	26          	ulessthan
  e3:	73          	loadsp 12
  e4:	73          	loadsp 12
  e5:	2e          	eq
  e6:	07          	or
  e7:	53          	storesp 12
  e8:	51          	storesp 4
  e9:	04          	poppc
	...

00000100 <_swap>:
	...

00000120 <_slowmult>:
 120:	0b          	nop
 121:	0b          	nop
 122:	0b          	nop
 123:	88          	im 8
 124:	c3          	im -61
 125:	04          	poppc
	...

00000140 <_lshiftright>:
 140:	72          	loadsp 8
 141:	0a          	flip
 142:	72          	loadsp 8
 143:	2b          	ashiftleft
 144:	0a          	flip
 145:	53          	storesp 12
 146:	51          	storesp 4
 147:	04          	poppc
	...

00000160 <_ashiftleft>:
 160:	72          	loadsp 8
 161:	72          	loadsp 8
 162:	9f          	im 31
 163:	06          	and
 164:	09          	not
 165:	81          	im 1
 166:	05          	add
 167:	0b          	nop
 168:	0b          	nop
 169:	0b          	nop
 16a:	88          	im 8
 16b:	a6          	im 38
 16c:	05          	add
 16d:	04          	poppc
	...

00000180 <_ashiftright>:
 180:	72          	loadsp 8
 181:	72          	loadsp 8
 182:	2a          	lshiftright
 183:	ff          	im -1
 184:	73          	loadsp 12
 185:	9f          	im 31
 186:	06          	and
 187:	2a          	lshiftright
 188:	09          	not
 189:	74          	loadsp 16
 18a:	09          	not
 18b:	0a          	flip
 18c:	81          	im 1
 18d:	06          	and
 18e:	ff          	im -1
 18f:	05          	add
 190:	06          	and
 191:	07          	or
 192:	53          	storesp 12
 193:	51          	storesp 4
 194:	04          	poppc
	...

000001a0 <_call>:
 1a0:	71          	loadsp 4
 1a1:	71          	loadsp 4
 1a2:	53          	storesp 12
 1a3:	51          	storesp 4
 1a4:	02          	pushsp
 1a5:	0d          	popsp
 1a6:	04          	poppc

000001a7 <_storehtail>:
 1a7:	06          	and
 1a8:	73          	loadsp 12
 1a9:	83          	im 3
 1aa:	06          	and
 1ab:	09          	not
 1ac:	81          	im 1
 1ad:	05          	add
 1ae:	82          	im 2
 1af:	05          	add
 1b0:	83          	im 3
 1b1:	2b          	ashiftleft
 1b2:	0b          	nop
 1b3:	2b          	ashiftleft
 1b4:	07          	or
 1b5:	72          	loadsp 8
 1b6:	fc          	im -4
 1b7:	06          	and
 1b8:	0c          	store
 1b9:	51          	storesp 4
 1ba:	51          	storesp 4
 1bb:	04          	poppc
 1bc:	00          	breakpoint
 1bd:	00          	breakpoint
	...

000001c0 <_eq>:
 1c0:	72          	loadsp 8
 1c1:	09          	not
 1c2:	81          	im 1
 1c3:	05          	add
 1c4:	72          	loadsp 8
 1c5:	05          	add
 1c6:	09          	not
 1c7:	70          	loadsp 0
 1c8:	81          	im 1
 1c9:	05          	add
 1ca:	09          	not
 1cb:	06          	and
 1cc:	0a          	flip
 1cd:	81          	im 1
 1ce:	06          	and
 1cf:	53          	storesp 12
 1d0:	51          	storesp 4
 1d1:	04          	poppc
	...

000001e0 <_neq>:
 1e0:	72          	loadsp 8
 1e1:	09          	not
 1e2:	81          	im 1
 1e3:	05          	add
 1e4:	72          	loadsp 8
 1e5:	05          	add
 1e6:	09          	not
 1e7:	70          	loadsp 0
 1e8:	81          	im 1
 1e9:	05          	add
 1ea:	09          	not
 1eb:	06          	and
 1ec:	0a          	flip
 1ed:	09          	not
 1ee:	81          	im 1
 1ef:	06          	and
 1f0:	53          	storesp 12
 1f1:	51          	storesp 4
 1f2:	04          	poppc
	...

00000200 <_neg>:
 200:	71          	loadsp 4
 201:	09          	not
 202:	81          	im 1
 203:	05          	add
 204:	52          	storesp 8
 205:	04          	poppc
	...

00000220 <_sub>:
 220:	72          	loadsp 8
 221:	72          	loadsp 8
 222:	09          	not
 223:	81          	im 1
 224:	05          	add
 225:	05          	add
 226:	53          	storesp 12
 227:	51          	storesp 4
 228:	04          	poppc
	...

00000240 <_xor>:
 240:	72          	loadsp 8
 241:	09          	not
 242:	72          	loadsp 8
 243:	06          	and
 244:	73          	loadsp 12
 245:	73          	loadsp 12
 246:	09          	not
 247:	06          	and
 248:	07          	or
 249:	53          	storesp 12
 24a:	51          	storesp 4
 24b:	04          	poppc
	...

00000260 <_loadb>:
 260:	71          	loadsp 4
 261:	fc          	im -4
 262:	06          	and
 263:	08          	load
 264:	72          	loadsp 8
 265:	83          	im 3
 266:	06          	and
 267:	09          	not
 268:	81          	im 1
 269:	05          	add
 26a:	83          	im 3
 26b:	05          	add
 26c:	10          	addsp 0
 26d:	10          	addsp 0
 26e:	10          	addsp 0
 26f:	2a          	lshiftright
 270:	81          	im 1
 271:	ff          	im -1
 272:	06          	and
 273:	52          	storesp 8
 274:	04          	poppc
	...

00000280 <_storeb>:
 280:	71          	loadsp 4
 281:	fc          	im -4
 282:	06          	and
 283:	08          	load
 284:	0b          	nop
 285:	0b          	nop
 286:	0b          	nop
 287:	9e          	im 30
 288:	94          	im 20
 289:	73          	loadsp 12
 28a:	83          	im 3
 28b:	06          	and
 28c:	10          	addsp 0
 28d:	10          	addsp 0
 28e:	05          	add
 28f:	08          	load
 290:	06          	and
 291:	0b          	nop
 292:	0b          	nop
 293:	0b          	nop
 294:	88          	im 8
 295:	a9          	im 41
 296:	04          	poppc
	...

000002a0 <_div>:
 2a0:	0b          	nop
 2a1:	0b          	nop
 2a2:	0b          	nop
 2a3:	88          	im 8
 2a4:	f7          	im -9
 2a5:	04          	poppc
	...

000002c0 <_mod>:
 2c0:	0b          	nop
 2c1:	0b          	nop
 2c2:	0b          	nop
 2c3:	88          	im 8
 2c4:	df          	im -33
 2c5:	04          	poppc
	...

000002e0 <_eqbranch>:
 2e0:	72          	loadsp 8
 2e1:	09          	not
 2e2:	70          	loadsp 0
 2e3:	81          	im 1
 2e4:	05          	add
 2e5:	09          	not
 2e6:	06          	and
 2e7:	0a          	flip
 2e8:	81          	im 1
 2e9:	06          	and
 2ea:	ff          	im -1
 2eb:	05          	add
 2ec:	70          	loadsp 0
 2ed:	54          	storesp 16
 2ee:	71          	loadsp 4
 2ef:	06          	and
 2f0:	73          	loadsp 12
 2f1:	09          	not
 2f2:	72          	loadsp 8
 2f3:	74          	loadsp 16
 2f4:	05          	add
 2f5:	ff          	im -1
 2f6:	05          	add
 2f7:	06          	and
 2f8:	07          	or
 2f9:	51          	storesp 4
 2fa:	51          	storesp 4
 2fb:	51          	storesp 4
 2fc:	04          	poppc
 2fd:	00          	breakpoint
	...

00000300 <_neqbranch>:
 300:	72          	loadsp 8
 301:	09          	not
 302:	70          	loadsp 0
 303:	81          	im 1
 304:	05          	add
 305:	09          	not
 306:	06          	and
 307:	0a          	flip
 308:	09          	not
 309:	81          	im 1
 30a:	06          	and
 30b:	ff          	im -1
 30c:	05          	add
 30d:	70          	loadsp 0
 30e:	54          	storesp 16
 30f:	71          	loadsp 4
 310:	06          	and
 311:	73          	loadsp 12
 312:	09          	not
 313:	72          	loadsp 8
 314:	74          	loadsp 16
 315:	05          	add
 316:	ff          	im -1
 317:	05          	add
 318:	06          	and
 319:	07          	or
 31a:	51          	storesp 4
 31b:	51          	storesp 4
 31c:	51          	storesp 4
 31d:	04          	poppc
	...

00000320 <_poppcrel>:
 320:	05          	add
 321:	ff          	im -1
 322:	05          	add
 323:	04          	poppc
	...

00000340 <_config>:
 340:	81          	im 1
 341:	0b          	nop
 342:	0b          	nop
 343:	0b          	nop
 344:	0b          	nop
 345:	9e          	im 30
 346:	dc          	im -36
 347:	0c          	store
 348:	51          	storesp 4
 349:	04          	poppc
	...

00000360 <_pushpc>:
 360:	71          	loadsp 4
 361:	81          	im 1
 362:	05          	add
 363:	52          	storesp 8
 364:	04          	poppc
	...

00000380 <_syscall_emulate>:
	...

000003a0 <_pushspadd>:
 3a0:	02          	pushsp
 3a1:	84          	im 4
 3a2:	05          	add
 3a3:	72          	loadsp 8
 3a4:	10          	addsp 0
 3a5:	10          	addsp 0
 3a6:	05          	add
 3a7:	52          	storesp 8
 3a8:	04          	poppc
	...

000003c0 <_halfmult>:
	...

000003e0 <_callpcrel>:
 3e0:	71          	loadsp 4
 3e1:	71          	loadsp 4
 3e2:	05          	add
 3e3:	ff          	im -1
 3e4:	05          	add
 3e5:	71          	loadsp 4
 3e6:	53          	storesp 12
 3e7:	51          	storesp 4
 3e8:	02          	pushsp
 3e9:	0d          	popsp
 3ea:	04          	poppc
	...
Disassembly of section .init:

00000400 <_init>:
 400:	81          	im 1
 401:	d4          	im -44
 402:	3f          	callpcrel
 403:	95          	im 21
 404:	e3          	im -29
 405:	3f          	callpcrel
 406:	04          	poppc
Disassembly of section .text:

00000407 <_ashiftleftBegin>:
 407:	10          	addsp 0
 408:	10          	addsp 0
 409:	10          	addsp 0
 40a:	10          	addsp 0
 40b:	10          	addsp 0
 40c:	10          	addsp 0
 40d:	10          	addsp 0
 40e:	10          	addsp 0
 40f:	10          	addsp 0
 410:	10          	addsp 0
 411:	10          	addsp 0
 412:	10          	addsp 0
 413:	10          	addsp 0
 414:	10          	addsp 0
 415:	10          	addsp 0
 416:	10          	addsp 0
 417:	10          	addsp 0
 418:	10          	addsp 0
 419:	10          	addsp 0
 41a:	10          	addsp 0
 41b:	10          	addsp 0
 41c:	10          	addsp 0
 41d:	10          	addsp 0
 41e:	10          	addsp 0
 41f:	10          	addsp 0
 420:	10          	addsp 0
 421:	10          	addsp 0
 422:	10          	addsp 0
 423:	10          	addsp 0
 424:	10          	addsp 0
 425:	10          	addsp 0

00000426 <_ashiftleftEnd>:
 426:	53          	storesp 12
 427:	51          	storesp 4
 428:	04          	poppc

00000429 <_storebtail>:
 429:	73          	loadsp 12
 42a:	81          	im 1
 42b:	ff          	im -1
 42c:	06          	and
 42d:	73          	loadsp 12
 42e:	83          	im 3
 42f:	06          	and
 430:	09          	not
 431:	81          	im 1
 432:	05          	add
 433:	83          	im 3
 434:	05          	add
 435:	10          	addsp 0
 436:	10          	addsp 0
 437:	10          	addsp 0
 438:	2b          	ashiftleft
 439:	07          	or
 43a:	72          	loadsp 8
 43b:	fc          	im -4
 43c:	06          	and
 43d:	0c          	store
 43e:	51          	storesp 4
 43f:	51          	storesp 4
 440:	04          	poppc

00000441 <_syscall>:
 441:	3c          	syscall
 442:	04          	poppc

00000443 <_slowmultImpl>:
 443:	72          	loadsp 8
 444:	72          	loadsp 8
 445:	80          	im 0
 446:	72          	loadsp 8
 447:	81          	im 1
 448:	06          	and
 449:	ff          	im -1
 44a:	05          	add
 44b:	09          	not
 44c:	72          	loadsp 8
 44d:	06          	and
 44e:	05          	add
 44f:	71          	loadsp 4
 450:	10          	addsp 0
 451:	52          	storesp 8
 452:	72          	loadsp 8
 453:	0a          	flip
 454:	10          	addsp 0
 455:	0a          	flip
 456:	53          	storesp 12
 457:	72          	loadsp 8
 458:	ed          	im -19
 459:	38          	neqbranch
 45a:	51          	storesp 4
 45b:	51          	storesp 4
 45c:	53          	storesp 12
 45d:	51          	storesp 4
 45e:	04          	poppc

0000045f <___mod>:
 45f:	88          	im 8
 460:	08          	load
 461:	8c          	im 12
 462:	08          	load
 463:	90          	im 16
 464:	08          	load
 465:	75          	loadsp 20
 466:	75          	loadsp 20
 467:	99          	im 25
 468:	96          	im 22
 469:	2d          	call
 46a:	50          	storesp 0
 46b:	50          	storesp 0
 46c:	88          	im 8
 46d:	08          	load
 46e:	56          	storesp 24
 46f:	90          	im 16
 470:	0c          	store
 471:	8c          	im 12
 472:	0c          	store
 473:	88          	im 8
 474:	0c          	store
 475:	51          	storesp 4
 476:	04          	poppc

00000477 <___div>:
 477:	88          	im 8
 478:	08          	load
 479:	8c          	im 12
 47a:	08          	load
 47b:	90          	im 16
 47c:	08          	load
 47d:	75          	loadsp 20
 47e:	75          	loadsp 20
 47f:	98          	im 24
 480:	d2          	im -46
 481:	2d          	call
 482:	50          	storesp 0
 483:	50          	storesp 0
 484:	88          	im 8
 485:	08          	load
 486:	56          	storesp 24
 487:	90          	im 16
 488:	0c          	store
 489:	8c          	im 12
 48a:	0c          	store
 48b:	88          	im 8
 48c:	0c          	store
 48d:	51          	storesp 4
 48e:	04          	poppc
 48f:	88          	im 8
 490:	08          	load
 491:	8c          	im 12
 492:	08          	load
 493:	90          	im 16
 494:	08          	load
 495:	8d          	im 13
 496:	f5          	im -11
 497:	2d          	call
 498:	90          	im 16
 499:	0c          	store
 49a:	8c          	im 12
 49b:	0c          	store
 49c:	88          	im 8
 49d:	0c          	store
 49e:	04          	poppc

0000049f <__do_global_dtors_aux>:
 49f:	ff          	im -1
 4a0:	3d          	pushspadd
 4a1:	0d          	popsp
 4a2:	0b          	nop
 4a3:	0b          	nop
 4a4:	0b          	nop
 4a5:	9e          	im 30
 4a6:	ec          	im -20
 4a7:	33          	loadb
 4a8:	51          	storesp 4
 4a9:	70          	loadsp 0
 4aa:	a6          	im 38
 4ab:	38          	neqbranch
 4ac:	9e          	im 30
 4ad:	e8          	im -24
 4ae:	08          	load
 4af:	70          	loadsp 0
 4b0:	08          	load
 4b1:	52          	storesp 8
 4b2:	52          	storesp 8
 4b3:	70          	loadsp 0
 4b4:	80          	im 0
 4b5:	2e          	eq
 4b6:	92          	im 18
 4b7:	38          	neqbranch

000004b8 <.L10>:
 4b8:	84          	im 4
 4b9:	12          	addsp 8
 4ba:	9e          	im 30
 4bb:	e8          	im -24
 4bc:	0c          	store
 4bd:	70          	loadsp 0
 4be:	2d          	call
 4bf:	9e          	im 30
 4c0:	e8          	im -24
 4c1:	08          	load
 4c2:	70          	loadsp 0
 4c3:	08          	load
 4c4:	52          	storesp 8
 4c5:	52          	storesp 8
 4c6:	70          	loadsp 0
 4c7:	f0          	im -16
 4c8:	38          	neqbranch

000004c9 <.L7>:
 4c9:	81          	im 1
 4ca:	0b          	nop
 4cb:	0b          	nop
 4cc:	0b          	nop
 4cd:	0b          	nop
 4ce:	9e          	im 30
 4cf:	ec          	im -20
 4d0:	34          	storeb

000004d1 <.L1>:
 4d1:	83          	im 3
 4d2:	3d          	pushspadd
 4d3:	0d          	popsp
 4d4:	04          	poppc

000004d5 <call___do_global_dtors_aux>:
 4d5:	04          	poppc

000004d6 <frame_dummy>:
 4d6:	80          	im 0
 4d7:	3d          	pushspadd
 4d8:	0d          	popsp
 4d9:	0b          	nop
 4da:	0b          	nop
 4db:	0b          	nop
 4dc:	9f          	im 31
 4dd:	98          	im 24
 4de:	08          	load
 4df:	80          	im 0
 4e0:	2e          	eq
 4e1:	8e          	im 14
 4e2:	38          	neqbranch
 4e3:	0b          	nop
 4e4:	0b          	nop
 4e5:	0b          	nop
 4e6:	0b          	nop
 4e7:	80          	im 0
 4e8:	0b          	nop
 4e9:	80          	im 0
 4ea:	2e          	eq
 4eb:	09          	not
 4ec:	81          	im 1
 4ed:	06          	and
 4ee:	85          	im 5
 4ef:	38          	neqbranch

000004f0 <.L12>:
 4f0:	82          	im 2
 4f1:	3d          	pushspadd
 4f2:	0d          	popsp
 4f3:	04          	poppc

000004f4 <.L15>:
 4f4:	0b          	nop
 4f5:	0b          	nop
 4f6:	0b          	nop
 4f7:	9f          	im 31
 4f8:	98          	im 24
 4f9:	51          	storesp 4
 4fa:	0b          	nop
 4fb:	0b          	nop
 4fc:	0b          	nop
 4fd:	f6          	im -10
 4fe:	81          	im 1
 4ff:	3f          	callpcrel
 500:	82          	im 2
 501:	3d          	pushspadd
 502:	0d          	popsp
 503:	04          	poppc

00000504 <call_frame_dummy>:
 504:	04          	poppc

00000505 <_Z5flushv>:
 505:	ff          	im -1
 506:	3d          	pushspadd
 507:	0d          	popsp
 508:	80          	im 0
 509:	c4          	im -60
 50a:	80          	im 0
 50b:	80          	im 0
 50c:	84          	im 4
 50d:	52          	storesp 8

0000050e <.L2>:
 50e:	71          	loadsp 4
 50f:	08          	load
 510:	70          	loadsp 0
 511:	82          	im 2
 512:	2a          	lshiftright
 513:	70          	loadsp 0
 514:	81          	im 1
 515:	06          	and
 516:	51          	storesp 4
 517:	51          	storesp 4
 518:	51          	storesp 4
 519:	70          	loadsp 0
 51a:	f3          	im -13
 51b:	38          	neqbranch
 51c:	83          	im 3
 51d:	3d          	pushspadd
 51e:	0d          	popsp
 51f:	04          	poppc

00000520 <_Z7outbytei>:
 520:	ff          	im -1
 521:	3d          	pushspadd
 522:	0d          	popsp
 523:	80          	im 0
 524:	c4          	im -60
 525:	80          	im 0
 526:	80          	im 0
 527:	84          	im 4
 528:	52          	storesp 8

00000529 <.L6>:
 529:	71          	loadsp 4
 52a:	08          	load
 52b:	70          	loadsp 0
 52c:	81          	im 1
 52d:	2a          	lshiftright
 52e:	70          	loadsp 0
 52f:	81          	im 1
 530:	06          	and
 531:	51          	storesp 4
 532:	51          	storesp 4
 533:	51          	storesp 4
 534:	70          	loadsp 0
 535:	f3          	im -13
 536:	38          	neqbranch
 537:	73          	loadsp 12
 538:	82          	im 2
 539:	90          	im 16
 53a:	0a          	flip
 53b:	0c          	store
 53c:	83          	im 3
 53d:	3d          	pushspadd
 53e:	0d          	popsp
 53f:	04          	poppc

00000540 <_Z8sendBytej>:
 540:	fe          	im -2
 541:	3d          	pushspadd
 542:	0d          	popsp
 543:	74          	loadsp 16
 544:	70          	loadsp 0
 545:	80          	im 0
 546:	dc          	im -36
 547:	80          	im 0
 548:	80          	im 0
 549:	88          	im 8
 54a:	0c          	store
 54b:	70          	loadsp 0
 54c:	81          	im 1
 54d:	ff          	im -1
 54e:	06          	and
 54f:	ff          	im -1
 550:	83          	im 3
 551:	11          	addsp 4
 552:	54          	storesp 16
 553:	51          	storesp 4
 554:	53          	storesp 12
 555:	71          	loadsp 4
 556:	81          	im 1
 557:	26          	ulessthan
 558:	8d          	im 13
 559:	38          	neqbranch
 55a:	80          	im 0
 55b:	fd          	im -3
 55c:	51          	storesp 4
 55d:	8a          	im 10
 55e:	a0          	im 32
 55f:	2d          	call
 560:	72          	loadsp 8
 561:	a0          	im 32
 562:	32          	xor
 563:	51          	storesp 4
 564:	83          	im 3
 565:	39          	poppcrel

00000566 <.L23>:
 566:	72          	loadsp 8
 567:	51          	storesp 4

00000568 <.L25>:
 568:	8a          	im 10
 569:	a0          	im 32
 56a:	2d          	call
 56b:	84          	im 4
 56c:	3d          	pushspadd
 56d:	0d          	popsp
 56e:	04          	poppc

0000056f <_Z11prepareSendv>:
 56f:	80          	im 0
 570:	3d          	pushspadd
 571:	0d          	popsp
 572:	83          	im 3
 573:	ff          	im -1
 574:	ff          	im -1
 575:	0b          	nop
 576:	83          	im 3
 577:	d0          	im -48
 578:	0a          	flip
 579:	0c          	store
 57a:	80          	im 0
 57b:	fe          	im -2
 57c:	51          	storesp 4
 57d:	8a          	im 10
 57e:	a0          	im 32
 57f:	2d          	call
 580:	82          	im 2
 581:	3d          	pushspadd
 582:	0d          	popsp
 583:	04          	poppc

00000584 <_Z10finishSendv>:
 584:	ff          	im -1
 585:	3d          	pushspadd
 586:	0d          	popsp
 587:	83          	im 3
 588:	d0          	im -48
 589:	0a          	flip
 58a:	08          	load
 58b:	70          	loadsp 0
 58c:	88          	im 8
 58d:	2a          	lshiftright
 58e:	52          	storesp 8
 58f:	52          	storesp 8
 590:	8a          	im 10
 591:	c0          	im -64
 592:	2d          	call
 593:	71          	loadsp 4
 594:	81          	im 1
 595:	ff          	im -1
 596:	06          	and
 597:	51          	storesp 4
 598:	8a          	im 10
 599:	c0          	im -64
 59a:	2d          	call
 59b:	80          	im 0
 59c:	fe          	im -2
 59d:	51          	storesp 4
 59e:	8a          	im 10
 59f:	a0          	im 32
 5a0:	2d          	call
 5a1:	83          	im 3
 5a2:	3d          	pushspadd
 5a3:	0d          	popsp
 5a4:	04          	poppc

000005a5 <_Z11enableTimerv>:
 5a5:	82          	im 2
 5a6:	f6          	im -10
 5a7:	ff          	im -1
 5a8:	0b          	nop
 5a9:	80          	im 0
 5aa:	cc          	im -52
 5ab:	80          	im 0
 5ac:	80          	im 0
 5ad:	88          	im 8
 5ae:	0c          	store
 5af:	80          	im 0
 5b0:	0b          	nop
 5b1:	80          	im 0
 5b2:	cc          	im -52
 5b3:	80          	im 0
 5b4:	80          	im 0
 5b5:	84          	im 4
 5b6:	0c          	store
 5b7:	9f          	im 31
 5b8:	0b          	nop
 5b9:	83          	im 3
 5ba:	90          	im 16
 5bb:	0a          	flip
 5bc:	0c          	store
 5bd:	04          	poppc

000005be <_Z11spi_disablePVj>:
 5be:	ff          	im -1
 5bf:	3d          	pushspadd
 5c0:	0d          	popsp
 5c1:	73          	loadsp 12
 5c2:	70          	loadsp 0
 5c3:	08          	load
 5c4:	51          	storesp 4
 5c5:	51          	storesp 4
 5c6:	80          	im 0
 5c7:	c8          	im -56
 5c8:	80          	im 0
 5c9:	80          	im 0
 5ca:	84          	im 4
 5cb:	70          	loadsp 0
 5cc:	08          	load
 5cd:	70          	loadsp 0
 5ce:	84          	im 4
 5cf:	80          	im 0
 5d0:	80          	im 0
 5d1:	07          	or
 5d2:	72          	loadsp 8
 5d3:	0c          	store
 5d4:	52          	storesp 8
 5d5:	52          	storesp 8
 5d6:	83          	im 3
 5d7:	3d          	pushspadd
 5d8:	0d          	popsp
 5d9:	04          	poppc

000005da <_Z10spi_enablev>:
 5da:	ff          	im -1
 5db:	3d          	pushspadd
 5dc:	0d          	popsp
 5dd:	80          	im 0
 5de:	c8          	im -56
 5df:	80          	im 0
 5e0:	80          	im 0
 5e1:	84          	im 4
 5e2:	70          	loadsp 0
 5e3:	08          	load
 5e4:	70          	loadsp 0
 5e5:	fb          	im -5
 5e6:	ff          	im -1
 5e7:	ff          	im -1
 5e8:	06          	and
 5e9:	72          	loadsp 8
 5ea:	0c          	store
 5eb:	52          	storesp 8
 5ec:	52          	storesp 8
 5ed:	83          	im 3
 5ee:	3d          	pushspadd
 5ef:	0d          	popsp
 5f0:	04          	poppc

000005f1 <start>:
 5f1:	a0          	im 32
 5f2:	90          	im 16
 5f3:	0b          	nop
 5f4:	a0          	im 32
 5f5:	80          	im 0
 5f6:	0c          	store
 5f7:	9e          	im 30
 5f8:	f0          	im -16
 5f9:	0b          	nop
 5fa:	a0          	im 32
 5fb:	84          	im 4
 5fc:	0c          	store
 5fd:	98          	im 24
 5fe:	cb          	im -53
 5ff:	2d          	call

00000600 <_Z15start_read_sizePVj>:
 600:	ff          	im -1
 601:	3d          	pushspadd
 602:	0d          	popsp
 603:	73          	loadsp 12
 604:	51          	storesp 4
 605:	8b          	im 11
 606:	71          	loadsp 4
 607:	0c          	store
 608:	90          	im 16
 609:	11          	addsp 4
 60a:	52          	storesp 8
 60b:	91          	im 17
 60c:	c0          	im -64
 60d:	80          	im 0
 60e:	72          	loadsp 8
 60f:	0c          	store
 610:	80          	im 0
 611:	72          	loadsp 8
 612:	0c          	store
 613:	70          	loadsp 0
 614:	08          	load
 615:	83          	im 3
 616:	ff          	im -1
 617:	ff          	im -1
 618:	06          	and
 619:	88          	im 8
 61a:	0c          	store
 61b:	83          	im 3
 61c:	3d          	pushspadd
 61d:	0d          	popsp
 61e:	04          	poppc

0000061f <copy_sketch>:
 61f:	fa          	im -6
 620:	3d          	pushspadd
 621:	0d          	popsp
 622:	78          	loadsp 32
 623:	7a          	loadsp 40
 624:	7d          	loadsp 52
 625:	ff          	im -1
 626:	1e          	addsp 56
 627:	57          	storesp 28
 628:	57          	storesp 28
 629:	58          	storesp 32
 62a:	53          	storesp 12
 62b:	73          	loadsp 12
 62c:	ff          	im -1
 62d:	2e          	eq
 62e:	a7          	im 39
 62f:	38          	neqbranch
 630:	80          	im 0
 631:	56          	storesp 24

00000632 <.L68>:
 632:	84          	im 4
 633:	52          	storesp 8

00000634 <.L65>:
 634:	75          	loadsp 20
 635:	73          	loadsp 12
 636:	0c          	store
 637:	72          	loadsp 8
 638:	08          	load
 639:	88          	im 8
 63a:	18          	addsp 32
 63b:	0c          	store
 63c:	ff          	im -1
 63d:	12          	addsp 8
 63e:	52          	storesp 8
 63f:	71          	loadsp 4
 640:	f3          	im -13
 641:	38          	neqbranch
 642:	74          	loadsp 16
 643:	84          	im 4
 644:	16          	addsp 24
 645:	74          	loadsp 16
 646:	08          	load
 647:	72          	loadsp 8
 648:	0c          	store
 649:	ff          	im -1
 64a:	16          	addsp 24
 64b:	56          	storesp 24
 64c:	56          	storesp 24
 64d:	52          	storesp 8
 64e:	73          	loadsp 12
 64f:	ff          	im -1
 650:	2e          	eq
 651:	09          	not
 652:	81          	im 1
 653:	06          	and
 654:	dd          	im -35
 655:	38          	neqbranch

00000656 <.L70>:
 656:	88          	im 8
 657:	3d          	pushspadd
 658:	0d          	popsp
 659:	04          	poppc

0000065a <spi_copy_impl>:
 65a:	f8          	im -8
 65b:	3d          	pushspadd
 65c:	0d          	popsp
 65d:	80          	im 0
 65e:	c0          	im -64
 65f:	80          	im 0
 660:	80          	im 0
 661:	84          	im 4
 662:	57          	storesp 28
 663:	83          	im 3
 664:	d0          	im -48
 665:	0a          	flip
 666:	59          	storesp 36
 667:	8b          	im 11
 668:	da          	im -38
 669:	2d          	call
 66a:	76          	loadsp 24
 66b:	51          	storesp 4
 66c:	8c          	im 12
 66d:	80          	im 0
 66e:	2d          	call
 66f:	9e          	im 30
 670:	f0          	im -16
 671:	70          	loadsp 0
 672:	88          	im 8
 673:	08          	load
 674:	10          	addsp 0
 675:	10          	addsp 0
 676:	91          	im 17
 677:	c0          	im -64
 678:	84          	im 4
 679:	05          	add
 67a:	71          	loadsp 4
 67b:	70          	loadsp 0
 67c:	84          	im 4
 67d:	05          	add
 67e:	53          	storesp 12
 67f:	0c          	store
 680:	56          	storesp 24
 681:	56          	storesp 24
 682:	fb          	im -5
 683:	80          	im 0
 684:	84          	im 4
 685:	a1          	im 33
 686:	ad          	im 45
 687:	75          	loadsp 20
 688:	0c          	store
 689:	9e          	im 30
 68a:	cc          	im -52
 68b:	0b          	nop
 68c:	88          	im 8
 68d:	17          	addsp 28
 68e:	0c          	store
 68f:	80          	im 0
 690:	70          	loadsp 0
 691:	78          	loadsp 32
 692:	0c          	store
 693:	77          	loadsp 28
 694:	0c          	store
 695:	76          	loadsp 24
 696:	08          	load
 697:	83          	im 3
 698:	ff          	im -1
 699:	ff          	im -1
 69a:	06          	and
 69b:	56          	storesp 24
 69c:	81          	im 1
 69d:	df          	im -33
 69e:	80          	im 0
 69f:	0b          	nop
 6a0:	88          	im 8
 6a1:	08          	load
 6a2:	27          	ulessthanorequal
 6a3:	83          	im 3
 6a4:	38          	neqbranch

000006a5 <.L81>:
 6a5:	ff          	im -1
 6a6:	39          	poppcrel

000006a7 <.L80>:
 6a7:	83          	im 3
 6a8:	ff          	im -1
 6a9:	ff          	im -1
 6aa:	79          	loadsp 36
 6ab:	0c          	store
 6ac:	a0          	im 32
 6ad:	80          	im 0
 6ae:	54          	storesp 16
 6af:	88          	im 8
 6b0:	08          	load
 6b1:	53          	storesp 12
 6b2:	78          	loadsp 32
 6b3:	52          	storesp 8
 6b4:	76          	loadsp 24
 6b5:	51          	storesp 4
 6b6:	8c          	im 12
 6b7:	9f          	im 31
 6b8:	2d          	call
 6b9:	76          	loadsp 24
 6ba:	51          	storesp 4
 6bb:	8b          	im 11
 6bc:	be          	im 62
 6bd:	2d          	call
 6be:	78          	loadsp 32
 6bf:	08          	load
 6c0:	55          	storesp 20
 6c1:	74          	loadsp 16
 6c2:	76          	loadsp 24
 6c3:	2e          	eq
 6c4:	89          	im 9
 6c5:	38          	neqbranch
 6c6:	80          	im 0
 6c7:	c3          	im -61
 6c8:	51          	storesp 4
 6c9:	8a          	im 10
 6ca:	a0          	im 32
 6cb:	2d          	call

000006cc <.L84>:
 6cc:	ff          	im -1
 6cd:	39          	poppcrel

000006ce <.L83>:
 6ce:	a0          	im 32
 6cf:	84          	im 4
 6d0:	08          	load
 6d1:	55          	storesp 20
 6d2:	74          	loadsp 16
 6d3:	fa          	im -6
 6d4:	a0          	im 32
 6d5:	84          	im 4
 6d6:	9e          	im 30
 6d7:	80          	im 0
 6d8:	2e          	eq
 6d9:	89          	im 9
 6da:	38          	neqbranch
 6db:	80          	im 0
 6dc:	c2          	im -62
 6dd:	51          	storesp 4
 6de:	8a          	im 10
 6df:	a0          	im 32
 6e0:	2d          	call

000006e1 <.L87>:
 6e1:	ff          	im -1
 6e2:	39          	poppcrel

000006e3 <.L86>:
 6e3:	90          	im 16
 6e4:	0a          	flip
 6e5:	70          	loadsp 0
 6e6:	08          	load
 6e7:	70          	loadsp 0
 6e8:	ff          	im -1
 6e9:	bf          	im 63
 6ea:	06          	and
 6eb:	72          	loadsp 8
 6ec:	0c          	store
 6ed:	56          	storesp 24
 6ee:	56          	storesp 24
 6ef:	8a          	im 10
 6f0:	85          	im 5
 6f1:	2d          	call
 6f2:	8b          	im 11
 6f3:	f1          	im -15
 6f4:	2d          	call

000006f5 <_zpu_interrupt>:
 6f5:	ff          	im -1
 6f6:	3d          	pushspadd
 6f7:	0d          	popsp
 6f8:	9e          	im 30
 6f9:	fc          	im -4
 6fa:	08          	load
 6fb:	81          	im 1
 6fc:	11          	addsp 4
 6fd:	9e          	im 30
 6fe:	fc          	im -4
 6ff:	0c          	store
 700:	51          	storesp 4
 701:	83          	im 3
 702:	90          	im 16
 703:	0a          	flip
 704:	70          	loadsp 0
 705:	08          	load
 706:	70          	loadsp 0
 707:	fe          	im -2
 708:	ff          	im -1
 709:	06          	and
 70a:	72          	loadsp 8
 70b:	0c          	store
 70c:	52          	storesp 8
 70d:	52          	storesp 8
 70e:	83          	im 3
 70f:	3d          	pushspadd
 710:	0d          	popsp
 711:	04          	poppc

00000712 <_Z11simpleReplyj>:
 712:	80          	im 0
 713:	3d          	pushspadd
 714:	0d          	popsp
 715:	8a          	im 10
 716:	ef          	im -17
 717:	2d          	call
 718:	72          	loadsp 8
 719:	81          	im 1
 71a:	80          	im 0
 71b:	07          	or
 71c:	51          	storesp 4
 71d:	8a          	im 10
 71e:	c0          	im -64
 71f:	2d          	call
 720:	8b          	im 11
 721:	84          	im 4
 722:	2d          	call
 723:	82          	im 2
 724:	3d          	pushspadd
 725:	0d          	popsp
 726:	04          	poppc

00000727 <_Z15spi_read_statusv>:
 727:	fe          	im -2
 728:	3d          	pushspadd
 729:	0d          	popsp
 72a:	80          	im 0
 72b:	c0          	im -64
 72c:	80          	im 0
 72d:	80          	im 0
 72e:	84          	im 4
 72f:	53          	storesp 12
 730:	8b          	im 11
 731:	da          	im -38
 732:	2d          	call
 733:	85          	im 5
 734:	73          	loadsp 12
 735:	0c          	store
 736:	80          	im 0
 737:	73          	loadsp 12
 738:	0c          	store
 739:	72          	loadsp 8
 73a:	08          	load
 73b:	70          	loadsp 0
 73c:	81          	im 1
 73d:	ff          	im -1
 73e:	06          	and
 73f:	74          	loadsp 16
 740:	53          	storesp 12
 741:	51          	storesp 4
 742:	52          	storesp 8
 743:	8b          	im 11
 744:	be          	im 62
 745:	2d          	call
 746:	71          	loadsp 4
 747:	88          	im 8
 748:	0c          	store
 749:	84          	im 4
 74a:	3d          	pushspadd
 74b:	0d          	popsp
 74c:	04          	poppc

0000074d <_Z11cmd_progmemPh>:
 74d:	fc          	im -4
 74e:	3d          	pushspadd
 74f:	0d          	popsp
 750:	76          	loadsp 24
 751:	81          	im 1
 752:	11          	addsp 4
 753:	33          	loadb
 754:	82          	im 2
 755:	12          	addsp 8
 756:	33          	loadb
 757:	71          	loadsp 4
 758:	81          	im 1
 759:	80          	im 0
 75a:	0a          	flip
 75b:	29          	mult
 75c:	71          	loadsp 4
 75d:	84          	im 4
 75e:	80          	im 0
 75f:	80          	im 0
 760:	29          	mult
 761:	05          	add
 762:	83          	im 3
 763:	14          	addsp 16
 764:	33          	loadb
 765:	70          	loadsp 0
 766:	82          	im 2
 767:	80          	im 0
 768:	29          	mult
 769:	12          	addsp 8
 76a:	84          	im 4
 76b:	16          	addsp 24
 76c:	33          	loadb
 76d:	52          	storesp 8
 76e:	71          	loadsp 4
 76f:	05          	add
 770:	a0          	im 32
 771:	80          	im 0
 772:	05          	add
 773:	86          	im 6
 774:	16          	addsp 24
 775:	85          	im 5
 776:	17          	addsp 28
 777:	33          	loadb
 778:	57          	storesp 28
 779:	52          	storesp 8
 77a:	53          	storesp 12
 77b:	53          	storesp 12
 77c:	55          	storesp 20
 77d:	57          	storesp 28
 77e:	55          	storesp 20
 77f:	53          	storesp 12

00000780 <.L106>:
 780:	ff          	im -1
 781:	13          	addsp 12
 782:	53          	storesp 12
 783:	72          	loadsp 8
 784:	ff          	im -1
 785:	2e          	eq
 786:	91          	im 17
 787:	38          	neqbranch
 788:	73          	loadsp 12
 789:	70          	loadsp 0
 78a:	81          	im 1
 78b:	05          	add
 78c:	55          	storesp 20
 78d:	33          	loadb
 78e:	52          	storesp 8
 78f:	71          	loadsp 4
 790:	75          	loadsp 20
 791:	70          	loadsp 0
 792:	81          	im 1
 793:	05          	add
 794:	57          	storesp 28
 795:	34          	storeb
 796:	e9          	im -23
 797:	39          	poppcrel

00000798 <.L105>:
 798:	89          	im 9
 799:	51          	storesp 4
 79a:	8e          	im 14
 79b:	92          	im 18
 79c:	2d          	call
 79d:	86          	im 6
 79e:	3d          	pushspadd
 79f:	0d          	popsp
 7a0:	04          	poppc

000007a1 <_Z20cmd_raw_send_receivePh>:
 7a1:	f9          	im -7
 7a2:	3d          	pushspadd
 7a3:	0d          	popsp
 7a4:	79          	loadsp 36
 7a5:	57          	storesp 28
 7a6:	80          	im 0
 7a7:	c0          	im -64
 7a8:	80          	im 0
 7a9:	80          	im 0
 7aa:	84          	im 4
 7ab:	56          	storesp 24
 7ac:	8b          	im 11
 7ad:	da          	im -38
 7ae:	2d          	call
 7af:	81          	im 1
 7b0:	17          	addsp 28
 7b1:	33          	loadb
 7b2:	82          	im 2
 7b3:	18          	addsp 32
 7b4:	33          	loadb
 7b5:	71          	loadsp 4
 7b6:	82          	im 2
 7b7:	80          	im 0
 7b8:	29          	mult
 7b9:	05          	add
 7ba:	53          	storesp 12
 7bb:	53          	storesp 12
 7bc:	71          	loadsp 4
 7bd:	80          	im 0
 7be:	2e          	eq
 7bf:	94          	im 20
 7c0:	38          	neqbranch
 7c1:	85          	im 5
 7c2:	17          	addsp 28
 7c3:	72          	loadsp 8
 7c4:	55          	storesp 20
 7c5:	53          	storesp 12

000007c6 <.L113>:
 7c6:	72          	loadsp 8
 7c7:	70          	loadsp 0
 7c8:	81          	im 1
 7c9:	05          	add
 7ca:	54          	storesp 16
 7cb:	33          	loadb
 7cc:	76          	loadsp 24
 7cd:	0c          	store
 7ce:	ff          	im -1
 7cf:	14          	addsp 16
 7d0:	54          	storesp 16
 7d1:	73          	loadsp 12
 7d2:	f3          	im -13
 7d3:	38          	neqbranch

000007d4 <.L127>:
 7d4:	83          	im 3
 7d5:	17          	addsp 28
 7d6:	33          	loadb
 7d7:	84          	im 4
 7d8:	18          	addsp 32
 7d9:	33          	loadb
 7da:	71          	loadsp 4
 7db:	82          	im 2
 7dc:	80          	im 0
 7dd:	29          	mult
 7de:	05          	add
 7df:	56          	storesp 24
 7e0:	52          	storesp 8
 7e1:	80          	im 0
 7e2:	54          	storesp 16
 7e3:	73          	loadsp 12
 7e4:	75          	loadsp 20
 7e5:	27          	ulessthanorequal
 7e6:	97          	im 23
 7e7:	38          	neqbranch
 7e8:	73          	loadsp 12
 7e9:	58          	storesp 32

000007ea <.L121>:
 7ea:	77          	loadsp 28
 7eb:	76          	loadsp 24
 7ec:	0c          	store
 7ed:	73          	loadsp 12
 7ee:	17          	addsp 28
 7ef:	76          	loadsp 24
 7f0:	08          	load
 7f1:	53          	storesp 12
 7f2:	53          	storesp 12
 7f3:	71          	loadsp 4
 7f4:	73          	loadsp 12
 7f5:	34          	storeb
 7f6:	81          	im 1
 7f7:	14          	addsp 16
 7f8:	54          	storesp 16
 7f9:	74          	loadsp 16
 7fa:	74          	loadsp 16
 7fb:	26          	ulessthan
 7fc:	ed          	im -19
 7fd:	38          	neqbranch

000007fe <.L129>:
 7fe:	75          	loadsp 20
 7ff:	51          	storesp 4
 800:	8b          	im 11
 801:	be          	im 62
 802:	2d          	call
 803:	8a          	im 10
 804:	ef          	im -17
 805:	2d          	call
 806:	81          	im 1
 807:	84          	im 4
 808:	51          	storesp 4
 809:	8a          	im 10
 80a:	c0          	im -64
 80b:	2d          	call
 80c:	74          	loadsp 16
 80d:	88          	im 8
 80e:	2a          	lshiftright
 80f:	51          	storesp 4
 810:	8a          	im 10
 811:	c0          	im -64
 812:	2d          	call
 813:	74          	loadsp 16
 814:	51          	storesp 4
 815:	8a          	im 10
 816:	c0          	im -64
 817:	2d          	call
 818:	80          	im 0
 819:	54          	storesp 16

0000081a <.L132>:
 81a:	73          	loadsp 12
 81b:	75          	loadsp 20
 81c:	27          	ulessthanorequal
 81d:	8f          	im 15
 81e:	38          	neqbranch
 81f:	73          	loadsp 12
 820:	17          	addsp 28
 821:	70          	loadsp 0
 822:	33          	loadb
 823:	52          	storesp 8
 824:	52          	storesp 8
 825:	8a          	im 10
 826:	c0          	im -64
 827:	2d          	call
 828:	81          	im 1
 829:	14          	addsp 16
 82a:	54          	storesp 16
 82b:	ee          	im -18
 82c:	39          	poppcrel

0000082d <.L131>:
 82d:	8b          	im 11
 82e:	84          	im 4
 82f:	2d          	call
 830:	89          	im 9
 831:	3d          	pushspadd
 832:	0d          	popsp
 833:	04          	poppc

00000834 <_Z19cmd_sst_aai_programPh>:
 834:	f9          	im -7
 835:	3d          	pushspadd
 836:	0d          	popsp
 837:	79          	loadsp 36
 838:	56          	storesp 24
 839:	80          	im 0
 83a:	c0          	im -64
 83b:	80          	im 0
 83c:	80          	im 0
 83d:	84          	im 4
 83e:	55          	storesp 20
 83f:	8b          	im 11
 840:	da          	im -38
 841:	2d          	call
 842:	86          	im 6
 843:	75          	loadsp 20
 844:	0c          	store
 845:	74          	loadsp 16
 846:	51          	storesp 4
 847:	8b          	im 11
 848:	be          	im 62
 849:	2d          	call
 84a:	8b          	im 11
 84b:	da          	im -38
 84c:	2d          	call
 84d:	81          	im 1
 84e:	ad          	im 45
 84f:	70          	loadsp 0
 850:	76          	loadsp 24
 851:	0c          	store
 852:	81          	im 1
 853:	17          	addsp 28
 854:	33          	loadb
 855:	82          	im 2
 856:	18          	addsp 32
 857:	33          	loadb
 858:	71          	loadsp 4
 859:	82          	im 2
 85a:	80          	im 0
 85b:	29          	mult
 85c:	05          	add
 85d:	83          	im 3
 85e:	19          	addsp 36
 85f:	33          	loadb
 860:	78          	loadsp 32
 861:	0c          	store
 862:	84          	im 4
 863:	19          	addsp 36
 864:	33          	loadb
 865:	78          	loadsp 32
 866:	0c          	store
 867:	85          	im 5
 868:	19          	addsp 36
 869:	33          	loadb
 86a:	78          	loadsp 32
 86b:	0c          	store
 86c:	59          	storesp 36
 86d:	53          	storesp 12
 86e:	53          	storesp 12
 86f:	80          	im 0
 870:	54          	storesp 16
 871:	73          	loadsp 12
 872:	77          	loadsp 28
 873:	27          	ulessthanorequal
 874:	b3          	im 51
 875:	38          	neqbranch
 876:	72          	loadsp 8
 877:	58          	storesp 32

00000878 <.L157>:
 878:	73          	loadsp 12
 879:	80          	im 0
 87a:	2e          	eq
 87b:	87          	im 7
 87c:	38          	neqbranch
 87d:	8b          	im 11
 87e:	da          	im -38
 87f:	2d          	call
 880:	77          	loadsp 28
 881:	75          	loadsp 20
 882:	0c          	store

00000883 <.L147>:
 883:	73          	loadsp 12
 884:	16          	addsp 24
 885:	86          	im 6
 886:	11          	addsp 4
 887:	33          	loadb
 888:	76          	loadsp 24
 889:	0c          	store
 88a:	87          	im 7
 88b:	11          	addsp 4
 88c:	33          	loadb
 88d:	76          	loadsp 24
 88e:	0c          	store
 88f:	52          	storesp 8
 890:	74          	loadsp 16
 891:	51          	storesp 4
 892:	8b          	im 11
 893:	be          	im 62
 894:	2d          	call

00000895 <.L154>:
 895:	8e          	im 14
 896:	a7          	im 39
 897:	2d          	call
 898:	88          	im 8
 899:	08          	load
 89a:	81          	im 1
 89b:	06          	and
 89c:	52          	storesp 8
 89d:	71          	loadsp 4
 89e:	f6          	im -10
 89f:	38          	neqbranch
 8a0:	82          	im 2
 8a1:	14          	addsp 16
 8a2:	54          	storesp 16
 8a3:	76          	loadsp 24
 8a4:	74          	loadsp 16
 8a5:	26          	ulessthan
 8a6:	d1          	im -47
 8a7:	38          	neqbranch

000008a8 <.L161>:
 8a8:	8b          	im 11
 8a9:	da          	im -38
 8aa:	2d          	call
 8ab:	84          	im 4
 8ac:	75          	loadsp 20
 8ad:	0c          	store
 8ae:	74          	loadsp 16
 8af:	51          	storesp 4
 8b0:	8b          	im 11
 8b1:	be          	im 62
 8b2:	2d          	call
 8b3:	8a          	im 10
 8b4:	ef          	im -17
 8b5:	2d          	call
 8b6:	81          	im 1
 8b7:	87          	im 7
 8b8:	51          	storesp 4
 8b9:	8a          	im 10
 8ba:	c0          	im -64
 8bb:	2d          	call
 8bc:	8b          	im 11
 8bd:	84          	im 4
 8be:	2d          	call
 8bf:	89          	im 9
 8c0:	3d          	pushspadd
 8c1:	0d          	popsp
 8c2:	04          	poppc

000008c3 <_Z16cmd_set_baudratePh>:
 8c3:	fc          	im -4
 8c4:	3d          	pushspadd
 8c5:	0d          	popsp
 8c6:	76          	loadsp 24
 8c7:	81          	im 1
 8c8:	11          	addsp 4
 8c9:	33          	loadb
 8ca:	82          	im 2
 8cb:	12          	addsp 8
 8cc:	33          	loadb
 8cd:	71          	loadsp 4
 8ce:	90          	im 16
 8cf:	2b          	ashiftleft
 8d0:	71          	loadsp 4
 8d1:	88          	im 8
 8d2:	2b          	ashiftleft
 8d3:	07          	or
 8d4:	83          	im 3
 8d5:	14          	addsp 16
 8d6:	33          	loadb
 8d7:	70          	loadsp 0
 8d8:	72          	loadsp 8
 8d9:	07          	or
 8da:	88          	im 8
 8db:	2b          	ashiftleft
 8dc:	84          	im 4
 8dd:	16          	addsp 24
 8de:	33          	loadb
 8df:	71          	loadsp 4
 8e0:	07          	or
 8e1:	51          	storesp 4
 8e2:	52          	storesp 8
 8e3:	53          	storesp 12
 8e4:	57          	storesp 28
 8e5:	57          	storesp 28
 8e6:	54          	storesp 16
 8e7:	52          	storesp 8
 8e8:	88          	im 8
 8e9:	51          	storesp 4
 8ea:	8e          	im 14
 8eb:	92          	im 18
 8ec:	2d          	call
 8ed:	81          	im 1
 8ee:	ff          	im -1
 8ef:	51          	storesp 4
 8f0:	8a          	im 10
 8f1:	a0          	im 32
 8f2:	2d          	call
 8f3:	80          	im 0
 8f4:	c4          	im -60
 8f5:	80          	im 0
 8f6:	80          	im 0
 8f7:	84          	im 4
 8f8:	53          	storesp 12

000008f9 <.L163>:
 8f9:	72          	loadsp 8
 8fa:	08          	load
 8fb:	70          	loadsp 0
 8fc:	81          	im 1
 8fd:	2a          	lshiftright
 8fe:	70          	loadsp 0
 8ff:	81          	im 1
 900:	06          	and
 901:	51          	storesp 4
 902:	51          	storesp 4
 903:	52          	storesp 8
 904:	71          	loadsp 4
 905:	f3          	im -13
 906:	38          	neqbranch
 907:	73          	loadsp 12
 908:	84          	im 4
 909:	80          	im 0
 90a:	80          	im 0
 90b:	07          	or
 90c:	80          	im 0
 90d:	c4          	im -60
 90e:	80          	im 0
 90f:	80          	im 0
 910:	84          	im 4
 911:	0c          	store
 912:	86          	im 6
 913:	3d          	pushspadd
 914:	0d          	popsp
 915:	04          	poppc

00000916 <_Z13cmd_waitreadyPh>:
 916:	fe          	im -2
 917:	3d          	pushspadd
 918:	0d          	popsp

00000919 <.L173>:
 919:	8e          	im 14
 91a:	a7          	im 39
 91b:	2d          	call
 91c:	88          	im 8
 91d:	08          	load
 91e:	88          	im 8
 91f:	08          	load
 920:	81          	im 1
 921:	06          	and
 922:	53          	storesp 12
 923:	53          	storesp 12
 924:	71          	loadsp 4
 925:	f3          	im -13
 926:	38          	neqbranch
 927:	8a          	im 10
 928:	ef          	im -17
 929:	2d          	call
 92a:	81          	im 1
 92b:	83          	im 3
 92c:	51          	storesp 4
 92d:	8a          	im 10
 92e:	c0          	im -64
 92f:	2d          	call
 930:	72          	loadsp 8
 931:	51          	storesp 4
 932:	8a          	im 10
 933:	c0          	im -64
 934:	2d          	call
 935:	8b          	im 11
 936:	84          	im 4
 937:	2d          	call
 938:	84          	im 4
 939:	3d          	pushspadd
 93a:	0d          	popsp
 93b:	04          	poppc

0000093c <_Z11cmd_versionPh>:
 93c:	fe          	im -2
 93d:	3d          	pushspadd
 93e:	0d          	popsp
 93f:	80          	im 0
 940:	0b          	nop
 941:	9e          	im 30
 942:	fc          	im -4
 943:	0c          	store
 944:	8a          	im 10
 945:	ef          	im -17
 946:	2d          	call
 947:	81          	im 1
 948:	81          	im 1
 949:	51          	storesp 4
 94a:	8a          	im 10
 94b:	c0          	im -64
 94c:	2d          	call
 94d:	9e          	im 30
 94e:	cc          	im -52
 94f:	53          	storesp 12
 950:	8f          	im 15
 951:	52          	storesp 8

00000952 <.L179>:
 952:	72          	loadsp 8
 953:	70          	loadsp 0
 954:	81          	im 1
 955:	05          	add
 956:	54          	storesp 16
 957:	33          	loadb
 958:	51          	storesp 4
 959:	8a          	im 10
 95a:	c0          	im -64
 95b:	2d          	call
 95c:	ff          	im -1
 95d:	12          	addsp 8
 95e:	52          	storesp 8
 95f:	71          	loadsp 4
 960:	ff          	im -1
 961:	2e          	eq
 962:	09          	not
 963:	81          	im 1
 964:	06          	and
 965:	ec          	im -20
 966:	38          	neqbranch
 967:	8b          	im 11
 968:	84          	im 4
 969:	2d          	call
 96a:	84          	im 4
 96b:	3d          	pushspadd
 96c:	0d          	popsp
 96d:	04          	poppc

0000096e <_Z12cmd_identifyPh>:
 96e:	fe          	im -2
 96f:	3d          	pushspadd
 970:	0d          	popsp
 971:	80          	im 0
 972:	0b          	nop
 973:	9e          	im 30
 974:	fc          	im -4
 975:	0c          	store
 976:	8a          	im 10
 977:	ef          	im -17
 978:	2d          	call
 979:	81          	im 1
 97a:	82          	im 2
 97b:	51          	storesp 4
 97c:	8a          	im 10
 97d:	c0          	im -64
 97e:	2d          	call
 97f:	80          	im 0
 980:	c0          	im -64
 981:	80          	im 0
 982:	80          	im 0
 983:	84          	im 4
 984:	52          	storesp 8
 985:	8b          	im 11
 986:	da          	im -38
 987:	2d          	call
 988:	81          	im 1
 989:	f9          	im -7
 98a:	0a          	flip
 98b:	0b          	nop
 98c:	80          	im 0
 98d:	c0          	im -64
 98e:	80          	im 0
 98f:	80          	im 0
 990:	9c          	im 28
 991:	0c          	store
 992:	71          	loadsp 4
 993:	08          	load
 994:	72          	loadsp 8
 995:	52          	storesp 8
 996:	53          	storesp 12
 997:	8b          	im 11
 998:	be          	im 62
 999:	2d          	call
 99a:	72          	loadsp 8
 99b:	9f          	im 31
 99c:	84          	im 4
 99d:	0c          	store
 99e:	72          	loadsp 8
 99f:	90          	im 16
 9a0:	2a          	lshiftright
 9a1:	51          	storesp 4
 9a2:	8a          	im 10
 9a3:	c0          	im -64
 9a4:	2d          	call
 9a5:	9f          	im 31
 9a6:	84          	im 4
 9a7:	08          	load
 9a8:	88          	im 8
 9a9:	2a          	lshiftright
 9aa:	51          	storesp 4
 9ab:	8a          	im 10
 9ac:	c0          	im -64
 9ad:	2d          	call
 9ae:	9f          	im 31
 9af:	84          	im 4
 9b0:	08          	load
 9b1:	51          	storesp 4
 9b2:	8a          	im 10
 9b3:	c0          	im -64
 9b4:	2d          	call
 9b5:	8e          	im 14
 9b6:	a7          	im 39
 9b7:	2d          	call
 9b8:	88          	im 8
 9b9:	08          	load
 9ba:	51          	storesp 4
 9bb:	8a          	im 10
 9bc:	c0          	im -64
 9bd:	2d          	call
 9be:	8b          	im 11
 9bf:	84          	im 4
 9c0:	2d          	call
 9c1:	84          	im 4
 9c2:	3d          	pushspadd
 9c3:	0d          	popsp
 9c4:	04          	poppc

000009c5 <_Z12cmd_enterpgmPh>:
 9c5:	80          	im 0
 9c6:	3d          	pushspadd
 9c7:	0d          	popsp
 9c8:	81          	im 1
 9c9:	0b          	nop
 9ca:	9f          	im 31
 9cb:	80          	im 0
 9cc:	0c          	store
 9cd:	80          	im 0
 9ce:	0b          	nop
 9cf:	83          	im 3
 9d0:	90          	im 16
 9d1:	0a          	flip
 9d2:	0c          	store
 9d3:	85          	im 5
 9d4:	51          	storesp 4
 9d5:	8e          	im 14
 9d6:	92          	im 18
 9d7:	2d          	call
 9d8:	82          	im 2
 9d9:	3d          	pushspadd
 9da:	0d          	popsp
 9db:	04          	poppc

000009dc <_Z12cmd_leavepgmPh>:
 9dc:	80          	im 0
 9dd:	3d          	pushspadd
 9de:	0d          	popsp
 9df:	80          	im 0
 9e0:	0b          	nop
 9e1:	9f          	im 31
 9e2:	80          	im 0
 9e3:	0c          	store
 9e4:	8b          	im 11
 9e5:	a5          	im 37
 9e6:	2d          	call
 9e7:	86          	im 6
 9e8:	51          	storesp 4
 9e9:	8e          	im 14
 9ea:	92          	im 18
 9eb:	2d          	call
 9ec:	82          	im 2
 9ed:	3d          	pushspadd
 9ee:	0d          	popsp
 9ef:	04          	poppc

000009f0 <_Z9cmd_startPh>:
 9f0:	fd          	im -3
 9f1:	3d          	pushspadd
 9f2:	0d          	popsp
 9f3:	80          	im 0
 9f4:	c0          	im -64
 9f5:	80          	im 0
 9f6:	80          	im 0
 9f7:	84          	im 4
 9f8:	54          	storesp 16
 9f9:	8a          	im 10
 9fa:	51          	storesp 4
 9fb:	8e          	im 14
 9fc:	92          	im 18
 9fd:	2d          	call
 9fe:	8b          	im 11
 9ff:	da          	im -38
 a00:	2d          	call
 a01:	9e          	im 30
 a02:	f0          	im -16
 a03:	74          	loadsp 16
 a04:	52          	storesp 8
 a05:	53          	storesp 12
 a06:	8c          	im 12
 a07:	80          	im 0
 a08:	2d          	call
 a09:	72          	loadsp 8
 a0a:	88          	im 8
 a0b:	08          	load
 a0c:	10          	addsp 0
 a0d:	10          	addsp 0
 a0e:	91          	im 17
 a0f:	c0          	im -64
 a10:	84          	im 4
 a11:	05          	add
 a12:	71          	loadsp 4
 a13:	70          	loadsp 0
 a14:	84          	im 4
 a15:	05          	add
 a16:	53          	storesp 12
 a17:	0c          	store
 a18:	52          	storesp 8
 a19:	fb          	im -5
 a1a:	80          	im 0
 a1b:	84          	im 4
 a1c:	a1          	im 33
 a1d:	ad          	im 45
 a1e:	72          	loadsp 8
 a1f:	0c          	store
 a20:	9e          	im 30
 a21:	cc          	im -52
 a22:	0b          	nop
 a23:	88          	im 8
 a24:	14          	addsp 16
 a25:	0c          	store
 a26:	73          	loadsp 12
 a27:	51          	storesp 4
 a28:	8b          	im 11
 a29:	be          	im 62
 a2a:	2d          	call
 a2b:	8a          	im 10
 a2c:	85          	im 5
 a2d:	2d          	call
 a2e:	8b          	im 11
 a2f:	f1          	im -15
 a30:	2d          	call

00000a31 <loadsketch>:
 a31:	fc          	im -4
 a32:	3d          	pushspadd
 a33:	0d          	popsp
 a34:	80          	im 0
 a35:	c0          	im -64
 a36:	80          	im 0
 a37:	80          	im 0
 a38:	84          	im 4
 a39:	70          	loadsp 0
 a3a:	52          	storesp 8
 a3b:	55          	storesp 20
 a3c:	8b          	im 11
 a3d:	be          	im 62
 a3e:	2d          	call
 a3f:	8b          	im 11
 a40:	da          	im -38
 a41:	2d          	call
 a42:	8b          	im 11
 a43:	75          	loadsp 20
 a44:	0c          	store
 a45:	76          	loadsp 24
 a46:	80          	im 0
 a47:	c0          	im -64
 a48:	80          	im 0
 a49:	80          	im 0
 a4a:	94          	im 20
 a4b:	0c          	store
 a4c:	80          	im 0
 a4d:	75          	loadsp 20
 a4e:	0c          	store
 a4f:	a0          	im 32
 a50:	80          	im 0
 a51:	54          	storesp 16
 a52:	77          	loadsp 28
 a53:	53          	storesp 12
 a54:	83          	im 3
 a55:	d0          	im -48
 a56:	0a          	flip
 a57:	52          	storesp 8
 a58:	74          	loadsp 16
 a59:	51          	storesp 4
 a5a:	8c          	im 12
 a5b:	9f          	im 31
 a5c:	2d          	call
 a5d:	74          	loadsp 16
 a5e:	51          	storesp 4
 a5f:	8b          	im 11
 a60:	be          	im 62
 a61:	2d          	call
 a62:	8a          	im 10
 a63:	85          	im 5
 a64:	2d          	call
 a65:	8b          	im 11
 a66:	f1          	im -15
 a67:	2d          	call

00000a68 <main>:
 a68:	ff          	im -1
 a69:	ab          	im 43
 a6a:	3d          	pushspadd
 a6b:	0d          	popsp
 a6c:	80          	im 0
 a6d:	0b          	nop
 a6e:	9f          	im 31
 a6f:	80          	im 0
 a70:	0c          	store
 a71:	80          	im 0
 a72:	0b          	nop
 a73:	9e          	im 30
 a74:	fc          	im -4
 a75:	0c          	store
 a76:	80          	im 0
 a77:	0b          	nop
 a78:	8d          	im 13
 a79:	f5          	im -11
 a7a:	0b          	nop
 a7b:	a0          	im 32
 a7c:	80          	im 0
 a7d:	0c          	store
 a7e:	57          	storesp 28
 a7f:	80          	im 0
 a80:	c4          	im -60
 a81:	80          	im 0
 a82:	80          	im 0
 a83:	84          	im 4
 a84:	55          	storesp 20
 a85:	84          	im 4
 a86:	80          	im 0
 a87:	b3          	im 51
 a88:	75          	loadsp 20
 a89:	0c          	store
 a8a:	80          	im 0
 a8b:	c8          	im -56
 a8c:	80          	im 0
 a8d:	80          	im 0
 a8e:	a4          	im 36
 a8f:	53          	storesp 12
 a90:	fb          	im -5
 a91:	ff          	im -1
 a92:	ff          	im -1
 a93:	73          	loadsp 12
 a94:	08          	load
 a95:	70          	loadsp 0
 a96:	72          	loadsp 8
 a97:	06          	and
 a98:	75          	loadsp 20
 a99:	0c          	store
 a9a:	53          	storesp 12
 a9b:	54          	storesp 16
 a9c:	80          	im 0
 a9d:	c8          	im -56
 a9e:	80          	im 0
 a9f:	80          	im 0
 aa0:	94          	im 20
 aa1:	70          	loadsp 0
 aa2:	08          	load
 aa3:	70          	loadsp 0
 aa4:	76          	loadsp 24
 aa5:	06          	and
 aa6:	72          	loadsp 8
 aa7:	0c          	store
 aa8:	53          	storesp 12
 aa9:	53          	storesp 12
 aaa:	a8          	im 40
 aab:	70          	loadsp 0
 aac:	99          	im 25
 aad:	ce          	im -50
 aae:	71          	loadsp 4
 aaf:	70          	loadsp 0
 ab0:	84          	im 4
 ab1:	05          	add
 ab2:	53          	storesp 12
 ab3:	0c          	store
 ab4:	9a          	im 26
 ab5:	ab          	im 43
 ab6:	71          	loadsp 4
 ab7:	0c          	store
 ab8:	53          	storesp 12
 ab9:	9b          	im 27
 aba:	c4          	im -60
 abb:	0b          	nop
 abc:	88          	im 8
 abd:	12          	addsp 8
 abe:	0c          	store
 abf:	9c          	im 28
 ac0:	d3          	im -45
 ac1:	0b          	nop
 ac2:	8c          	im 12
 ac3:	12          	addsp 8
 ac4:	0c          	store
 ac5:	94          	im 20
 ac6:	b1          	im 49
 ac7:	0b          	nop
 ac8:	90          	im 16
 ac9:	12          	addsp 8
 aca:	0c          	store
 acb:	53          	storesp 12
 acc:	88          	im 8
 acd:	0b          	nop
 ace:	80          	im 0
 acf:	d0          	im -48
 ad0:	80          	im 0
 ad1:	80          	im 0
 ad2:	84          	im 4
 ad3:	0c          	store
 ad4:	80          	im 0
 ad5:	d0          	im -48
 ad6:	0a          	flip
 ad7:	53          	storesp 12
 ad8:	81          	im 1
 ad9:	73          	loadsp 12
 ada:	0c          	store
 adb:	8b          	im 11
 adc:	a5          	im 37
 add:	2d          	call
 ade:	82          	im 2
 adf:	88          	im 8
 ae0:	88          	im 8
 ae1:	0b          	nop
 ae2:	80          	im 0
 ae3:	dc          	im -36
 ae4:	80          	im 0
 ae5:	80          	im 0
 ae6:	84          	im 4
 ae7:	0c          	store
 ae8:	81          	im 1
 ae9:	f2          	im -14
 aea:	0b          	nop
 aeb:	90          	im 16
 aec:	0a          	flip
 aed:	0c          	store
 aee:	80          	im 0
 aef:	c0          	im -64
 af0:	80          	im 0
 af1:	80          	im 0
 af2:	84          	im 4
 af3:	70          	loadsp 0
 af4:	52          	storesp 8
 af5:	52          	storesp 8
 af6:	8b          	im 11
 af7:	be          	im 62
 af8:	2d          	call
 af9:	8b          	im 11
 afa:	da          	im -38
 afb:	2d          	call
 afc:	71          	loadsp 4
 afd:	51          	storesp 4
 afe:	8b          	im 11
 aff:	be          	im 62
 b00:	2d          	call
 b01:	8b          	im 11
 b02:	da          	im -38
 b03:	2d          	call
 b04:	84          	im 4
 b05:	72          	loadsp 8
 b06:	0c          	store
 b07:	71          	loadsp 4
 b08:	51          	storesp 4
 b09:	8b          	im 11
 b0a:	be          	im 62
 b0b:	2d          	call
 b0c:	76          	loadsp 24
 b0d:	77          	loadsp 28
 b0e:	76          	loadsp 24
 b0f:	75          	loadsp 20
 b10:	93          	im 19
 b11:	3d          	pushspadd
 b12:	41          	storesp 68
 b13:	41          	storesp 68
 b14:	5b          	storesp 44
 b15:	5b          	storesp 44
 b16:	5b          	storesp 44
 b17:	83          	im 3
 b18:	d0          	im -48
 b19:	0a          	flip
 b1a:	5c          	storesp 48

00000b1b <.L251>:
 b1b:	78          	loadsp 32
 b1c:	08          	load
 b1d:	70          	loadsp 0
 b1e:	81          	im 1
 b1f:	06          	and
 b20:	51          	storesp 4
 b21:	52          	storesp 8
 b22:	71          	loadsp 4
 b23:	9d          	im 29
 b24:	38          	neqbranch
 b25:	9f          	im 31
 b26:	80          	im 0
 b27:	08          	load
 b28:	53          	storesp 12
 b29:	72          	loadsp 8
 b2a:	f0          	im -16
 b2b:	38          	neqbranch
 b2c:	9e          	im 30
 b2d:	fc          	im -4
 b2e:	08          	load
 b2f:	52          	storesp 8
 b30:	87          	im 7
 b31:	e8          	im -24
 b32:	72          	loadsp 8
 b33:	27          	ulessthanorequal
 b34:	e6          	im -26
 b35:	38          	neqbranch
 b36:	72          	loadsp 8
 b37:	7e          	loadsp 56
 b38:	0c          	store
 b39:	72          	loadsp 8
 b3a:	83          	im 3
 b3b:	90          	im 16
 b3c:	0a          	flip
 b3d:	0c          	store
 b3e:	98          	im 24
 b3f:	c4          	im -60
 b40:	2d          	call

00000b41 <.L245>:
 b41:	82          	im 2
 b42:	90          	im 16
 b43:	0a          	flip
 b44:	08          	load
 b45:	53          	storesp 12
 b46:	79          	loadsp 36
 b47:	80          	im 0
 b48:	2e          	eq
 b49:	81          	im 1
 b4a:	b4          	im 52
 b4b:	38          	neqbranch
 b4c:	72          	loadsp 8
 b4d:	80          	im 0
 b4e:	fe          	im -2
 b4f:	2e          	eq
 b50:	09          	not
 b51:	81          	im 1
 b52:	06          	and
 b53:	80          	im 0
 b54:	f4          	im -12
 b55:	38          	neqbranch
 b56:	76          	loadsp 24
 b57:	80          	im 0
 b58:	2e          	eq
 b59:	c1          	im -63
 b5a:	38          	neqbranch
 b5b:	80          	im 0
 b5c:	7d          	loadsp 52
 b5d:	78          	loadsp 32
 b5e:	58          	storesp 32
 b5f:	56          	storesp 24
 b60:	5a          	storesp 40
 b61:	82          	im 2
 b62:	77          	loadsp 28
 b63:	27          	ulessthanorequal
 b64:	ff          	im -1
 b65:	b5          	im 53
 b66:	38          	neqbranch
 b67:	83          	im 3
 b68:	ff          	im -1
 b69:	ff          	im -1
 b6a:	7c          	loadsp 48
 b6b:	0c          	store
 b6c:	79          	loadsp 36
 b6d:	fe          	im -2
 b6e:	18          	addsp 32
 b6f:	53          	storesp 12
 b70:	53          	storesp 12
 b71:	79          	loadsp 36
 b72:	72          	loadsp 8
 b73:	27          	ulessthanorequal
 b74:	98          	im 24
 b75:	38          	neqbranch
 b76:	80          	im 0
 b77:	dc          	im -36
 b78:	80          	im 0
 b79:	80          	im 0
 b7a:	88          	im 8
 b7b:	72          	loadsp 8
 b7c:	55          	storesp 20
 b7d:	58          	storesp 32

00000b7e <.L233>:
 b7e:	72          	loadsp 8
 b7f:	15          	addsp 20
 b80:	70          	loadsp 0
 b81:	33          	loadb
 b82:	79          	loadsp 36
 b83:	0c          	store
 b84:	52          	storesp 8
 b85:	81          	im 1
 b86:	13          	addsp 12
 b87:	53          	storesp 12
 b88:	73          	loadsp 12
 b89:	73          	loadsp 12
 b8a:	26          	ulessthan
 b8b:	f2          	im -14
 b8c:	38          	neqbranch

00000b8d <.L247>:
 b8d:	ff          	im -1
 b8e:	16          	addsp 24
 b8f:	75          	loadsp 20
 b90:	11          	addsp 4
 b91:	54          	storesp 16
 b92:	75          	loadsp 20
 b93:	05          	add
 b94:	ff          	im -1
 b95:	05          	add
 b96:	70          	loadsp 0
 b97:	33          	loadb
 b98:	74          	loadsp 16
 b99:	33          	loadb
 b9a:	70          	loadsp 0
 b9b:	72          	loadsp 8
 b9c:	88          	im 8
 b9d:	2b          	ashiftleft
 b9e:	07          	or
 b9f:	7f          	loadsp 60
 ba0:	08          	load
 ba1:	53          	storesp 12
 ba2:	51          	storesp 4
 ba3:	55          	storesp 20
 ba4:	51          	storesp 4
 ba5:	52          	storesp 8
 ba6:	71          	loadsp 4
 ba7:	73          	loadsp 12
 ba8:	2e          	eq
 ba9:	09          	not
 baa:	81          	im 1
 bab:	06          	and
 bac:	fe          	im -2
 bad:	ed          	im -19
 bae:	38          	neqbranch
 baf:	74          	loadsp 16
 bb0:	33          	loadb
 bb1:	53          	storesp 12
 bb2:	72          	loadsp 8
 bb3:	8a          	im 10
 bb4:	26          	ulessthan
 bb5:	fe          	im -2
 bb6:	e4          	im -28
 bb7:	38          	neqbranch
 bb8:	72          	loadsp 8
 bb9:	10          	addsp 0
 bba:	10          	addsp 0
 bbb:	9e          	im 30
 bbc:	a0          	im 32
 bbd:	05          	add
 bbe:	75          	loadsp 20
 bbf:	52          	storesp 8
 bc0:	70          	loadsp 0
 bc1:	08          	load
 bc2:	51          	storesp 4
 bc3:	52          	storesp 8
 bc4:	71          	loadsp 4
 bc5:	2d          	call
 bc6:	fe          	im -2
 bc7:	d3          	im -45
 bc8:	39          	poppcrel

00000bc9 <.L226>:
 bc9:	72          	loadsp 8
 bca:	80          	im 0
 bcb:	fd          	im -3
 bcc:	2e          	eq
 bcd:	09          	not
 bce:	81          	im 1
 bcf:	06          	and
 bd0:	86          	im 6
 bd1:	38          	neqbranch
 bd2:	81          	im 1
 bd3:	5b          	storesp 44
 bd4:	fe          	im -2
 bd5:	c5          	im -59
 bd6:	39          	poppcrel

00000bd7 <.L237>:
 bd7:	76          	loadsp 24
 bd8:	82          	im 2
 bd9:	9f          	im 31
 bda:	26          	ulessthan
 bdb:	9e          	im 30
 bdc:	38          	neqbranch
 bdd:	7a          	loadsp 40
 bde:	80          	im 0
 bdf:	2e          	eq
 be0:	87          	im 7
 be1:	38          	neqbranch
 be2:	80          	im 0
 be3:	73          	loadsp 12
 be4:	a0          	im 32
 be5:	32          	xor
 be6:	54          	storesp 16
 be7:	5b          	storesp 44

00000be8 <.L240>:
 be8:	80          	im 0
 be9:	d7          	im -41
 bea:	3d          	pushspadd
 beb:	77          	loadsp 28
 bec:	05          	add
 bed:	fd          	im -3
 bee:	e0          	im -32
 bef:	05          	add
 bf0:	52          	storesp 8
 bf1:	72          	loadsp 8
 bf2:	72          	loadsp 8
 bf3:	34          	storeb
 bf4:	81          	im 1
 bf5:	17          	addsp 28
 bf6:	57          	storesp 28
 bf7:	fe          	im -2
 bf8:	a2          	im 34
 bf9:	39          	poppcrel

00000bfa <.L239>:
 bfa:	80          	im 0
 bfb:	5a          	storesp 40
 bfc:	fe          	im -2
 bfd:	9d          	im 29
 bfe:	39          	poppcrel

00000bff <.L225>:
 bff:	72          	loadsp 8
 c00:	80          	im 0
 c01:	fe          	im -2
 c02:	2e          	eq
 c03:	09          	not
 c04:	81          	im 1
 c05:	06          	and
 c06:	fe          	im -2
 c07:	93          	im 19
 c08:	38          	neqbranch
 c09:	79          	loadsp 36
 c0a:	57          	storesp 28
 c0b:	83          	im 3
 c0c:	ff          	im -1
 c0d:	ff          	im -1
 c0e:	7c          	loadsp 48
 c0f:	0c          	store
 c10:	81          	im 1
 c11:	77          	loadsp 28
 c12:	5c          	storesp 48
 c13:	5a          	storesp 40
 c14:	fe          	im -2
 c15:	85          	im 5
 c16:	39          	poppcrel

00000c17 <___zpu_interrupt_vector>:
 c17:	80          	im 0
 c18:	3d          	pushspadd
 c19:	0d          	popsp
 c1a:	88          	im 8
 c1b:	08          	load
 c1c:	8c          	im 12
 c1d:	08          	load
 c1e:	90          	im 16
 c1f:	08          	load
 c20:	a0          	im 32
 c21:	80          	im 0
 c22:	08          	load
 c23:	51          	storesp 4
 c24:	70          	loadsp 0
 c25:	2d          	call
 c26:	90          	im 16
 c27:	0c          	store
 c28:	8c          	im 12
 c29:	0c          	store
 c2a:	8a          	im 10
 c2b:	0c          	store
 c2c:	81          	im 1
 c2d:	0b          	nop
 c2e:	80          	im 0
 c2f:	d0          	im -48
 c30:	0a          	flip
 c31:	0c          	store
 c32:	82          	im 2
 c33:	3d          	pushspadd
 c34:	0d          	popsp
 c35:	04          	poppc

00000c36 <_premain>:
 c36:	ff          	im -1
 c37:	3d          	pushspadd
 c38:	0d          	popsp
 c39:	80          	im 0
 c3a:	52          	storesp 8
 c3b:	80          	im 0
 c3c:	51          	storesp 4
 c3d:	94          	im 20
 c3e:	e8          	im -24
 c3f:	2d          	call
 c40:	83          	im 3
 c41:	3d          	pushspadd
 c42:	0d          	popsp
 c43:	04          	poppc

00000c44 <spi_copy>:
 c44:	81          	im 1
 c45:	ff          	im -1
 c46:	f8          	im -8
 c47:	0d          	popsp
 c48:	8c          	im 12
 c49:	da          	im -38
 c4a:	04          	poppc

00000c4b <start_sketch>:
 c4b:	81          	im 1
 c4c:	ff          	im -1
 c4d:	f8          	im -8
 c4e:	0d          	popsp
 c4f:	a0          	im 32
 c50:	88          	im 8
 c51:	04          	poppc

00000c52 <__divsi3>:
 c52:	fb          	im -5
 c53:	3d          	pushspadd
 c54:	0d          	popsp
 c55:	77          	loadsp 28
 c56:	79          	loadsp 36
 c57:	55          	storesp 20
 c58:	55          	storesp 20
 c59:	80          	im 0
 c5a:	56          	storesp 24
 c5b:	75          	loadsp 20
 c5c:	75          	loadsp 20
 c5d:	24          	lessthan
 c5e:	ab          	im 43
 c5f:	38          	neqbranch
 c60:	80          	im 0
 c61:	74          	loadsp 16
 c62:	24          	lessthan
 c63:	9d          	im 29
 c64:	38          	neqbranch

00000c65 <.L4>:
 c65:	80          	im 0
 c66:	53          	storesp 12
 c67:	73          	loadsp 12
 c68:	52          	storesp 8
 c69:	74          	loadsp 16
 c6a:	51          	storesp 4
 c6b:	80          	im 0
 c6c:	e1          	im -31
 c6d:	3f          	callpcrel
 c6e:	88          	im 8
 c6f:	08          	load
 c70:	54          	storesp 16
 c71:	75          	loadsp 20
 c72:	80          	im 0
 c73:	2e          	eq
 c74:	85          	im 5
 c75:	38          	neqbranch
 c76:	88          	im 8
 c77:	08          	load
 c78:	30          	neg
 c79:	54          	storesp 16

00000c7a <.L6>:
 c7a:	73          	loadsp 12
 c7b:	88          	im 8
 c7c:	0c          	store
 c7d:	87          	im 7
 c7e:	3d          	pushspadd
 c7f:	0d          	popsp
 c80:	04          	poppc

00000c81 <.L9>:
 c81:	73          	loadsp 12
 c82:	30          	neg
 c83:	76          	loadsp 24
 c84:	81          	im 1
 c85:	32          	xor
 c86:	57          	storesp 28
 c87:	54          	storesp 16
 c88:	dc          	im -36
 c89:	39          	poppcrel

00000c8a <.L8>:
 c8a:	74          	loadsp 16
 c8b:	30          	neg
 c8c:	55          	storesp 20
 c8d:	81          	im 1
 c8e:	56          	storesp 24
 c8f:	73          	loadsp 12
 c90:	80          	im 0
 c91:	25          	lessthanorequal
 c92:	d2          	im -46
 c93:	38          	neqbranch
 c94:	ec          	im -20
 c95:	39          	poppcrel

00000c96 <__modsi3>:
 c96:	fa          	im -6
 c97:	3d          	pushspadd
 c98:	0d          	popsp
 c99:	78          	loadsp 32
 c9a:	7a          	loadsp 40
 c9b:	57          	storesp 28
 c9c:	55          	storesp 20
 c9d:	80          	im 0
 c9e:	57          	storesp 28
 c9f:	76          	loadsp 24
 ca0:	75          	loadsp 20
 ca1:	24          	lessthan
 ca2:	a4          	im 36
 ca3:	38          	neqbranch

00000ca4 <.L11>:
 ca4:	75          	loadsp 20
 ca5:	9f          	im 31
 ca6:	2c          	ashiftright
 ca7:	54          	storesp 16
 ca8:	81          	im 1
 ca9:	53          	storesp 12
 caa:	75          	loadsp 20
 cab:	74          	loadsp 16
 cac:	32          	xor
 cad:	74          	loadsp 16
 cae:	31          	sub
 caf:	52          	storesp 8
 cb0:	74          	loadsp 16
 cb1:	51          	storesp 4
 cb2:	9b          	im 27
 cb3:	3f          	callpcrel
 cb4:	88          	im 8
 cb5:	08          	load
 cb6:	54          	storesp 16
 cb7:	76          	loadsp 24
 cb8:	80          	im 0
 cb9:	2e          	eq
 cba:	85          	im 5
 cbb:	38          	neqbranch
 cbc:	88          	im 8
 cbd:	08          	load
 cbe:	30          	neg
 cbf:	54          	storesp 16

00000cc0 <.L13>:
 cc0:	73          	loadsp 12
 cc1:	88          	im 8
 cc2:	0c          	store
 cc3:	88          	im 8
 cc4:	3d          	pushspadd
 cc5:	0d          	popsp
 cc6:	04          	poppc

00000cc7 <.L15>:
 cc7:	74          	loadsp 16
 cc8:	30          	neg
 cc9:	55          	storesp 20
 cca:	81          	im 1
 ccb:	57          	storesp 28
 ccc:	d7          	im -41
 ccd:	39          	poppcrel

00000cce <udivmodsi4>:
 cce:	fc          	im -4
 ccf:	3d          	pushspadd
 cd0:	0d          	popsp
 cd1:	76          	loadsp 24
 cd2:	78          	loadsp 32
 cd3:	53          	storesp 12
 cd4:	54          	storesp 16
 cd5:	81          	im 1
 cd6:	53          	storesp 12
 cd7:	80          	im 0
 cd8:	74          	loadsp 16
 cd9:	73          	loadsp 12
 cda:	26          	ulessthan
 cdb:	52          	storesp 8
 cdc:	55          	storesp 20
 cdd:	72          	loadsp 8
 cde:	80          	im 0
 cdf:	2e          	eq
 ce0:	98          	im 24
 ce1:	38          	neqbranch

00000ce2 <.L16>:
 ce2:	70          	loadsp 0
 ce3:	80          	im 0
 ce4:	2e          	eq
 ce5:	a9          	im 41
 ce6:	38          	neqbranch
 ce7:	80          	im 0
 ce8:	72          	loadsp 8
 ce9:	24          	lessthan
 cea:	a4          	im 36
 ceb:	38          	neqbranch
 cec:	71          	loadsp 4
 ced:	10          	addsp 0
 cee:	73          	loadsp 12
 cef:	10          	addsp 0
 cf0:	75          	loadsp 20
 cf1:	72          	loadsp 8
 cf2:	26          	ulessthan
 cf3:	53          	storesp 12
 cf4:	54          	storesp 16
 cf5:	52          	storesp 8
 cf6:	72          	loadsp 8
 cf7:	ea          	im -22
 cf8:	38          	neqbranch

00000cf9 <.L13>:
 cf9:	73          	loadsp 12
 cfa:	51          	storesp 4
 cfb:	78          	loadsp 32
 cfc:	83          	im 3
 cfd:	38          	neqbranch
 cfe:	74          	loadsp 16
 cff:	51          	storesp 4

00000d00 <.L1>:
 d00:	70          	loadsp 0
 d01:	88          	im 8
 d02:	0c          	store
 d03:	86          	im 6
 d04:	3d          	pushspadd
 d05:	0d          	popsp
 d06:	04          	poppc

00000d07 <.L9>:
 d07:	72          	loadsp 8
 d08:	81          	im 1
 d09:	2a          	lshiftright
 d0a:	72          	loadsp 8
 d0b:	81          	im 1
 d0c:	2a          	lshiftright
 d0d:	53          	storesp 12
 d0e:	53          	storesp 12

00000d0f <.L3>:
 d0f:	72          	loadsp 8
 d10:	80          	im 0
 d11:	2e          	eq
 d12:	e6          	im -26
 d13:	38          	neqbranch
 d14:	71          	loadsp 4
 d15:	74          	loadsp 16
 d16:	26          	ulessthan
 d17:	ef          	im -17
 d18:	38          	neqbranch
 d19:	73          	loadsp 12
 d1a:	72          	loadsp 8
 d1b:	31          	sub
 d1c:	75          	loadsp 20
 d1d:	74          	loadsp 16
 d1e:	07          	or
 d1f:	74          	loadsp 16
 d20:	81          	im 1
 d21:	2a          	lshiftright
 d22:	74          	loadsp 16
 d23:	81          	im 1
 d24:	2a          	lshiftright
 d25:	55          	storesp 20
 d26:	55          	storesp 20
 d27:	56          	storesp 24
 d28:	54          	storesp 16
 d29:	e5          	im -27
 d2a:	39          	poppcrel

00000d2b <memcpy>:
 d2b:	fc          	im -4
 d2c:	3d          	pushspadd
 d2d:	0d          	popsp
 d2e:	76          	loadsp 24

00000d2f <.LM2>:
 d2f:	70          	loadsp 0

00000d30 <.LM3>:
 d30:	79          	loadsp 36

00000d31 <.LM4>:
 d31:	7b          	loadsp 44
 d32:	55          	storesp 20
 d33:	55          	storesp 20
 d34:	55          	storesp 20
 d35:	55          	storesp 20

00000d36 <.LM5>:
 d36:	8f          	im 15
 d37:	72          	loadsp 8
 d38:	27          	ulessthanorequal
 d39:	8c          	im 12
 d3a:	38          	neqbranch
 d3b:	72          	loadsp 8
 d3c:	75          	loadsp 20
 d3d:	07          	or
 d3e:	83          	im 3
 d3f:	06          	and
 d40:	51          	storesp 4
 d41:	70          	loadsp 0
 d42:	80          	im 0
 d43:	2e          	eq
 d44:	a7          	im 39
 d45:	38          	neqbranch

00000d46 <.L2>:
 d46:	ff          	im -1
 d47:	12          	addsp 8
 d48:	52          	storesp 8
 d49:	71          	loadsp 4
 d4a:	ff          	im -1
 d4b:	2e          	eq
 d4c:	98          	im 24
 d4d:	38          	neqbranch

00000d4e <.L21>:
 d4e:	72          	loadsp 8
 d4f:	70          	loadsp 0
 d50:	81          	im 1
 d51:	05          	add
 d52:	54          	storesp 16
 d53:	33          	loadb
 d54:	74          	loadsp 16
 d55:	70          	loadsp 0
 d56:	81          	im 1
 d57:	05          	add
 d58:	56          	storesp 24
 d59:	34          	storeb
 d5a:	ff          	im -1
 d5b:	12          	addsp 8
 d5c:	52          	storesp 8
 d5d:	71          	loadsp 4
 d5e:	ff          	im -1
 d5f:	2e          	eq
 d60:	09          	not
 d61:	81          	im 1
 d62:	06          	and
 d63:	ea          	im -22
 d64:	38          	neqbranch

00000d65 <.L17>:
 d65:	74          	loadsp 16
 d66:	88          	im 8
 d67:	0c          	store
 d68:	86          	im 6
 d69:	3d          	pushspadd
 d6a:	0d          	popsp
 d6b:	04          	poppc

00000d6c <.L20>:
 d6c:	74          	loadsp 16
 d6d:	51          	storesp 4

00000d6e <.L5>:
 d6e:	72          	loadsp 8
 d6f:	70          	loadsp 0
 d70:	84          	im 4
 d71:	05          	add
 d72:	54          	storesp 16
 d73:	08          	load
 d74:	71          	loadsp 4
 d75:	70          	loadsp 0
 d76:	84          	im 4
 d77:	05          	add
 d78:	53          	storesp 12
 d79:	0c          	store

00000d7a <.LM10>:
 d7a:	72          	loadsp 8
 d7b:	70          	loadsp 0
 d7c:	84          	im 4
 d7d:	05          	add
 d7e:	54          	storesp 16
 d7f:	08          	load
 d80:	71          	loadsp 4
 d81:	70          	loadsp 0
 d82:	84          	im 4
 d83:	05          	add
 d84:	53          	storesp 12
 d85:	0c          	store

00000d86 <.LM11>:
 d86:	72          	loadsp 8
 d87:	70          	loadsp 0
 d88:	84          	im 4
 d89:	05          	add
 d8a:	54          	storesp 16
 d8b:	08          	load
 d8c:	71          	loadsp 4
 d8d:	70          	loadsp 0
 d8e:	84          	im 4
 d8f:	05          	add
 d90:	53          	storesp 12
 d91:	0c          	store

00000d92 <.LM12>:
 d92:	72          	loadsp 8
 d93:	70          	loadsp 0
 d94:	84          	im 4
 d95:	05          	add
 d96:	54          	storesp 16
 d97:	08          	load
 d98:	71          	loadsp 4
 d99:	70          	loadsp 0
 d9a:	84          	im 4
 d9b:	05          	add
 d9c:	53          	storesp 12
 d9d:	0c          	store

00000d9e <.LM13>:
 d9e:	f0          	im -16
 d9f:	12          	addsp 8
 da0:	52          	storesp 8
 da1:	71          	loadsp 4
 da2:	8f          	im 15
 da3:	26          	ulessthan
 da4:	c9          	im -55
 da5:	38          	neqbranch

00000da6 <.LM14>:
 da6:	83          	im 3
 da7:	72          	loadsp 8
 da8:	27          	ulessthanorequal
 da9:	95          	im 21
 daa:	38          	neqbranch

00000dab <.L22>:
 dab:	72          	loadsp 8
 dac:	70          	loadsp 0
 dad:	84          	im 4
 dae:	05          	add
 daf:	54          	storesp 16
 db0:	08          	load
 db1:	71          	loadsp 4
 db2:	70          	loadsp 0
 db3:	84          	im 4
 db4:	05          	add
 db5:	53          	storesp 12
 db6:	0c          	store

00000db7 <.LM16>:
 db7:	fc          	im -4
 db8:	12          	addsp 8
 db9:	52          	storesp 8
 dba:	71          	loadsp 4
 dbb:	83          	im 3
 dbc:	26          	ulessthan
 dbd:	ed          	im -19
 dbe:	38          	neqbranch

00000dbf <.L15>:
 dbf:	70          	loadsp 0
 dc0:	54          	storesp 16
 dc1:	ff          	im -1
 dc2:	83          	im 3
 dc3:	39          	poppcrel

00000dc4 <memset>:
 dc4:	fc          	im -4
 dc5:	3d          	pushspadd
 dc6:	0d          	popsp
 dc7:	76          	loadsp 24
 dc8:	79          	loadsp 36

00000dc9 <.LM2>:
 dc9:	71          	loadsp 4

00000dca <.LM3>:
 dca:	02          	pushsp
 dcb:	8c          	im 12
 dcc:	05          	add
 dcd:	9f          	im 31
 dce:	05          	add
 dcf:	33          	loadb
 dd0:	57          	storesp 28
 dd1:	55          	storesp 20
 dd2:	53          	storesp 12
 dd3:	55          	storesp 20

00000dd4 <.LM4>:
 dd4:	83          	im 3
 dd5:	72          	loadsp 8
 dd6:	27          	ulessthanorequal
 dd7:	8a          	im 10
 dd8:	38          	neqbranch
 dd9:	74          	loadsp 16
 dda:	83          	im 3
 ddb:	06          	and
 ddc:	51          	storesp 4
 ddd:	70          	loadsp 0
 dde:	80          	im 0
 ddf:	2e          	eq
 de0:	a2          	im 34
 de1:	38          	neqbranch

00000de2 <.L2>:
 de2:	ff          	im -1
 de3:	12          	addsp 8
 de4:	52          	storesp 8
 de5:	71          	loadsp 4
 de6:	ff          	im -1
 de7:	2e          	eq
 de8:	93          	im 19
 de9:	38          	neqbranch

00000dea <.L27>:
 dea:	73          	loadsp 12
 deb:	73          	loadsp 12
 dec:	70          	loadsp 0
 ded:	81          	im 1
 dee:	05          	add
 def:	55          	storesp 20
 df0:	34          	storeb
 df1:	ff          	im -1
 df2:	12          	addsp 8
 df3:	52          	storesp 8
 df4:	71          	loadsp 4
 df5:	ff          	im -1
 df6:	2e          	eq
 df7:	09          	not
 df8:	81          	im 1
 df9:	06          	and
 dfa:	ef          	im -17
 dfb:	38          	neqbranch

00000dfc <.L23>:
 dfc:	74          	loadsp 16
 dfd:	88          	im 8
 dfe:	0c          	store
 dff:	86          	im 6
 e00:	3d          	pushspadd
 e01:	0d          	popsp
 e02:	04          	poppc

00000e03 <.L26>:
 e03:	74          	loadsp 16

00000e04 <.LM8>:
 e04:	74          	loadsp 16
 e05:	88          	im 8
 e06:	2b          	ashiftleft
 e07:	75          	loadsp 20
 e08:	07          	or

00000e09 <.LM9>:
 e09:	70          	loadsp 0
 e0a:	71          	loadsp 4
 e0b:	90          	im 16
 e0c:	2b          	ashiftleft
 e0d:	07          	or
 e0e:	51          	storesp 4
 e0f:	54          	storesp 16
 e10:	51          	storesp 4

00000e11 <.LM10>:
 e11:	8f          	im 15
 e12:	72          	loadsp 8
 e13:	27          	ulessthanorequal
 e14:	a5          	im 37
 e15:	38          	neqbranch

00000e16 <.L28>:
 e16:	72          	loadsp 8
 e17:	71          	loadsp 4
 e18:	70          	loadsp 0
 e19:	84          	im 4
 e1a:	05          	add
 e1b:	53          	storesp 12
 e1c:	0c          	store

00000e1d <.LM12>:
 e1d:	72          	loadsp 8
 e1e:	71          	loadsp 4
 e1f:	70          	loadsp 0
 e20:	84          	im 4
 e21:	05          	add
 e22:	53          	storesp 12
 e23:	0c          	store

00000e24 <.LM13>:
 e24:	72          	loadsp 8
 e25:	71          	loadsp 4
 e26:	70          	loadsp 0
 e27:	84          	im 4
 e28:	05          	add
 e29:	53          	storesp 12
 e2a:	0c          	store

00000e2b <.LM14>:
 e2b:	72          	loadsp 8
 e2c:	71          	loadsp 4
 e2d:	70          	loadsp 0
 e2e:	84          	im 4
 e2f:	05          	add
 e30:	53          	storesp 12
 e31:	0c          	store

00000e32 <.LM15>:
 e32:	f0          	im -16
 e33:	12          	addsp 8
 e34:	52          	storesp 8
 e35:	71          	loadsp 4
 e36:	8f          	im 15
 e37:	26          	ulessthan
 e38:	dd          	im -35
 e39:	38          	neqbranch

00000e3a <.L19>:
 e3a:	83          	im 3
 e3b:	72          	loadsp 8
 e3c:	27          	ulessthanorequal
 e3d:	90          	im 16
 e3e:	38          	neqbranch

00000e3f <.L29>:
 e3f:	72          	loadsp 8
 e40:	71          	loadsp 4
 e41:	70          	loadsp 0
 e42:	84          	im 4
 e43:	05          	add
 e44:	53          	storesp 12
 e45:	0c          	store

00000e46 <.LM18>:
 e46:	fc          	im -4
 e47:	12          	addsp 8
 e48:	52          	storesp 8
 e49:	71          	loadsp 4
 e4a:	83          	im 3
 e4b:	26          	ulessthan
 e4c:	f2          	im -14
 e4d:	38          	neqbranch

00000e4e <.L21>:
 e4e:	70          	loadsp 0
 e4f:	53          	storesp 12
 e50:	ff          	im -1
 e51:	90          	im 16
 e52:	39          	poppcrel

00000e53 <strcmp>:
 e53:	fb          	im -5
 e54:	3d          	pushspadd
 e55:	0d          	popsp
 e56:	77          	loadsp 28
 e57:	79          	loadsp 36

00000e58 <.LM2>:
 e58:	70          	loadsp 0
 e59:	72          	loadsp 8
 e5a:	07          	or
 e5b:	83          	im 3
 e5c:	06          	and
 e5d:	53          	storesp 12
 e5e:	54          	storesp 16
 e5f:	52          	storesp 8
 e60:	70          	loadsp 0
 e61:	93          	im 19
 e62:	38          	neqbranch

00000e63 <.LM3>:
 e63:	71          	loadsp 4

00000e64 <.LM4>:
 e64:	73          	loadsp 12

00000e65 <.LM5>:
 e65:	73          	loadsp 12
 e66:	08          	load
 e67:	54          	storesp 16
 e68:	56          	storesp 24
 e69:	54          	storesp 16
 e6a:	71          	loadsp 4
 e6b:	73          	loadsp 12
 e6c:	08          	load
 e6d:	2e          	eq
 e6e:	80          	im 0
 e6f:	c4          	im -60
 e70:	38          	neqbranch

00000e71 <.LM6>:
 e71:	73          	loadsp 12

00000e72 <.LM7>:
 e72:	75          	loadsp 20
 e73:	54          	storesp 16
 e74:	52          	storesp 8

00000e75 <.L2>:
 e75:	71          	loadsp 4
 e76:	33          	loadb
 e77:	70          	loadsp 0
 e78:	81          	im 1
 e79:	ff          	im -1
 e7a:	06          	and
 e7b:	52          	storesp 8
 e7c:	54          	storesp 16
 e7d:	70          	loadsp 0
 e7e:	80          	im 0
 e7f:	2e          	eq
 e80:	9d          	im 29
 e81:	38          	neqbranch

00000e82 <.L18>:
 e82:	72          	loadsp 8
 e83:	33          	loadb
 e84:	55          	storesp 20
 e85:	70          	loadsp 0
 e86:	75          	loadsp 20
 e87:	2e          	eq
 e88:	09          	not
 e89:	81          	im 1
 e8a:	06          	and
 e8b:	95          	im 21
 e8c:	38          	neqbranch

00000e8d <.LM9>:
 e8d:	81          	im 1
 e8e:	12          	addsp 8

00000e8f <.LM10>:
 e8f:	81          	im 1
 e90:	14          	addsp 16
 e91:	71          	loadsp 4
 e92:	33          	loadb
 e93:	70          	loadsp 0
 e94:	81          	im 1
 e95:	ff          	im -1
 e96:	06          	and
 e97:	54          	storesp 16
 e98:	56          	storesp 24
 e99:	54          	storesp 16
 e9a:	52          	storesp 8
 e9b:	70          	loadsp 0
 e9c:	e5          	im -27
 e9d:	38          	neqbranch

00000e9e <.L14>:
 e9e:	72          	loadsp 8
 e9f:	33          	loadb
 ea0:	55          	storesp 20

00000ea1 <.L8>:
 ea1:	73          	loadsp 12
 ea2:	81          	im 1
 ea3:	ff          	im -1
 ea4:	06          	and
 ea5:	75          	loadsp 20
 ea6:	81          	im 1
 ea7:	ff          	im -1
 ea8:	06          	and
 ea9:	71          	loadsp 4
 eaa:	71          	loadsp 4
 eab:	31          	sub

00000eac <.LM12>:
 eac:	88          	im 8
 ead:	0c          	store
 eae:	52          	storesp 8
 eaf:	52          	storesp 8
 eb0:	87          	im 7
 eb1:	3d          	pushspadd
 eb2:	0d          	popsp
 eb3:	04          	poppc

00000eb4 <.L6>:
 eb4:	71          	loadsp 4
 eb5:	09          	not
 eb6:	70          	loadsp 0
 eb7:	f7          	im -9
 eb8:	fb          	im -5
 eb9:	fd          	im -3
 eba:	ff          	im -1
 ebb:	14          	addsp 16
 ebc:	06          	and
 ebd:	70          	loadsp 0
 ebe:	f8          	im -8
 ebf:	84          	im 4
 ec0:	82          	im 2
 ec1:	81          	im 1
 ec2:	80          	im 0
 ec3:	06          	and
 ec4:	51          	storesp 4
 ec5:	51          	storesp 4
 ec6:	51          	storesp 4
 ec7:	70          	loadsp 0
 ec8:	97          	im 23
 ec9:	38          	neqbranch

00000eca <.LM14>:
 eca:	84          	im 4
 ecb:	14          	addsp 16

00000ecc <.LM15>:
 ecc:	84          	im 4
 ecd:	16          	addsp 24
 ece:	71          	loadsp 4
 ecf:	08          	load
 ed0:	54          	storesp 16
 ed1:	56          	storesp 24
 ed2:	54          	storesp 16
 ed3:	71          	loadsp 4
 ed4:	75          	loadsp 20
 ed5:	08          	load
 ed6:	2e          	eq
 ed7:	dc          	im -36
 ed8:	38          	neqbranch

00000ed9 <.LM16>:
 ed9:	73          	loadsp 12

00000eda <.LM17>:
 eda:	75          	loadsp 20
 edb:	54          	storesp 16
 edc:	52          	storesp 8
 edd:	ff          	im -1
 ede:	96          	im 22
 edf:	39          	poppcrel

00000ee0 <.L15>:
 ee0:	80          	im 0

00000ee1 <.LM19>:
 ee1:	0b          	nop
 ee2:	88          	im 8
 ee3:	0c          	store
 ee4:	87          	im 7
 ee5:	3d          	pushspadd
 ee6:	0d          	popsp
 ee7:	04          	poppc

00000ee8 <__do_global_ctors_aux>:
 ee8:	ff          	im -1
 ee9:	3d          	pushspadd
 eea:	0d          	popsp
 eeb:	9f          	im 31
 eec:	8c          	im 12
 eed:	0b          	nop
 eee:	fc          	im -4
 eef:	05          	add
 ef0:	70          	loadsp 0
 ef1:	08          	load
 ef2:	52          	storesp 8
 ef3:	52          	storesp 8
 ef4:	70          	loadsp 0
 ef5:	ff          	im -1
 ef6:	2e          	eq
 ef7:	91          	im 17
 ef8:	38          	neqbranch

00000ef9 <.L10>:
 ef9:	70          	loadsp 0
 efa:	2d          	call
 efb:	fc          	im -4
 efc:	12          	addsp 8
 efd:	70          	loadsp 0
 efe:	08          	load
 eff:	52          	storesp 8
 f00:	52          	storesp 8
 f01:	70          	loadsp 0
 f02:	ff          	im -1
 f03:	2e          	eq
 f04:	09          	not
 f05:	81          	im 1
 f06:	06          	and
 f07:	f1          	im -15
 f08:	38          	neqbranch

00000f09 <.L7>:
 f09:	83          	im 3
 f0a:	3d          	pushspadd
 f0b:	0d          	popsp
 f0c:	04          	poppc

00000f0d <call___do_global_ctors_aux>:
 f0d:	04          	poppc
Disassembly of section .fini:

00000f0e <_fini>:
 f0e:	eb          	im -21
 f0f:	8f          	im 15
 f10:	3f          	callpcrel
 f11:	04          	poppc
Disassembly of section .rodata:

00000f14 <_mask>:
 f14:	00          	breakpoint
 f15:	ff          	im -1
 f16:	ff          	im -1
 f17:	ff          	im -1
 f18:	ff          	im -1
 f19:	00          	breakpoint
 f1a:	ff          	im -1
 f1b:	ff          	im -1
 f1c:	ff          	im -1
 f1d:	ff          	im -1
 f1e:	00          	breakpoint
 f1f:	ff          	im -1
 f20:	ff          	im -1
 f21:	ff          	im -1
 f22:	ff          	im -1
	...

00000f24 <handlers>:
 f24:	00          	breakpoint
 f25:	00          	breakpoint
 f26:	09          	not
 f27:	3c          	syscall
 f28:	00          	breakpoint
 f29:	00          	breakpoint
 f2a:	09          	not
 f2b:	6e          	loadsp 120
 f2c:	00          	breakpoint
 f2d:	00          	breakpoint
 f2e:	09          	not
 f2f:	16          	addsp 24
 f30:	00          	breakpoint
 f31:	00          	breakpoint
 f32:	07          	or
 f33:	a1          	im 33
 f34:	00          	breakpoint
 f35:	00          	breakpoint
 f36:	09          	not
 f37:	c5          	im -59
 f38:	00          	breakpoint
 f39:	00          	breakpoint
 f3a:	09          	not
 f3b:	dc          	im -36
 f3c:	00          	breakpoint
 f3d:	00          	breakpoint
 f3e:	08          	load
 f3f:	34          	storeb
 f40:	00          	breakpoint
 f41:	00          	breakpoint
 f42:	08          	load
 f43:	c3          	im -61
 f44:	00          	breakpoint
 f45:	00          	breakpoint
 f46:	07          	or
 f47:	4d          	storesp 116
 f48:	00          	breakpoint
 f49:	00          	breakpoint
 f4a:	09          	not
 f4b:	f0          	im -16

00000f4c <vstring>:
 f4c:	01          	.byte 1
 f4d:	09          	not
 f4e:	04          	poppc
 f4f:	60          	loadsp 64
 f50:	00          	breakpoint
 f51:	00          	breakpoint
 f52:	6f          	loadsp 124
 f53:	80          	im 0
 f54:	05          	add
 f55:	b8          	im 56
 f56:	d8          	im -40
 f57:	00          	breakpoint
 f58:	a4          	im 36
 f59:	01          	.byte 1
 f5a:	0f          	.byte 15
	...
Disassembly of section .data:

00000f5c <__data_start>:
 f5c:	00          	breakpoint
 f5d:	00          	breakpoint
	...

00000f60 <_cpu_config>:
 f60:	00          	breakpoint
 f61:	00          	breakpoint
	...

00000f64 <__dso_handle>:
 f64:	00          	breakpoint
 f65:	00          	breakpoint
	...

00000f68 <p.0>:
 f68:	00          	breakpoint
 f69:	00          	breakpoint
 f6a:	0f          	.byte 15
 f6b:	94          	im 20
Disassembly of section .bss:

00000f6c <completed.1>:
 f6c:	00          	breakpoint
 f6d:	00          	breakpoint
	...

00000f70 <bdata>:
	...

00000f7c <milisseconds>:
 f7c:	00          	breakpoint
 f7d:	00          	breakpoint
	...

00000f80 <inprogrammode>:
 f80:	00          	breakpoint
 f81:	00          	breakpoint
	...

00000f84 <flash_id>:
 f84:	00          	breakpoint
 f85:	00          	breakpoint
	...
Disassembly of section .ctors:

00000f88 <___ctors>:
 f88:	ff          	im -1
 f89:	ff          	im -1
 f8a:	ff          	im -1
 f8b:	ff          	im -1

00000f8c <__CTOR_END__>:
 f8c:	00          	breakpoint
 f8d:	00          	breakpoint
	...
Disassembly of section .dtors:

00000f90 <___dtors>:
 f90:	ff          	im -1
 f91:	ff          	im -1
 f92:	ff          	im -1
 f93:	ff          	im -1

00000f94 <__DTOR_END__>:
 f94:	00          	breakpoint
 f95:	00          	breakpoint
	...
Disassembly of section .jcr:

00000f98 <___jcr_begin>:
 f98:	00          	breakpoint
 f99:	00          	breakpoint
	...
Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	3c          	syscall
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	04          	poppc
	...
  1f:	2d          	call
  20:	00          	breakpoint
  21:	00          	breakpoint
  22:	00          	breakpoint
  23:	00          	breakpoint
  24:	00          	breakpoint
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	25          	lessthanorequal
  28:	00          	breakpoint
  29:	00          	breakpoint
  2a:	00          	breakpoint
  2b:	00          	breakpoint
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	85          	im 5
  30:	00          	breakpoint
  31:	00          	breakpoint
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	00          	breakpoint
  35:	00          	breakpoint
  36:	00          	breakpoint
  37:	70          	loadsp 0
	...
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	1c          	addsp 48
  44:	00          	breakpoint
  45:	02          	pushsp
  46:	00          	breakpoint
  47:	00          	breakpoint
  48:	01          	.byte 1
  49:	75          	loadsp 20
  4a:	04          	poppc
  4b:	00          	breakpoint
  4c:	00          	breakpoint
  4d:	00          	breakpoint
  4e:	00          	breakpoint
  4f:	00          	breakpoint
  50:	00          	breakpoint
  51:	00          	breakpoint
  52:	0d          	popsp
  53:	2b          	ashiftleft
  54:	00          	breakpoint
  55:	00          	breakpoint
  56:	00          	breakpoint
  57:	bc          	im 60
	...
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	00          	breakpoint
  63:	1c          	addsp 48
  64:	00          	breakpoint
  65:	02          	pushsp
  66:	00          	breakpoint
  67:	00          	breakpoint
  68:	02          	pushsp
  69:	74          	loadsp 16
  6a:	04          	poppc
  6b:	00          	breakpoint
  6c:	00          	breakpoint
  6d:	00          	breakpoint
  6e:	00          	breakpoint
  6f:	00          	breakpoint
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	0d          	popsp
  73:	c4          	im -60
  74:	00          	breakpoint
  75:	00          	breakpoint
  76:	00          	breakpoint
  77:	b6          	im 54
	...
  80:	00          	breakpoint
  81:	00          	breakpoint
  82:	00          	breakpoint
  83:	1c          	addsp 48
  84:	00          	breakpoint
  85:	02          	pushsp
  86:	00          	breakpoint
  87:	00          	breakpoint
  88:	03          	.byte 3
  89:	78          	loadsp 32
  8a:	04          	poppc
  8b:	00          	breakpoint
  8c:	00          	breakpoint
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	00          	breakpoint
  90:	00          	breakpoint
  91:	00          	breakpoint
  92:	0e          	.byte 14
  93:	53          	storesp 12
  94:	00          	breakpoint
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	bb          	im 59
	...
Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	49          	storesp 100
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	00          	breakpoint
   b:	00          	breakpoint
   c:	01          	.byte 1
   d:	75          	loadsp 20
   e:	00          	breakpoint
   f:	00          	breakpoint
  10:	00          	breakpoint
  11:	6a          	loadsp 104
  12:	69          	loadsp 100
  13:	6e          	loadsp 120
  14:	62          	loadsp 72
  15:	79          	loadsp 36
  16:	74          	loadsp 16
  17:	65          	loadsp 84
  18:	00          	breakpoint
  19:	00          	breakpoint
  1a:	00          	breakpoint
  1b:	00          	breakpoint
  1c:	93          	im 19
  1d:	6f          	loadsp 124
  1e:	75          	loadsp 20
  1f:	74          	loadsp 16
  20:	62          	loadsp 72
  21:	79          	loadsp 36
  22:	74          	loadsp 16
  23:	65          	loadsp 84
  24:	00          	breakpoint
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	b8          	im 56
  29:	5f          	storesp 60
  2a:	69          	loadsp 100
  2b:	6e          	loadsp 120
  2c:	69          	loadsp 100
  2d:	74          	loadsp 16
  2e:	49          	storesp 100
  2f:	4f          	storesp 124
  30:	00          	breakpoint
  31:	00          	breakpoint
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	cc          	im -52
  35:	5f          	storesp 60
  36:	72          	loadsp 8
  37:	65          	loadsp 84
  38:	61          	loadsp 68
  39:	64          	loadsp 80
  3a:	43          	storesp 76
  3b:	79          	loadsp 36
  3c:	63          	loadsp 76
  3d:	6c          	loadsp 112
  3e:	65          	loadsp 84
  3f:	73          	loadsp 12
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	01          	.byte 1
  44:	4c          	storesp 112
  45:	4d          	storesp 116
  46:	48          	storesp 96
  47:	5a          	storesp 40
	...
  50:	19          	addsp 36
  51:	00          	breakpoint
  52:	02          	pushsp
  53:	00          	breakpoint
  54:	00          	breakpoint
  55:	01          	.byte 1
  56:	75          	loadsp 20
  57:	00          	breakpoint
  58:	00          	breakpoint
  59:	00          	breakpoint
  5a:	ff          	im -1
  5b:	00          	breakpoint
  5c:	00          	breakpoint
  5d:	00          	breakpoint
  5e:	45          	storesp 84
  5f:	6d          	loadsp 116
  60:	65          	loadsp 84
  61:	6d          	loadsp 116
  62:	63          	loadsp 76
  63:	70          	loadsp 0
  64:	79          	loadsp 36
	...
  6d:	19          	addsp 36
  6e:	00          	breakpoint
  6f:	02          	pushsp
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	02          	pushsp
  73:	74          	loadsp 16
  74:	00          	breakpoint
  75:	00          	breakpoint
  76:	01          	.byte 1
  77:	04          	poppc
  78:	00          	breakpoint
  79:	00          	breakpoint
  7a:	00          	breakpoint
  7b:	85          	im 5
  7c:	6d          	loadsp 116
  7d:	65          	loadsp 84
  7e:	6d          	loadsp 116
  7f:	73          	loadsp 12
  80:	65          	loadsp 84
  81:	74          	loadsp 16
	...
  8a:	19          	addsp 36
  8b:	00          	breakpoint
  8c:	02          	pushsp
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	03          	.byte 3
  90:	78          	loadsp 32
  91:	00          	breakpoint
  92:	00          	breakpoint
  93:	00          	breakpoint
  94:	d1          	im -47
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	00          	breakpoint
  98:	7d          	loadsp 52
  99:	73          	loadsp 12
  9a:	74          	loadsp 16
  9b:	72          	loadsp 8
  9c:	63          	loadsp 76
  9d:	6d          	loadsp 116
  9e:	70          	loadsp 0
  9f:	00          	breakpoint
  a0:	00          	breakpoint
  a1:	00          	breakpoint
	...
Disassembly of section .debug_info:

00000000 <.Ldebug_info0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	01          	.byte 1
   3:	71          	loadsp 4
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	00          	breakpoint
   9:	00          	breakpoint
   a:	04          	poppc
   b:	01          	.byte 1
   c:	00          	breakpoint
   d:	00          	breakpoint
   e:	00          	breakpoint
   f:	00          	breakpoint
  10:	00          	breakpoint
  11:	00          	breakpoint
  12:	00          	breakpoint
  13:	b2          	im 50
  14:	01          	.byte 1
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	00          	breakpoint
  18:	ec          	im -20
  19:	00          	breakpoint
  1a:	00          	breakpoint
  1b:	00          	breakpoint
  1c:	4b          	storesp 108
  1d:	02          	pushsp
  1e:	00          	breakpoint
  1f:	00          	breakpoint
  20:	00          	breakpoint
  21:	11          	addsp 4
  22:	04          	poppc
  23:	07          	or
  24:	02          	pushsp
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	28          	swap
  29:	04          	poppc
  2a:	05          	add
  2b:	02          	pushsp
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	23          	storeh
  30:	08          	load
  31:	05          	add
  32:	03          	.byte 3
  33:	69          	loadsp 100
  34:	6e          	loadsp 120
  35:	74          	loadsp 16
  36:	00          	breakpoint
  37:	04          	poppc
  38:	05          	add
  39:	02          	pushsp
  3a:	00          	breakpoint
  3b:	00          	breakpoint
  3c:	00          	breakpoint
  3d:	16          	addsp 24
  3e:	04          	poppc
  3f:	07          	or
  40:	02          	pushsp
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	00          	breakpoint
  44:	11          	addsp 4
  45:	04          	poppc
  46:	07          	or
  47:	02          	pushsp
  48:	00          	breakpoint
  49:	00          	breakpoint
  4a:	00          	breakpoint
  4b:	c8          	im -56
  4c:	01          	.byte 1
  4d:	08          	load
  4e:	02          	pushsp
  4f:	00          	breakpoint
  50:	00          	breakpoint
  51:	00          	breakpoint
  52:	d6          	im -42
  53:	02          	pushsp
  54:	05          	add
  55:	02          	pushsp
  56:	00          	breakpoint
  57:	00          	breakpoint
  58:	00          	breakpoint
  59:	d1          	im -47
  5a:	01          	.byte 1
  5b:	08          	load
  5c:	02          	pushsp
  5d:	00          	breakpoint
  5e:	00          	breakpoint
  5f:	00          	breakpoint
  60:	9f          	im 31
  61:	02          	pushsp
  62:	07          	or
  63:	02          	pushsp
  64:	00          	breakpoint
  65:	00          	breakpoint
  66:	00          	breakpoint
  67:	0c          	store
  68:	08          	load
  69:	07          	or
  6a:	04          	poppc
  6b:	00          	breakpoint
  6c:	00          	breakpoint
  6d:	00          	breakpoint
  6e:	93          	im 19
  6f:	01          	.byte 1
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	00          	breakpoint
  73:	e0          	im -32
  74:	0b          	nop
  75:	18          	addsp 32
  76:	00          	breakpoint
  77:	00          	breakpoint
  78:	00          	breakpoint
  79:	32          	xor
	...
  82:	02          	pushsp
  83:	90          	im 16
  84:	20          	.byte 32
  85:	05          	add
  86:	76          	loadsp 24
  87:	61          	loadsp 68
  88:	6c          	loadsp 112
  89:	00          	breakpoint
  8a:	0b          	nop
  8b:	19          	addsp 36
  8c:	00          	breakpoint
  8d:	00          	breakpoint
  8e:	00          	breakpoint
  8f:	32          	xor
  90:	01          	.byte 1
  91:	59          	storesp 36
  92:	00          	breakpoint
  93:	06          	and
  94:	00          	breakpoint
  95:	00          	breakpoint
  96:	00          	breakpoint
  97:	b8          	im 56
  98:	01          	.byte 1
  99:	00          	breakpoint
  9a:	00          	breakpoint
  9b:	00          	breakpoint
  9c:	37          	eqbranch
  9d:	0b          	nop
  9e:	2c          	ashiftright
  9f:	01          	.byte 1
	...
  a8:	02          	pushsp
  a9:	90          	im 16
  aa:	20          	.byte 32
  ab:	07          	or
  ac:	63          	loadsp 76
  ad:	00          	breakpoint
  ae:	0b          	nop
  af:	2b          	ashiftleft
  b0:	00          	breakpoint
  b1:	00          	breakpoint
  b2:	00          	breakpoint
  b3:	32          	xor
  b4:	02          	pushsp
  b5:	91          	im 17
  b6:	0c          	store
  b7:	00          	breakpoint
  b8:	08          	load
  b9:	01          	.byte 1
  ba:	00          	breakpoint
  bb:	00          	breakpoint
  bc:	01          	.byte 1
  bd:	15          	addsp 20
  be:	0b          	nop
  bf:	35          	div
  c0:	01          	.byte 1
	...
  c9:	02          	pushsp
  ca:	90          	im 16
  cb:	20          	.byte 32
  cc:	04          	poppc
  cd:	00          	breakpoint
  ce:	00          	breakpoint
  cf:	01          	.byte 1
  d0:	05          	add
  d1:	01          	.byte 1
  d2:	00          	breakpoint
  d3:	00          	breakpoint
  d4:	00          	breakpoint
  d5:	3f          	callpcrel
  d6:	0b          	nop
  d7:	50          	storesp 0
  d8:	00          	breakpoint
  d9:	00          	breakpoint
  da:	00          	breakpoint
  db:	2b          	ashiftleft
	...
  e4:	02          	pushsp
  e5:	90          	im 16
  e6:	20          	.byte 32
  e7:	09          	not
  e8:	00          	breakpoint
  e9:	00          	breakpoint
  ea:	01          	.byte 1
  eb:	1d          	addsp 52
  ec:	0b          	nop
  ed:	51          	storesp 4
  ee:	00          	breakpoint
  ef:	00          	breakpoint
  f0:	00          	breakpoint
  f1:	2b          	ashiftleft
  f2:	06          	and
  f3:	5c          	storesp 48
  f4:	93          	im 19
  f5:	04          	poppc
  f6:	5d          	storesp 52
  f7:	93          	im 19
  f8:	04          	poppc
  f9:	05          	add
  fa:	69          	loadsp 100
  fb:	00          	breakpoint
  fc:	0b          	nop
  fd:	52          	storesp 8
  fe:	00          	breakpoint
  ff:	00          	breakpoint
 100:	00          	breakpoint
 101:	39          	poppcrel
 102:	01          	.byte 1
 103:	5e          	storesp 56
 104:	00          	breakpoint
 105:	0a          	flip
 106:	00          	breakpoint
 107:	00          	breakpoint
 108:	00          	breakpoint
 109:	be          	im 62
 10a:	0b          	nop
 10b:	06          	and
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	00          	breakpoint
 10f:	32          	xor
 110:	01          	.byte 1
 111:	01          	.byte 1
 112:	0a          	flip
 113:	00          	breakpoint
 114:	00          	breakpoint
 115:	00          	breakpoint
 116:	00          	breakpoint
 117:	0b          	nop
 118:	0b          	nop
 119:	00          	breakpoint
 11a:	00          	breakpoint
 11b:	00          	breakpoint
 11c:	32          	xor
 11d:	01          	.byte 1
 11e:	01          	.byte 1
 11f:	09          	not
 120:	00          	breakpoint
 121:	00          	breakpoint
 122:	00          	breakpoint
 123:	e7          	im -25
 124:	0b          	nop
 125:	0c          	store
 126:	00          	breakpoint
 127:	00          	breakpoint
 128:	01          	.byte 1
 129:	30          	neg
 12a:	05          	add
 12b:	03          	.byte 3
 12c:	00          	breakpoint
 12d:	00          	breakpoint
 12e:	00          	breakpoint
 12f:	00          	breakpoint
 130:	0b          	nop
 131:	04          	poppc
 132:	00          	breakpoint
 133:	00          	breakpoint
 134:	01          	.byte 1
 135:	36          	mod
 136:	0c          	store
 137:	00          	breakpoint
 138:	00          	breakpoint
 139:	00          	breakpoint
 13a:	32          	xor
 13b:	09          	not
 13c:	00          	breakpoint
 13d:	00          	breakpoint
 13e:	00          	breakpoint
 13f:	31          	sub
 140:	0b          	nop
 141:	0d          	popsp
 142:	00          	breakpoint
 143:	00          	breakpoint
 144:	01          	.byte 1
 145:	30          	neg
 146:	05          	add
 147:	03          	.byte 3
 148:	00          	breakpoint
 149:	00          	breakpoint
 14a:	00          	breakpoint
 14b:	00          	breakpoint
 14c:	0d          	popsp
 14d:	4d          	storesp 116
 14e:	48          	storesp 96
 14f:	5a          	storesp 40
 150:	00          	breakpoint
 151:	0b          	nop
 152:	0e          	.byte 14
 153:	00          	breakpoint
 154:	00          	breakpoint
 155:	01          	.byte 1
 156:	30          	neg
 157:	01          	.byte 1
 158:	05          	add
 159:	03          	.byte 3
 15a:	00          	breakpoint
 15b:	00          	breakpoint
 15c:	00          	breakpoint
 15d:	00          	breakpoint
 15e:	05          	add
 15f:	6d          	loadsp 116
 160:	68          	loadsp 96
 161:	7a          	loadsp 40
 162:	00          	breakpoint
 163:	0b          	nop
 164:	32          	xor
 165:	00          	breakpoint
 166:	00          	breakpoint
 167:	01          	.byte 1
 168:	6f          	loadsp 124
 169:	05          	add
 16a:	03          	.byte 3
 16b:	00          	breakpoint
 16c:	00          	breakpoint
 16d:	00          	breakpoint
 16e:	00          	breakpoint
 16f:	0e          	.byte 14
 170:	00          	breakpoint
 171:	00          	breakpoint
 172:	00          	breakpoint
 173:	32          	xor
	...

00000175 <.Ldebug_info0>:
 175:	00          	breakpoint
 176:	00          	breakpoint
 177:	00          	breakpoint
 178:	fb          	im -5
 179:	00          	breakpoint
 17a:	02          	pushsp
 17b:	00          	breakpoint
 17c:	00          	breakpoint
 17d:	00          	breakpoint
 17e:	cf          	im -49
 17f:	04          	poppc
 180:	01          	.byte 1
 181:	00          	breakpoint
 182:	00          	breakpoint
 183:	02          	pushsp
 184:	aa          	im 42
 185:	00          	breakpoint
 186:	00          	breakpoint
 187:	0d          	popsp
 188:	c4          	im -60
 189:	00          	breakpoint
 18a:	00          	breakpoint
 18b:	0d          	popsp
 18c:	2b          	ashiftleft
 18d:	00          	breakpoint
 18e:	00          	breakpoint
 18f:	00          	breakpoint
 190:	b2          	im 50
 191:	01          	.byte 1
 192:	00          	breakpoint
 193:	00          	breakpoint
 194:	01          	.byte 1
 195:	36          	mod
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	01          	.byte 1
 199:	79          	loadsp 36
 19a:	02          	pushsp
 19b:	00          	breakpoint
 19c:	00          	breakpoint
 19d:	00          	breakpoint
 19e:	28          	swap
 19f:	04          	poppc
 1a0:	05          	add
 1a1:	03          	.byte 3
 1a2:	00          	breakpoint
 1a3:	00          	breakpoint
 1a4:	01          	.byte 1
 1a5:	2f          	neq
 1a6:	01          	.byte 1
 1a7:	d5          	im -43
 1a8:	00          	breakpoint
 1a9:	00          	breakpoint
 1aa:	00          	breakpoint
 1ab:	37          	eqbranch
 1ac:	02          	pushsp
 1ad:	00          	breakpoint
 1ae:	00          	breakpoint
 1af:	00          	breakpoint
 1b0:	11          	addsp 4
 1b1:	04          	poppc
 1b2:	07          	or
 1b3:	04          	poppc
 1b4:	69          	loadsp 100
 1b5:	6e          	loadsp 120
 1b6:	74          	loadsp 16
 1b7:	00          	breakpoint
 1b8:	04          	poppc
 1b9:	05          	add
 1ba:	05          	add
 1bb:	00          	breakpoint
 1bc:	00          	breakpoint
 1bd:	00          	breakpoint
 1be:	cc          	im -52
 1bf:	01          	.byte 1
 1c0:	00          	breakpoint
 1c1:	00          	breakpoint
 1c2:	01          	.byte 1
 1c3:	d8          	im -40
 1c4:	02          	pushsp
 1c5:	39          	poppcrel
 1c6:	01          	.byte 1
 1c7:	00          	breakpoint
 1c8:	00          	breakpoint
 1c9:	00          	breakpoint
 1ca:	cc          	im -52
 1cb:	00          	breakpoint
 1cc:	00          	breakpoint
 1cd:	0d          	popsp
 1ce:	2b          	ashiftleft
 1cf:	00          	breakpoint
 1d0:	00          	breakpoint
 1d1:	0d          	popsp
 1d2:	c4          	im -60
 1d3:	02          	pushsp
 1d4:	90          	im 16
 1d5:	20          	.byte 32
 1d6:	06          	and
 1d7:	00          	breakpoint
 1d8:	00          	breakpoint
 1d9:	01          	.byte 1
 1da:	d3          	im -45
 1db:	02          	pushsp
 1dc:	35          	div
 1dd:	00          	breakpoint
 1de:	00          	breakpoint
 1df:	00          	breakpoint
 1e0:	cc          	im -52
 1e1:	01          	.byte 1
 1e2:	5c          	storesp 48
 1e3:	06          	and
 1e4:	00          	breakpoint
 1e5:	00          	breakpoint
 1e6:	01          	.byte 1
 1e7:	74          	loadsp 16
 1e8:	02          	pushsp
 1e9:	35          	div
 1ea:	00          	breakpoint
 1eb:	00          	breakpoint
 1ec:	00          	breakpoint
 1ed:	ce          	im -50
 1ee:	02          	pushsp
 1ef:	91          	im 17
 1f0:	1c          	addsp 48
 1f1:	06          	and
 1f2:	00          	breakpoint
 1f3:	00          	breakpoint
 1f4:	01          	.byte 1
 1f5:	df          	im -33
 1f6:	02          	pushsp
 1f7:	35          	div
 1f8:	00          	breakpoint
 1f9:	00          	breakpoint
 1fa:	00          	breakpoint
 1fb:	2c          	ashiftright
 1fc:	02          	pushsp
 1fd:	91          	im 17
 1fe:	20          	.byte 32
 1ff:	07          	or
 200:	64          	loadsp 80
 201:	73          	loadsp 12
 202:	74          	loadsp 16
 203:	00          	breakpoint
 204:	02          	pushsp
 205:	47          	storesp 92
 206:	00          	breakpoint
 207:	00          	breakpoint
 208:	00          	breakpoint
 209:	d5          	im -43
 20a:	01          	.byte 1
 20b:	5b          	storesp 44
 20c:	07          	or
 20d:	73          	loadsp 12
 20e:	72          	loadsp 8
 20f:	63          	loadsp 76
 210:	00          	breakpoint
 211:	02          	pushsp
 212:	48          	storesp 96
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	00          	breakpoint
 216:	e2          	im -30
 217:	01          	.byte 1
 218:	5a          	storesp 40
 219:	08          	load
 21a:	00          	breakpoint
 21b:	00          	breakpoint
 21c:	01          	.byte 1
 21d:	23          	storeh
 21e:	02          	pushsp
 21f:	49          	storesp 100
 220:	00          	breakpoint
 221:	00          	breakpoint
 222:	00          	breakpoint
 223:	ed          	im -19
 224:	01          	.byte 1
 225:	58          	storesp 32
 226:	08          	load
 227:	00          	breakpoint
 228:	00          	breakpoint
 229:	01          	.byte 1
 22a:	68          	loadsp 96
 22b:	02          	pushsp
 22c:	4a          	storesp 104
 22d:	00          	breakpoint
 22e:	00          	breakpoint
 22f:	00          	breakpoint
 230:	f3          	im -13
 231:	01          	.byte 1
 232:	5a          	storesp 40
 233:	07          	or
 234:	6c          	loadsp 112
 235:	65          	loadsp 84
 236:	6e          	loadsp 120
 237:	00          	breakpoint
 238:	02          	pushsp
 239:	4b          	storesp 108
 23a:	00          	breakpoint
 23b:	00          	breakpoint
 23c:	00          	breakpoint
 23d:	3e          	halfmult
 23e:	01          	.byte 1
 23f:	59          	storesp 36
 240:	00          	breakpoint
 241:	09          	not
 242:	04          	poppc
 243:	0a          	flip
 244:	04          	poppc
 245:	00          	breakpoint
 246:	00          	breakpoint
 247:	00          	breakpoint
 248:	d4          	im -44
 249:	0b          	nop
 24a:	0a          	flip
 24b:	04          	poppc
 24c:	00          	breakpoint
 24d:	00          	breakpoint
 24e:	00          	breakpoint
 24f:	db          	im -37
 250:	02          	pushsp
 251:	00          	breakpoint
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	d1          	im -47
 255:	01          	.byte 1
 256:	08          	load
 257:	0a          	flip
 258:	04          	poppc
 259:	00          	breakpoint
 25a:	00          	breakpoint
 25b:	00          	breakpoint
 25c:	e8          	im -24
 25d:	0c          	store
 25e:	00          	breakpoint
 25f:	00          	breakpoint
 260:	00          	breakpoint
 261:	db          	im -37
 262:	0a          	flip
 263:	04          	poppc
 264:	00          	breakpoint
 265:	00          	breakpoint
 266:	00          	breakpoint
 267:	25          	lessthanorequal
 268:	0a          	flip
 269:	04          	poppc
 26a:	00          	breakpoint
 26b:	00          	breakpoint
 26c:	00          	breakpoint
 26d:	f9          	im -7
 26e:	0c          	store
 26f:	00          	breakpoint
 270:	00          	breakpoint
 271:	00          	breakpoint
 272:	25          	lessthanorequal
	...

00000274 <.Ldebug_info0>:
 274:	00          	breakpoint
 275:	00          	breakpoint
 276:	01          	.byte 1
 277:	00          	breakpoint
 278:	00          	breakpoint
 279:	02          	pushsp
 27a:	00          	breakpoint
 27b:	00          	breakpoint
 27c:	01          	.byte 1
 27d:	68          	loadsp 96
 27e:	04          	poppc
 27f:	01          	.byte 1
 280:	00          	breakpoint
 281:	00          	breakpoint
 282:	03          	.byte 3
 283:	fb          	im -5
 284:	00          	breakpoint
 285:	00          	breakpoint
 286:	0e          	.byte 14
 287:	53          	storesp 12
 288:	00          	breakpoint
 289:	00          	breakpoint
 28a:	0d          	popsp
 28b:	c4          	im -60
 28c:	00          	breakpoint
 28d:	00          	breakpoint
 28e:	00          	breakpoint
 28f:	b2          	im 50
 290:	01          	.byte 1
 291:	00          	breakpoint
 292:	00          	breakpoint
 293:	01          	.byte 1
 294:	f8          	im -8
 295:	00          	breakpoint
 296:	00          	breakpoint
 297:	01          	.byte 1
 298:	79          	loadsp 36
 299:	02          	pushsp
 29a:	00          	breakpoint
 29b:	00          	breakpoint
 29c:	00          	breakpoint
 29d:	28          	swap
 29e:	04          	poppc
 29f:	05          	add
 2a0:	02          	pushsp
 2a1:	00          	breakpoint
 2a2:	00          	breakpoint
 2a3:	00          	breakpoint
 2a4:	23          	storeh
 2a5:	08          	load
 2a6:	05          	add
 2a7:	03          	.byte 3
 2a8:	69          	loadsp 100
 2a9:	6e          	loadsp 120
 2aa:	74          	loadsp 16
 2ab:	00          	breakpoint
 2ac:	04          	poppc
 2ad:	05          	add
 2ae:	02          	pushsp
 2af:	00          	breakpoint
 2b0:	00          	breakpoint
 2b1:	00          	breakpoint
 2b2:	16          	addsp 24
 2b3:	04          	poppc
 2b4:	07          	or
 2b5:	02          	pushsp
 2b6:	00          	breakpoint
 2b7:	00          	breakpoint
 2b8:	00          	breakpoint
 2b9:	11          	addsp 4
 2ba:	04          	poppc
 2bb:	07          	or
 2bc:	02          	pushsp
 2bd:	00          	breakpoint
 2be:	00          	breakpoint
 2bf:	00          	breakpoint
 2c0:	c8          	im -56
 2c1:	01          	.byte 1
 2c2:	08          	load
 2c3:	04          	poppc
 2c4:	04          	poppc
 2c5:	02          	pushsp
 2c6:	00          	breakpoint
 2c7:	00          	breakpoint
 2c8:	00          	breakpoint
 2c9:	11          	addsp 4
 2ca:	04          	poppc
 2cb:	07          	or
 2cc:	02          	pushsp
 2cd:	00          	breakpoint
 2ce:	00          	breakpoint
 2cf:	00          	breakpoint
 2d0:	d6          	im -42
 2d1:	02          	pushsp
 2d2:	05          	add
 2d3:	05          	add
 2d4:	04          	poppc
 2d5:	00          	breakpoint
 2d6:	00          	breakpoint
 2d7:	00          	breakpoint
 2d8:	65          	loadsp 84
 2d9:	02          	pushsp
 2da:	00          	breakpoint
 2db:	00          	breakpoint
 2dc:	00          	breakpoint
 2dd:	d1          	im -47
 2de:	01          	.byte 1
 2df:	08          	load
 2e0:	02          	pushsp
 2e1:	00          	breakpoint
 2e2:	00          	breakpoint
 2e3:	00          	breakpoint
 2e4:	9f          	im 31
 2e5:	02          	pushsp
 2e6:	07          	or
 2e7:	02          	pushsp
 2e8:	00          	breakpoint
 2e9:	00          	breakpoint
 2ea:	00          	breakpoint
 2eb:	0c          	store
 2ec:	08          	load
 2ed:	07          	or
 2ee:	06          	and
 2ef:	00          	breakpoint
 2f0:	00          	breakpoint
 2f1:	01          	.byte 1
 2f2:	2f          	neq
 2f3:	02          	pushsp
 2f4:	d5          	im -43
 2f5:	00          	breakpoint
 2f6:	00          	breakpoint
 2f7:	00          	breakpoint
 2f8:	51          	storesp 4
 2f9:	07          	or
 2fa:	00          	breakpoint
 2fb:	00          	breakpoint
 2fc:	00          	breakpoint
 2fd:	fd          	im -3
 2fe:	01          	.byte 1
 2ff:	00          	breakpoint
 300:	00          	breakpoint
 301:	01          	.byte 1
 302:	e4          	im -28
 303:	04          	poppc
 304:	2f          	neq
 305:	01          	.byte 1
 306:	00          	breakpoint
 307:	00          	breakpoint
 308:	00          	breakpoint
 309:	4f          	storesp 124
 30a:	00          	breakpoint
 30b:	00          	breakpoint
 30c:	0d          	popsp
 30d:	c4          	im -60
 30e:	00          	breakpoint
 30f:	00          	breakpoint
 310:	0e          	.byte 14
 311:	53          	storesp 12
 312:	02          	pushsp
 313:	90          	im 16
 314:	20          	.byte 32
 315:	08          	load
 316:	6d          	loadsp 116
 317:	00          	breakpoint
 318:	04          	poppc
 319:	2b          	ashiftleft
 31a:	00          	breakpoint
 31b:	00          	breakpoint
 31c:	00          	breakpoint
 31d:	4f          	storesp 124
 31e:	01          	.byte 1
 31f:	5c          	storesp 48
 320:	08          	load
 321:	63          	loadsp 76
 322:	00          	breakpoint
 323:	04          	poppc
 324:	2b          	ashiftleft
 325:	00          	breakpoint
 326:	00          	breakpoint
 327:	00          	breakpoint
 328:	33          	loadb
 329:	02          	pushsp
 32a:	91          	im 17
 32b:	1c          	addsp 48
 32c:	08          	load
 32d:	6e          	loadsp 120
 32e:	00          	breakpoint
 32f:	04          	poppc
 330:	2b          	ashiftleft
 331:	00          	breakpoint
 332:	00          	breakpoint
 333:	00          	breakpoint
 334:	7a          	loadsp 40
 335:	01          	.byte 1
 336:	59          	storesp 36
 337:	09          	not
 338:	73          	loadsp 12
 339:	00          	breakpoint
 33a:	04          	poppc
 33b:	3a          	config
 33c:	00          	breakpoint
 33d:	00          	breakpoint
 33e:	00          	breakpoint
 33f:	5f          	storesp 60
 340:	01          	.byte 1
 341:	5a          	storesp 40
 342:	0a          	flip
 343:	69          	loadsp 100
 344:	00          	breakpoint
 345:	04          	poppc
 346:	3b          	pushpc
 347:	00          	breakpoint
 348:	00          	breakpoint
 349:	00          	breakpoint
 34a:	33          	loadb
 34b:	0b          	nop
 34c:	00          	breakpoint
 34d:	00          	breakpoint
 34e:	02          	pushsp
 34f:	2a          	lshiftright
 350:	04          	poppc
 351:	3c          	syscall
 352:	00          	breakpoint
 353:	00          	breakpoint
 354:	00          	breakpoint
 355:	51          	storesp 4
 356:	01          	.byte 1
 357:	5a          	storesp 40
 358:	0b          	nop
 359:	00          	breakpoint
 35a:	00          	breakpoint
 35b:	01          	.byte 1
 35c:	eb          	im -21
 35d:	04          	poppc
 35e:	3d          	pushspadd
 35f:	00          	breakpoint
 360:	00          	breakpoint
 361:	00          	breakpoint
 362:	fd          	im -3
 363:	01          	.byte 1
 364:	58          	storesp 32
 365:	09          	not
 366:	64          	loadsp 80
 367:	00          	breakpoint
 368:	04          	poppc
 369:	3e          	halfmult
 36a:	00          	breakpoint
 36b:	00          	breakpoint
 36c:	00          	breakpoint
 36d:	3a          	config
 36e:	01          	.byte 1
 36f:	5b          	storesp 44
 370:	00          	breakpoint
 371:	05          	add
 372:	04          	poppc
 373:	00          	breakpoint
 374:	00          	breakpoint
 375:	00          	breakpoint
 376:	51          	storesp 4
	...

00000378 <.Ldebug_info0>:
 378:	00          	breakpoint
 379:	00          	breakpoint
 37a:	00          	breakpoint
 37b:	cd          	im -51
 37c:	00          	breakpoint
 37d:	02          	pushsp
 37e:	00          	breakpoint
 37f:	00          	breakpoint
 380:	02          	pushsp
 381:	02          	pushsp
 382:	04          	poppc
 383:	01          	.byte 1
 384:	00          	breakpoint
 385:	00          	breakpoint
 386:	05          	add
 387:	c0          	im -64
 388:	00          	breakpoint
 389:	00          	breakpoint
 38a:	0e          	.byte 14
 38b:	e8          	im -24
 38c:	00          	breakpoint
 38d:	00          	breakpoint
 38e:	0e          	.byte 14
 38f:	53          	storesp 12
 390:	00          	breakpoint
 391:	00          	breakpoint
 392:	00          	breakpoint
 393:	b2          	im 50
 394:	01          	.byte 1
 395:	00          	breakpoint
 396:	00          	breakpoint
 397:	02          	pushsp
 398:	31          	sub
 399:	00          	breakpoint
 39a:	00          	breakpoint
 39b:	01          	.byte 1
 39c:	79          	loadsp 36
 39d:	02          	pushsp
 39e:	00          	breakpoint
 39f:	00          	breakpoint
 3a0:	00          	breakpoint
 3a1:	28          	swap
 3a2:	04          	poppc
 3a3:	05          	add
 3a4:	02          	pushsp
 3a5:	00          	breakpoint
 3a6:	00          	breakpoint
 3a7:	00          	breakpoint
 3a8:	23          	storeh
 3a9:	08          	load
 3aa:	05          	add
 3ab:	03          	.byte 3
 3ac:	69          	loadsp 100
 3ad:	6e          	loadsp 120
 3ae:	74          	loadsp 16
 3af:	00          	breakpoint
 3b0:	04          	poppc
 3b1:	05          	add
 3b2:	02          	pushsp
 3b3:	00          	breakpoint
 3b4:	00          	breakpoint
 3b5:	00          	breakpoint
 3b6:	16          	addsp 24
 3b7:	04          	poppc
 3b8:	07          	or
 3b9:	02          	pushsp
 3ba:	00          	breakpoint
 3bb:	00          	breakpoint
 3bc:	00          	breakpoint
 3bd:	11          	addsp 4
 3be:	04          	poppc
 3bf:	07          	or
 3c0:	02          	pushsp
 3c1:	00          	breakpoint
 3c2:	00          	breakpoint
 3c3:	00          	breakpoint
 3c4:	c8          	im -56
 3c5:	01          	.byte 1
 3c6:	08          	load
 3c7:	02          	pushsp
 3c8:	00          	breakpoint
 3c9:	00          	breakpoint
 3ca:	00          	breakpoint
 3cb:	11          	addsp 4
 3cc:	04          	poppc
 3cd:	07          	or
 3ce:	02          	pushsp
 3cf:	00          	breakpoint
 3d0:	00          	breakpoint
 3d1:	00          	breakpoint
 3d2:	d6          	im -42
 3d3:	02          	pushsp
 3d4:	05          	add
 3d5:	02          	pushsp
 3d6:	00          	breakpoint
 3d7:	00          	breakpoint
 3d8:	00          	breakpoint
 3d9:	d1          	im -47
 3da:	01          	.byte 1
 3db:	08          	load
 3dc:	04          	poppc
 3dd:	04          	poppc
 3de:	00          	breakpoint
 3df:	00          	breakpoint
 3e0:	00          	breakpoint
 3e1:	6a          	loadsp 104
 3e2:	05          	add
 3e3:	00          	breakpoint
 3e4:	00          	breakpoint
 3e5:	00          	breakpoint
 3e6:	5d          	storesp 52
 3e7:	02          	pushsp
 3e8:	00          	breakpoint
 3e9:	00          	breakpoint
 3ea:	00          	breakpoint
 3eb:	9f          	im 31
 3ec:	02          	pushsp
 3ed:	07          	or
 3ee:	02          	pushsp
 3ef:	00          	breakpoint
 3f0:	00          	breakpoint
 3f1:	00          	breakpoint
 3f2:	0c          	store
 3f3:	08          	load
 3f4:	07          	or
 3f5:	06          	and
 3f6:	00          	breakpoint
 3f7:	00          	breakpoint
 3f8:	00          	breakpoint
 3f9:	ca          	im -54
 3fa:	01          	.byte 1
 3fb:	00          	breakpoint
 3fc:	00          	breakpoint
 3fd:	02          	pushsp
 3fe:	63          	loadsp 76
 3ff:	04          	poppc
 400:	40          	storesp 64
 401:	01          	.byte 1
 402:	00          	breakpoint
 403:	00          	breakpoint
 404:	00          	breakpoint
 405:	33          	loadb
 406:	00          	breakpoint
 407:	00          	breakpoint
 408:	0e          	.byte 14
 409:	53          	storesp 12
 40a:	00          	breakpoint
 40b:	00          	breakpoint
 40c:	0e          	.byte 14
 40d:	e8          	im -24
 40e:	02          	pushsp
 40f:	90          	im 16
 410:	20          	.byte 32
 411:	07          	or
 412:	73          	loadsp 12
 413:	31          	sub
 414:	00          	breakpoint
 415:	04          	poppc
 416:	3d          	pushspadd
 417:	00          	breakpoint
 418:	00          	breakpoint
 419:	00          	breakpoint
 41a:	64          	loadsp 80
 41b:	01          	.byte 1
 41c:	59          	storesp 36
 41d:	07          	or
 41e:	73          	loadsp 12
 41f:	32          	xor
 420:	00          	breakpoint
 421:	04          	poppc
 422:	3d          	pushspadd
 423:	00          	breakpoint
 424:	00          	breakpoint
 425:	00          	breakpoint
 426:	64          	loadsp 80
 427:	01          	.byte 1
 428:	5a          	storesp 40
 429:	08          	load
 42a:	61          	loadsp 68
 42b:	31          	sub
 42c:	00          	breakpoint
 42d:	04          	poppc
 42e:	4a          	storesp 104
 42f:	00          	breakpoint
 430:	00          	breakpoint
 431:	00          	breakpoint
 432:	ca          	im -54
 433:	01          	.byte 1
 434:	5b          	storesp 44
 435:	08          	load
 436:	61          	loadsp 68
 437:	32          	xor
 438:	00          	breakpoint
 439:	04          	poppc
 43a:	4b          	storesp 108
 43b:	00          	breakpoint
 43c:	00          	breakpoint
 43d:	00          	breakpoint
 43e:	ca          	im -54
 43f:	01          	.byte 1
 440:	5c          	storesp 48
 441:	00          	breakpoint
 442:	04          	poppc
 443:	04          	poppc
 444:	00          	breakpoint
 445:	00          	breakpoint
 446:	00          	breakpoint
 447:	4f          	storesp 124
	...
Disassembly of section .debug_abbrev:

00000000 <.Ldebug_abbrev0>:
   0:	01          	.byte 1
   1:	11          	addsp 4
   2:	01          	.byte 1
   3:	10          	addsp 0
   4:	06          	and
   5:	25          	lessthanorequal
   6:	0e          	.byte 14
   7:	13          	addsp 12
   8:	0b          	nop
   9:	03          	.byte 3
   a:	0e          	.byte 14
   b:	1b          	addsp 44
   c:	0e          	.byte 14
   d:	00          	breakpoint
   e:	00          	breakpoint
   f:	02          	pushsp
  10:	24          	lessthan
  11:	00          	breakpoint
  12:	03          	.byte 3
  13:	0e          	.byte 14
  14:	0b          	nop
  15:	0b          	nop
  16:	3e          	halfmult
  17:	0b          	nop
  18:	00          	breakpoint
  19:	00          	breakpoint
  1a:	03          	.byte 3
  1b:	24          	lessthan
  1c:	00          	breakpoint
  1d:	03          	.byte 3
  1e:	08          	load
  1f:	0b          	nop
  20:	0b          	nop
  21:	3e          	halfmult
  22:	0b          	nop
  23:	00          	breakpoint
  24:	00          	breakpoint
  25:	04          	poppc
  26:	2e          	eq
  27:	01          	.byte 1
  28:	01          	.byte 1
  29:	13          	addsp 12
  2a:	3f          	callpcrel
  2b:	0c          	store
  2c:	03          	.byte 3
  2d:	0e          	.byte 14
  2e:	3a          	config
  2f:	0b          	nop
  30:	3b          	pushpc
  31:	0b          	nop
  32:	49          	storesp 100
  33:	13          	addsp 12
  34:	11          	addsp 4
  35:	01          	.byte 1
  36:	12          	addsp 8
  37:	01          	.byte 1
  38:	40          	storesp 64
  39:	0a          	flip
  3a:	00          	breakpoint
  3b:	00          	breakpoint
  3c:	05          	add
  3d:	34          	storeb
  3e:	00          	breakpoint
  3f:	03          	.byte 3
  40:	08          	load
  41:	3a          	config
  42:	0b          	nop
  43:	3b          	pushpc
  44:	0b          	nop
  45:	49          	storesp 100
  46:	13          	addsp 12
  47:	02          	pushsp
  48:	0a          	flip
  49:	00          	breakpoint
  4a:	00          	breakpoint
  4b:	06          	and
  4c:	2e          	eq
  4d:	01          	.byte 1
  4e:	01          	.byte 1
  4f:	13          	addsp 12
  50:	3f          	callpcrel
  51:	0c          	store
  52:	03          	.byte 3
  53:	0e          	.byte 14
  54:	3a          	config
  55:	0b          	nop
  56:	3b          	pushpc
  57:	0b          	nop
  58:	27          	ulessthanorequal
  59:	0c          	store
  5a:	11          	addsp 4
  5b:	01          	.byte 1
  5c:	12          	addsp 8
  5d:	01          	.byte 1
  5e:	40          	storesp 64
  5f:	0a          	flip
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	07          	or
  63:	05          	add
  64:	00          	breakpoint
  65:	03          	.byte 3
  66:	08          	load
  67:	3a          	config
  68:	0b          	nop
  69:	3b          	pushpc
  6a:	0b          	nop
  6b:	49          	storesp 100
  6c:	13          	addsp 12
  6d:	02          	pushsp
  6e:	0a          	flip
  6f:	00          	breakpoint
  70:	00          	breakpoint
  71:	08          	load
  72:	2e          	eq
  73:	00          	breakpoint
  74:	3f          	callpcrel
  75:	0c          	store
  76:	03          	.byte 3
  77:	0e          	.byte 14
  78:	3a          	config
  79:	0b          	nop
  7a:	3b          	pushpc
  7b:	0b          	nop
  7c:	27          	ulessthanorequal
  7d:	0c          	store
  7e:	11          	addsp 4
  7f:	01          	.byte 1
  80:	12          	addsp 8
  81:	01          	.byte 1
  82:	40          	storesp 64
  83:	0a          	flip
  84:	00          	breakpoint
  85:	00          	breakpoint
  86:	09          	not
  87:	34          	storeb
  88:	00          	breakpoint
  89:	03          	.byte 3
  8a:	0e          	.byte 14
  8b:	3a          	config
  8c:	0b          	nop
  8d:	3b          	pushpc
  8e:	0b          	nop
  8f:	49          	storesp 100
  90:	13          	addsp 12
  91:	02          	pushsp
  92:	0a          	flip
  93:	00          	breakpoint
  94:	00          	breakpoint
  95:	0a          	flip
  96:	34          	storeb
  97:	00          	breakpoint
  98:	03          	.byte 3
  99:	0e          	.byte 14
  9a:	3a          	config
  9b:	0b          	nop
  9c:	3b          	pushpc
  9d:	0b          	nop
  9e:	49          	storesp 100
  9f:	13          	addsp 12
  a0:	3f          	callpcrel
  a1:	0c          	store
  a2:	3c          	syscall
  a3:	0c          	store
  a4:	00          	breakpoint
  a5:	00          	breakpoint
  a6:	0b          	nop
  a7:	0f          	.byte 15
  a8:	00          	breakpoint
  a9:	0b          	nop
  aa:	0b          	nop
  ab:	49          	storesp 100
  ac:	13          	addsp 12
  ad:	00          	breakpoint
  ae:	00          	breakpoint
  af:	0c          	store
  b0:	35          	div
  b1:	00          	breakpoint
  b2:	49          	storesp 100
  b3:	13          	addsp 12
  b4:	00          	breakpoint
  b5:	00          	breakpoint
  b6:	0d          	popsp
  b7:	34          	storeb
  b8:	00          	breakpoint
  b9:	03          	.byte 3
  ba:	08          	load
  bb:	3a          	config
  bc:	0b          	nop
  bd:	3b          	pushpc
  be:	0b          	nop
  bf:	49          	storesp 100
  c0:	13          	addsp 12
  c1:	3f          	callpcrel
  c2:	0c          	store
  c3:	02          	pushsp
  c4:	0a          	flip
  c5:	00          	breakpoint
  c6:	00          	breakpoint
  c7:	0e          	.byte 14
  c8:	26          	ulessthan
  c9:	00          	breakpoint
  ca:	49          	storesp 100
  cb:	13          	addsp 12
  cc:	00          	breakpoint
	...

000000cf <.Ldebug_abbrev0>:
  cf:	01          	.byte 1
  d0:	11          	addsp 4
  d1:	01          	.byte 1
  d2:	10          	addsp 0
  d3:	06          	and
  d4:	12          	addsp 8
  d5:	01          	.byte 1
  d6:	11          	addsp 4
  d7:	01          	.byte 1
  d8:	25          	lessthanorequal
  d9:	0e          	.byte 14
  da:	13          	addsp 12
  db:	0b          	nop
  dc:	03          	.byte 3
  dd:	0e          	.byte 14
  de:	1b          	addsp 44
  df:	0e          	.byte 14
  e0:	00          	breakpoint
  e1:	00          	breakpoint
  e2:	02          	pushsp
  e3:	24          	lessthan
  e4:	00          	breakpoint
  e5:	03          	.byte 3
  e6:	0e          	.byte 14
  e7:	0b          	nop
  e8:	0b          	nop
  e9:	3e          	halfmult
  ea:	0b          	nop
  eb:	00          	breakpoint
  ec:	00          	breakpoint
  ed:	03          	.byte 3
  ee:	16          	addsp 24
  ef:	00          	breakpoint
  f0:	03          	.byte 3
  f1:	0e          	.byte 14
  f2:	3a          	config
  f3:	0b          	nop
  f4:	3b          	pushpc
  f5:	0b          	nop
  f6:	49          	storesp 100
  f7:	13          	addsp 12
  f8:	00          	breakpoint
  f9:	00          	breakpoint
  fa:	04          	poppc
  fb:	24          	lessthan
  fc:	00          	breakpoint
  fd:	03          	.byte 3
  fe:	08          	load
  ff:	0b          	nop
 100:	0b          	nop
 101:	3e          	halfmult
 102:	0b          	nop
 103:	00          	breakpoint
 104:	00          	breakpoint
 105:	05          	add
 106:	2e          	eq
 107:	01          	.byte 1
 108:	01          	.byte 1
 109:	13          	addsp 12
 10a:	3f          	callpcrel
 10b:	0c          	store
 10c:	03          	.byte 3
 10d:	0e          	.byte 14
 10e:	3a          	config
 10f:	0b          	nop
 110:	3b          	pushpc
 111:	0b          	nop
 112:	27          	ulessthanorequal
 113:	0c          	store
 114:	49          	storesp 100
 115:	13          	addsp 12
 116:	11          	addsp 4
 117:	01          	.byte 1
 118:	12          	addsp 8
 119:	01          	.byte 1
 11a:	40          	storesp 64
 11b:	0a          	flip
 11c:	00          	breakpoint
 11d:	00          	breakpoint
 11e:	06          	and
 11f:	05          	add
 120:	00          	breakpoint
 121:	03          	.byte 3
 122:	0e          	.byte 14
 123:	3a          	config
 124:	0b          	nop
 125:	3b          	pushpc
 126:	0b          	nop
 127:	49          	storesp 100
 128:	13          	addsp 12
 129:	02          	pushsp
 12a:	0a          	flip
 12b:	00          	breakpoint
 12c:	00          	breakpoint
 12d:	07          	or
 12e:	34          	storeb
 12f:	00          	breakpoint
 130:	03          	.byte 3
 131:	08          	load
 132:	3a          	config
 133:	0b          	nop
 134:	3b          	pushpc
 135:	0b          	nop
 136:	49          	storesp 100
 137:	13          	addsp 12
 138:	02          	pushsp
 139:	0a          	flip
 13a:	00          	breakpoint
 13b:	00          	breakpoint
 13c:	08          	load
 13d:	34          	storeb
 13e:	00          	breakpoint
 13f:	03          	.byte 3
 140:	0e          	.byte 14
 141:	3a          	config
 142:	0b          	nop
 143:	3b          	pushpc
 144:	0b          	nop
 145:	49          	storesp 100
 146:	13          	addsp 12
 147:	02          	pushsp
 148:	0a          	flip
 149:	00          	breakpoint
 14a:	00          	breakpoint
 14b:	09          	not
 14c:	0f          	.byte 15
 14d:	00          	breakpoint
 14e:	0b          	nop
 14f:	0b          	nop
 150:	00          	breakpoint
 151:	00          	breakpoint
 152:	0a          	flip
 153:	0f          	.byte 15
 154:	00          	breakpoint
 155:	0b          	nop
 156:	0b          	nop
 157:	49          	storesp 100
 158:	13          	addsp 12
 159:	00          	breakpoint
 15a:	00          	breakpoint
 15b:	0b          	nop
 15c:	26          	ulessthan
 15d:	00          	breakpoint
 15e:	00          	breakpoint
 15f:	00          	breakpoint
 160:	0c          	store
 161:	26          	ulessthan
 162:	00          	breakpoint
 163:	49          	storesp 100
 164:	13          	addsp 12
 165:	00          	breakpoint
	...

00000168 <.Ldebug_abbrev0>:
 168:	01          	.byte 1
 169:	11          	addsp 4
 16a:	01          	.byte 1
 16b:	10          	addsp 0
 16c:	06          	and
 16d:	12          	addsp 8
 16e:	01          	.byte 1
 16f:	11          	addsp 4
 170:	01          	.byte 1
 171:	25          	lessthanorequal
 172:	0e          	.byte 14
 173:	13          	addsp 12
 174:	0b          	nop
 175:	03          	.byte 3
 176:	0e          	.byte 14
 177:	1b          	addsp 44
 178:	0e          	.byte 14
 179:	00          	breakpoint
 17a:	00          	breakpoint
 17b:	02          	pushsp
 17c:	24          	lessthan
 17d:	00          	breakpoint
 17e:	03          	.byte 3
 17f:	0e          	.byte 14
 180:	0b          	nop
 181:	0b          	nop
 182:	3e          	halfmult
 183:	0b          	nop
 184:	00          	breakpoint
 185:	00          	breakpoint
 186:	03          	.byte 3
 187:	24          	lessthan
 188:	00          	breakpoint
 189:	03          	.byte 3
 18a:	08          	load
 18b:	0b          	nop
 18c:	0b          	nop
 18d:	3e          	halfmult
 18e:	0b          	nop
 18f:	00          	breakpoint
 190:	00          	breakpoint
 191:	04          	poppc
 192:	0f          	.byte 15
 193:	00          	breakpoint
 194:	0b          	nop
 195:	0b          	nop
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	05          	add
 199:	0f          	.byte 15
 19a:	00          	breakpoint
 19b:	0b          	nop
 19c:	0b          	nop
 19d:	49          	storesp 100
 19e:	13          	addsp 12
 19f:	00          	breakpoint
 1a0:	00          	breakpoint
 1a1:	06          	and
 1a2:	16          	addsp 24
 1a3:	00          	breakpoint
 1a4:	03          	.byte 3
 1a5:	0e          	.byte 14
 1a6:	3a          	config
 1a7:	0b          	nop
 1a8:	3b          	pushpc
 1a9:	0b          	nop
 1aa:	49          	storesp 100
 1ab:	13          	addsp 12
 1ac:	00          	breakpoint
 1ad:	00          	breakpoint
 1ae:	07          	or
 1af:	2e          	eq
 1b0:	01          	.byte 1
 1b1:	01          	.byte 1
 1b2:	13          	addsp 12
 1b3:	3f          	callpcrel
 1b4:	0c          	store
 1b5:	03          	.byte 3
 1b6:	0e          	.byte 14
 1b7:	3a          	config
 1b8:	0b          	nop
 1b9:	3b          	pushpc
 1ba:	0b          	nop
 1bb:	27          	ulessthanorequal
 1bc:	0c          	store
 1bd:	49          	storesp 100
 1be:	13          	addsp 12
 1bf:	11          	addsp 4
 1c0:	01          	.byte 1
 1c1:	12          	addsp 8
 1c2:	01          	.byte 1
 1c3:	40          	storesp 64
 1c4:	0a          	flip
 1c5:	00          	breakpoint
 1c6:	00          	breakpoint
 1c7:	08          	load
 1c8:	05          	add
 1c9:	00          	breakpoint
 1ca:	03          	.byte 3
 1cb:	08          	load
 1cc:	3a          	config
 1cd:	0b          	nop
 1ce:	3b          	pushpc
 1cf:	0b          	nop
 1d0:	49          	storesp 100
 1d1:	13          	addsp 12
 1d2:	02          	pushsp
 1d3:	0a          	flip
 1d4:	00          	breakpoint
 1d5:	00          	breakpoint
 1d6:	09          	not
 1d7:	34          	storeb
 1d8:	00          	breakpoint
 1d9:	03          	.byte 3
 1da:	08          	load
 1db:	3a          	config
 1dc:	0b          	nop
 1dd:	3b          	pushpc
 1de:	0b          	nop
 1df:	49          	storesp 100
 1e0:	13          	addsp 12
 1e1:	02          	pushsp
 1e2:	0a          	flip
 1e3:	00          	breakpoint
 1e4:	00          	breakpoint
 1e5:	0a          	flip
 1e6:	34          	storeb
 1e7:	00          	breakpoint
 1e8:	03          	.byte 3
 1e9:	08          	load
 1ea:	3a          	config
 1eb:	0b          	nop
 1ec:	3b          	pushpc
 1ed:	0b          	nop
 1ee:	49          	storesp 100
 1ef:	13          	addsp 12
 1f0:	00          	breakpoint
 1f1:	00          	breakpoint
 1f2:	0b          	nop
 1f3:	34          	storeb
 1f4:	00          	breakpoint
 1f5:	03          	.byte 3
 1f6:	0e          	.byte 14
 1f7:	3a          	config
 1f8:	0b          	nop
 1f9:	3b          	pushpc
 1fa:	0b          	nop
 1fb:	49          	storesp 100
 1fc:	13          	addsp 12
 1fd:	02          	pushsp
 1fe:	0a          	flip
 1ff:	00          	breakpoint
	...

00000202 <.Ldebug_abbrev0>:
 202:	01          	.byte 1
 203:	11          	addsp 4
 204:	01          	.byte 1
 205:	10          	addsp 0
 206:	06          	and
 207:	12          	addsp 8
 208:	01          	.byte 1
 209:	11          	addsp 4
 20a:	01          	.byte 1
 20b:	25          	lessthanorequal
 20c:	0e          	.byte 14
 20d:	13          	addsp 12
 20e:	0b          	nop
 20f:	03          	.byte 3
 210:	0e          	.byte 14
 211:	1b          	addsp 44
 212:	0e          	.byte 14
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	02          	pushsp
 216:	24          	lessthan
 217:	00          	breakpoint
 218:	03          	.byte 3
 219:	0e          	.byte 14
 21a:	0b          	nop
 21b:	0b          	nop
 21c:	3e          	halfmult
 21d:	0b          	nop
 21e:	00          	breakpoint
 21f:	00          	breakpoint
 220:	03          	.byte 3
 221:	24          	lessthan
 222:	00          	breakpoint
 223:	03          	.byte 3
 224:	08          	load
 225:	0b          	nop
 226:	0b          	nop
 227:	3e          	halfmult
 228:	0b          	nop
 229:	00          	breakpoint
 22a:	00          	breakpoint
 22b:	04          	poppc
 22c:	0f          	.byte 15
 22d:	00          	breakpoint
 22e:	0b          	nop
 22f:	0b          	nop
 230:	49          	storesp 100
 231:	13          	addsp 12
 232:	00          	breakpoint
 233:	00          	breakpoint
 234:	05          	add
 235:	26          	ulessthan
 236:	00          	breakpoint
 237:	49          	storesp 100
 238:	13          	addsp 12
 239:	00          	breakpoint
 23a:	00          	breakpoint
 23b:	06          	and
 23c:	2e          	eq
 23d:	01          	.byte 1
 23e:	01          	.byte 1
 23f:	13          	addsp 12
 240:	3f          	callpcrel
 241:	0c          	store
 242:	03          	.byte 3
 243:	0e          	.byte 14
 244:	3a          	config
 245:	0b          	nop
 246:	3b          	pushpc
 247:	0b          	nop
 248:	27          	ulessthanorequal
 249:	0c          	store
 24a:	49          	storesp 100
 24b:	13          	addsp 12
 24c:	11          	addsp 4
 24d:	01          	.byte 1
 24e:	12          	addsp 8
 24f:	01          	.byte 1
 250:	40          	storesp 64
 251:	0a          	flip
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	07          	or
 255:	05          	add
 256:	00          	breakpoint
 257:	03          	.byte 3
 258:	08          	load
 259:	3a          	config
 25a:	0b          	nop
 25b:	3b          	pushpc
 25c:	0b          	nop
 25d:	49          	storesp 100
 25e:	13          	addsp 12
 25f:	02          	pushsp
 260:	0a          	flip
 261:	00          	breakpoint
 262:	00          	breakpoint
 263:	08          	load
 264:	34          	storeb
 265:	00          	breakpoint
 266:	03          	.byte 3
 267:	08          	load
 268:	3a          	config
 269:	0b          	nop
 26a:	3b          	pushpc
 26b:	0b          	nop
 26c:	49          	storesp 100
 26d:	13          	addsp 12
 26e:	02          	pushsp
 26f:	0a          	flip
 270:	00          	breakpoint
	...
Disassembly of section .debug_line:

00000000 <.Ldebug_line0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	02          	pushsp
   3:	8c          	im 12
   4:	00          	breakpoint
   5:	02          	pushsp
   6:	00          	breakpoint
   7:	00          	breakpoint
   8:	01          	.byte 1
   9:	52          	storesp 8
   a:	01          	.byte 1
   b:	01          	.byte 1
   c:	f6          	im -10
   d:	f5          	im -11
   e:	0a          	flip
   f:	00          	breakpoint
  10:	01          	.byte 1
  11:	01          	.byte 1
  12:	01          	.byte 1
  13:	01          	.byte 1
  14:	00          	breakpoint
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	01          	.byte 1
  18:	2e          	eq
  19:	2e          	eq
  1a:	2f          	neq
  1b:	2e          	eq
  1c:	2e          	eq
  1d:	2f          	neq
  1e:	2e          	eq
  1f:	2e          	eq
  20:	2f          	neq
  21:	2e          	eq
  22:	2e          	eq
  23:	2f          	neq
  24:	2e          	eq
  25:	2e          	eq
  26:	2f          	neq
  27:	67          	loadsp 92
  28:	63          	loadsp 76
  29:	63          	loadsp 76
  2a:	2f          	neq
  2b:	6c          	loadsp 112
  2c:	69          	loadsp 100
  2d:	62          	loadsp 72
  2e:	67          	loadsp 92
  2f:	6c          	loadsp 112
  30:	6f          	loadsp 124
  31:	73          	loadsp 12
  32:	73          	loadsp 12
  33:	2f          	neq
  34:	7a          	loadsp 40
  35:	70          	loadsp 0
  36:	75          	loadsp 20
  37:	00          	breakpoint
  38:	2f          	neq
  39:	68          	loadsp 96
  3a:	6f          	loadsp 124
  3b:	6d          	loadsp 116
  3c:	65          	loadsp 84
  3d:	2f          	neq
  3e:	61          	loadsp 68
  3f:	6c          	loadsp 112
  40:	76          	loadsp 24
  41:	69          	loadsp 100
  42:	65          	loadsp 84
  43:	62          	loadsp 72
  44:	6f          	loadsp 124
  45:	79          	loadsp 36
  46:	2f          	neq
  47:	7a          	loadsp 40
  48:	70          	loadsp 0
  49:	75          	loadsp 20
  4a:	2f          	neq
  4b:	74          	loadsp 16
  4c:	6f          	loadsp 124
  4d:	6f          	loadsp 124
  4e:	6c          	loadsp 112
  4f:	63          	loadsp 76
  50:	68          	loadsp 96
  51:	61          	loadsp 68
  52:	69          	loadsp 100
  53:	6e          	loadsp 120
  54:	2f          	neq
  55:	74          	loadsp 16
  56:	6f          	loadsp 124
  57:	6f          	loadsp 124
  58:	6c          	loadsp 112
  59:	63          	loadsp 76
  5a:	68          	loadsp 96
  5b:	61          	loadsp 68
  5c:	69          	loadsp 100
  5d:	6e          	loadsp 120
  5e:	2f          	neq
  5f:	74          	loadsp 16
  60:	6f          	loadsp 124
  61:	6f          	loadsp 124
  62:	6c          	loadsp 112
  63:	63          	loadsp 76
  64:	68          	loadsp 96
  65:	61          	loadsp 68
  66:	69          	loadsp 100
  67:	6e          	loadsp 120
  68:	2f          	neq
  69:	67          	loadsp 92
  6a:	63          	loadsp 76
  6b:	63          	loadsp 76
  6c:	2f          	neq
  6d:	6e          	loadsp 120
  6e:	65          	loadsp 84
  6f:	77          	loadsp 28
  70:	6c          	loadsp 112
  71:	69          	loadsp 100
  72:	62          	loadsp 72
  73:	2f          	neq
  74:	6c          	loadsp 112
  75:	69          	loadsp 100
  76:	62          	loadsp 72
  77:	63          	loadsp 76
  78:	2f          	neq
  79:	69          	loadsp 100
  7a:	6e          	loadsp 120
  7b:	63          	loadsp 76
  7c:	6c          	loadsp 112
  7d:	75          	loadsp 20
  7e:	64          	loadsp 80
  7f:	65          	loadsp 84
  80:	00          	breakpoint
  81:	2f          	neq
  82:	68          	loadsp 96
  83:	6f          	loadsp 124
  84:	6d          	loadsp 116
  85:	65          	loadsp 84
  86:	2f          	neq
  87:	61          	loadsp 68
  88:	6c          	loadsp 112
  89:	76          	loadsp 24
  8a:	69          	loadsp 100
  8b:	65          	loadsp 84
  8c:	62          	loadsp 72
  8d:	6f          	loadsp 124
  8e:	79          	loadsp 36
  8f:	2f          	neq
  90:	7a          	loadsp 40
  91:	70          	loadsp 0
  92:	75          	loadsp 20
  93:	2f          	neq
  94:	74          	loadsp 16
  95:	6f          	loadsp 124
  96:	6f          	loadsp 124
  97:	6c          	loadsp 112
  98:	63          	loadsp 76
  99:	68          	loadsp 96
  9a:	61          	loadsp 68
  9b:	69          	loadsp 100
  9c:	6e          	loadsp 120
  9d:	2f          	neq
  9e:	74          	loadsp 16
  9f:	6f          	loadsp 124
  a0:	6f          	loadsp 124
  a1:	6c          	loadsp 112
  a2:	63          	loadsp 76
  a3:	68          	loadsp 96
  a4:	61          	loadsp 68
  a5:	69          	loadsp 100
  a6:	6e          	loadsp 120
  a7:	2f          	neq
  a8:	74          	loadsp 16
  a9:	6f          	loadsp 124
  aa:	6f          	loadsp 124
  ab:	6c          	loadsp 112
  ac:	63          	loadsp 76
  ad:	68          	loadsp 96
  ae:	61          	loadsp 68
  af:	69          	loadsp 100
  b0:	6e          	loadsp 120
  b1:	2f          	neq
  b2:	67          	loadsp 92
  b3:	63          	loadsp 76
  b4:	63          	loadsp 76
  b5:	62          	loadsp 72
  b6:	75          	loadsp 20
  b7:	69          	loadsp 100
  b8:	6c          	loadsp 112
  b9:	64          	loadsp 80
  ba:	2f          	neq
  bb:	67          	loadsp 92
  bc:	63          	loadsp 76
  bd:	63          	loadsp 76
  be:	2f          	neq
  bf:	69          	loadsp 100
  c0:	6e          	loadsp 120
  c1:	63          	loadsp 76
  c2:	6c          	loadsp 112
  c3:	75          	loadsp 20
  c4:	64          	loadsp 80
  c5:	65          	loadsp 84
  c6:	00          	breakpoint
  c7:	00          	breakpoint
  c8:	73          	loadsp 12
  c9:	74          	loadsp 16
  ca:	64          	loadsp 80
  cb:	64          	loadsp 80
  cc:	65          	loadsp 84
  cd:	66          	loadsp 88
  ce:	2e          	eq
  cf:	68          	loadsp 96
  d0:	00          	breakpoint
  d1:	03          	.byte 3
  d2:	00          	breakpoint
  d3:	00          	breakpoint
  d4:	73          	loadsp 12
  d5:	74          	loadsp 16
  d6:	64          	loadsp 80
  d7:	61          	loadsp 68
  d8:	72          	loadsp 8
  d9:	67          	loadsp 92
  da:	2e          	eq
  db:	68          	loadsp 96
  dc:	00          	breakpoint
  dd:	03          	.byte 3
  de:	00          	breakpoint
  df:	00          	breakpoint
  e0:	73          	loadsp 12
  e1:	79          	loadsp 36
  e2:	73          	loadsp 12
  e3:	2f          	neq
  e4:	5f          	storesp 60
  e5:	74          	loadsp 16
  e6:	79          	loadsp 36
  e7:	70          	loadsp 0
  e8:	65          	loadsp 84
  e9:	73          	loadsp 12
  ea:	2e          	eq
  eb:	68          	loadsp 96
  ec:	00          	breakpoint
  ed:	02          	pushsp
  ee:	00          	breakpoint
  ef:	00          	breakpoint
  f0:	73          	loadsp 12
  f1:	79          	loadsp 36
  f2:	73          	loadsp 12
  f3:	2f          	neq
  f4:	72          	loadsp 8
  f5:	65          	loadsp 84
  f6:	65          	loadsp 84
  f7:	6e          	loadsp 120
  f8:	74          	loadsp 16
  f9:	2e          	eq
  fa:	68          	loadsp 96
  fb:	00          	breakpoint
  fc:	02          	pushsp
  fd:	00          	breakpoint
  fe:	00          	breakpoint
  ff:	73          	loadsp 12
 100:	79          	loadsp 36
 101:	73          	loadsp 12
 102:	2f          	neq
 103:	74          	loadsp 16
 104:	79          	loadsp 36
 105:	70          	loadsp 0
 106:	65          	loadsp 84
 107:	73          	loadsp 12
 108:	2e          	eq
 109:	68          	loadsp 96
 10a:	00          	breakpoint
 10b:	02          	pushsp
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	6d          	loadsp 116
 10f:	61          	loadsp 68
 110:	63          	loadsp 76
 111:	68          	loadsp 96
 112:	69          	loadsp 100
 113:	6e          	loadsp 120
 114:	65          	loadsp 84
 115:	2f          	neq
 116:	74          	loadsp 16
 117:	79          	loadsp 36
 118:	70          	loadsp 0
 119:	65          	loadsp 84
 11a:	73          	loadsp 12
 11b:	2e          	eq
 11c:	68          	loadsp 96
 11d:	00          	breakpoint
 11e:	02          	pushsp
 11f:	00          	breakpoint
 120:	00          	breakpoint
 121:	73          	loadsp 12
 122:	74          	loadsp 16
 123:	64          	loadsp 80
 124:	69          	loadsp 100
 125:	6f          	loadsp 124
 126:	2e          	eq
 127:	68          	loadsp 96
 128:	00          	breakpoint
 129:	02          	pushsp
 12a:	00          	breakpoint
 12b:	00          	breakpoint
 12c:	65          	loadsp 84
 12d:	72          	loadsp 8
 12e:	72          	loadsp 8
 12f:	6e          	loadsp 120
 130:	6f          	loadsp 124
 131:	2e          	eq
 132:	68          	loadsp 96
 133:	00          	breakpoint
 134:	02          	pushsp
 135:	00          	breakpoint
 136:	00          	breakpoint
 137:	74          	loadsp 16
 138:	69          	loadsp 100
 139:	6d          	loadsp 116
 13a:	65          	loadsp 84
 13b:	2e          	eq
 13c:	68          	loadsp 96
 13d:	00          	breakpoint
 13e:	02          	pushsp
 13f:	00          	breakpoint
 140:	00          	breakpoint
 141:	73          	loadsp 12
 142:	79          	loadsp 36
 143:	73          	loadsp 12
 144:	2f          	neq
 145:	73          	loadsp 12
 146:	74          	loadsp 16
 147:	61          	loadsp 68
 148:	74          	loadsp 16
 149:	2e          	eq
 14a:	68          	loadsp 96
 14b:	00          	breakpoint
 14c:	02          	pushsp
 14d:	00          	breakpoint
 14e:	00          	breakpoint
 14f:	63          	loadsp 76
 150:	72          	loadsp 8
 151:	74          	loadsp 16
 152:	5f          	storesp 60
 153:	69          	loadsp 100
 154:	6f          	loadsp 124
 155:	2e          	eq
 156:	63          	loadsp 76
 157:	00          	breakpoint
 158:	01          	.byte 1
 159:	00          	breakpoint
 15a:	00          	breakpoint
 15b:	00          	breakpoint
 15c:	00          	breakpoint
 15d:	05          	add
 15e:	02          	pushsp
 15f:	00          	breakpoint
 160:	00          	breakpoint
 161:	00          	breakpoint
 162:	00          	breakpoint
 163:	00          	breakpoint
 164:	01          	.byte 1
 165:	01          	.byte 1
 166:	00          	breakpoint
 167:	05          	add
 168:	02          	pushsp
 169:	00          	breakpoint
 16a:	00          	breakpoint
 16b:	00          	breakpoint
 16c:	00          	breakpoint
 16d:	04          	poppc
 16e:	0b          	nop
 16f:	2b          	ashiftleft
 170:	00          	breakpoint
 171:	05          	add
 172:	02          	pushsp
 173:	00          	breakpoint
 174:	00          	breakpoint
 175:	00          	breakpoint
 176:	00          	breakpoint
 177:	18          	addsp 32
 178:	00          	breakpoint
 179:	05          	add
 17a:	02          	pushsp
 17b:	00          	breakpoint
 17c:	00          	breakpoint
 17d:	00          	breakpoint
 17e:	00          	breakpoint
 17f:	15          	addsp 20
 180:	00          	breakpoint
 181:	05          	add
 182:	02          	pushsp
 183:	00          	breakpoint
 184:	00          	breakpoint
 185:	00          	breakpoint
 186:	00          	breakpoint
 187:	16          	addsp 24
 188:	00          	breakpoint
 189:	05          	add
 18a:	02          	pushsp
 18b:	00          	breakpoint
 18c:	00          	breakpoint
 18d:	00          	breakpoint
 18e:	00          	breakpoint
 18f:	17          	addsp 28
 190:	00          	breakpoint
 191:	05          	add
 192:	02          	pushsp
 193:	00          	breakpoint
 194:	00          	breakpoint
 195:	00          	breakpoint
 196:	00          	breakpoint
 197:	00          	breakpoint
 198:	01          	.byte 1
 199:	01          	.byte 1
 19a:	00          	breakpoint
 19b:	05          	add
 19c:	02          	pushsp
 19d:	00          	breakpoint
 19e:	00          	breakpoint
 19f:	00          	breakpoint
 1a0:	00          	breakpoint
 1a1:	04          	poppc
 1a2:	0b          	nop
 1a3:	3f          	callpcrel
 1a4:	00          	breakpoint
 1a5:	05          	add
 1a6:	02          	pushsp
 1a7:	00          	breakpoint
 1a8:	00          	breakpoint
 1a9:	00          	breakpoint
 1aa:	00          	breakpoint
 1ab:	16          	addsp 24
 1ac:	00          	breakpoint
 1ad:	05          	add
 1ae:	02          	pushsp
 1af:	00          	breakpoint
 1b0:	00          	breakpoint
 1b1:	00          	breakpoint
 1b2:	00          	breakpoint
 1b3:	15          	addsp 20
 1b4:	00          	breakpoint
 1b5:	05          	add
 1b6:	02          	pushsp
 1b7:	00          	breakpoint
 1b8:	00          	breakpoint
 1b9:	00          	breakpoint
 1ba:	00          	breakpoint
 1bb:	00          	breakpoint
 1bc:	01          	.byte 1
 1bd:	01          	.byte 1
 1be:	00          	breakpoint
 1bf:	05          	add
 1c0:	02          	pushsp
 1c1:	00          	breakpoint
 1c2:	00          	breakpoint
 1c3:	00          	breakpoint
 1c4:	00          	breakpoint
 1c5:	04          	poppc
 1c6:	0b          	nop
 1c7:	48          	storesp 96
 1c8:	00          	breakpoint
 1c9:	05          	add
 1ca:	02          	pushsp
 1cb:	00          	breakpoint
 1cc:	00          	breakpoint
 1cd:	00          	breakpoint
 1ce:	00          	breakpoint
 1cf:	15          	addsp 20
 1d0:	00          	breakpoint
 1d1:	05          	add
 1d2:	02          	pushsp
 1d3:	00          	breakpoint
 1d4:	00          	breakpoint
 1d5:	00          	breakpoint
 1d6:	00          	breakpoint
 1d7:	16          	addsp 24
 1d8:	00          	breakpoint
 1d9:	05          	add
 1da:	02          	pushsp
 1db:	00          	breakpoint
 1dc:	00          	breakpoint
 1dd:	00          	breakpoint
 1de:	00          	breakpoint
 1df:	1d          	addsp 52
 1e0:	00          	breakpoint
 1e1:	05          	add
 1e2:	02          	pushsp
 1e3:	00          	breakpoint
 1e4:	00          	breakpoint
 1e5:	00          	breakpoint
 1e6:	00          	breakpoint
 1e7:	15          	addsp 20
 1e8:	00          	breakpoint
 1e9:	05          	add
 1ea:	02          	pushsp
 1eb:	00          	breakpoint
 1ec:	00          	breakpoint
 1ed:	00          	breakpoint
 1ee:	00          	breakpoint
 1ef:	15          	addsp 20
 1f0:	00          	breakpoint
 1f1:	05          	add
 1f2:	02          	pushsp
 1f3:	00          	breakpoint
 1f4:	00          	breakpoint
 1f5:	00          	breakpoint
 1f6:	00          	breakpoint
 1f7:	1c          	addsp 48
 1f8:	00          	breakpoint
 1f9:	05          	add
 1fa:	02          	pushsp
 1fb:	00          	breakpoint
 1fc:	00          	breakpoint
 1fd:	00          	breakpoint
 1fe:	00          	breakpoint
 1ff:	10          	addsp 0
 200:	00          	breakpoint
 201:	05          	add
 202:	02          	pushsp
 203:	00          	breakpoint
 204:	00          	breakpoint
 205:	00          	breakpoint
 206:	00          	breakpoint
 207:	15          	addsp 20
 208:	00          	breakpoint
 209:	05          	add
 20a:	02          	pushsp
 20b:	00          	breakpoint
 20c:	00          	breakpoint
 20d:	00          	breakpoint
 20e:	00          	breakpoint
 20f:	15          	addsp 20
 210:	00          	breakpoint
 211:	05          	add
 212:	02          	pushsp
 213:	00          	breakpoint
 214:	00          	breakpoint
 215:	00          	breakpoint
 216:	00          	breakpoint
 217:	16          	addsp 24
 218:	00          	breakpoint
 219:	05          	add
 21a:	02          	pushsp
 21b:	00          	breakpoint
 21c:	00          	breakpoint
 21d:	00          	breakpoint
 21e:	00          	breakpoint
 21f:	03          	.byte 3
 220:	70          	loadsp 0
 221:	01          	.byte 1
 222:	00          	breakpoint
 223:	05          	add
 224:	02          	pushsp
 225:	00          	breakpoint
 226:	00          	breakpoint
 227:	00          	breakpoint
 228:	00          	breakpoint
 229:	15          	addsp 20
 22a:	00          	breakpoint
 22b:	05          	add
 22c:	02          	pushsp
 22d:	00          	breakpoint
 22e:	00          	breakpoint
 22f:	00          	breakpoint
 230:	00          	breakpoint
 231:	15          	addsp 20
 232:	00          	breakpoint
 233:	05          	add
 234:	02          	pushsp
 235:	00          	breakpoint
 236:	00          	breakpoint
 237:	00          	breakpoint
 238:	00          	breakpoint
 239:	22          	loadh
 23a:	00          	breakpoint
 23b:	05          	add
 23c:	02          	pushsp
 23d:	00          	breakpoint
 23e:	00          	breakpoint
 23f:	00          	breakpoint
 240:	00          	breakpoint
 241:	00          	breakpoint
 242:	01          	.byte 1
 243:	01          	.byte 1
 244:	00          	breakpoint
 245:	05          	add
 246:	02          	pushsp
 247:	00          	breakpoint
 248:	00          	breakpoint
 249:	00          	breakpoint
 24a:	00          	breakpoint
 24b:	04          	poppc
 24c:	0b          	nop
 24d:	63          	loadsp 76
 24e:	00          	breakpoint
 24f:	05          	add
 250:	02          	pushsp
 251:	00          	breakpoint
 252:	00          	breakpoint
 253:	00          	breakpoint
 254:	00          	breakpoint
 255:	18          	addsp 32
 256:	00          	breakpoint
 257:	05          	add
 258:	02          	pushsp
 259:	00          	breakpoint
 25a:	00          	breakpoint
 25b:	00          	breakpoint
 25c:	00          	breakpoint
 25d:	15          	addsp 20
 25e:	00          	breakpoint
 25f:	05          	add
 260:	02          	pushsp
 261:	00          	breakpoint
 262:	00          	breakpoint
 263:	00          	breakpoint
 264:	00          	breakpoint
 265:	15          	addsp 20
 266:	00          	breakpoint
 267:	05          	add
 268:	02          	pushsp
 269:	00          	breakpoint
 26a:	00          	breakpoint
 26b:	00          	breakpoint
 26c:	00          	breakpoint
 26d:	16          	addsp 24
 26e:	00          	breakpoint
 26f:	05          	add
 270:	02          	pushsp
 271:	00          	breakpoint
 272:	00          	breakpoint
 273:	00          	breakpoint
 274:	00          	breakpoint
 275:	12          	addsp 8
 276:	00          	breakpoint
 277:	05          	add
 278:	02          	pushsp
 279:	00          	breakpoint
 27a:	00          	breakpoint
 27b:	00          	breakpoint
 27c:	00          	breakpoint
 27d:	18          	addsp 32
 27e:	00          	breakpoint
 27f:	05          	add
 280:	02          	pushsp
 281:	00          	breakpoint
 282:	00          	breakpoint
 283:	00          	breakpoint
 284:	00          	breakpoint
 285:	15          	addsp 20
 286:	00          	breakpoint
 287:	05          	add
 288:	02          	pushsp
 289:	00          	breakpoint
 28a:	00          	breakpoint
 28b:	00          	breakpoint
 28c:	00          	breakpoint
 28d:	00          	breakpoint
 28e:	01          	.byte 1
 28f:	01          	.byte 1
 290:	00          	breakpoint
 291:	00          	breakpoint
 292:	00          	breakpoint
 293:	16          	addsp 24
 294:	00          	breakpoint
 295:	02          	pushsp
 296:	00          	breakpoint
 297:	00          	breakpoint
 298:	00          	breakpoint
 299:	10          	addsp 0
 29a:	01          	.byte 1
 29b:	01          	.byte 1
 29c:	fb          	im -5
 29d:	0e          	.byte 14
 29e:	0a          	flip
 29f:	00          	breakpoint
 2a0:	01          	.byte 1
 2a1:	01          	.byte 1
 2a2:	01          	.byte 1
 2a3:	01          	.byte 1
 2a4:	00          	breakpoint
 2a5:	00          	breakpoint
 2a6:	00          	breakpoint
 2a7:	01          	.byte 1
	...

000002aa <.Ldebug_line0>:
 2aa:	00          	breakpoint
 2ab:	00          	breakpoint
 2ac:	01          	.byte 1
 2ad:	33          	loadb
 2ae:	00          	breakpoint
 2af:	02          	pushsp
 2b0:	00          	breakpoint
 2b1:	00          	breakpoint
 2b2:	00          	breakpoint
 2b3:	97          	im 23
 2b4:	01          	.byte 1
 2b5:	01          	.byte 1
 2b6:	f6          	im -10
 2b7:	f5          	im -11
 2b8:	0a          	flip
 2b9:	00          	breakpoint
 2ba:	01          	.byte 1
 2bb:	01          	.byte 1
 2bc:	01          	.byte 1
 2bd:	01          	.byte 1
 2be:	00          	breakpoint
 2bf:	00          	breakpoint
 2c0:	00          	breakpoint
 2c1:	01          	.byte 1
 2c2:	2e          	eq
 2c3:	2e          	eq
 2c4:	2f          	neq
 2c5:	2e          	eq
 2c6:	2e          	eq
 2c7:	2f          	neq
 2c8:	2e          	eq
 2c9:	2e          	eq
 2ca:	2f          	neq
 2cb:	2e          	eq
 2cc:	2e          	eq
 2cd:	2f          	neq
 2ce:	2e          	eq
 2cf:	2e          	eq
 2d0:	2f          	neq
 2d1:	2e          	eq
 2d2:	2e          	eq
 2d3:	2f          	neq
 2d4:	67          	loadsp 92
 2d5:	63          	loadsp 76
 2d6:	63          	loadsp 76
 2d7:	2f          	neq
 2d8:	6e          	loadsp 120
 2d9:	65          	loadsp 84
 2da:	77          	loadsp 28
 2db:	6c          	loadsp 112
 2dc:	69          	loadsp 100
 2dd:	62          	loadsp 72
 2de:	2f          	neq
 2df:	6c          	loadsp 112
 2e0:	69          	loadsp 100
 2e1:	62          	loadsp 72
 2e2:	63          	loadsp 76
 2e3:	2f          	neq
 2e4:	73          	loadsp 12
 2e5:	74          	loadsp 16
 2e6:	72          	loadsp 8
 2e7:	69          	loadsp 100
 2e8:	6e          	loadsp 120
 2e9:	67          	loadsp 92
 2ea:	00          	breakpoint
 2eb:	2f          	neq
 2ec:	68          	loadsp 96
 2ed:	6f          	loadsp 124
 2ee:	6d          	loadsp 116
 2ef:	65          	loadsp 84
 2f0:	2f          	neq
 2f1:	61          	loadsp 68
 2f2:	6c          	loadsp 112
 2f3:	76          	loadsp 24
 2f4:	69          	loadsp 100
 2f5:	65          	loadsp 84
 2f6:	62          	loadsp 72
 2f7:	6f          	loadsp 124
 2f8:	79          	loadsp 36
 2f9:	2f          	neq
 2fa:	7a          	loadsp 40
 2fb:	70          	loadsp 0
 2fc:	75          	loadsp 20
 2fd:	2f          	neq
 2fe:	74          	loadsp 16
 2ff:	6f          	loadsp 124
 300:	6f          	loadsp 124
 301:	6c          	loadsp 112
 302:	63          	loadsp 76
 303:	68          	loadsp 96
 304:	61          	loadsp 68
 305:	69          	loadsp 100
 306:	6e          	loadsp 120
 307:	2f          	neq
 308:	74          	loadsp 16
 309:	6f          	loadsp 124
 30a:	6f          	loadsp 124
 30b:	6c          	loadsp 112
 30c:	63          	loadsp 76
 30d:	68          	loadsp 96
 30e:	61          	loadsp 68
 30f:	69          	loadsp 100
 310:	6e          	loadsp 120
 311:	2f          	neq
 312:	74          	loadsp 16
 313:	6f          	loadsp 124
 314:	6f          	loadsp 124
 315:	6c          	loadsp 112
 316:	63          	loadsp 76
 317:	68          	loadsp 96
 318:	61          	loadsp 68
 319:	69          	loadsp 100
 31a:	6e          	loadsp 120
 31b:	2f          	neq
 31c:	67          	loadsp 92
 31d:	63          	loadsp 76
 31e:	63          	loadsp 76
 31f:	62          	loadsp 72
 320:	75          	loadsp 20
 321:	69          	loadsp 100
 322:	6c          	loadsp 112
 323:	64          	loadsp 80
 324:	2f          	neq
 325:	67          	loadsp 92
 326:	63          	loadsp 76
 327:	63          	loadsp 76
 328:	2f          	neq
 329:	69          	loadsp 100
 32a:	6e          	loadsp 120
 32b:	63          	loadsp 76
 32c:	6c          	loadsp 112
 32d:	75          	loadsp 20
 32e:	64          	loadsp 80
 32f:	65          	loadsp 84
 330:	00          	breakpoint
 331:	00          	breakpoint
 332:	73          	loadsp 12
 333:	74          	loadsp 16
 334:	64          	loadsp 80
 335:	64          	loadsp 80
 336:	65          	loadsp 84
 337:	66          	loadsp 88
 338:	2e          	eq
 339:	68          	loadsp 96
 33a:	00          	breakpoint
 33b:	02          	pushsp
 33c:	00          	breakpoint
 33d:	00          	breakpoint
 33e:	6d          	loadsp 116
 33f:	65          	loadsp 84
 340:	6d          	loadsp 116
 341:	63          	loadsp 76
 342:	70          	loadsp 0
 343:	79          	loadsp 36
 344:	2e          	eq
 345:	63          	loadsp 76
 346:	00          	breakpoint
 347:	01          	.byte 1
 348:	00          	breakpoint
 349:	00          	breakpoint
 34a:	00          	breakpoint
 34b:	00          	breakpoint
 34c:	05          	add
 34d:	02          	pushsp
 34e:	00          	breakpoint
 34f:	00          	breakpoint
 350:	0d          	popsp
 351:	2b          	ashiftleft
 352:	04          	poppc
 353:	02          	pushsp
 354:	4c          	storesp 112
 355:	00          	breakpoint
 356:	05          	add
 357:	02          	pushsp
 358:	00          	breakpoint
 359:	00          	breakpoint
 35a:	0d          	popsp
 35b:	2f          	neq
 35c:	22          	loadh
 35d:	00          	breakpoint
 35e:	05          	add
 35f:	02          	pushsp
 360:	00          	breakpoint
 361:	00          	breakpoint
 362:	0d          	popsp
 363:	30          	neg
 364:	15          	addsp 20
 365:	00          	breakpoint
 366:	05          	add
 367:	02          	pushsp
 368:	00          	breakpoint
 369:	00          	breakpoint
 36a:	0d          	popsp
 36b:	31          	sub
 36c:	17          	addsp 28
 36d:	00          	breakpoint
 36e:	05          	add
 36f:	02          	pushsp
 370:	00          	breakpoint
 371:	00          	breakpoint
 372:	0d          	popsp
 373:	36          	mod
 374:	18          	addsp 32
 375:	00          	breakpoint
 376:	05          	add
 377:	02          	pushsp
 378:	00          	breakpoint
 379:	00          	breakpoint
 37a:	0d          	popsp
 37b:	46          	storesp 88
 37c:	30          	neg
 37d:	00          	breakpoint
 37e:	05          	add
 37f:	02          	pushsp
 380:	00          	breakpoint
 381:	00          	breakpoint
 382:	0d          	popsp
 383:	65          	loadsp 84
 384:	18          	addsp 32
 385:	00          	breakpoint
 386:	05          	add
 387:	02          	pushsp
 388:	00          	breakpoint
 389:	00          	breakpoint
 38a:	0d          	popsp
 38b:	6c          	loadsp 112
 38c:	03          	.byte 3
 38d:	62          	loadsp 72
 38e:	01          	.byte 1
 38f:	00          	breakpoint
 390:	05          	add
 391:	02          	pushsp
 392:	00          	breakpoint
 393:	00          	breakpoint
 394:	0d          	popsp
 395:	6e          	loadsp 120
 396:	1a          	addsp 40
 397:	00          	breakpoint
 398:	05          	add
 399:	02          	pushsp
 39a:	00          	breakpoint
 39b:	00          	breakpoint
 39c:	0d          	popsp
 39d:	7a          	loadsp 40
 39e:	15          	addsp 20
 39f:	00          	breakpoint
 3a0:	05          	add
 3a1:	02          	pushsp
 3a2:	00          	breakpoint
 3a3:	00          	breakpoint
 3a4:	0d          	popsp
 3a5:	86          	im 6
 3a6:	15          	addsp 20
 3a7:	00          	breakpoint
 3a8:	05          	add
 3a9:	02          	pushsp
 3aa:	00          	breakpoint
 3ab:	00          	breakpoint
 3ac:	0d          	popsp
 3ad:	92          	im 18
 3ae:	15          	addsp 20
 3af:	00          	breakpoint
 3b0:	05          	add
 3b1:	02          	pushsp
 3b2:	00          	breakpoint
 3b3:	00          	breakpoint
 3b4:	0d          	popsp
 3b5:	9e          	im 30
 3b6:	15          	addsp 20
 3b7:	00          	breakpoint
 3b8:	05          	add
 3b9:	02          	pushsp
 3ba:	00          	breakpoint
 3bb:	00          	breakpoint
 3bc:	0d          	popsp
 3bd:	a6          	im 38
 3be:	1b          	addsp 44
 3bf:	00          	breakpoint
 3c0:	05          	add
 3c1:	02          	pushsp
 3c2:	00          	breakpoint
 3c3:	00          	breakpoint
 3c4:	0d          	popsp
 3c5:	ab          	im 43
 3c6:	13          	addsp 12
 3c7:	00          	breakpoint
 3c8:	05          	add
 3c9:	02          	pushsp
 3ca:	00          	breakpoint
 3cb:	00          	breakpoint
 3cc:	0d          	popsp
 3cd:	b7          	im 55
 3ce:	15          	addsp 20
 3cf:	00          	breakpoint
 3d0:	05          	add
 3d1:	02          	pushsp
 3d2:	00          	breakpoint
 3d3:	00          	breakpoint
 3d4:	0d          	popsp
 3d5:	bf          	im 63
 3d6:	18          	addsp 32
 3d7:	00          	breakpoint
 3d8:	05          	add
 3d9:	02          	pushsp
 3da:	00          	breakpoint
 3db:	00          	breakpoint
 3dc:	0d          	popsp
 3dd:	c4          	im -60
 3de:	00          	breakpoint
 3df:	01          	.byte 1
 3e0:	01          	.byte 1
 3e1:	00          	breakpoint
 3e2:	00          	breakpoint
 3e3:	00          	breakpoint
 3e4:	16          	addsp 24
 3e5:	00          	breakpoint
 3e6:	02          	pushsp
 3e7:	00          	breakpoint
 3e8:	00          	breakpoint
 3e9:	00          	breakpoint
 3ea:	10          	addsp 0
 3eb:	01          	.byte 1
 3ec:	01          	.byte 1
 3ed:	fb          	im -5
 3ee:	0e          	.byte 14
 3ef:	0a          	flip
 3f0:	00          	breakpoint
 3f1:	01          	.byte 1
 3f2:	01          	.byte 1
 3f3:	01          	.byte 1
 3f4:	01          	.byte 1
 3f5:	00          	breakpoint
 3f6:	00          	breakpoint
 3f7:	00          	breakpoint
 3f8:	01          	.byte 1
	...

000003fb <.Ldebug_line0>:
 3fb:	00          	breakpoint
 3fc:	00          	breakpoint
 3fd:	01          	.byte 1
 3fe:	a7          	im 39
 3ff:	00          	breakpoint
 400:	02          	pushsp
 401:	00          	breakpoint
 402:	00          	breakpoint
 403:	00          	breakpoint
 404:	fb          	im -5
 405:	01          	.byte 1
 406:	01          	.byte 1
 407:	f6          	im -10
 408:	f5          	im -11
 409:	0a          	flip
 40a:	00          	breakpoint
 40b:	01          	.byte 1
 40c:	01          	.byte 1
 40d:	01          	.byte 1
 40e:	01          	.byte 1
 40f:	00          	breakpoint
 410:	00          	breakpoint
 411:	00          	breakpoint
 412:	01          	.byte 1
 413:	2e          	eq
 414:	2e          	eq
 415:	2f          	neq
 416:	2e          	eq
 417:	2e          	eq
 418:	2f          	neq
 419:	2e          	eq
 41a:	2e          	eq
 41b:	2f          	neq
 41c:	2e          	eq
 41d:	2e          	eq
 41e:	2f          	neq
 41f:	2e          	eq
 420:	2e          	eq
 421:	2f          	neq
 422:	2e          	eq
 423:	2e          	eq
 424:	2f          	neq
 425:	67          	loadsp 92
 426:	63          	loadsp 76
 427:	63          	loadsp 76
 428:	2f          	neq
 429:	6e          	loadsp 120
 42a:	65          	loadsp 84
 42b:	77          	loadsp 28
 42c:	6c          	loadsp 112
 42d:	69          	loadsp 100
 42e:	62          	loadsp 72
 42f:	2f          	neq
 430:	6c          	loadsp 112
 431:	69          	loadsp 100
 432:	62          	loadsp 72
 433:	63          	loadsp 76
 434:	2f          	neq
 435:	73          	loadsp 12
 436:	74          	loadsp 16
 437:	72          	loadsp 8
 438:	69          	loadsp 100
 439:	6e          	loadsp 120
 43a:	67          	loadsp 92
 43b:	00          	breakpoint
 43c:	2f          	neq
 43d:	68          	loadsp 96
 43e:	6f          	loadsp 124
 43f:	6d          	loadsp 116
 440:	65          	loadsp 84
 441:	2f          	neq
 442:	61          	loadsp 68
 443:	6c          	loadsp 112
 444:	76          	loadsp 24
 445:	69          	loadsp 100
 446:	65          	loadsp 84
 447:	62          	loadsp 72
 448:	6f          	loadsp 124
 449:	79          	loadsp 36
 44a:	2f          	neq
 44b:	7a          	loadsp 40
 44c:	70          	loadsp 0
 44d:	75          	loadsp 20
 44e:	2f          	neq
 44f:	74          	loadsp 16
 450:	6f          	loadsp 124
 451:	6f          	loadsp 124
 452:	6c          	loadsp 112
 453:	63          	loadsp 76
 454:	68          	loadsp 96
 455:	61          	loadsp 68
 456:	69          	loadsp 100
 457:	6e          	loadsp 120
 458:	2f          	neq
 459:	74          	loadsp 16
 45a:	6f          	loadsp 124
 45b:	6f          	loadsp 124
 45c:	6c          	loadsp 112
 45d:	63          	loadsp 76
 45e:	68          	loadsp 96
 45f:	61          	loadsp 68
 460:	69          	loadsp 100
 461:	6e          	loadsp 120
 462:	2f          	neq
 463:	74          	loadsp 16
 464:	6f          	loadsp 124
 465:	6f          	loadsp 124
 466:	6c          	loadsp 112
 467:	63          	loadsp 76
 468:	68          	loadsp 96
 469:	61          	loadsp 68
 46a:	69          	loadsp 100
 46b:	6e          	loadsp 120
 46c:	2f          	neq
 46d:	67          	loadsp 92
 46e:	63          	loadsp 76
 46f:	63          	loadsp 76
 470:	2f          	neq
 471:	6e          	loadsp 120
 472:	65          	loadsp 84
 473:	77          	loadsp 28
 474:	6c          	loadsp 112
 475:	69          	loadsp 100
 476:	62          	loadsp 72
 477:	2f          	neq
 478:	6c          	loadsp 112
 479:	69          	loadsp 100
 47a:	62          	loadsp 72
 47b:	63          	loadsp 76
 47c:	2f          	neq
 47d:	69          	loadsp 100
 47e:	6e          	loadsp 120
 47f:	63          	loadsp 76
 480:	6c          	loadsp 112
 481:	75          	loadsp 20
 482:	64          	loadsp 80
 483:	65          	loadsp 84
 484:	2f          	neq
 485:	73          	loadsp 12
 486:	79          	loadsp 36
 487:	73          	loadsp 12
 488:	00          	breakpoint
 489:	2f          	neq
 48a:	68          	loadsp 96
 48b:	6f          	loadsp 124
 48c:	6d          	loadsp 116
 48d:	65          	loadsp 84
 48e:	2f          	neq
 48f:	61          	loadsp 68
 490:	6c          	loadsp 112
 491:	76          	loadsp 24
 492:	69          	loadsp 100
 493:	65          	loadsp 84
 494:	62          	loadsp 72
 495:	6f          	loadsp 124
 496:	79          	loadsp 36
 497:	2f          	neq
 498:	7a          	loadsp 40
 499:	70          	loadsp 0
 49a:	75          	loadsp 20
 49b:	2f          	neq
 49c:	74          	loadsp 16
 49d:	6f          	loadsp 124
 49e:	6f          	loadsp 124
 49f:	6c          	loadsp 112
 4a0:	63          	loadsp 76
 4a1:	68          	loadsp 96
 4a2:	61          	loadsp 68
 4a3:	69          	loadsp 100
 4a4:	6e          	loadsp 120
 4a5:	2f          	neq
 4a6:	74          	loadsp 16
 4a7:	6f          	loadsp 124
 4a8:	6f          	loadsp 124
 4a9:	6c          	loadsp 112
 4aa:	63          	loadsp 76
 4ab:	68          	loadsp 96
 4ac:	61          	loadsp 68
 4ad:	69          	loadsp 100
 4ae:	6e          	loadsp 120
 4af:	2f          	neq
 4b0:	74          	loadsp 16
 4b1:	6f          	loadsp 124
 4b2:	6f          	loadsp 124
 4b3:	6c          	loadsp 112
 4b4:	63          	loadsp 76
 4b5:	68          	loadsp 96
 4b6:	61          	loadsp 68
 4b7:	69          	loadsp 100
 4b8:	6e          	loadsp 120
 4b9:	2f          	neq
 4ba:	67          	loadsp 92
 4bb:	63          	loadsp 76
 4bc:	63          	loadsp 76
 4bd:	62          	loadsp 72
 4be:	75          	loadsp 20
 4bf:	69          	loadsp 100
 4c0:	6c          	loadsp 112
 4c1:	64          	loadsp 80
 4c2:	2f          	neq
 4c3:	67          	loadsp 92
 4c4:	63          	loadsp 76
 4c5:	63          	loadsp 76
 4c6:	2f          	neq
 4c7:	69          	loadsp 100
 4c8:	6e          	loadsp 120
 4c9:	63          	loadsp 76
 4ca:	6c          	loadsp 112
 4cb:	75          	loadsp 20
 4cc:	64          	loadsp 80
 4cd:	65          	loadsp 84
 4ce:	00          	breakpoint
 4cf:	00          	breakpoint
 4d0:	5f          	storesp 60
 4d1:	74          	loadsp 16
 4d2:	79          	loadsp 36
 4d3:	70          	loadsp 0
 4d4:	65          	loadsp 84
 4d5:	73          	loadsp 12
 4d6:	2e          	eq
 4d7:	68          	loadsp 96
 4d8:	00          	breakpoint
 4d9:	02          	pushsp
 4da:	00          	breakpoint
 4db:	00          	breakpoint
 4dc:	73          	loadsp 12
 4dd:	74          	loadsp 16
 4de:	64          	loadsp 80
 4df:	64          	loadsp 80
 4e0:	65          	loadsp 84
 4e1:	66          	loadsp 88
 4e2:	2e          	eq
 4e3:	68          	loadsp 96
 4e4:	00          	breakpoint
 4e5:	03          	.byte 3
 4e6:	00          	breakpoint
 4e7:	00          	breakpoint
 4e8:	72          	loadsp 8
 4e9:	65          	loadsp 84
 4ea:	65          	loadsp 84
 4eb:	6e          	loadsp 120
 4ec:	74          	loadsp 16
 4ed:	2e          	eq
 4ee:	68          	loadsp 96
 4ef:	00          	breakpoint
 4f0:	02          	pushsp
 4f1:	00          	breakpoint
 4f2:	00          	breakpoint
 4f3:	6d          	loadsp 116
 4f4:	65          	loadsp 84
 4f5:	6d          	loadsp 116
 4f6:	73          	loadsp 12
 4f7:	65          	loadsp 84
 4f8:	74          	loadsp 16
 4f9:	2e          	eq
 4fa:	63          	loadsp 76
 4fb:	00          	breakpoint
 4fc:	01          	.byte 1
 4fd:	00          	breakpoint
 4fe:	00          	breakpoint
 4ff:	00          	breakpoint
 500:	00          	breakpoint
 501:	05          	add
 502:	02          	pushsp
 503:	00          	breakpoint
 504:	00          	breakpoint
 505:	0d          	popsp
 506:	c4          	im -60
 507:	04          	poppc
 508:	04          	poppc
 509:	42          	storesp 72
 50a:	00          	breakpoint
 50b:	05          	add
 50c:	02          	pushsp
 50d:	00          	breakpoint
 50e:	00          	breakpoint
 50f:	0d          	popsp
 510:	c9          	im -55
 511:	1f          	addsp 60
 512:	00          	breakpoint
 513:	05          	add
 514:	02          	pushsp
 515:	00          	breakpoint
 516:	00          	breakpoint
 517:	0d          	popsp
 518:	ca          	im -54
 519:	18          	addsp 32
 51a:	00          	breakpoint
 51b:	05          	add
 51c:	02          	pushsp
 51d:	00          	breakpoint
 51e:	00          	breakpoint
 51f:	0d          	popsp
 520:	d4          	im -44
 521:	17          	addsp 28
 522:	00          	breakpoint
 523:	05          	add
 524:	02          	pushsp
 525:	00          	breakpoint
 526:	00          	breakpoint
 527:	0d          	popsp
 528:	e2          	im -30
 529:	3b          	pushpc
 52a:	00          	breakpoint
 52b:	05          	add
 52c:	02          	pushsp
 52d:	00          	breakpoint
 52e:	00          	breakpoint
 52f:	0d          	popsp
 530:	fc          	im -4
 531:	19          	addsp 36
 532:	00          	breakpoint
 533:	05          	add
 534:	02          	pushsp
 535:	00          	breakpoint
 536:	00          	breakpoint
 537:	0e          	.byte 14
 538:	03          	.byte 3
 539:	03          	.byte 3
 53a:	57          	storesp 28
 53b:	01          	.byte 1
 53c:	00          	breakpoint
 53d:	05          	add
 53e:	02          	pushsp
 53f:	00          	breakpoint
 540:	00          	breakpoint
 541:	0e          	.byte 14
 542:	04          	poppc
 543:	1a          	addsp 40
 544:	00          	breakpoint
 545:	05          	add
 546:	02          	pushsp
 547:	00          	breakpoint
 548:	00          	breakpoint
 549:	0e          	.byte 14
 54a:	09          	not
 54b:	15          	addsp 20
 54c:	00          	breakpoint
 54d:	05          	add
 54e:	02          	pushsp
 54f:	00          	breakpoint
 550:	00          	breakpoint
 551:	0e          	.byte 14
 552:	11          	addsp 4
 553:	23          	storeh
 554:	00          	breakpoint
 555:	05          	add
 556:	02          	pushsp
 557:	00          	breakpoint
 558:	00          	breakpoint
 559:	0e          	.byte 14
 55a:	16          	addsp 24
 55b:	10          	addsp 0
 55c:	00          	breakpoint
 55d:	05          	add
 55e:	02          	pushsp
 55f:	00          	breakpoint
 560:	00          	breakpoint
 561:	0e          	.byte 14
 562:	1d          	addsp 52
 563:	15          	addsp 20
 564:	00          	breakpoint
 565:	05          	add
 566:	02          	pushsp
 567:	00          	breakpoint
 568:	00          	breakpoint
 569:	0e          	.byte 14
 56a:	24          	lessthan
 56b:	15          	addsp 20
 56c:	00          	breakpoint
 56d:	05          	add
 56e:	02          	pushsp
 56f:	00          	breakpoint
 570:	00          	breakpoint
 571:	0e          	.byte 14
 572:	2b          	ashiftleft
 573:	15          	addsp 20
 574:	00          	breakpoint
 575:	05          	add
 576:	02          	pushsp
 577:	00          	breakpoint
 578:	00          	breakpoint
 579:	0e          	.byte 14
 57a:	32          	xor
 57b:	15          	addsp 20
 57c:	00          	breakpoint
 57d:	05          	add
 57e:	02          	pushsp
 57f:	00          	breakpoint
 580:	00          	breakpoint
 581:	0e          	.byte 14
 582:	3a          	config
 583:	1a          	addsp 40
 584:	00          	breakpoint
 585:	05          	add
 586:	02          	pushsp
 587:	00          	breakpoint
 588:	00          	breakpoint
 589:	0e          	.byte 14
 58a:	3f          	callpcrel
 58b:	13          	addsp 12
 58c:	00          	breakpoint
 58d:	05          	add
 58e:	02          	pushsp
 58f:	00          	breakpoint
 590:	00          	breakpoint
 591:	0e          	.byte 14
 592:	46          	storesp 88
 593:	15          	addsp 20
 594:	00          	breakpoint
 595:	05          	add
 596:	02          	pushsp
 597:	00          	breakpoint
 598:	00          	breakpoint
 599:	0e          	.byte 14
 59a:	4e          	storesp 120
 59b:	17          	addsp 28
 59c:	00          	breakpoint
 59d:	05          	add
 59e:	02          	pushsp
 59f:	00          	breakpoint
 5a0:	00          	breakpoint
 5a1:	0e          	.byte 14
 5a2:	53          	storesp 12
 5a3:	00          	breakpoint
 5a4:	01          	.byte 1
 5a5:	01          	.byte 1
 5a6:	00          	breakpoint
 5a7:	00          	breakpoint
 5a8:	00          	breakpoint
 5a9:	16          	addsp 24
 5aa:	00          	breakpoint
 5ab:	02          	pushsp
 5ac:	00          	breakpoint
 5ad:	00          	breakpoint
 5ae:	00          	breakpoint
 5af:	10          	addsp 0
 5b0:	01          	.byte 1
 5b1:	01          	.byte 1
 5b2:	fb          	im -5
 5b3:	0e          	.byte 14
 5b4:	0a          	flip
 5b5:	00          	breakpoint
 5b6:	01          	.byte 1
 5b7:	01          	.byte 1
 5b8:	01          	.byte 1
 5b9:	01          	.byte 1
 5ba:	00          	breakpoint
 5bb:	00          	breakpoint
 5bc:	00          	breakpoint
 5bd:	01          	.byte 1
	...

000005c0 <.Ldebug_line0>:
 5c0:	00          	breakpoint
 5c1:	00          	breakpoint
 5c2:	01          	.byte 1
 5c3:	a7          	im 39
 5c4:	00          	breakpoint
 5c5:	02          	pushsp
 5c6:	00          	breakpoint
 5c7:	00          	breakpoint
 5c8:	00          	breakpoint
 5c9:	fb          	im -5
 5ca:	01          	.byte 1
 5cb:	01          	.byte 1
 5cc:	f6          	im -10
 5cd:	f5          	im -11
 5ce:	0a          	flip
 5cf:	00          	breakpoint
 5d0:	01          	.byte 1
 5d1:	01          	.byte 1
 5d2:	01          	.byte 1
 5d3:	01          	.byte 1
 5d4:	00          	breakpoint
 5d5:	00          	breakpoint
 5d6:	00          	breakpoint
 5d7:	01          	.byte 1
 5d8:	2e          	eq
 5d9:	2e          	eq
 5da:	2f          	neq
 5db:	2e          	eq
 5dc:	2e          	eq
 5dd:	2f          	neq
 5de:	2e          	eq
 5df:	2e          	eq
 5e0:	2f          	neq
 5e1:	2e          	eq
 5e2:	2e          	eq
 5e3:	2f          	neq
 5e4:	2e          	eq
 5e5:	2e          	eq
 5e6:	2f          	neq
 5e7:	2e          	eq
 5e8:	2e          	eq
 5e9:	2f          	neq
 5ea:	67          	loadsp 92
 5eb:	63          	loadsp 76
 5ec:	63          	loadsp 76
 5ed:	2f          	neq
 5ee:	6e          	loadsp 120
 5ef:	65          	loadsp 84
 5f0:	77          	loadsp 28
 5f1:	6c          	loadsp 112
 5f2:	69          	loadsp 100
 5f3:	62          	loadsp 72
 5f4:	2f          	neq
 5f5:	6c          	loadsp 112
 5f6:	69          	loadsp 100
 5f7:	62          	loadsp 72
 5f8:	63          	loadsp 76
 5f9:	2f          	neq
 5fa:	73          	loadsp 12
 5fb:	74          	loadsp 16
 5fc:	72          	loadsp 8
 5fd:	69          	loadsp 100
 5fe:	6e          	loadsp 120
 5ff:	67          	loadsp 92
 600:	00          	breakpoint
 601:	2f          	neq
 602:	68          	loadsp 96
 603:	6f          	loadsp 124
 604:	6d          	loadsp 116
 605:	65          	loadsp 84
 606:	2f          	neq
 607:	61          	loadsp 68
 608:	6c          	loadsp 112
 609:	76          	loadsp 24
 60a:	69          	loadsp 100
 60b:	65          	loadsp 84
 60c:	62          	loadsp 72
 60d:	6f          	loadsp 124
 60e:	79          	loadsp 36
 60f:	2f          	neq
 610:	7a          	loadsp 40
 611:	70          	loadsp 0
 612:	75          	loadsp 20
 613:	2f          	neq
 614:	74          	loadsp 16
 615:	6f          	loadsp 124
 616:	6f          	loadsp 124
 617:	6c          	loadsp 112
 618:	63          	loadsp 76
 619:	68          	loadsp 96
 61a:	61          	loadsp 68
 61b:	69          	loadsp 100
 61c:	6e          	loadsp 120
 61d:	2f          	neq
 61e:	74          	loadsp 16
 61f:	6f          	loadsp 124
 620:	6f          	loadsp 124
 621:	6c          	loadsp 112
 622:	63          	loadsp 76
 623:	68          	loadsp 96
 624:	61          	loadsp 68
 625:	69          	loadsp 100
 626:	6e          	loadsp 120
 627:	2f          	neq
 628:	74          	loadsp 16
 629:	6f          	loadsp 124
 62a:	6f          	loadsp 124
 62b:	6c          	loadsp 112
 62c:	63          	loadsp 76
 62d:	68          	loadsp 96
 62e:	61          	loadsp 68
 62f:	69          	loadsp 100
 630:	6e          	loadsp 120
 631:	2f          	neq
 632:	67          	loadsp 92
 633:	63          	loadsp 76
 634:	63          	loadsp 76
 635:	2f          	neq
 636:	6e          	loadsp 120
 637:	65          	loadsp 84
 638:	77          	loadsp 28
 639:	6c          	loadsp 112
 63a:	69          	loadsp 100
 63b:	62          	loadsp 72
 63c:	2f          	neq
 63d:	6c          	loadsp 112
 63e:	69          	loadsp 100
 63f:	62          	loadsp 72
 640:	63          	loadsp 76
 641:	2f          	neq
 642:	69          	loadsp 100
 643:	6e          	loadsp 120
 644:	63          	loadsp 76
 645:	6c          	loadsp 112
 646:	75          	loadsp 20
 647:	64          	loadsp 80
 648:	65          	loadsp 84
 649:	2f          	neq
 64a:	73          	loadsp 12
 64b:	79          	loadsp 36
 64c:	73          	loadsp 12
 64d:	00          	breakpoint
 64e:	2f          	neq
 64f:	68          	loadsp 96
 650:	6f          	loadsp 124
 651:	6d          	loadsp 116
 652:	65          	loadsp 84
 653:	2f          	neq
 654:	61          	loadsp 68
 655:	6c          	loadsp 112
 656:	76          	loadsp 24
 657:	69          	loadsp 100
 658:	65          	loadsp 84
 659:	62          	loadsp 72
 65a:	6f          	loadsp 124
 65b:	79          	loadsp 36
 65c:	2f          	neq
 65d:	7a          	loadsp 40
 65e:	70          	loadsp 0
 65f:	75          	loadsp 20
 660:	2f          	neq
 661:	74          	loadsp 16
 662:	6f          	loadsp 124
 663:	6f          	loadsp 124
 664:	6c          	loadsp 112
 665:	63          	loadsp 76
 666:	68          	loadsp 96
 667:	61          	loadsp 68
 668:	69          	loadsp 100
 669:	6e          	loadsp 120
 66a:	2f          	neq
 66b:	74          	loadsp 16
 66c:	6f          	loadsp 124
 66d:	6f          	loadsp 124
 66e:	6c          	loadsp 112
 66f:	63          	loadsp 76
 670:	68          	loadsp 96
 671:	61          	loadsp 68
 672:	69          	loadsp 100
 673:	6e          	loadsp 120
 674:	2f          	neq
 675:	74          	loadsp 16
 676:	6f          	loadsp 124
 677:	6f          	loadsp 124
 678:	6c          	loadsp 112
 679:	63          	loadsp 76
 67a:	68          	loadsp 96
 67b:	61          	loadsp 68
 67c:	69          	loadsp 100
 67d:	6e          	loadsp 120
 67e:	2f          	neq
 67f:	67          	loadsp 92
 680:	63          	loadsp 76
 681:	63          	loadsp 76
 682:	62          	loadsp 72
 683:	75          	loadsp 20
 684:	69          	loadsp 100
 685:	6c          	loadsp 112
 686:	64          	loadsp 80
 687:	2f          	neq
 688:	67          	loadsp 92
 689:	63          	loadsp 76
 68a:	63          	loadsp 76
 68b:	2f          	neq
 68c:	69          	loadsp 100
 68d:	6e          	loadsp 120
 68e:	63          	loadsp 76
 68f:	6c          	loadsp 112
 690:	75          	loadsp 20
 691:	64          	loadsp 80
 692:	65          	loadsp 84
 693:	00          	breakpoint
 694:	00          	breakpoint
 695:	5f          	storesp 60
 696:	74          	loadsp 16
 697:	79          	loadsp 36
 698:	70          	loadsp 0
 699:	65          	loadsp 84
 69a:	73          	loadsp 12
 69b:	2e          	eq
 69c:	68          	loadsp 96
 69d:	00          	breakpoint
 69e:	02          	pushsp
 69f:	00          	breakpoint
 6a0:	00          	breakpoint
 6a1:	73          	loadsp 12
 6a2:	74          	loadsp 16
 6a3:	64          	loadsp 80
 6a4:	64          	loadsp 80
 6a5:	65          	loadsp 84
 6a6:	66          	loadsp 88
 6a7:	2e          	eq
 6a8:	68          	loadsp 96
 6a9:	00          	breakpoint
 6aa:	03          	.byte 3
 6ab:	00          	breakpoint
 6ac:	00          	breakpoint
 6ad:	72          	loadsp 8
 6ae:	65          	loadsp 84
 6af:	65          	loadsp 84
 6b0:	6e          	loadsp 120
 6b1:	74          	loadsp 16
 6b2:	2e          	eq
 6b3:	68          	loadsp 96
 6b4:	00          	breakpoint
 6b5:	02          	pushsp
 6b6:	00          	breakpoint
 6b7:	00          	breakpoint
 6b8:	73          	loadsp 12
 6b9:	74          	loadsp 16
 6ba:	72          	loadsp 8
 6bb:	63          	loadsp 76
 6bc:	6d          	loadsp 116
 6bd:	70          	loadsp 0
 6be:	2e          	eq
 6bf:	63          	loadsp 76
 6c0:	00          	breakpoint
 6c1:	01          	.byte 1
 6c2:	00          	breakpoint
 6c3:	00          	breakpoint
 6c4:	00          	breakpoint
 6c5:	00          	breakpoint
 6c6:	05          	add
 6c7:	02          	pushsp
 6c8:	00          	breakpoint
 6c9:	00          	breakpoint
 6ca:	0e          	.byte 14
 6cb:	53          	storesp 12
 6cc:	04          	poppc
 6cd:	04          	poppc
 6ce:	53          	storesp 12
 6cf:	00          	breakpoint
 6d0:	05          	add
 6d1:	02          	pushsp
 6d2:	00          	breakpoint
 6d3:	00          	breakpoint
 6d4:	0e          	.byte 14
 6d5:	58          	storesp 32
 6d6:	22          	loadh
 6d7:	00          	breakpoint
 6d8:	05          	add
 6d9:	02          	pushsp
 6da:	00          	breakpoint
 6db:	00          	breakpoint
 6dc:	0e          	.byte 14
 6dd:	63          	loadsp 76
 6de:	17          	addsp 28
 6df:	00          	breakpoint
 6e0:	05          	add
 6e1:	02          	pushsp
 6e2:	00          	breakpoint
 6e3:	00          	breakpoint
 6e4:	0e          	.byte 14
 6e5:	64          	loadsp 80
 6e6:	15          	addsp 20
 6e7:	00          	breakpoint
 6e8:	05          	add
 6e9:	02          	pushsp
 6ea:	00          	breakpoint
 6eb:	00          	breakpoint
 6ec:	0e          	.byte 14
 6ed:	65          	loadsp 84
 6ee:	1d          	addsp 52
 6ef:	00          	breakpoint
 6f0:	05          	add
 6f1:	02          	pushsp
 6f2:	00          	breakpoint
 6f3:	00          	breakpoint
 6f4:	0e          	.byte 14
 6f5:	71          	loadsp 4
 6f6:	18          	addsp 32
 6f7:	00          	breakpoint
 6f8:	05          	add
 6f9:	02          	pushsp
 6fa:	00          	breakpoint
 6fb:	00          	breakpoint
 6fc:	0e          	.byte 14
 6fd:	72          	loadsp 8
 6fe:	15          	addsp 20
 6ff:	00          	breakpoint
 700:	05          	add
 701:	02          	pushsp
 702:	00          	breakpoint
 703:	00          	breakpoint
 704:	0e          	.byte 14
 705:	75          	loadsp 20
 706:	1a          	addsp 40
 707:	00          	breakpoint
 708:	05          	add
 709:	02          	pushsp
 70a:	00          	breakpoint
 70b:	00          	breakpoint
 70c:	0e          	.byte 14
 70d:	8d          	im 13
 70e:	13          	addsp 12
 70f:	00          	breakpoint
 710:	05          	add
 711:	02          	pushsp
 712:	00          	breakpoint
 713:	00          	breakpoint
 714:	0e          	.byte 14
 715:	8f          	im 15
 716:	15          	addsp 20
 717:	00          	breakpoint
 718:	05          	add
 719:	02          	pushsp
 71a:	00          	breakpoint
 71b:	00          	breakpoint
 71c:	0e          	.byte 14
 71d:	a1          	im 33
 71e:	16          	addsp 24
 71f:	00          	breakpoint
 720:	05          	add
 721:	02          	pushsp
 722:	00          	breakpoint
 723:	00          	breakpoint
 724:	0e          	.byte 14
 725:	ac          	im 44
 726:	16          	addsp 24
 727:	00          	breakpoint
 728:	05          	add
 729:	02          	pushsp
 72a:	00          	breakpoint
 72b:	00          	breakpoint
 72c:	0e          	.byte 14
 72d:	b4          	im 52
 72e:	03          	.byte 3
 72f:	6d          	loadsp 116
 730:	01          	.byte 1
 731:	00          	breakpoint
 732:	05          	add
 733:	02          	pushsp
 734:	00          	breakpoint
 735:	00          	breakpoint
 736:	0e          	.byte 14
 737:	ca          	im -54
 738:	17          	addsp 28
 739:	00          	breakpoint
 73a:	05          	add
 73b:	02          	pushsp
 73c:	00          	breakpoint
 73d:	00          	breakpoint
 73e:	0e          	.byte 14
 73f:	cc          	im -52
 740:	15          	addsp 20
 741:	00          	breakpoint
 742:	05          	add
 743:	02          	pushsp
 744:	00          	breakpoint
 745:	00          	breakpoint
 746:	0e          	.byte 14
 747:	d9          	im -39
 748:	18          	addsp 32
 749:	00          	breakpoint
 74a:	05          	add
 74b:	02          	pushsp
 74c:	00          	breakpoint
 74d:	00          	breakpoint
 74e:	0e          	.byte 14
 74f:	da          	im -38
 750:	15          	addsp 20
 751:	00          	breakpoint
 752:	05          	add
 753:	02          	pushsp
 754:	00          	breakpoint
 755:	00          	breakpoint
 756:	0e          	.byte 14
 757:	e0          	im -32
 758:	0c          	store
 759:	00          	breakpoint
 75a:	05          	add
 75b:	02          	pushsp
 75c:	00          	breakpoint
 75d:	00          	breakpoint
 75e:	0e          	.byte 14
 75f:	e1          	im -31
 760:	26          	ulessthan
 761:	00          	breakpoint
 762:	05          	add
 763:	02          	pushsp
 764:	00          	breakpoint
 765:	00          	breakpoint
 766:	0e          	.byte 14
 767:	e8          	im -24
 768:	00          	breakpoint
 769:	01          	.byte 1
 76a:	01          	.byte 1
 76b:	00          	breakpoint
 76c:	00          	breakpoint
 76d:	00          	breakpoint
 76e:	16          	addsp 24
 76f:	00          	breakpoint
 770:	02          	pushsp
 771:	00          	breakpoint
 772:	00          	breakpoint
 773:	00          	breakpoint
 774:	10          	addsp 0
 775:	01          	.byte 1
 776:	01          	.byte 1
 777:	fb          	im -5
 778:	0e          	.byte 14
 779:	0a          	flip
 77a:	00          	breakpoint
 77b:	01          	.byte 1
 77c:	01          	.byte 1
 77d:	01          	.byte 1
 77e:	01          	.byte 1
 77f:	00          	breakpoint
 780:	00          	breakpoint
 781:	00          	breakpoint
 782:	01          	.byte 1
	...
Disassembly of section .debug_frame:

00000000 <.Lframe0>:
   0:	00          	breakpoint
   1:	00          	breakpoint
   2:	00          	breakpoint
   3:	10          	addsp 0
   4:	ff          	im -1
   5:	ff          	im -1
   6:	ff          	im -1
   7:	ff          	im -1
   8:	01          	.byte 1
   9:	00          	breakpoint
   a:	01          	.byte 1
   b:	7c          	loadsp 48
   c:	24          	lessthan
   d:	0c          	store
   e:	20          	.byte 32
   f:	04          	poppc
  10:	a4          	im 36
  11:	01          	.byte 1
  12:	00          	breakpoint
  13:	00          	breakpoint
  14:	00          	breakpoint
  15:	00          	breakpoint
  16:	00          	breakpoint
  17:	1c          	addsp 48
	...
  20:	00          	breakpoint
  21:	00          	breakpoint
  22:	00          	breakpoint
  23:	2d          	call
  24:	04          	poppc
  25:	00          	breakpoint
  26:	00          	breakpoint
  27:	00          	breakpoint
  28:	03          	.byte 3
  29:	0e          	.byte 14
  2a:	10          	addsp 0
  2b:	04          	poppc
  2c:	00          	breakpoint
  2d:	00          	breakpoint
  2e:	00          	breakpoint
  2f:	29          	mult
  30:	0e          	.byte 14
  31:	04          	poppc
  32:	00          	breakpoint
  33:	00          	breakpoint
  34:	00          	breakpoint
  35:	00          	breakpoint
  36:	00          	breakpoint
  37:	1c          	addsp 48
	...
  40:	00          	breakpoint
  41:	00          	breakpoint
  42:	00          	breakpoint
  43:	25          	lessthanorequal
  44:	04          	poppc
  45:	00          	breakpoint
  46:	00          	breakpoint
  47:	00          	breakpoint
  48:	03          	.byte 3
  49:	0e          	.byte 14
  4a:	0c          	store
  4b:	04          	poppc
  4c:	00          	breakpoint
  4d:	00          	breakpoint
  4e:	00          	breakpoint
  4f:	21          	.byte 33
  50:	0e          	.byte 14
  51:	04          	poppc
  52:	00          	breakpoint
  53:	00          	breakpoint
  54:	00          	breakpoint
  55:	00          	breakpoint
  56:	00          	breakpoint
  57:	0c          	store
	...
  60:	00          	breakpoint
  61:	00          	breakpoint
  62:	00          	breakpoint
  63:	85          	im 5
  64:	00          	breakpoint
  65:	00          	breakpoint
  66:	00          	breakpoint
  67:	1c          	addsp 48
	...
  70:	00          	breakpoint
  71:	00          	breakpoint
  72:	00          	breakpoint
  73:	70          	loadsp 0
  74:	04          	poppc
  75:	00          	breakpoint
  76:	00          	breakpoint
  77:	00          	breakpoint
  78:	03          	.byte 3
  79:	0e          	.byte 14
  7a:	40          	storesp 64
  7b:	04          	poppc
  7c:	00          	breakpoint
  7d:	00          	breakpoint
  7e:	00          	breakpoint
  7f:	5f          	storesp 60
  80:	0e          	.byte 14
  81:	04          	poppc
	...

00000084 <.Lframe0>:
  84:	00          	breakpoint
  85:	00          	breakpoint
  86:	00          	breakpoint
  87:	10          	addsp 0
  88:	ff          	im -1
  89:	ff          	im -1
  8a:	ff          	im -1
  8b:	ff          	im -1
  8c:	01          	.byte 1
  8d:	00          	breakpoint
  8e:	01          	.byte 1
  8f:	7c          	loadsp 48
  90:	24          	lessthan
  91:	0c          	store
  92:	20          	.byte 32
  93:	04          	poppc
  94:	a4          	im 36
  95:	01          	.byte 1
  96:	00          	breakpoint
  97:	00          	breakpoint
  98:	00          	breakpoint
  99:	00          	breakpoint
  9a:	00          	breakpoint
  9b:	1c          	addsp 48
  9c:	00          	breakpoint
  9d:	00          	breakpoint
  9e:	00          	breakpoint
  9f:	84          	im 4
  a0:	00          	breakpoint
  a1:	00          	breakpoint
  a2:	0d          	popsp
  a3:	2b          	ashiftleft
  a4:	00          	breakpoint
  a5:	00          	breakpoint
  a6:	00          	breakpoint
  a7:	bc          	im 60
  a8:	04          	poppc
  a9:	00          	breakpoint
  aa:	00          	breakpoint
  ab:	00          	breakpoint
  ac:	03          	.byte 3
  ad:	0e          	.byte 14
  ae:	18          	addsp 32
  af:	04          	poppc
  b0:	00          	breakpoint
  b1:	00          	breakpoint
  b2:	00          	breakpoint
  b3:	51          	storesp 4
  b4:	0e          	.byte 14
  b5:	04          	poppc
	...

000000b8 <.Lframe0>:
  b8:	00          	breakpoint
  b9:	00          	breakpoint
  ba:	00          	breakpoint
  bb:	10          	addsp 0
  bc:	ff          	im -1
  bd:	ff          	im -1
  be:	ff          	im -1
  bf:	ff          	im -1
  c0:	01          	.byte 1
  c1:	00          	breakpoint
  c2:	01          	.byte 1
  c3:	7c          	loadsp 48
  c4:	24          	lessthan
  c5:	0c          	store
  c6:	20          	.byte 32
  c7:	04          	poppc
  c8:	a4          	im 36
  c9:	01          	.byte 1
  ca:	00          	breakpoint
  cb:	00          	breakpoint
  cc:	00          	breakpoint
  cd:	00          	breakpoint
  ce:	00          	breakpoint
  cf:	1c          	addsp 48
  d0:	00          	breakpoint
  d1:	00          	breakpoint
  d2:	00          	breakpoint
  d3:	b8          	im 56
  d4:	00          	breakpoint
  d5:	00          	breakpoint
  d6:	0d          	popsp
  d7:	c4          	im -60
  d8:	00          	breakpoint
  d9:	00          	breakpoint
  da:	00          	breakpoint
  db:	b6          	im 54
  dc:	04          	poppc
  dd:	00          	breakpoint
  de:	00          	breakpoint
  df:	00          	breakpoint
  e0:	03          	.byte 3
  e1:	0e          	.byte 14
  e2:	18          	addsp 32
  e3:	04          	poppc
  e4:	00          	breakpoint
  e5:	00          	breakpoint
  e6:	00          	breakpoint
  e7:	4f          	storesp 124
  e8:	0e          	.byte 14
  e9:	04          	poppc
	...

000000ec <.Lframe0>:
  ec:	00          	breakpoint
  ed:	00          	breakpoint
  ee:	00          	breakpoint
  ef:	10          	addsp 0
  f0:	ff          	im -1
  f1:	ff          	im -1
  f2:	ff          	im -1
  f3:	ff          	im -1
  f4:	01          	.byte 1
  f5:	00          	breakpoint
  f6:	01          	.byte 1
  f7:	7c          	loadsp 48
  f8:	24          	lessthan
  f9:	0c          	store
  fa:	20          	.byte 32
  fb:	04          	poppc
  fc:	a4          	im 36
  fd:	01          	.byte 1
  fe:	00          	breakpoint
  ff:	00          	breakpoint
 100:	00          	breakpoint
 101:	00          	breakpoint
 102:	00          	breakpoint
 103:	1c          	addsp 48
 104:	00          	breakpoint
 105:	00          	breakpoint
 106:	00          	breakpoint
 107:	ec          	im -20
 108:	00          	breakpoint
 109:	00          	breakpoint
 10a:	0e          	.byte 14
 10b:	53          	storesp 12
 10c:	00          	breakpoint
 10d:	00          	breakpoint
 10e:	00          	breakpoint
 10f:	bb          	im 59
 110:	04          	poppc
 111:	00          	breakpoint
 112:	00          	breakpoint
 113:	00          	breakpoint
 114:	03          	.byte 3
 115:	0e          	.byte 14
 116:	1c          	addsp 48
 117:	04          	poppc
 118:	00          	breakpoint
 119:	00          	breakpoint
 11a:	00          	breakpoint
 11b:	74          	loadsp 16
 11c:	0e          	.byte 14
 11d:	04          	poppc
	...
Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f          	storesp 60
   1:	63          	loadsp 76
   2:	70          	loadsp 0
   3:	75          	loadsp 20
   4:	5f          	storesp 60
   5:	63          	loadsp 76
   6:	6f          	loadsp 124
   7:	6e          	loadsp 120
   8:	66          	loadsp 88
   9:	69          	loadsp 100
   a:	67          	loadsp 92
   b:	00          	breakpoint
   c:	6c          	loadsp 112
   d:	6f          	loadsp 124
   e:	6e          	loadsp 120
   f:	67          	loadsp 92
  10:	20          	.byte 32
  11:	6c          	loadsp 112
  12:	6f          	loadsp 124
  13:	6e          	loadsp 120
  14:	67          	loadsp 92
  15:	20          	.byte 32
  16:	75          	loadsp 20
  17:	6e          	loadsp 120
  18:	73          	loadsp 12
  19:	69          	loadsp 100
  1a:	67          	loadsp 92
  1b:	6e          	loadsp 120
  1c:	65          	loadsp 84
  1d:	64          	loadsp 80
  1e:	20          	.byte 32
  1f:	69          	loadsp 100
  20:	6e          	loadsp 120
  21:	74          	loadsp 16
  22:	00          	breakpoint
  23:	6c          	loadsp 112
  24:	6f          	loadsp 124
  25:	6e          	loadsp 120
  26:	67          	loadsp 92
  27:	20          	.byte 32
  28:	6c          	loadsp 112
  29:	6f          	loadsp 124
  2a:	6e          	loadsp 120
  2b:	67          	loadsp 92
  2c:	20          	.byte 32
  2d:	69          	loadsp 100
  2e:	6e          	loadsp 120
  2f:	74          	loadsp 16
  30:	00          	breakpoint
  31:	54          	storesp 16
  32:	49          	storesp 100
  33:	4d          	storesp 116
  34:	45          	storesp 84
  35:	52          	storesp 8
  36:	00          	breakpoint
  37:	6f          	loadsp 124
  38:	75          	loadsp 20
  39:	74          	loadsp 16
  3a:	62          	loadsp 72
  3b:	79          	loadsp 36
  3c:	74          	loadsp 16
  3d:	65          	loadsp 84
  3e:	00          	breakpoint
  3f:	5f          	storesp 60
  40:	72          	loadsp 8
  41:	65          	loadsp 84
  42:	61          	loadsp 68
  43:	64          	loadsp 80
  44:	43          	storesp 76
  45:	79          	loadsp 36
  46:	63          	loadsp 76
  47:	6c          	loadsp 112
  48:	65          	loadsp 84
  49:	73          	loadsp 12
  4a:	00          	breakpoint
  4b:	2f          	neq
  4c:	68          	loadsp 96
  4d:	6f          	loadsp 124
  4e:	6d          	loadsp 116
  4f:	65          	loadsp 84
  50:	2f          	neq
  51:	61          	loadsp 68
  52:	6c          	loadsp 112
  53:	76          	loadsp 24
  54:	69          	loadsp 100
  55:	65          	loadsp 84
  56:	62          	loadsp 72
  57:	6f          	loadsp 124
  58:	79          	loadsp 36
  59:	2f          	neq
  5a:	7a          	loadsp 40
  5b:	70          	loadsp 0
  5c:	75          	loadsp 20
  5d:	2f          	neq
  5e:	74          	loadsp 16
  5f:	6f          	loadsp 124
  60:	6f          	loadsp 124
  61:	6c          	loadsp 112
  62:	63          	loadsp 76
  63:	68          	loadsp 96
  64:	61          	loadsp 68
  65:	69          	loadsp 100
  66:	6e          	loadsp 120
  67:	2f          	neq
  68:	74          	loadsp 16
  69:	6f          	loadsp 124
  6a:	6f          	loadsp 124
  6b:	6c          	loadsp 112
  6c:	63          	loadsp 76
  6d:	68          	loadsp 96
  6e:	61          	loadsp 68
  6f:	69          	loadsp 100
  70:	6e          	loadsp 120
  71:	2f          	neq
  72:	74          	loadsp 16
  73:	6f          	loadsp 124
  74:	6f          	loadsp 124
  75:	6c          	loadsp 112
  76:	63          	loadsp 76
  77:	68          	loadsp 96
  78:	61          	loadsp 68
  79:	69          	loadsp 100
  7a:	6e          	loadsp 120
  7b:	2f          	neq
  7c:	67          	loadsp 92
  7d:	63          	loadsp 76
  7e:	63          	loadsp 76
  7f:	62          	loadsp 72
  80:	75          	loadsp 20
  81:	69          	loadsp 100
  82:	6c          	loadsp 112
  83:	64          	loadsp 80
  84:	2f          	neq
  85:	7a          	loadsp 40
  86:	70          	loadsp 0
  87:	75          	loadsp 20
  88:	2d          	call
  89:	65          	loadsp 84
  8a:	6c          	loadsp 112
  8b:	66          	loadsp 88
  8c:	2f          	neq
  8d:	66          	loadsp 88
  8e:	61          	loadsp 68
  8f:	73          	loadsp 12
  90:	74          	loadsp 16
  91:	2f          	neq
  92:	6c          	loadsp 112
  93:	69          	loadsp 100
  94:	62          	loadsp 72
  95:	67          	loadsp 92
  96:	6c          	loadsp 112
  97:	6f          	loadsp 124
  98:	73          	loadsp 12
  99:	73          	loadsp 12
  9a:	2f          	neq
  9b:	7a          	loadsp 40
  9c:	70          	loadsp 0
  9d:	75          	loadsp 20
  9e:	00          	breakpoint
  9f:	73          	loadsp 12
  a0:	68          	loadsp 96
  a1:	6f          	loadsp 124
  a2:	72          	loadsp 8
  a3:	74          	loadsp 16
  a4:	20          	.byte 32
  a5:	75          	loadsp 20
  a6:	6e          	loadsp 120
  a7:	73          	loadsp 12
  a8:	69          	loadsp 100
  a9:	67          	loadsp 92
  aa:	6e          	loadsp 120
  ab:	65          	loadsp 84
  ac:	64          	loadsp 80
  ad:	20          	.byte 32
  ae:	69          	loadsp 100
  af:	6e          	loadsp 120
  b0:	74          	loadsp 16
  b1:	00          	breakpoint
  b2:	47          	storesp 92
  b3:	4e          	storesp 120
  b4:	55          	storesp 20
  b5:	20          	.byte 32
  b6:	43          	storesp 76
  b7:	20          	.byte 32
  b8:	33          	loadb
  b9:	2e          	eq
  ba:	34          	storeb
  bb:	2e          	eq
  bc:	32          	xor
  bd:	00          	breakpoint
  be:	5f          	storesp 60
  bf:	68          	loadsp 96
  c0:	61          	loadsp 68
  c1:	72          	loadsp 8
  c2:	64          	loadsp 80
  c3:	77          	loadsp 28
  c4:	61          	loadsp 68
  c5:	72          	loadsp 8
  c6:	65          	loadsp 84
  c7:	00          	breakpoint
  c8:	75          	loadsp 20
  c9:	6e          	loadsp 120
  ca:	73          	loadsp 12
  cb:	69          	loadsp 100
  cc:	67          	loadsp 92
  cd:	6e          	loadsp 120
  ce:	65          	loadsp 84
  cf:	64          	loadsp 80
  d0:	20          	.byte 32
  d1:	63          	loadsp 76
  d2:	68          	loadsp 96
  d3:	61          	loadsp 68
  d4:	72          	loadsp 8
  d5:	00          	breakpoint
  d6:	73          	loadsp 12
  d7:	68          	loadsp 96
  d8:	6f          	loadsp 124
  d9:	72          	loadsp 8
  da:	74          	loadsp 16
  db:	20          	.byte 32
  dc:	69          	loadsp 100
  dd:	6e          	loadsp 120
  de:	74          	loadsp 16
  df:	00          	breakpoint
  e0:	69          	loadsp 100
  e1:	6e          	loadsp 120
  e2:	62          	loadsp 72
  e3:	79          	loadsp 36
  e4:	74          	loadsp 16
  e5:	65          	loadsp 84
  e6:	00          	breakpoint
  e7:	55          	storesp 20
  e8:	41          	storesp 68
  e9:	52          	storesp 8
  ea:	54          	storesp 16
  eb:	00          	breakpoint
  ec:	2e          	eq
  ed:	2e          	eq
  ee:	2f          	neq
  ef:	2e          	eq
  f0:	2e          	eq
  f1:	2f          	neq
  f2:	2e          	eq
  f3:	2e          	eq
  f4:	2f          	neq
  f5:	2e          	eq
  f6:	2e          	eq
  f7:	2f          	neq
  f8:	2e          	eq
  f9:	2e          	eq
  fa:	2f          	neq
  fb:	67          	loadsp 92
  fc:	63          	loadsp 76
  fd:	63          	loadsp 76
  fe:	2f          	neq
  ff:	6c          	loadsp 112
 100:	69          	loadsp 100
 101:	62          	loadsp 72
 102:	67          	loadsp 92
 103:	6c          	loadsp 112
 104:	6f          	loadsp 124
 105:	73          	loadsp 12
 106:	73          	loadsp 12
 107:	2f          	neq
 108:	7a          	loadsp 40
 109:	70          	loadsp 0
 10a:	75          	loadsp 20
 10b:	2f          	neq
 10c:	63          	loadsp 76
 10d:	72          	loadsp 8
 10e:	74          	loadsp 16
 10f:	5f          	storesp 60
 110:	69          	loadsp 100
 111:	6f          	loadsp 124
 112:	2e          	eq
 113:	63          	loadsp 76
 114:	00          	breakpoint
 115:	5f          	storesp 60
 116:	69          	loadsp 100
 117:	6e          	loadsp 120
 118:	69          	loadsp 100
 119:	74          	loadsp 16
 11a:	49          	storesp 100
 11b:	4f          	storesp 124
 11c:	00          	breakpoint
 11d:	63          	loadsp 76
 11e:	6c          	loadsp 112
 11f:	6f          	loadsp 124
 120:	63          	loadsp 76
 121:	6b          	loadsp 108
 122:	00          	breakpoint
 123:	61          	loadsp 68
 124:	6c          	loadsp 112
 125:	69          	loadsp 100
 126:	67          	loadsp 92
 127:	6e          	loadsp 120
 128:	65          	loadsp 84
 129:	64          	loadsp 80
 12a:	5f          	storesp 60
 12b:	64          	loadsp 80
 12c:	73          	loadsp 12
 12d:	74          	loadsp 16
 12e:	00          	breakpoint
 12f:	73          	loadsp 12
 130:	69          	loadsp 100
 131:	7a          	loadsp 40
 132:	65          	loadsp 84
 133:	5f          	storesp 60
 134:	74          	loadsp 16
 135:	00          	breakpoint
 136:	2e          	eq
 137:	2e          	eq
 138:	2f          	neq
 139:	2e          	eq
 13a:	2e          	eq
 13b:	2f          	neq
 13c:	2e          	eq
 13d:	2e          	eq
 13e:	2f          	neq
 13f:	2e          	eq
 140:	2e          	eq
 141:	2f          	neq
 142:	2e          	eq
 143:	2e          	eq
 144:	2f          	neq
 145:	2e          	eq
 146:	2e          	eq
 147:	2f          	neq
 148:	67          	loadsp 92
 149:	63          	loadsp 76
 14a:	63          	loadsp 76
 14b:	2f          	neq
 14c:	6e          	loadsp 120
 14d:	65          	loadsp 84
 14e:	77          	loadsp 28
 14f:	6c          	loadsp 112
 150:	69          	loadsp 100
 151:	62          	loadsp 72
 152:	2f          	neq
 153:	6c          	loadsp 112
 154:	69          	loadsp 100
 155:	62          	loadsp 72
 156:	63          	loadsp 76
 157:	2f          	neq
 158:	73          	loadsp 12
 159:	74          	loadsp 16
 15a:	72          	loadsp 8
 15b:	69          	loadsp 100
 15c:	6e          	loadsp 120
 15d:	67          	loadsp 92
 15e:	2f          	neq
 15f:	6d          	loadsp 116
 160:	65          	loadsp 84
 161:	6d          	loadsp 116
 162:	63          	loadsp 76
 163:	70          	loadsp 0
 164:	79          	loadsp 36
 165:	2e          	eq
 166:	63          	loadsp 76
 167:	00          	breakpoint
 168:	61          	loadsp 68
 169:	6c          	loadsp 112
 16a:	69          	loadsp 100
 16b:	67          	loadsp 92
 16c:	6e          	loadsp 120
 16d:	65          	loadsp 84
 16e:	64          	loadsp 80
 16f:	5f          	storesp 60
 170:	73          	loadsp 12
 171:	72          	loadsp 8
 172:	63          	loadsp 76
 173:	00          	breakpoint
 174:	73          	loadsp 12
 175:	72          	loadsp 8
 176:	63          	loadsp 76
 177:	30          	neg
 178:	00          	breakpoint
 179:	2f          	neq
 17a:	68          	loadsp 96
 17b:	6f          	loadsp 124
 17c:	6d          	loadsp 116
 17d:	65          	loadsp 84
 17e:	2f          	neq
 17f:	61          	loadsp 68
 180:	6c          	loadsp 112
 181:	76          	loadsp 24
 182:	69          	loadsp 100
 183:	65          	loadsp 84
 184:	62          	loadsp 72
 185:	6f          	loadsp 124
 186:	79          	loadsp 36
 187:	2f          	neq
 188:	7a          	loadsp 40
 189:	70          	loadsp 0
 18a:	75          	loadsp 20
 18b:	2f          	neq
 18c:	74          	loadsp 16
 18d:	6f          	loadsp 124
 18e:	6f          	loadsp 124
 18f:	6c          	loadsp 112
 190:	63          	loadsp 76
 191:	68          	loadsp 96
 192:	61          	loadsp 68
 193:	69          	loadsp 100
 194:	6e          	loadsp 120
 195:	2f          	neq
 196:	74          	loadsp 16
 197:	6f          	loadsp 124
 198:	6f          	loadsp 124
 199:	6c          	loadsp 112
 19a:	63          	loadsp 76
 19b:	68          	loadsp 96
 19c:	61          	loadsp 68
 19d:	69          	loadsp 100
 19e:	6e          	loadsp 120
 19f:	2f          	neq
 1a0:	74          	loadsp 16
 1a1:	6f          	loadsp 124
 1a2:	6f          	loadsp 124
 1a3:	6c          	loadsp 112
 1a4:	63          	loadsp 76
 1a5:	68          	loadsp 96
 1a6:	61          	loadsp 68
 1a7:	69          	loadsp 100
 1a8:	6e          	loadsp 120
 1a9:	2f          	neq
 1aa:	67          	loadsp 92
 1ab:	63          	loadsp 76
 1ac:	63          	loadsp 76
 1ad:	62          	loadsp 72
 1ae:	75          	loadsp 20
 1af:	69          	loadsp 100
 1b0:	6c          	loadsp 112
 1b1:	64          	loadsp 80
 1b2:	2f          	neq
 1b3:	7a          	loadsp 40
 1b4:	70          	loadsp 0
 1b5:	75          	loadsp 20
 1b6:	2d          	call
 1b7:	65          	loadsp 84
 1b8:	6c          	loadsp 112
 1b9:	66          	loadsp 88
 1ba:	2f          	neq
 1bb:	66          	loadsp 88
 1bc:	61          	loadsp 68
 1bd:	73          	loadsp 12
 1be:	74          	loadsp 16
 1bf:	2f          	neq
 1c0:	6e          	loadsp 120
 1c1:	65          	loadsp 84
 1c2:	77          	loadsp 28
 1c3:	6c          	loadsp 112
 1c4:	69          	loadsp 100
 1c5:	62          	loadsp 72
 1c6:	2f          	neq
 1c7:	6c          	loadsp 112
 1c8:	69          	loadsp 100
 1c9:	62          	loadsp 72
 1ca:	63          	loadsp 76
 1cb:	2f          	neq
 1cc:	73          	loadsp 12
 1cd:	74          	loadsp 16
 1ce:	72          	loadsp 8
 1cf:	69          	loadsp 100
 1d0:	6e          	loadsp 120
 1d1:	67          	loadsp 92
 1d2:	00          	breakpoint
 1d3:	64          	loadsp 80
 1d4:	73          	loadsp 12
 1d5:	74          	loadsp 16
 1d6:	30          	neg
 1d7:	00          	breakpoint
 1d8:	6d          	loadsp 116
 1d9:	65          	loadsp 84
 1da:	6d          	loadsp 116
 1db:	63          	loadsp 76
 1dc:	70          	loadsp 0
 1dd:	79          	loadsp 36
 1de:	00          	breakpoint
 1df:	6c          	loadsp 112
 1e0:	65          	loadsp 84
 1e1:	6e          	loadsp 120
 1e2:	30          	neg
 1e3:	00          	breakpoint
 1e4:	6d          	loadsp 116
 1e5:	65          	loadsp 84
 1e6:	6d          	loadsp 116
 1e7:	73          	loadsp 12
 1e8:	65          	loadsp 84
 1e9:	74          	loadsp 16
 1ea:	00          	breakpoint
 1eb:	61          	loadsp 68
 1ec:	6c          	loadsp 112
 1ed:	69          	loadsp 100
 1ee:	67          	loadsp 92
 1ef:	6e          	loadsp 120
 1f0:	65          	loadsp 84
 1f1:	64          	loadsp 80
 1f2:	5f          	storesp 60
 1f3:	61          	loadsp 68
 1f4:	64          	loadsp 80
 1f5:	64          	loadsp 80
 1f6:	72          	loadsp 8
 1f7:	00          	breakpoint
 1f8:	2e          	eq
 1f9:	2e          	eq
 1fa:	2f          	neq
 1fb:	2e          	eq
 1fc:	2e          	eq
 1fd:	2f          	neq
 1fe:	2e          	eq
 1ff:	2e          	eq
 200:	2f          	neq
 201:	2e          	eq
 202:	2e          	eq
 203:	2f          	neq
 204:	2e          	eq
 205:	2e          	eq
 206:	2f          	neq
 207:	2e          	eq
 208:	2e          	eq
 209:	2f          	neq
 20a:	67          	loadsp 92
 20b:	63          	loadsp 76
 20c:	63          	loadsp 76
 20d:	2f          	neq
 20e:	6e          	loadsp 120
 20f:	65          	loadsp 84
 210:	77          	loadsp 28
 211:	6c          	loadsp 112
 212:	69          	loadsp 100
 213:	62          	loadsp 72
 214:	2f          	neq
 215:	6c          	loadsp 112
 216:	69          	loadsp 100
 217:	62          	loadsp 72
 218:	63          	loadsp 76
 219:	2f          	neq
 21a:	73          	loadsp 12
 21b:	74          	loadsp 16
 21c:	72          	loadsp 8
 21d:	69          	loadsp 100
 21e:	6e          	loadsp 120
 21f:	67          	loadsp 92
 220:	2f          	neq
 221:	6d          	loadsp 116
 222:	65          	loadsp 84
 223:	6d          	loadsp 116
 224:	73          	loadsp 12
 225:	65          	loadsp 84
 226:	74          	loadsp 16
 227:	2e          	eq
 228:	63          	loadsp 76
 229:	00          	breakpoint
 22a:	62          	loadsp 72
 22b:	75          	loadsp 20
 22c:	66          	loadsp 88
 22d:	66          	loadsp 88
 22e:	65          	loadsp 84
 22f:	72          	loadsp 8
 230:	00          	breakpoint
 231:	2e          	eq
 232:	2e          	eq
 233:	2f          	neq
 234:	2e          	eq
 235:	2e          	eq
 236:	2f          	neq
 237:	2e          	eq
 238:	2e          	eq
 239:	2f          	neq
 23a:	2e          	eq
 23b:	2e          	eq
 23c:	2f          	neq
 23d:	2e          	eq
 23e:	2e          	eq
 23f:	2f          	neq
 240:	2e          	eq
 241:	2e          	eq
 242:	2f          	neq
 243:	67          	loadsp 92
 244:	63          	loadsp 76
 245:	63          	loadsp 76
 246:	2f          	neq
 247:	6e          	loadsp 120
 248:	65          	loadsp 84
 249:	77          	loadsp 28
 24a:	6c          	loadsp 112
 24b:	69          	loadsp 100
 24c:	62          	loadsp 72
 24d:	2f          	neq
 24e:	6c          	loadsp 112
 24f:	69          	loadsp 100
 250:	62          	loadsp 72
 251:	63          	loadsp 76
 252:	2f          	neq
 253:	73          	loadsp 12
 254:	74          	loadsp 16
 255:	72          	loadsp 8
 256:	69          	loadsp 100
 257:	6e          	loadsp 120
 258:	67          	loadsp 92
 259:	2f          	neq
 25a:	73          	loadsp 12
 25b:	74          	loadsp 16
 25c:	72          	loadsp 8
 25d:	63          	loadsp 76
 25e:	6d          	loadsp 116
 25f:	70          	loadsp 0
 260:	2e          	eq
 261:	63          	loadsp 76
 262:	00          	breakpoint
 263:	73          	loadsp 12
 264:	74          	loadsp 16
 265:	72          	loadsp 8
 266:	63          	loadsp 76
 267:	6d          	loadsp 116
 268:	70          	loadsp 0
	...
Disassembly of section .boots:

00001000 <ivector>:
    1000:	00          	breakpoint
    1001:	00          	breakpoint
	...

00001004 <bootloaderdata>:
    1004:	00          	breakpoint
    1005:	00          	breakpoint
	...

00001008 <__sketch_start>:
    1008:	0b          	nop
    1009:	00          	breakpoint
	...
Disassembly of section .vectors:

00000000 <_memreg-0x8>:
	...

00000008 <_memreg>:
	...
