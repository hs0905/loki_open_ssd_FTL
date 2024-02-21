
ftl_ariane.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000200000 <start>:
  200000:	0000d297          	auipc	t0,0xd
  200004:	a1428293          	addi	t0,t0,-1516 # 20ca14 <dev_irq_handler>
  200008:	30529073          	csrw	mtvec,t0
  20000c:	00000297          	auipc	t0,0x0
  200010:	00c28293          	addi	t0,t0,12 # 200018 <_main>
  200014:	34129073          	csrw	mepc,t0

0000000000200018 <_main>:
  200018:	304022f3          	csrr	t0,mie
  20001c:	00001137          	lui	sp,0x1
  200020:	8001011b          	addiw	sp,sp,-2048
  200024:	0022e2b3          	or	t0,t0,sp
  200028:	30429073          	csrw	mie,t0
  20002c:	300462f3          	csrrsi	t0,mstatus,8
  200030:	00300137          	lui	sp,0x300
  200034:	00c00093          	li	ra,12
  200038:	00a0006f          	j	200042 <main>
  20003c:	0040006f          	j	200040 <end>

0000000000200040 <end>:
  200040:	0001                	nop

0000000000200042 <main>:
  200042:	00210537          	lui	a0,0x210
  200046:	1141                	addi	sp,sp,-16
  200048:	97050513          	addi	a0,a0,-1680 # 20f970 <nvme_main+0xeba>
  20004c:	e406                	sd	ra,8(sp)
  20004e:	56a040ef          	jal	ra,2045b8 <cpl_print>
  200052:	00210537          	lui	a0,0x210
  200056:	98850513          	addi	a0,a0,-1656 # 20f988 <nvme_main+0xed2>
  20005a:	55e040ef          	jal	ra,2045b8 <cpl_print>
  20005e:	00210537          	lui	a0,0x210
  200062:	63000613          	li	a2,1584
  200066:	4581                	li	a1,0
  200068:	f2850513          	addi	a0,a0,-216 # 20ff28 <__bss_start>
  20006c:	6b60e0ef          	jal	ra,20e722 <cpl_memset>
  200070:	00210537          	lui	a0,0x210
  200074:	99050513          	addi	a0,a0,-1648 # 20f990 <nvme_main+0xeda>
  200078:	540040ef          	jal	ra,2045b8 <cpl_print>
  20007c:	0f10c0ef          	jal	ra,20c96c <dev_irq_init>
  200080:	2370e0ef          	jal	ra,20eab6 <nvme_main>
  200084:	00210537          	lui	a0,0x210
  200088:	9b050513          	addi	a0,a0,-1616 # 20f9b0 <nvme_main+0xefa>
  20008c:	52c040ef          	jal	ra,2045b8 <cpl_print>
  200090:	60a2                	ld	ra,8(sp)
  200092:	4501                	li	a0,0
  200094:	0141                	addi	sp,sp,16
  200096:	8082                	ret

0000000000200098 <InitAddressMap>:
  200098:	1101                	addi	sp,sp,-32
  20009a:	ec06                	sd	ra,24(sp)
  20009c:	e822                	sd	s0,16(sp)
  20009e:	1000                	addi	s0,sp,32
  2000a0:	002107b7          	lui	a5,0x210
  2000a4:	18005737          	lui	a4,0x18005
  2000a8:	10070713          	addi	a4,a4,256 # 18005100 <g_nvmeTask+0x17df4c98>
  2000ac:	f2e7bc23          	sd	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  2000b0:	002107b7          	lui	a5,0x210
  2000b4:	28005737          	lui	a4,0x28005
  2000b8:	10070713          	addi	a4,a4,256 # 28005100 <g_nvmeTask+0x27df4c98>
  2000bc:	f4e7b823          	sd	a4,-176(a5) # 20ff50 <virtualSliceMapPtr>
  2000c0:	002107b7          	lui	a5,0x210
  2000c4:	38005737          	lui	a4,0x38005
  2000c8:	10070713          	addi	a4,a4,256 # 38005100 <g_nvmeTask+0x37df4c98>
  2000cc:	f4e7b423          	sd	a4,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2000d0:	002107b7          	lui	a5,0x210
  2000d4:	38810737          	lui	a4,0x38810
  2000d8:	20070713          	addi	a4,a4,512 # 38810200 <g_nvmeTask+0x385ffd98>
  2000dc:	f4e7b023          	sd	a4,-192(a5) # 20ff40 <virtualDieMapPtr>
  2000e0:	002107b7          	lui	a5,0x210
  2000e4:	38605737          	lui	a4,0x38605
  2000e8:	10070713          	addi	a4,a4,256 # 38605100 <g_nvmeTask+0x383f4c98>
  2000ec:	f6e7b023          	sd	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  2000f0:	002107b7          	lui	a5,0x210
  2000f4:	38810737          	lui	a4,0x38810
  2000f8:	10070713          	addi	a4,a4,256 # 38810100 <g_nvmeTask+0x385ffc98>
  2000fc:	f4e7bc23          	sd	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  200100:	fe042423          	sw	zero,-24(s0)
  200104:	a069                	j	20018e <InitAddressMap+0xf6>
  200106:	fe042623          	sw	zero,-20(s0)
  20010a:	a82d                	j	200144 <InitAddressMap+0xac>
  20010c:	002107b7          	lui	a5,0x210
  200110:	f607b683          	ld	a3,-160(a5) # 20ff60 <phyBlockMapPtr>
  200114:	fec42783          	lw	a5,-20(s0)
  200118:	03079713          	slli	a4,a5,0x30
  20011c:	9341                	srli	a4,a4,0x30
  20011e:	fec46783          	lwu	a5,-20(s0)
  200122:	fe846583          	lwu	a1,-24(s0)
  200126:	6609                	lui	a2,0x2
  200128:	0b060613          	addi	a2,a2,176 # 20b0 <start-0x1fdf50>
  20012c:	02c58633          	mul	a2,a1,a2
  200130:	97b2                	add	a5,a5,a2
  200132:	078a                	slli	a5,a5,0x2
  200134:	97b6                	add	a5,a5,a3
  200136:	00e79023          	sh	a4,0(a5)
  20013a:	fec42783          	lw	a5,-20(s0)
  20013e:	2785                	addiw	a5,a5,1
  200140:	fef42623          	sw	a5,-20(s0)
  200144:	fec42783          	lw	a5,-20(s0)
  200148:	0007871b          	sext.w	a4,a5
  20014c:	6789                	lui	a5,0x2
  20014e:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  200152:	fae7fde3          	bgeu	a5,a4,20010c <InitAddressMap+0x74>
  200156:	002107b7          	lui	a5,0x210
  20015a:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  20015e:	fe846783          	lwu	a5,-24(s0)
  200162:	078a                	slli	a5,a5,0x2
  200164:	97ba                	add	a5,a5,a4
  200166:	00079023          	sh	zero,0(a5)
  20016a:	002107b7          	lui	a5,0x210
  20016e:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  200172:	fe846783          	lwu	a5,-24(s0)
  200176:	078a                	slli	a5,a5,0x2
  200178:	97ba                	add	a5,a5,a4
  20017a:	4394                	lw	a3,0(a5)
  20017c:	7741                	lui	a4,0xffff0
  20017e:	177d                	addi	a4,a4,-1
  200180:	8f75                	and	a4,a4,a3
  200182:	c398                	sw	a4,0(a5)
  200184:	fe842783          	lw	a5,-24(s0)
  200188:	2785                	addiw	a5,a5,1
  20018a:	fef42423          	sw	a5,-24(s0)
  20018e:	fe842783          	lw	a5,-24(s0)
  200192:	0007871b          	sext.w	a4,a5
  200196:	03f00793          	li	a5,63
  20019a:	f6e7f6e3          	bgeu	a5,a4,200106 <InitAddressMap+0x6e>
  20019e:	2e2020ef          	jal	ra,202480 <FindDieForFreeSliceAllocation>
  2001a2:	87aa                	mv	a5,a0
  2001a4:	2781                	sext.w	a5,a5
  2001a6:	0ff7f713          	andi	a4,a5,255
  2001aa:	002107b7          	lui	a5,0x210
  2001ae:	f2e78823          	sb	a4,-208(a5) # 20ff30 <sliceAllocationTargetDie>
  2001b2:	012000ef          	jal	ra,2001c4 <InitSliceMap>
  2001b6:	435010ef          	jal	ra,201dea <InitBlockDieMap>
  2001ba:	0001                	nop
  2001bc:	60e2                	ld	ra,24(sp)
  2001be:	6442                	ld	s0,16(sp)
  2001c0:	6105                	addi	sp,sp,32
  2001c2:	8082                	ret

00000000002001c4 <InitSliceMap>:
  2001c4:	1101                	addi	sp,sp,-32
  2001c6:	ec22                	sd	s0,24(sp)
  2001c8:	1000                	addi	s0,sp,32
  2001ca:	fe042623          	sw	zero,-20(s0)
  2001ce:	a815                	j	200202 <InitSliceMap+0x3e>
  2001d0:	002107b7          	lui	a5,0x210
  2001d4:	f387b703          	ld	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  2001d8:	fec42783          	lw	a5,-20(s0)
  2001dc:	078a                	slli	a5,a5,0x2
  2001de:	97ba                	add	a5,a5,a4
  2001e0:	577d                	li	a4,-1
  2001e2:	c398                	sw	a4,0(a5)
  2001e4:	002107b7          	lui	a5,0x210
  2001e8:	f507b703          	ld	a4,-176(a5) # 20ff50 <virtualSliceMapPtr>
  2001ec:	fec42783          	lw	a5,-20(s0)
  2001f0:	078a                	slli	a5,a5,0x2
  2001f2:	97ba                	add	a5,a5,a4
  2001f4:	577d                	li	a4,-1
  2001f6:	c398                	sw	a4,0(a5)
  2001f8:	fec42783          	lw	a5,-20(s0)
  2001fc:	2785                	addiw	a5,a5,1
  2001fe:	fef42623          	sw	a5,-20(s0)
  200202:	fec42783          	lw	a5,-20(s0)
  200206:	0007871b          	sext.w	a4,a5
  20020a:	040007b7          	lui	a5,0x4000
  20020e:	fcf741e3          	blt	a4,a5,2001d0 <InitSliceMap+0xc>
  200212:	0001                	nop
  200214:	0001                	nop
  200216:	6462                	ld	s0,24(sp)
  200218:	6105                	addi	sp,sp,32
  20021a:	8082                	ret

000000000020021c <RemapBadBlock>:
  20021c:	ce010113          	addi	sp,sp,-800 # 2ffce0 <g_nvmeTask+0xef878>
  200220:	30113c23          	sd	ra,792(sp)
  200224:	30813823          	sd	s0,784(sp)
  200228:	1600                	addi	s0,sp,800
  20022a:	0020f7b7          	lui	a5,0x20f
  20022e:	d3078513          	addi	a0,a5,-720 # 20ed30 <nvme_main+0x27a>
  200232:	386040ef          	jal	ra,2045b8 <cpl_print>
  200236:	fe042423          	sw	zero,-24(s0)
  20023a:	a091                	j	20027e <RemapBadBlock+0x62>
  20023c:	fe846783          	lwu	a5,-24(s0)
  200240:	078a                	slli	a5,a5,0x2
  200242:	ff040713          	addi	a4,s0,-16
  200246:	97ba                	add	a5,a5,a4
  200248:	6705                	lui	a4,0x1
  20024a:	eee7a823          	sw	a4,-272(a5)
  20024e:	fe846783          	lwu	a5,-24(s0)
  200252:	078a                	slli	a5,a5,0x2
  200254:	ff040713          	addi	a4,s0,-16
  200258:	97ba                	add	a5,a5,a4
  20025a:	6709                	lui	a4,0x2
  20025c:	05870713          	addi	a4,a4,88 # 2058 <start-0x1fdfa8>
  200260:	dee7a823          	sw	a4,-528(a5)
  200264:	fe846783          	lwu	a5,-24(s0)
  200268:	078a                	slli	a5,a5,0x2
  20026a:	ff040713          	addi	a4,s0,-16
  20026e:	97ba                	add	a5,a5,a4
  200270:	ce07a823          	sw	zero,-784(a5)
  200274:	fe842783          	lw	a5,-24(s0)
  200278:	2785                	addiw	a5,a5,1
  20027a:	fef42423          	sw	a5,-24(s0)
  20027e:	fe842783          	lw	a5,-24(s0)
  200282:	0007871b          	sext.w	a4,a5
  200286:	03f00793          	li	a5,63
  20028a:	fae7f9e3          	bgeu	a5,a4,20023c <RemapBadBlock+0x20>
  20028e:	fe042623          	sw	zero,-20(s0)
  200292:	a6bd                	j	200600 <RemapBadBlock+0x3e4>
  200294:	fe042423          	sw	zero,-24(s0)
  200298:	a6b9                	j	2005e6 <RemapBadBlock+0x3ca>
  20029a:	002107b7          	lui	a5,0x210
  20029e:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  2002a2:	fec46783          	lwu	a5,-20(s0)
  2002a6:	fe846603          	lwu	a2,-24(s0)
  2002aa:	6689                	lui	a3,0x2
  2002ac:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  2002b0:	02d606b3          	mul	a3,a2,a3
  2002b4:	97b6                	add	a5,a5,a3
  2002b6:	078a                	slli	a5,a5,0x2
  2002b8:	97ba                	add	a5,a5,a4
  2002ba:	439c                	lw	a5,0(a5)
  2002bc:	0107d79b          	srliw	a5,a5,0x10
  2002c0:	8b85                	andi	a5,a5,1
  2002c2:	0ff7f793          	andi	a5,a5,255
  2002c6:	16078463          	beqz	a5,20042e <RemapBadBlock+0x212>
  2002ca:	fe846783          	lwu	a5,-24(s0)
  2002ce:	078a                	slli	a5,a5,0x2
  2002d0:	ff040713          	addi	a4,s0,-16
  2002d4:	97ba                	add	a5,a5,a4
  2002d6:	ef07a783          	lw	a5,-272(a5)
  2002da:	873e                	mv	a4,a5
  2002dc:	6785                	lui	a5,0x1
  2002de:	05778793          	addi	a5,a5,87 # 1057 <start-0x1fefa9>
  2002e2:	12e7e363          	bltu	a5,a4,200408 <RemapBadBlock+0x1ec>
  2002e6:	4785                	li	a5,1
  2002e8:	fef42223          	sw	a5,-28(s0)
  2002ec:	a0a9                	j	200336 <RemapBadBlock+0x11a>
  2002ee:	fe846783          	lwu	a5,-24(s0)
  2002f2:	078a                	slli	a5,a5,0x2
  2002f4:	ff040713          	addi	a4,s0,-16
  2002f8:	97ba                	add	a5,a5,a4
  2002fa:	ef07a783          	lw	a5,-272(a5)
  2002fe:	2785                	addiw	a5,a5,1
  200300:	0007871b          	sext.w	a4,a5
  200304:	fe846783          	lwu	a5,-24(s0)
  200308:	078a                	slli	a5,a5,0x2
  20030a:	ff040693          	addi	a3,s0,-16
  20030e:	97b6                	add	a5,a5,a3
  200310:	eee7a823          	sw	a4,-272(a5)
  200314:	fe846783          	lwu	a5,-24(s0)
  200318:	078a                	slli	a5,a5,0x2
  20031a:	ff040713          	addi	a4,s0,-16
  20031e:	97ba                	add	a5,a5,a4
  200320:	ef07a783          	lw	a5,-272(a5)
  200324:	873e                	mv	a4,a5
  200326:	6785                	lui	a5,0x1
  200328:	05778793          	addi	a5,a5,87 # 1057 <start-0x1fefa9>
  20032c:	00e7f563          	bgeu	a5,a4,200336 <RemapBadBlock+0x11a>
  200330:	fe042223          	sw	zero,-28(s0)
  200334:	a081                	j	200374 <RemapBadBlock+0x158>
  200336:	002107b7          	lui	a5,0x210
  20033a:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  20033e:	fe846783          	lwu	a5,-24(s0)
  200342:	078a                	slli	a5,a5,0x2
  200344:	ff040693          	addi	a3,s0,-16
  200348:	97b6                	add	a5,a5,a3
  20034a:	ef07a783          	lw	a5,-272(a5)
  20034e:	1782                	slli	a5,a5,0x20
  200350:	9381                	srli	a5,a5,0x20
  200352:	fe846603          	lwu	a2,-24(s0)
  200356:	6689                	lui	a3,0x2
  200358:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  20035c:	02d606b3          	mul	a3,a2,a3
  200360:	97b6                	add	a5,a5,a3
  200362:	078a                	slli	a5,a5,0x2
  200364:	97ba                	add	a5,a5,a4
  200366:	439c                	lw	a5,0(a5)
  200368:	0107d79b          	srliw	a5,a5,0x10
  20036c:	8b85                	andi	a5,a5,1
  20036e:	0ff7f793          	andi	a5,a5,255
  200372:	ffb5                	bnez	a5,2002ee <RemapBadBlock+0xd2>
  200374:	fe442783          	lw	a5,-28(s0)
  200378:	2781                	sext.w	a5,a5
  20037a:	c3bd                	beqz	a5,2003e0 <RemapBadBlock+0x1c4>
  20037c:	fe846783          	lwu	a5,-24(s0)
  200380:	078a                	slli	a5,a5,0x2
  200382:	ff040713          	addi	a4,s0,-16
  200386:	97ba                	add	a5,a5,a4
  200388:	ef07a703          	lw	a4,-272(a5)
  20038c:	002107b7          	lui	a5,0x210
  200390:	f607b683          	ld	a3,-160(a5) # 20ff60 <phyBlockMapPtr>
  200394:	87ba                	mv	a5,a4
  200396:	03079713          	slli	a4,a5,0x30
  20039a:	9341                	srli	a4,a4,0x30
  20039c:	fec46783          	lwu	a5,-20(s0)
  2003a0:	fe846583          	lwu	a1,-24(s0)
  2003a4:	6609                	lui	a2,0x2
  2003a6:	0b060613          	addi	a2,a2,176 # 20b0 <start-0x1fdf50>
  2003aa:	02c58633          	mul	a2,a1,a2
  2003ae:	97b2                	add	a5,a5,a2
  2003b0:	078a                	slli	a5,a5,0x2
  2003b2:	97b6                	add	a5,a5,a3
  2003b4:	00e79023          	sh	a4,0(a5)
  2003b8:	fe846783          	lwu	a5,-24(s0)
  2003bc:	078a                	slli	a5,a5,0x2
  2003be:	ff040713          	addi	a4,s0,-16
  2003c2:	97ba                	add	a5,a5,a4
  2003c4:	ef07a783          	lw	a5,-272(a5)
  2003c8:	2785                	addiw	a5,a5,1
  2003ca:	0007871b          	sext.w	a4,a5
  2003ce:	fe846783          	lwu	a5,-24(s0)
  2003d2:	078a                	slli	a5,a5,0x2
  2003d4:	ff040693          	addi	a3,s0,-16
  2003d8:	97b6                	add	a5,a5,a3
  2003da:	eee7a823          	sw	a4,-272(a5)
  2003de:	a881                	j	20042e <RemapBadBlock+0x212>
  2003e0:	fe846783          	lwu	a5,-24(s0)
  2003e4:	078a                	slli	a5,a5,0x2
  2003e6:	ff040713          	addi	a4,s0,-16
  2003ea:	97ba                	add	a5,a5,a4
  2003ec:	cf07a783          	lw	a5,-784(a5)
  2003f0:	2785                	addiw	a5,a5,1
  2003f2:	0007871b          	sext.w	a4,a5
  2003f6:	fe846783          	lwu	a5,-24(s0)
  2003fa:	078a                	slli	a5,a5,0x2
  2003fc:	ff040693          	addi	a3,s0,-16
  200400:	97b6                	add	a5,a5,a3
  200402:	cee7a823          	sw	a4,-784(a5)
  200406:	a025                	j	20042e <RemapBadBlock+0x212>
  200408:	fe846783          	lwu	a5,-24(s0)
  20040c:	078a                	slli	a5,a5,0x2
  20040e:	ff040713          	addi	a4,s0,-16
  200412:	97ba                	add	a5,a5,a4
  200414:	cf07a783          	lw	a5,-784(a5)
  200418:	2785                	addiw	a5,a5,1
  20041a:	0007871b          	sext.w	a4,a5
  20041e:	fe846783          	lwu	a5,-24(s0)
  200422:	078a                	slli	a5,a5,0x2
  200424:	ff040693          	addi	a3,s0,-16
  200428:	97b6                	add	a5,a5,a3
  20042a:	cee7a823          	sw	a4,-784(a5)
  20042e:	002107b7          	lui	a5,0x210
  200432:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  200436:	fec42683          	lw	a3,-20(s0)
  20043a:	6785                	lui	a5,0x1
  20043c:	0587879b          	addiw	a5,a5,88
  200440:	9fb5                	addw	a5,a5,a3
  200442:	2781                	sext.w	a5,a5
  200444:	1782                	slli	a5,a5,0x20
  200446:	9381                	srli	a5,a5,0x20
  200448:	fe846603          	lwu	a2,-24(s0)
  20044c:	6689                	lui	a3,0x2
  20044e:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  200452:	02d606b3          	mul	a3,a2,a3
  200456:	97b6                	add	a5,a5,a3
  200458:	078a                	slli	a5,a5,0x2
  20045a:	97ba                	add	a5,a5,a4
  20045c:	439c                	lw	a5,0(a5)
  20045e:	0107d79b          	srliw	a5,a5,0x10
  200462:	8b85                	andi	a5,a5,1
  200464:	0ff7f793          	andi	a5,a5,255
  200468:	16078a63          	beqz	a5,2005dc <RemapBadBlock+0x3c0>
  20046c:	fe846783          	lwu	a5,-24(s0)
  200470:	078a                	slli	a5,a5,0x2
  200472:	ff040713          	addi	a4,s0,-16
  200476:	97ba                	add	a5,a5,a4
  200478:	df07a783          	lw	a5,-528(a5) # df0 <start-0x1ff210>
  20047c:	873e                	mv	a4,a5
  20047e:	6789                	lui	a5,0x2
  200480:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  200484:	12e7e963          	bltu	a5,a4,2005b6 <RemapBadBlock+0x39a>
  200488:	4785                	li	a5,1
  20048a:	fef42223          	sw	a5,-28(s0)
  20048e:	a0a9                	j	2004d8 <RemapBadBlock+0x2bc>
  200490:	fe846783          	lwu	a5,-24(s0)
  200494:	078a                	slli	a5,a5,0x2
  200496:	ff040713          	addi	a4,s0,-16
  20049a:	97ba                	add	a5,a5,a4
  20049c:	df07a783          	lw	a5,-528(a5)
  2004a0:	2785                	addiw	a5,a5,1
  2004a2:	0007871b          	sext.w	a4,a5
  2004a6:	fe846783          	lwu	a5,-24(s0)
  2004aa:	078a                	slli	a5,a5,0x2
  2004ac:	ff040693          	addi	a3,s0,-16
  2004b0:	97b6                	add	a5,a5,a3
  2004b2:	dee7a823          	sw	a4,-528(a5)
  2004b6:	fe846783          	lwu	a5,-24(s0)
  2004ba:	078a                	slli	a5,a5,0x2
  2004bc:	ff040713          	addi	a4,s0,-16
  2004c0:	97ba                	add	a5,a5,a4
  2004c2:	df07a783          	lw	a5,-528(a5)
  2004c6:	873e                	mv	a4,a5
  2004c8:	6789                	lui	a5,0x2
  2004ca:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  2004ce:	00e7f563          	bgeu	a5,a4,2004d8 <RemapBadBlock+0x2bc>
  2004d2:	fe042223          	sw	zero,-28(s0)
  2004d6:	a081                	j	200516 <RemapBadBlock+0x2fa>
  2004d8:	002107b7          	lui	a5,0x210
  2004dc:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  2004e0:	fe846783          	lwu	a5,-24(s0)
  2004e4:	078a                	slli	a5,a5,0x2
  2004e6:	ff040693          	addi	a3,s0,-16
  2004ea:	97b6                	add	a5,a5,a3
  2004ec:	df07a783          	lw	a5,-528(a5)
  2004f0:	1782                	slli	a5,a5,0x20
  2004f2:	9381                	srli	a5,a5,0x20
  2004f4:	fe846603          	lwu	a2,-24(s0)
  2004f8:	6689                	lui	a3,0x2
  2004fa:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  2004fe:	02d606b3          	mul	a3,a2,a3
  200502:	97b6                	add	a5,a5,a3
  200504:	078a                	slli	a5,a5,0x2
  200506:	97ba                	add	a5,a5,a4
  200508:	439c                	lw	a5,0(a5)
  20050a:	0107d79b          	srliw	a5,a5,0x10
  20050e:	8b85                	andi	a5,a5,1
  200510:	0ff7f793          	andi	a5,a5,255
  200514:	ffb5                	bnez	a5,200490 <RemapBadBlock+0x274>
  200516:	fe442783          	lw	a5,-28(s0)
  20051a:	2781                	sext.w	a5,a5
  20051c:	cbad                	beqz	a5,20058e <RemapBadBlock+0x372>
  20051e:	fe846783          	lwu	a5,-24(s0)
  200522:	078a                	slli	a5,a5,0x2
  200524:	ff040713          	addi	a4,s0,-16
  200528:	97ba                	add	a5,a5,a4
  20052a:	df07a603          	lw	a2,-528(a5)
  20052e:	002107b7          	lui	a5,0x210
  200532:	f607b683          	ld	a3,-160(a5) # 20ff60 <phyBlockMapPtr>
  200536:	fec42703          	lw	a4,-20(s0)
  20053a:	6785                	lui	a5,0x1
  20053c:	0587879b          	addiw	a5,a5,88
  200540:	9fb9                	addw	a5,a5,a4
  200542:	2781                	sext.w	a5,a5
  200544:	8732                	mv	a4,a2
  200546:	1742                	slli	a4,a4,0x30
  200548:	9341                	srli	a4,a4,0x30
  20054a:	1782                	slli	a5,a5,0x20
  20054c:	9381                	srli	a5,a5,0x20
  20054e:	fe846583          	lwu	a1,-24(s0)
  200552:	6609                	lui	a2,0x2
  200554:	0b060613          	addi	a2,a2,176 # 20b0 <start-0x1fdf50>
  200558:	02c58633          	mul	a2,a1,a2
  20055c:	97b2                	add	a5,a5,a2
  20055e:	078a                	slli	a5,a5,0x2
  200560:	97b6                	add	a5,a5,a3
  200562:	00e79023          	sh	a4,0(a5) # 1000 <start-0x1ff000>
  200566:	fe846783          	lwu	a5,-24(s0)
  20056a:	078a                	slli	a5,a5,0x2
  20056c:	ff040713          	addi	a4,s0,-16
  200570:	97ba                	add	a5,a5,a4
  200572:	df07a783          	lw	a5,-528(a5)
  200576:	2785                	addiw	a5,a5,1
  200578:	0007871b          	sext.w	a4,a5
  20057c:	fe846783          	lwu	a5,-24(s0)
  200580:	078a                	slli	a5,a5,0x2
  200582:	ff040693          	addi	a3,s0,-16
  200586:	97b6                	add	a5,a5,a3
  200588:	dee7a823          	sw	a4,-528(a5)
  20058c:	a881                	j	2005dc <RemapBadBlock+0x3c0>
  20058e:	fe846783          	lwu	a5,-24(s0)
  200592:	078a                	slli	a5,a5,0x2
  200594:	ff040713          	addi	a4,s0,-16
  200598:	97ba                	add	a5,a5,a4
  20059a:	cf07a783          	lw	a5,-784(a5)
  20059e:	2785                	addiw	a5,a5,1
  2005a0:	0007871b          	sext.w	a4,a5
  2005a4:	fe846783          	lwu	a5,-24(s0)
  2005a8:	078a                	slli	a5,a5,0x2
  2005aa:	ff040693          	addi	a3,s0,-16
  2005ae:	97b6                	add	a5,a5,a3
  2005b0:	cee7a823          	sw	a4,-784(a5)
  2005b4:	a025                	j	2005dc <RemapBadBlock+0x3c0>
  2005b6:	fe846783          	lwu	a5,-24(s0)
  2005ba:	078a                	slli	a5,a5,0x2
  2005bc:	ff040713          	addi	a4,s0,-16
  2005c0:	97ba                	add	a5,a5,a4
  2005c2:	cf07a783          	lw	a5,-784(a5)
  2005c6:	2785                	addiw	a5,a5,1
  2005c8:	0007871b          	sext.w	a4,a5
  2005cc:	fe846783          	lwu	a5,-24(s0)
  2005d0:	078a                	slli	a5,a5,0x2
  2005d2:	ff040693          	addi	a3,s0,-16
  2005d6:	97b6                	add	a5,a5,a3
  2005d8:	cee7a823          	sw	a4,-784(a5)
  2005dc:	fe842783          	lw	a5,-24(s0)
  2005e0:	2785                	addiw	a5,a5,1
  2005e2:	fef42423          	sw	a5,-24(s0)
  2005e6:	fe842783          	lw	a5,-24(s0)
  2005ea:	0007871b          	sext.w	a4,a5
  2005ee:	03f00793          	li	a5,63
  2005f2:	cae7f4e3          	bgeu	a5,a4,20029a <RemapBadBlock+0x7e>
  2005f6:	fec42783          	lw	a5,-20(s0)
  2005fa:	2785                	addiw	a5,a5,1
  2005fc:	fef42623          	sw	a5,-20(s0)
  200600:	fec42783          	lw	a5,-20(s0)
  200604:	0007871b          	sext.w	a4,a5
  200608:	6785                	lui	a5,0x1
  20060a:	c8f765e3          	bltu	a4,a5,200294 <RemapBadBlock+0x78>
  20060e:	0020f7b7          	lui	a5,0x20f
  200612:	d5078513          	addi	a0,a5,-688 # 20ed50 <nvme_main+0x29a>
  200616:	7a3030ef          	jal	ra,2045b8 <cpl_print>
  20061a:	fe042023          	sw	zero,-32(s0)
  20061e:	fe042423          	sw	zero,-24(s0)
  200622:	a82d                	j	20065c <RemapBadBlock+0x440>
  200624:	fe846783          	lwu	a5,-24(s0)
  200628:	078a                	slli	a5,a5,0x2
  20062a:	ff040713          	addi	a4,s0,-16
  20062e:	97ba                	add	a5,a5,a4
  200630:	cf07a703          	lw	a4,-784(a5)
  200634:	fe042783          	lw	a5,-32(s0)
  200638:	2781                	sext.w	a5,a5
  20063a:	00e7fc63          	bgeu	a5,a4,200652 <RemapBadBlock+0x436>
  20063e:	fe846783          	lwu	a5,-24(s0)
  200642:	078a                	slli	a5,a5,0x2
  200644:	ff040713          	addi	a4,s0,-16
  200648:	97ba                	add	a5,a5,a4
  20064a:	cf07a783          	lw	a5,-784(a5)
  20064e:	fef42023          	sw	a5,-32(s0)
  200652:	fe842783          	lw	a5,-24(s0)
  200656:	2785                	addiw	a5,a5,1
  200658:	fef42423          	sw	a5,-24(s0)
  20065c:	fe842783          	lw	a5,-24(s0)
  200660:	0007871b          	sext.w	a4,a5
  200664:	03f00793          	li	a5,63
  200668:	fae7fee3          	bgeu	a5,a4,200624 <RemapBadBlock+0x408>
  20066c:	fe042783          	lw	a5,-32(s0)
  200670:	0077979b          	slliw	a5,a5,0x7
  200674:	0007871b          	sext.w	a4,a5
  200678:	002107b7          	lui	a5,0x210
  20067c:	f2e7aa23          	sw	a4,-204(a5) # 20ff34 <mbPerbadBlockSpace>
  200680:	0001                	nop
  200682:	31813083          	ld	ra,792(sp)
  200686:	31013403          	ld	s0,784(sp)
  20068a:	32010113          	addi	sp,sp,800
  20068e:	8082                	ret

0000000000200690 <InitDieMap>:
  200690:	1101                	addi	sp,sp,-32
  200692:	ec22                	sd	s0,24(sp)
  200694:	1000                	addi	s0,sp,32
  200696:	fe042623          	sw	zero,-20(s0)
  20069a:	a8b9                	j	2006f8 <InitDieMap+0x68>
  20069c:	002107b7          	lui	a5,0x210
  2006a0:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2006a4:	fec46703          	lwu	a4,-20(s0)
  2006a8:	87ba                	mv	a5,a4
  2006aa:	0786                	slli	a5,a5,0x1
  2006ac:	97ba                	add	a5,a5,a4
  2006ae:	078a                	slli	a5,a5,0x2
  2006b0:	97b6                	add	a5,a5,a3
  2006b2:	577d                	li	a4,-1
  2006b4:	00e79123          	sh	a4,2(a5)
  2006b8:	002107b7          	lui	a5,0x210
  2006bc:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2006c0:	fec46703          	lwu	a4,-20(s0)
  2006c4:	87ba                	mv	a5,a4
  2006c6:	0786                	slli	a5,a5,0x1
  2006c8:	97ba                	add	a5,a5,a4
  2006ca:	078a                	slli	a5,a5,0x2
  2006cc:	97b6                	add	a5,a5,a3
  2006ce:	577d                	li	a4,-1
  2006d0:	00e79223          	sh	a4,4(a5)
  2006d4:	002107b7          	lui	a5,0x210
  2006d8:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2006dc:	fec46703          	lwu	a4,-20(s0)
  2006e0:	87ba                	mv	a5,a4
  2006e2:	0786                	slli	a5,a5,0x1
  2006e4:	97ba                	add	a5,a5,a4
  2006e6:	078a                	slli	a5,a5,0x2
  2006e8:	97b6                	add	a5,a5,a3
  2006ea:	00079323          	sh	zero,6(a5)
  2006ee:	fec42783          	lw	a5,-20(s0)
  2006f2:	2785                	addiw	a5,a5,1
  2006f4:	fef42623          	sw	a5,-20(s0)
  2006f8:	fec42783          	lw	a5,-20(s0)
  2006fc:	0007871b          	sext.w	a4,a5
  200700:	03f00793          	li	a5,63
  200704:	f8e7fce3          	bgeu	a5,a4,20069c <InitDieMap+0xc>
  200708:	0001                	nop
  20070a:	0001                	nop
  20070c:	6462                	ld	s0,24(sp)
  20070e:	6105                	addi	sp,sp,32
  200710:	8082                	ret

0000000000200712 <InitBlockMap>:
  200712:	1101                	addi	sp,sp,-32
  200714:	ec06                	sd	ra,24(sp)
  200716:	e822                	sd	s0,16(sp)
  200718:	1000                	addi	s0,sp,32
  20071a:	fe042623          	sw	zero,-20(s0)
  20071e:	a481                	j	20095e <InitBlockMap+0x24c>
  200720:	fe042423          	sw	zero,-24(s0)
  200724:	a40d                	j	200946 <InitBlockMap+0x234>
  200726:	fe842783          	lw	a5,-24(s0)
  20072a:	00c7d79b          	srliw	a5,a5,0xc
  20072e:	0007871b          	sext.w	a4,a5
  200732:	6785                	lui	a5,0x1
  200734:	0587879b          	addiw	a5,a5,88
  200738:	02f707bb          	mulw	a5,a4,a5
  20073c:	0007871b          	sext.w	a4,a5
  200740:	fe842683          	lw	a3,-24(s0)
  200744:	6785                	lui	a5,0x1
  200746:	17fd                	addi	a5,a5,-1
  200748:	8ff5                	and	a5,a5,a3
  20074a:	2781                	sext.w	a5,a5
  20074c:	9fb9                	addw	a5,a5,a4
  20074e:	fef42223          	sw	a5,-28(s0)
  200752:	002107b7          	lui	a5,0x210
  200756:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  20075a:	fe446783          	lwu	a5,-28(s0)
  20075e:	fec46603          	lwu	a2,-20(s0)
  200762:	6689                	lui	a3,0x2
  200764:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  200768:	02d606b3          	mul	a3,a2,a3
  20076c:	97b6                	add	a5,a5,a3
  20076e:	078a                	slli	a5,a5,0x2
  200770:	97ba                	add	a5,a5,a4
  200772:	0007d783          	lhu	a5,0(a5)
  200776:	fef42023          	sw	a5,-32(s0)
  20077a:	002107b7          	lui	a5,0x210
  20077e:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  200782:	002107b7          	lui	a5,0x210
  200786:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  20078a:	fe046783          	lwu	a5,-32(s0)
  20078e:	fec46583          	lwu	a1,-20(s0)
  200792:	6689                	lui	a3,0x2
  200794:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  200798:	02d586b3          	mul	a3,a1,a3
  20079c:	97b6                	add	a5,a5,a3
  20079e:	078a                	slli	a5,a5,0x2
  2007a0:	97ba                	add	a5,a5,a4
  2007a2:	439c                	lw	a5,0(a5)
  2007a4:	0107d79b          	srliw	a5,a5,0x10
  2007a8:	8b85                	andi	a5,a5,1
  2007aa:	0ff7f593          	andi	a1,a5,255
  2007ae:	fe846783          	lwu	a5,-24(s0)
  2007b2:	fec46683          	lwu	a3,-20(s0)
  2007b6:	873e                	mv	a4,a5
  2007b8:	0706                	slli	a4,a4,0x1
  2007ba:	973e                	add	a4,a4,a5
  2007bc:	00271793          	slli	a5,a4,0x2
  2007c0:	873e                	mv	a4,a5
  2007c2:	87b6                	mv	a5,a3
  2007c4:	0786                	slli	a5,a5,0x1
  2007c6:	97b6                	add	a5,a5,a3
  2007c8:	07be                	slli	a5,a5,0xf
  2007ca:	97ba                	add	a5,a5,a4
  2007cc:	97b2                	add	a5,a5,a2
  2007ce:	872e                	mv	a4,a1
  2007d0:	00177613          	andi	a2,a4,1
  2007d4:	4398                	lw	a4,0(a5)
  2007d6:	9b79                	andi	a4,a4,-2
  2007d8:	86ba                	mv	a3,a4
  2007da:	8732                	mv	a4,a2
  2007dc:	8f55                	or	a4,a4,a3
  2007de:	c398                	sw	a4,0(a5)
  2007e0:	002107b7          	lui	a5,0x210
  2007e4:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2007e8:	fe846783          	lwu	a5,-24(s0)
  2007ec:	fec46683          	lwu	a3,-20(s0)
  2007f0:	873e                	mv	a4,a5
  2007f2:	0706                	slli	a4,a4,0x1
  2007f4:	973e                	add	a4,a4,a5
  2007f6:	00271793          	slli	a5,a4,0x2
  2007fa:	873e                	mv	a4,a5
  2007fc:	87b6                	mv	a5,a3
  2007fe:	0786                	slli	a5,a5,0x1
  200800:	97b6                	add	a5,a5,a3
  200802:	07be                	slli	a5,a5,0xf
  200804:	97ba                	add	a5,a5,a4
  200806:	97b2                	add	a5,a5,a2
  200808:	4398                	lw	a4,0(a5)
  20080a:	00276713          	ori	a4,a4,2
  20080e:	c398                	sw	a4,0(a5)
  200810:	002107b7          	lui	a5,0x210
  200814:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  200818:	fe846783          	lwu	a5,-24(s0)
  20081c:	fec46683          	lwu	a3,-20(s0)
  200820:	873e                	mv	a4,a5
  200822:	0706                	slli	a4,a4,0x1
  200824:	973e                	add	a4,a4,a5
  200826:	00271793          	slli	a5,a4,0x2
  20082a:	873e                	mv	a4,a5
  20082c:	87b6                	mv	a5,a3
  20082e:	0786                	slli	a5,a5,0x1
  200830:	97b6                	add	a5,a5,a3
  200832:	07be                	slli	a5,a5,0xf
  200834:	97ba                	add	a5,a5,a4
  200836:	97b2                	add	a5,a5,a2
  200838:	4394                	lw	a3,0(a5)
  20083a:	fffc0737          	lui	a4,0xfffc0
  20083e:	070d                	addi	a4,a4,3
  200840:	8f75                	and	a4,a4,a3
  200842:	c398                	sw	a4,0(a5)
  200844:	002107b7          	lui	a5,0x210
  200848:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  20084c:	fe846783          	lwu	a5,-24(s0)
  200850:	fec46683          	lwu	a3,-20(s0)
  200854:	873e                	mv	a4,a5
  200856:	0706                	slli	a4,a4,0x1
  200858:	973e                	add	a4,a4,a5
  20085a:	00271793          	slli	a5,a4,0x2
  20085e:	873e                	mv	a4,a5
  200860:	87b6                	mv	a5,a3
  200862:	0786                	slli	a5,a5,0x1
  200864:	97b6                	add	a5,a5,a3
  200866:	07be                	slli	a5,a5,0xf
  200868:	97ba                	add	a5,a5,a4
  20086a:	97b2                	add	a5,a5,a2
  20086c:	00079223          	sh	zero,4(a5)
  200870:	002107b7          	lui	a5,0x210
  200874:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  200878:	fe846783          	lwu	a5,-24(s0)
  20087c:	fec46683          	lwu	a3,-20(s0)
  200880:	873e                	mv	a4,a5
  200882:	0706                	slli	a4,a4,0x1
  200884:	973e                	add	a4,a4,a5
  200886:	00271793          	slli	a5,a4,0x2
  20088a:	873e                	mv	a4,a5
  20088c:	87b6                	mv	a5,a3
  20088e:	0786                	slli	a5,a5,0x1
  200890:	97b6                	add	a5,a5,a3
  200892:	07be                	slli	a5,a5,0xf
  200894:	97ba                	add	a5,a5,a4
  200896:	97b2                	add	a5,a5,a2
  200898:	00079323          	sh	zero,6(a5)
  20089c:	002107b7          	lui	a5,0x210
  2008a0:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2008a4:	fe846783          	lwu	a5,-24(s0)
  2008a8:	fec46683          	lwu	a3,-20(s0)
  2008ac:	873e                	mv	a4,a5
  2008ae:	0706                	slli	a4,a4,0x1
  2008b0:	973e                	add	a4,a4,a5
  2008b2:	00271793          	slli	a5,a4,0x2
  2008b6:	873e                	mv	a4,a5
  2008b8:	87b6                	mv	a5,a3
  2008ba:	0786                	slli	a5,a5,0x1
  2008bc:	97b6                	add	a5,a5,a3
  2008be:	07be                	slli	a5,a5,0xf
  2008c0:	97ba                	add	a5,a5,a4
  2008c2:	97b2                	add	a5,a5,a2
  2008c4:	439c                	lw	a5,0(a5)
  2008c6:	8b85                	andi	a5,a5,1
  2008c8:	0ff7f793          	andi	a5,a5,255
  2008cc:	c3a5                	beqz	a5,20092c <InitBlockMap+0x21a>
  2008ce:	002107b7          	lui	a5,0x210
  2008d2:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2008d6:	fe846783          	lwu	a5,-24(s0)
  2008da:	fec46683          	lwu	a3,-20(s0)
  2008de:	873e                	mv	a4,a5
  2008e0:	0706                	slli	a4,a4,0x1
  2008e2:	973e                	add	a4,a4,a5
  2008e4:	00271793          	slli	a5,a4,0x2
  2008e8:	873e                	mv	a4,a5
  2008ea:	87b6                	mv	a5,a3
  2008ec:	0786                	slli	a5,a5,0x1
  2008ee:	97b6                	add	a5,a5,a3
  2008f0:	07be                	slli	a5,a5,0xf
  2008f2:	97ba                	add	a5,a5,a4
  2008f4:	97b2                	add	a5,a5,a2
  2008f6:	577d                	li	a4,-1
  2008f8:	00e79423          	sh	a4,8(a5)
  2008fc:	002107b7          	lui	a5,0x210
  200900:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  200904:	fe846783          	lwu	a5,-24(s0)
  200908:	fec46683          	lwu	a3,-20(s0)
  20090c:	873e                	mv	a4,a5
  20090e:	0706                	slli	a4,a4,0x1
  200910:	973e                	add	a4,a4,a5
  200912:	00271793          	slli	a5,a4,0x2
  200916:	873e                	mv	a4,a5
  200918:	87b6                	mv	a5,a3
  20091a:	0786                	slli	a5,a5,0x1
  20091c:	97b6                	add	a5,a5,a3
  20091e:	07be                	slli	a5,a5,0xf
  200920:	97ba                	add	a5,a5,a4
  200922:	97b2                	add	a5,a5,a2
  200924:	577d                	li	a4,-1
  200926:	00e79523          	sh	a4,10(a5)
  20092a:	a809                	j	20093c <InitBlockMap+0x22a>
  20092c:	fe842703          	lw	a4,-24(s0)
  200930:	fec42783          	lw	a5,-20(s0)
  200934:	85ba                	mv	a1,a4
  200936:	853e                	mv	a0,a5
  200938:	7d5010ef          	jal	ra,20290c <PutToFbList>
  20093c:	fe842783          	lw	a5,-24(s0)
  200940:	2785                	addiw	a5,a5,1
  200942:	fef42423          	sw	a5,-24(s0)
  200946:	fe842783          	lw	a5,-24(s0)
  20094a:	0007871b          	sext.w	a4,a5
  20094e:	6789                	lui	a5,0x2
  200950:	dcf76be3          	bltu	a4,a5,200726 <InitBlockMap+0x14>
  200954:	fec42783          	lw	a5,-20(s0)
  200958:	2785                	addiw	a5,a5,1
  20095a:	fef42623          	sw	a5,-20(s0)
  20095e:	fec42783          	lw	a5,-20(s0)
  200962:	0007871b          	sext.w	a4,a5
  200966:	03f00793          	li	a5,63
  20096a:	dae7fbe3          	bgeu	a5,a4,200720 <InitBlockMap+0xe>
  20096e:	0001                	nop
  200970:	0001                	nop
  200972:	60e2                	ld	ra,24(sp)
  200974:	6442                	ld	s0,16(sp)
  200976:	6105                	addi	sp,sp,32
  200978:	8082                	ret

000000000020097a <InitCurrentBlockOfDieMap>:
  20097a:	1101                	addi	sp,sp,-32
  20097c:	ec06                	sd	ra,24(sp)
  20097e:	e822                	sd	s0,16(sp)
  200980:	1000                	addi	s0,sp,32
  200982:	fe042623          	sw	zero,-20(s0)
  200986:	a88d                	j	2009f8 <InitCurrentBlockOfDieMap+0x7e>
  200988:	fec42783          	lw	a5,-20(s0)
  20098c:	4581                	li	a1,0
  20098e:	853e                	mv	a0,a5
  200990:	17e020ef          	jal	ra,202b0e <GetFromFbList>
  200994:	87aa                	mv	a5,a0
  200996:	0007871b          	sext.w	a4,a5
  20099a:	002107b7          	lui	a5,0x210
  20099e:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  2009a2:	87ba                	mv	a5,a4
  2009a4:	03079693          	slli	a3,a5,0x30
  2009a8:	92c1                	srli	a3,a3,0x30
  2009aa:	fec46703          	lwu	a4,-20(s0)
  2009ae:	87ba                	mv	a5,a4
  2009b0:	0786                	slli	a5,a5,0x1
  2009b2:	97ba                	add	a5,a5,a4
  2009b4:	078a                	slli	a5,a5,0x2
  2009b6:	97b2                	add	a5,a5,a2
  2009b8:	00d79023          	sh	a3,0(a5)
  2009bc:	002107b7          	lui	a5,0x210
  2009c0:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2009c4:	fec46703          	lwu	a4,-20(s0)
  2009c8:	87ba                	mv	a5,a4
  2009ca:	0786                	slli	a5,a5,0x1
  2009cc:	97ba                	add	a5,a5,a4
  2009ce:	078a                	slli	a5,a5,0x2
  2009d0:	97b6                	add	a5,a5,a3
  2009d2:	0007d783          	lhu	a5,0(a5)
  2009d6:	0007871b          	sext.w	a4,a5
  2009da:	67c1                	lui	a5,0x10
  2009dc:	17fd                	addi	a5,a5,-1
  2009de:	00f71863          	bne	a4,a5,2009ee <InitCurrentBlockOfDieMap+0x74>
  2009e2:	0020f7b7          	lui	a5,0x20f
  2009e6:	d7078513          	addi	a0,a5,-656 # 20ed70 <nvme_main+0x2ba>
  2009ea:	3cf030ef          	jal	ra,2045b8 <cpl_print>
  2009ee:	fec42783          	lw	a5,-20(s0)
  2009f2:	2785                	addiw	a5,a5,1
  2009f4:	fef42623          	sw	a5,-20(s0)
  2009f8:	fec42783          	lw	a5,-20(s0)
  2009fc:	0007871b          	sext.w	a4,a5
  200a00:	03f00793          	li	a5,63
  200a04:	f8e7f2e3          	bgeu	a5,a4,200988 <InitCurrentBlockOfDieMap+0xe>
  200a08:	0001                	nop
  200a0a:	0001                	nop
  200a0c:	60e2                	ld	ra,24(sp)
  200a0e:	6442                	ld	s0,16(sp)
  200a10:	6105                	addi	sp,sp,32
  200a12:	8082                	ret

0000000000200a14 <ReadBadBlockTable>:
  200a14:	7139                	addi	sp,sp,-64
  200a16:	fc06                	sd	ra,56(sp)
  200a18:	f822                	sd	s0,48(sp)
  200a1a:	0080                	addi	s0,sp,64
  200a1c:	fca43423          	sd	a0,-56(s0)
  200a20:	87ae                	mv	a5,a1
  200a22:	fcf42223          	sw	a5,-60(s0)
  200a26:	fe042223          	sw	zero,-28(s0)
  200a2a:	6789                	lui	a5,0x2
  200a2c:	0b078793          	addi	a5,a5,176 # 20b0 <start-0x1fdf50>
  200a30:	fef42023          	sw	a5,-32(s0)
  200a34:	4785                	li	a5,1
  200a36:	fef42623          	sw	a5,-20(s0)
  200a3a:	ac9d                	j	200cb0 <ReadBadBlockTable+0x29c>
  200a3c:	fe042423          	sw	zero,-24(s0)
  200a40:	a481                	j	200c80 <ReadBadBlockTable+0x26c>
  200a42:	11f020ef          	jal	ra,203360 <GetFromFreeReqQ>
  200a46:	87aa                	mv	a5,a0
  200a48:	fcf42e23          	sw	a5,-36(s0)
  200a4c:	002107b7          	lui	a5,0x210
  200a50:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200a54:	fdc46683          	lwu	a3,-36(s0)
  200a58:	03400793          	li	a5,52
  200a5c:	02f687b3          	mul	a5,a3,a5
  200a60:	97ba                	add	a5,a5,a4
  200a62:	4398                	lw	a4,0(a5)
  200a64:	9b41                	andi	a4,a4,-16
  200a66:	00176713          	ori	a4,a4,1
  200a6a:	c398                	sw	a4,0(a5)
  200a6c:	002107b7          	lui	a5,0x210
  200a70:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200a74:	fdc46683          	lwu	a3,-36(s0)
  200a78:	03400793          	li	a5,52
  200a7c:	02f687b3          	mul	a5,a3,a5
  200a80:	97ba                	add	a5,a5,a4
  200a82:	4721                	li	a4,8
  200a84:	00e780a3          	sb	a4,1(a5)
  200a88:	002107b7          	lui	a5,0x210
  200a8c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200a90:	fdc46683          	lwu	a3,-36(s0)
  200a94:	03400793          	li	a5,52
  200a98:	02f687b3          	mul	a5,a3,a5
  200a9c:	97ba                	add	a5,a5,a4
  200a9e:	4b98                	lw	a4,16(a5)
  200aa0:	9b71                	andi	a4,a4,-4
  200aa2:	00276713          	ori	a4,a4,2
  200aa6:	cb98                	sw	a4,16(a5)
  200aa8:	002107b7          	lui	a5,0x210
  200aac:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200ab0:	fdc46683          	lwu	a3,-36(s0)
  200ab4:	03400793          	li	a5,52
  200ab8:	02f687b3          	mul	a5,a3,a5
  200abc:	97ba                	add	a5,a5,a4
  200abe:	4b98                	lw	a4,16(a5)
  200ac0:	9b4d                	andi	a4,a4,-13
  200ac2:	00476713          	ori	a4,a4,4
  200ac6:	cb98                	sw	a4,16(a5)
  200ac8:	002107b7          	lui	a5,0x210
  200acc:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200ad0:	fdc46683          	lwu	a3,-36(s0)
  200ad4:	03400793          	li	a5,52
  200ad8:	02f687b3          	mul	a5,a3,a5
  200adc:	97ba                	add	a5,a5,a4
  200ade:	4b98                	lw	a4,16(a5)
  200ae0:	01076713          	ori	a4,a4,16
  200ae4:	cb98                	sw	a4,16(a5)
  200ae6:	002107b7          	lui	a5,0x210
  200aea:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200aee:	fdc46683          	lwu	a3,-36(s0)
  200af2:	03400793          	li	a5,52
  200af6:	02f687b3          	mul	a5,a3,a5
  200afa:	97ba                	add	a5,a5,a4
  200afc:	4b98                	lw	a4,16(a5)
  200afe:	fdf77713          	andi	a4,a4,-33
  200b02:	cb98                	sw	a4,16(a5)
  200b04:	002107b7          	lui	a5,0x210
  200b08:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200b0c:	fdc46683          	lwu	a3,-36(s0)
  200b10:	03400793          	li	a5,52
  200b14:	02f687b3          	mul	a5,a3,a5
  200b18:	97ba                	add	a5,a5,a4
  200b1a:	4b98                	lw	a4,16(a5)
  200b1c:	fbf77713          	andi	a4,a4,-65
  200b20:	cb98                	sw	a4,16(a5)
  200b22:	002107b7          	lui	a5,0x210
  200b26:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200b2a:	fdc46683          	lwu	a3,-36(s0)
  200b2e:	03400793          	li	a5,52
  200b32:	02f687b3          	mul	a5,a3,a5
  200b36:	97ba                	add	a5,a5,a4
  200b38:	4b98                	lw	a4,16(a5)
  200b3a:	08076713          	ori	a4,a4,128
  200b3e:	cb98                	sw	a4,16(a5)
  200b40:	fe846783          	lwu	a5,-24(s0)
  200b44:	078a                	slli	a5,a5,0x2
  200b46:	fc843703          	ld	a4,-56(s0)
  200b4a:	97ba                	add	a5,a5,a4
  200b4c:	4398                	lw	a4,0(a5)
  200b4e:	fe442783          	lw	a5,-28(s0)
  200b52:	fc442683          	lw	a3,-60(s0)
  200b56:	02f687bb          	mulw	a5,a3,a5
  200b5a:	2781                	sext.w	a5,a5
  200b5c:	002106b7          	lui	a3,0x210
  200b60:	1806b683          	ld	a3,384(a3) # 210180 <reqPoolPtr>
  200b64:	9fb9                	addw	a5,a5,a4
  200b66:	0007871b          	sext.w	a4,a5
  200b6a:	fdc46603          	lwu	a2,-36(s0)
  200b6e:	03400793          	li	a5,52
  200b72:	02f607b3          	mul	a5,a2,a5
  200b76:	97b6                	add	a5,a5,a3
  200b78:	cbd8                	sw	a4,20(a5)
  200b7a:	fe842783          	lw	a5,-24(s0)
  200b7e:	8bbd                	andi	a5,a5,15
  200b80:	0ff7f793          	andi	a5,a5,255
  200b84:	00210737          	lui	a4,0x210
  200b88:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  200b8c:	8b9d                	andi	a5,a5,7
  200b8e:	0ff7f613          	andi	a2,a5,255
  200b92:	fdc46683          	lwu	a3,-36(s0)
  200b96:	03400793          	li	a5,52
  200b9a:	02f687b3          	mul	a5,a3,a5
  200b9e:	97ba                	add	a5,a5,a4
  200ba0:	8732                	mv	a4,a2
  200ba2:	00f77613          	andi	a2,a4,15
  200ba6:	53d8                	lw	a4,36(a5)
  200ba8:	9b41                	andi	a4,a4,-16
  200baa:	86ba                	mv	a3,a4
  200bac:	8732                	mv	a4,a2
  200bae:	8f55                	or	a4,a4,a3
  200bb0:	d3d8                	sw	a4,36(a5)
  200bb2:	fe842783          	lw	a5,-24(s0)
  200bb6:	0037d79b          	srliw	a5,a5,0x3
  200bba:	0007869b          	sext.w	a3,a5
  200bbe:	002107b7          	lui	a5,0x210
  200bc2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200bc6:	87b6                	mv	a5,a3
  200bc8:	8bbd                	andi	a5,a5,15
  200bca:	0ff7f613          	andi	a2,a5,255
  200bce:	fdc46683          	lwu	a3,-36(s0)
  200bd2:	03400793          	li	a5,52
  200bd6:	02f687b3          	mul	a5,a3,a5
  200bda:	97ba                	add	a5,a5,a4
  200bdc:	8732                	mv	a4,a2
  200bde:	8b3d                	andi	a4,a4,15
  200be0:	0047171b          	slliw	a4,a4,0x4
  200be4:	53d4                	lw	a3,36(a5)
  200be6:	f0f6f693          	andi	a3,a3,-241
  200bea:	8f55                	or	a4,a4,a3
  200bec:	d3d8                	sw	a4,36(a5)
  200bee:	002107b7          	lui	a5,0x210
  200bf2:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  200bf6:	002107b7          	lui	a5,0x210
  200bfa:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  200bfe:	fe846783          	lwu	a5,-24(s0)
  200c02:	078a                	slli	a5,a5,0x2
  200c04:	97ba                	add	a5,a5,a4
  200c06:	0007d703          	lhu	a4,0(a5)
  200c0a:	fdc46603          	lwu	a2,-36(s0)
  200c0e:	03400793          	li	a5,52
  200c12:	02f607b3          	mul	a5,a2,a5
  200c16:	97b6                	add	a5,a5,a3
  200c18:	0087171b          	slliw	a4,a4,0x8
  200c1c:	53d0                	lw	a2,36(a5)
  200c1e:	ff0006b7          	lui	a3,0xff000
  200c22:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  200c26:	8ef1                	and	a3,a3,a2
  200c28:	8f55                	or	a4,a4,a3
  200c2a:	d3d8                	sw	a4,36(a5)
  200c2c:	fec42783          	lw	a5,-20(s0)
  200c30:	2781                	sext.w	a5,a5
  200c32:	cf91                	beqz	a5,200c4e <ReadBadBlockTable+0x23a>
  200c34:	fec42783          	lw	a5,-20(s0)
  200c38:	17c2                	slli	a5,a5,0x30
  200c3a:	93c1                	srli	a5,a5,0x30
  200c3c:	0017979b          	slliw	a5,a5,0x1
  200c40:	17c2                	slli	a5,a5,0x30
  200c42:	93c1                	srli	a5,a5,0x30
  200c44:	37fd                	addiw	a5,a5,-1
  200c46:	03079713          	slli	a4,a5,0x30
  200c4a:	9341                	srli	a4,a4,0x30
  200c4c:	a011                	j	200c50 <ReadBadBlockTable+0x23c>
  200c4e:	4701                	li	a4,0
  200c50:	002107b7          	lui	a5,0x210
  200c54:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  200c58:	fdc46603          	lwu	a2,-36(s0)
  200c5c:	03400793          	li	a5,52
  200c60:	02f607b3          	mul	a5,a2,a5
  200c64:	97b6                	add	a5,a5,a3
  200c66:	02e79423          	sh	a4,40(a5)
  200c6a:	fdc42783          	lw	a5,-36(s0)
  200c6e:	4581                	li	a1,0
  200c70:	853e                	mv	a0,a5
  200c72:	7d40a0ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  200c76:	fe842783          	lw	a5,-24(s0)
  200c7a:	2785                	addiw	a5,a5,1
  200c7c:	fef42423          	sw	a5,-24(s0)
  200c80:	fe842783          	lw	a5,-24(s0)
  200c84:	0007871b          	sext.w	a4,a5
  200c88:	03f00793          	li	a5,63
  200c8c:	dae7fbe3          	bgeu	a5,a4,200a42 <ReadBadBlockTable+0x2e>
  200c90:	fec42783          	lw	a5,-20(s0)
  200c94:	2785                	addiw	a5,a5,1
  200c96:	fef42623          	sw	a5,-20(s0)
  200c9a:	fe442783          	lw	a5,-28(s0)
  200c9e:	2785                	addiw	a5,a5,1
  200ca0:	fef42223          	sw	a5,-28(s0)
  200ca4:	fe042703          	lw	a4,-32(s0)
  200ca8:	77f1                	lui	a5,0xffffc
  200caa:	9fb9                	addw	a5,a5,a4
  200cac:	fef42023          	sw	a5,-32(s0)
  200cb0:	fe042783          	lw	a5,-32(s0)
  200cb4:	2781                	sext.w	a5,a5
  200cb6:	d8f043e3          	bgtz	a5,200a3c <ReadBadBlockTable+0x28>
  200cba:	04d040ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  200cbe:	0001                	nop
  200cc0:	70e2                	ld	ra,56(sp)
  200cc2:	7442                	ld	s0,48(sp)
  200cc4:	6121                	addi	sp,sp,64
  200cc6:	8082                	ret

0000000000200cc8 <FindBadBlock>:
  200cc8:	7135                	addi	sp,sp,-160
  200cca:	ed06                	sd	ra,152(sp)
  200ccc:	e922                	sd	s0,144(sp)
  200cce:	1100                	addi	s0,sp,160
  200cd0:	f6a43c23          	sd	a0,-136(s0)
  200cd4:	f6b43823          	sd	a1,-144(s0)
  200cd8:	87b2                	mv	a5,a2
  200cda:	f6d43023          	sd	a3,-160(s0)
  200cde:	f6f42623          	sw	a5,-148(s0)
  200ce2:	87ba                	mv	a5,a4
  200ce4:	f6f42423          	sw	a5,-152(s0)
  200ce8:	0020f7b7          	lui	a5,0x20f
  200cec:	da078513          	addi	a0,a5,-608 # 20eda0 <nvme_main+0x2ea>
  200cf0:	0c9030ef          	jal	ra,2045b8 <cpl_print>
  200cf4:	fe042623          	sw	zero,-20(s0)
  200cf8:	ad01                	j	201308 <FindBadBlock+0x640>
  200cfa:	fe042423          	sw	zero,-24(s0)
  200cfe:	ac31                	j	200f1a <FindBadBlock+0x252>
  200d00:	fe846783          	lwu	a5,-24(s0)
  200d04:	f7843703          	ld	a4,-136(s0)
  200d08:	97ba                	add	a5,a5,a4
  200d0a:	0007c783          	lbu	a5,0(a5)
  200d0e:	20079163          	bnez	a5,200f10 <FindBadBlock+0x248>
  200d12:	fe846783          	lwu	a5,-24(s0)
  200d16:	ff040713          	addi	a4,s0,-16
  200d1a:	97ba                	add	a5,a5,a4
  200d1c:	f8078c23          	sb	zero,-104(a5)
  200d20:	640020ef          	jal	ra,203360 <GetFromFreeReqQ>
  200d24:	87aa                	mv	a5,a0
  200d26:	fcf42623          	sw	a5,-52(s0)
  200d2a:	002107b7          	lui	a5,0x210
  200d2e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200d32:	fcc46683          	lwu	a3,-52(s0)
  200d36:	03400793          	li	a5,52
  200d3a:	02f687b3          	mul	a5,a3,a5
  200d3e:	97ba                	add	a5,a5,a4
  200d40:	4398                	lw	a4,0(a5)
  200d42:	9b41                	andi	a4,a4,-16
  200d44:	00176713          	ori	a4,a4,1
  200d48:	c398                	sw	a4,0(a5)
  200d4a:	002107b7          	lui	a5,0x210
  200d4e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200d52:	fcc46683          	lwu	a3,-52(s0)
  200d56:	03400793          	li	a5,52
  200d5a:	02f687b3          	mul	a5,a3,a5
  200d5e:	97ba                	add	a5,a5,a4
  200d60:	4721                	li	a4,8
  200d62:	00e780a3          	sb	a4,1(a5)
  200d66:	002107b7          	lui	a5,0x210
  200d6a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200d6e:	fcc46683          	lwu	a3,-52(s0)
  200d72:	03400793          	li	a5,52
  200d76:	02f687b3          	mul	a5,a3,a5
  200d7a:	97ba                	add	a5,a5,a4
  200d7c:	4b98                	lw	a4,16(a5)
  200d7e:	9b71                	andi	a4,a4,-4
  200d80:	00276713          	ori	a4,a4,2
  200d84:	cb98                	sw	a4,16(a5)
  200d86:	002107b7          	lui	a5,0x210
  200d8a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200d8e:	fcc46683          	lwu	a3,-52(s0)
  200d92:	03400793          	li	a5,52
  200d96:	02f687b3          	mul	a5,a3,a5
  200d9a:	97ba                	add	a5,a5,a4
  200d9c:	4b98                	lw	a4,16(a5)
  200d9e:	9b4d                	andi	a4,a4,-13
  200da0:	00476713          	ori	a4,a4,4
  200da4:	cb98                	sw	a4,16(a5)
  200da6:	002107b7          	lui	a5,0x210
  200daa:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200dae:	fcc46683          	lwu	a3,-52(s0)
  200db2:	03400793          	li	a5,52
  200db6:	02f687b3          	mul	a5,a3,a5
  200dba:	97ba                	add	a5,a5,a4
  200dbc:	4b98                	lw	a4,16(a5)
  200dbe:	9b3d                	andi	a4,a4,-17
  200dc0:	cb98                	sw	a4,16(a5)
  200dc2:	002107b7          	lui	a5,0x210
  200dc6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200dca:	fcc46683          	lwu	a3,-52(s0)
  200dce:	03400793          	li	a5,52
  200dd2:	02f687b3          	mul	a5,a3,a5
  200dd6:	97ba                	add	a5,a5,a4
  200dd8:	4b98                	lw	a4,16(a5)
  200dda:	fdf77713          	andi	a4,a4,-33
  200dde:	cb98                	sw	a4,16(a5)
  200de0:	002107b7          	lui	a5,0x210
  200de4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200de8:	fcc46683          	lwu	a3,-52(s0)
  200dec:	03400793          	li	a5,52
  200df0:	02f687b3          	mul	a5,a3,a5
  200df4:	97ba                	add	a5,a5,a4
  200df6:	4b98                	lw	a4,16(a5)
  200df8:	fbf77713          	andi	a4,a4,-65
  200dfc:	cb98                	sw	a4,16(a5)
  200dfe:	002107b7          	lui	a5,0x210
  200e02:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200e06:	fcc46683          	lwu	a3,-52(s0)
  200e0a:	03400793          	li	a5,52
  200e0e:	02f687b3          	mul	a5,a3,a5
  200e12:	97ba                	add	a5,a5,a4
  200e14:	4b98                	lw	a4,16(a5)
  200e16:	08076713          	ori	a4,a4,128
  200e1a:	cb98                	sw	a4,16(a5)
  200e1c:	fe846783          	lwu	a5,-24(s0)
  200e20:	078a                	slli	a5,a5,0x2
  200e22:	f6043703          	ld	a4,-160(s0)
  200e26:	97ba                	add	a5,a5,a4
  200e28:	00210737          	lui	a4,0x210
  200e2c:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  200e30:	4398                	lw	a4,0(a5)
  200e32:	fcc46603          	lwu	a2,-52(s0)
  200e36:	03400793          	li	a5,52
  200e3a:	02f607b3          	mul	a5,a2,a5
  200e3e:	97b6                	add	a5,a5,a3
  200e40:	cbd8                	sw	a4,20(a5)
  200e42:	fe842783          	lw	a5,-24(s0)
  200e46:	8bbd                	andi	a5,a5,15
  200e48:	0ff7f793          	andi	a5,a5,255
  200e4c:	00210737          	lui	a4,0x210
  200e50:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  200e54:	8b9d                	andi	a5,a5,7
  200e56:	0ff7f613          	andi	a2,a5,255
  200e5a:	fcc46683          	lwu	a3,-52(s0)
  200e5e:	03400793          	li	a5,52
  200e62:	02f687b3          	mul	a5,a3,a5
  200e66:	97ba                	add	a5,a5,a4
  200e68:	8732                	mv	a4,a2
  200e6a:	00f77613          	andi	a2,a4,15
  200e6e:	53d8                	lw	a4,36(a5)
  200e70:	9b41                	andi	a4,a4,-16
  200e72:	86ba                	mv	a3,a4
  200e74:	8732                	mv	a4,a2
  200e76:	8f55                	or	a4,a4,a3
  200e78:	d3d8                	sw	a4,36(a5)
  200e7a:	fe842783          	lw	a5,-24(s0)
  200e7e:	0037d79b          	srliw	a5,a5,0x3
  200e82:	0007869b          	sext.w	a3,a5
  200e86:	002107b7          	lui	a5,0x210
  200e8a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200e8e:	87b6                	mv	a5,a3
  200e90:	8bbd                	andi	a5,a5,15
  200e92:	0ff7f613          	andi	a2,a5,255
  200e96:	fcc46683          	lwu	a3,-52(s0)
  200e9a:	03400793          	li	a5,52
  200e9e:	02f687b3          	mul	a5,a3,a5
  200ea2:	97ba                	add	a5,a5,a4
  200ea4:	8732                	mv	a4,a2
  200ea6:	8b3d                	andi	a4,a4,15
  200ea8:	0047171b          	slliw	a4,a4,0x4
  200eac:	53d4                	lw	a3,36(a5)
  200eae:	f0f6f693          	andi	a3,a3,-241
  200eb2:	8f55                	or	a4,a4,a3
  200eb4:	d3d8                	sw	a4,36(a5)
  200eb6:	002107b7          	lui	a5,0x210
  200eba:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  200ebe:	fec42783          	lw	a5,-20(s0)
  200ec2:	03079713          	slli	a4,a5,0x30
  200ec6:	9341                	srli	a4,a4,0x30
  200ec8:	fcc46603          	lwu	a2,-52(s0)
  200ecc:	03400793          	li	a5,52
  200ed0:	02f607b3          	mul	a5,a2,a5
  200ed4:	97b6                	add	a5,a5,a3
  200ed6:	0087171b          	slliw	a4,a4,0x8
  200eda:	53d0                	lw	a2,36(a5)
  200edc:	ff0006b7          	lui	a3,0xff000
  200ee0:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  200ee4:	8ef1                	and	a3,a3,a2
  200ee6:	8f55                	or	a4,a4,a3
  200ee8:	d3d8                	sw	a4,36(a5)
  200eea:	002107b7          	lui	a5,0x210
  200eee:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200ef2:	fcc46683          	lwu	a3,-52(s0)
  200ef6:	03400793          	li	a5,52
  200efa:	02f687b3          	mul	a5,a3,a5
  200efe:	97ba                	add	a5,a5,a4
  200f00:	02079423          	sh	zero,40(a5)
  200f04:	fcc42783          	lw	a5,-52(s0)
  200f08:	4581                	li	a1,0
  200f0a:	853e                	mv	a0,a5
  200f0c:	53a0a0ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  200f10:	fe842783          	lw	a5,-24(s0)
  200f14:	2785                	addiw	a5,a5,1
  200f16:	fef42423          	sw	a5,-24(s0)
  200f1a:	fe842783          	lw	a5,-24(s0)
  200f1e:	0007871b          	sext.w	a4,a5
  200f22:	03f00793          	li	a5,63
  200f26:	dce7fde3          	bgeu	a5,a4,200d00 <FindBadBlock+0x38>
  200f2a:	5dc040ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  200f2e:	fe042423          	sw	zero,-24(s0)
  200f32:	a459                	j	2011b8 <FindBadBlock+0x4f0>
  200f34:	fe846783          	lwu	a5,-24(s0)
  200f38:	f7843703          	ld	a4,-136(s0)
  200f3c:	97ba                	add	a5,a5,a4
  200f3e:	0007c783          	lbu	a5,0(a5)
  200f42:	26079663          	bnez	a5,2011ae <FindBadBlock+0x4e6>
  200f46:	fe846783          	lwu	a5,-24(s0)
  200f4a:	078a                	slli	a5,a5,0x2
  200f4c:	f6043703          	ld	a4,-160(s0)
  200f50:	97ba                	add	a5,a5,a4
  200f52:	439c                	lw	a5,0(a5)
  200f54:	1782                	slli	a5,a5,0x20
  200f56:	9381                	srli	a5,a5,0x20
  200f58:	fef43023          	sd	a5,-32(s0)
  200f5c:	fe846783          	lwu	a5,-24(s0)
  200f60:	078a                	slli	a5,a5,0x2
  200f62:	f6043703          	ld	a4,-160(s0)
  200f66:	97ba                	add	a5,a5,a4
  200f68:	4398                	lw	a4,0(a5)
  200f6a:	6791                	lui	a5,0x4
  200f6c:	9fb9                	addw	a5,a5,a4
  200f6e:	2781                	sext.w	a5,a5
  200f70:	1782                	slli	a5,a5,0x20
  200f72:	9381                	srli	a5,a5,0x20
  200f74:	fcf43c23          	sd	a5,-40(s0)
  200f78:	fe043783          	ld	a5,-32(s0)
  200f7c:	0007c783          	lbu	a5,0(a5) # 4000 <start-0x1fc000>
  200f80:	873e                	mv	a4,a5
  200f82:	0ff00793          	li	a5,255
  200f86:	20f71663          	bne	a4,a5,201192 <FindBadBlock+0x4ca>
  200f8a:	fd843783          	ld	a5,-40(s0)
  200f8e:	0007c783          	lbu	a5,0(a5)
  200f92:	873e                	mv	a4,a5
  200f94:	0ff00793          	li	a5,255
  200f98:	1ef71d63          	bne	a4,a5,201192 <FindBadBlock+0x4ca>
  200f9c:	3c4020ef          	jal	ra,203360 <GetFromFreeReqQ>
  200fa0:	87aa                	mv	a5,a0
  200fa2:	fcf42623          	sw	a5,-52(s0)
  200fa6:	002107b7          	lui	a5,0x210
  200faa:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200fae:	fcc46683          	lwu	a3,-52(s0)
  200fb2:	03400793          	li	a5,52
  200fb6:	02f687b3          	mul	a5,a3,a5
  200fba:	97ba                	add	a5,a5,a4
  200fbc:	4398                	lw	a4,0(a5)
  200fbe:	9b41                	andi	a4,a4,-16
  200fc0:	00176713          	ori	a4,a4,1
  200fc4:	c398                	sw	a4,0(a5)
  200fc6:	002107b7          	lui	a5,0x210
  200fca:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200fce:	fcc46683          	lwu	a3,-52(s0)
  200fd2:	03400793          	li	a5,52
  200fd6:	02f687b3          	mul	a5,a3,a5
  200fda:	97ba                	add	a5,a5,a4
  200fdc:	4721                	li	a4,8
  200fde:	00e780a3          	sb	a4,1(a5)
  200fe2:	002107b7          	lui	a5,0x210
  200fe6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  200fea:	fcc46683          	lwu	a3,-52(s0)
  200fee:	03400793          	li	a5,52
  200ff2:	02f687b3          	mul	a5,a3,a5
  200ff6:	97ba                	add	a5,a5,a4
  200ff8:	4b98                	lw	a4,16(a5)
  200ffa:	9b71                	andi	a4,a4,-4
  200ffc:	00276713          	ori	a4,a4,2
  201000:	cb98                	sw	a4,16(a5)
  201002:	002107b7          	lui	a5,0x210
  201006:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20100a:	fcc46683          	lwu	a3,-52(s0)
  20100e:	03400793          	li	a5,52
  201012:	02f687b3          	mul	a5,a3,a5
  201016:	97ba                	add	a5,a5,a4
  201018:	4b98                	lw	a4,16(a5)
  20101a:	9b4d                	andi	a4,a4,-13
  20101c:	00476713          	ori	a4,a4,4
  201020:	cb98                	sw	a4,16(a5)
  201022:	002107b7          	lui	a5,0x210
  201026:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20102a:	fcc46683          	lwu	a3,-52(s0)
  20102e:	03400793          	li	a5,52
  201032:	02f687b3          	mul	a5,a3,a5
  201036:	97ba                	add	a5,a5,a4
  201038:	4b98                	lw	a4,16(a5)
  20103a:	9b3d                	andi	a4,a4,-17
  20103c:	cb98                	sw	a4,16(a5)
  20103e:	002107b7          	lui	a5,0x210
  201042:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201046:	fcc46683          	lwu	a3,-52(s0)
  20104a:	03400793          	li	a5,52
  20104e:	02f687b3          	mul	a5,a3,a5
  201052:	97ba                	add	a5,a5,a4
  201054:	4b98                	lw	a4,16(a5)
  201056:	fdf77713          	andi	a4,a4,-33
  20105a:	cb98                	sw	a4,16(a5)
  20105c:	002107b7          	lui	a5,0x210
  201060:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201064:	fcc46683          	lwu	a3,-52(s0)
  201068:	03400793          	li	a5,52
  20106c:	02f687b3          	mul	a5,a3,a5
  201070:	97ba                	add	a5,a5,a4
  201072:	4b98                	lw	a4,16(a5)
  201074:	fbf77713          	andi	a4,a4,-65
  201078:	cb98                	sw	a4,16(a5)
  20107a:	002107b7          	lui	a5,0x210
  20107e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201082:	fcc46683          	lwu	a3,-52(s0)
  201086:	03400793          	li	a5,52
  20108a:	02f687b3          	mul	a5,a3,a5
  20108e:	97ba                	add	a5,a5,a4
  201090:	4b98                	lw	a4,16(a5)
  201092:	08076713          	ori	a4,a4,128
  201096:	cb98                	sw	a4,16(a5)
  201098:	fe846783          	lwu	a5,-24(s0)
  20109c:	078a                	slli	a5,a5,0x2
  20109e:	f6043703          	ld	a4,-160(s0)
  2010a2:	97ba                	add	a5,a5,a4
  2010a4:	00210737          	lui	a4,0x210
  2010a8:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  2010ac:	4398                	lw	a4,0(a5)
  2010ae:	fcc46603          	lwu	a2,-52(s0)
  2010b2:	03400793          	li	a5,52
  2010b6:	02f607b3          	mul	a5,a2,a5
  2010ba:	97b6                	add	a5,a5,a3
  2010bc:	cbd8                	sw	a4,20(a5)
  2010be:	fe842783          	lw	a5,-24(s0)
  2010c2:	8bbd                	andi	a5,a5,15
  2010c4:	0ff7f793          	andi	a5,a5,255
  2010c8:	00210737          	lui	a4,0x210
  2010cc:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  2010d0:	8b9d                	andi	a5,a5,7
  2010d2:	0ff7f613          	andi	a2,a5,255
  2010d6:	fcc46683          	lwu	a3,-52(s0)
  2010da:	03400793          	li	a5,52
  2010de:	02f687b3          	mul	a5,a3,a5
  2010e2:	97ba                	add	a5,a5,a4
  2010e4:	8732                	mv	a4,a2
  2010e6:	00f77613          	andi	a2,a4,15
  2010ea:	53d8                	lw	a4,36(a5)
  2010ec:	9b41                	andi	a4,a4,-16
  2010ee:	86ba                	mv	a3,a4
  2010f0:	8732                	mv	a4,a2
  2010f2:	8f55                	or	a4,a4,a3
  2010f4:	d3d8                	sw	a4,36(a5)
  2010f6:	fe842783          	lw	a5,-24(s0)
  2010fa:	0037d79b          	srliw	a5,a5,0x3
  2010fe:	0007869b          	sext.w	a3,a5
  201102:	002107b7          	lui	a5,0x210
  201106:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20110a:	87b6                	mv	a5,a3
  20110c:	8bbd                	andi	a5,a5,15
  20110e:	0ff7f613          	andi	a2,a5,255
  201112:	fcc46683          	lwu	a3,-52(s0)
  201116:	03400793          	li	a5,52
  20111a:	02f687b3          	mul	a5,a3,a5
  20111e:	97ba                	add	a5,a5,a4
  201120:	8732                	mv	a4,a2
  201122:	8b3d                	andi	a4,a4,15
  201124:	0047171b          	slliw	a4,a4,0x4
  201128:	53d4                	lw	a3,36(a5)
  20112a:	f0f6f693          	andi	a3,a3,-241
  20112e:	8f55                	or	a4,a4,a3
  201130:	d3d8                	sw	a4,36(a5)
  201132:	002107b7          	lui	a5,0x210
  201136:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20113a:	fec42783          	lw	a5,-20(s0)
  20113e:	03079713          	slli	a4,a5,0x30
  201142:	9341                	srli	a4,a4,0x30
  201144:	fcc46603          	lwu	a2,-52(s0)
  201148:	03400793          	li	a5,52
  20114c:	02f607b3          	mul	a5,a2,a5
  201150:	97b6                	add	a5,a5,a3
  201152:	0087171b          	slliw	a4,a4,0x8
  201156:	53d0                	lw	a2,36(a5)
  201158:	ff0006b7          	lui	a3,0xff000
  20115c:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  201160:	8ef1                	and	a3,a3,a2
  201162:	8f55                	or	a4,a4,a3
  201164:	d3d8                	sw	a4,36(a5)
  201166:	002107b7          	lui	a5,0x210
  20116a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20116e:	fcc46683          	lwu	a3,-52(s0)
  201172:	03400793          	li	a5,52
  201176:	02f687b3          	mul	a5,a3,a5
  20117a:	97ba                	add	a5,a5,a4
  20117c:	0ff00713          	li	a4,255
  201180:	02e79423          	sh	a4,40(a5)
  201184:	fcc42783          	lw	a5,-52(s0)
  201188:	4581                	li	a1,0
  20118a:	853e                	mv	a0,a5
  20118c:	2ba0a0ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  201190:	a839                	j	2011ae <FindBadBlock+0x4e6>
  201192:	0020f7b7          	lui	a5,0x20f
  201196:	db078513          	addi	a0,a5,-592 # 20edb0 <nvme_main+0x2fa>
  20119a:	41e030ef          	jal	ra,2045b8 <cpl_print>
  20119e:	fe846783          	lwu	a5,-24(s0)
  2011a2:	ff040713          	addi	a4,s0,-16
  2011a6:	97ba                	add	a5,a5,a4
  2011a8:	4705                	li	a4,1
  2011aa:	f8e78c23          	sb	a4,-104(a5)
  2011ae:	fe842783          	lw	a5,-24(s0)
  2011b2:	2785                	addiw	a5,a5,1
  2011b4:	fef42423          	sw	a5,-24(s0)
  2011b8:	fe842783          	lw	a5,-24(s0)
  2011bc:	0007871b          	sext.w	a4,a5
  2011c0:	03f00793          	li	a5,63
  2011c4:	d6e7f8e3          	bgeu	a5,a4,200f34 <FindBadBlock+0x26c>
  2011c8:	33e040ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  2011cc:	fe042423          	sw	zero,-24(s0)
  2011d0:	aa39                	j	2012ee <FindBadBlock+0x626>
  2011d2:	fe846783          	lwu	a5,-24(s0)
  2011d6:	f7843703          	ld	a4,-136(s0)
  2011da:	97ba                	add	a5,a5,a4
  2011dc:	0007c783          	lbu	a5,0(a5)
  2011e0:	10079263          	bnez	a5,2012e4 <FindBadBlock+0x61c>
  2011e4:	fe846783          	lwu	a5,-24(s0)
  2011e8:	078a                	slli	a5,a5,0x2
  2011ea:	f6043703          	ld	a4,-160(s0)
  2011ee:	97ba                	add	a5,a5,a4
  2011f0:	439c                	lw	a5,0(a5)
  2011f2:	1782                	slli	a5,a5,0x20
  2011f4:	9381                	srli	a5,a5,0x20
  2011f6:	fef43023          	sd	a5,-32(s0)
  2011fa:	fe846783          	lwu	a5,-24(s0)
  2011fe:	078a                	slli	a5,a5,0x2
  201200:	f6043703          	ld	a4,-160(s0)
  201204:	97ba                	add	a5,a5,a4
  201206:	4398                	lw	a4,0(a5)
  201208:	6791                	lui	a5,0x4
  20120a:	9fb9                	addw	a5,a5,a4
  20120c:	2781                	sext.w	a5,a5
  20120e:	1782                	slli	a5,a5,0x20
  201210:	9381                	srli	a5,a5,0x20
  201212:	fcf43c23          	sd	a5,-40(s0)
  201216:	fe043783          	ld	a5,-32(s0)
  20121a:	0007c783          	lbu	a5,0(a5) # 4000 <start-0x1fc000>
  20121e:	873e                	mv	a4,a5
  201220:	0ff00793          	li	a5,255
  201224:	00f71b63          	bne	a4,a5,20123a <FindBadBlock+0x572>
  201228:	fd843783          	ld	a5,-40(s0)
  20122c:	0007c783          	lbu	a5,0(a5)
  201230:	873e                	mv	a4,a5
  201232:	0ff00793          	li	a5,255
  201236:	02f70863          	beq	a4,a5,201266 <FindBadBlock+0x59e>
  20123a:	fe846783          	lwu	a5,-24(s0)
  20123e:	ff040713          	addi	a4,s0,-16
  201242:	97ba                	add	a5,a5,a4
  201244:	f987c783          	lbu	a5,-104(a5)
  201248:	ef99                	bnez	a5,201266 <FindBadBlock+0x59e>
  20124a:	0020f7b7          	lui	a5,0x20f
  20124e:	db078513          	addi	a0,a5,-592 # 20edb0 <nvme_main+0x2fa>
  201252:	366030ef          	jal	ra,2045b8 <cpl_print>
  201256:	fe846783          	lwu	a5,-24(s0)
  20125a:	ff040713          	addi	a4,s0,-16
  20125e:	97ba                	add	a5,a5,a4
  201260:	4705                	li	a4,1
  201262:	f8e78c23          	sb	a4,-104(a5)
  201266:	fe846783          	lwu	a5,-24(s0)
  20126a:	078a                	slli	a5,a5,0x2
  20126c:	f7043703          	ld	a4,-144(s0)
  201270:	97ba                	add	a5,a5,a4
  201272:	439c                	lw	a5,0(a5)
  201274:	fec42703          	lw	a4,-20(s0)
  201278:	9fb9                	addw	a5,a5,a4
  20127a:	2781                	sext.w	a5,a5
  20127c:	1782                	slli	a5,a5,0x20
  20127e:	9381                	srli	a5,a5,0x20
  201280:	fcf43823          	sd	a5,-48(s0)
  201284:	fe846783          	lwu	a5,-24(s0)
  201288:	ff040713          	addi	a4,s0,-16
  20128c:	97ba                	add	a5,a5,a4
  20128e:	f987c703          	lbu	a4,-104(a5)
  201292:	fd043783          	ld	a5,-48(s0)
  201296:	00e78023          	sb	a4,0(a5)
  20129a:	fe846783          	lwu	a5,-24(s0)
  20129e:	ff040713          	addi	a4,s0,-16
  2012a2:	97ba                	add	a5,a5,a4
  2012a4:	f987c683          	lbu	a3,-104(a5)
  2012a8:	002107b7          	lui	a5,0x210
  2012ac:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  2012b0:	87b6                	mv	a5,a3
  2012b2:	8b85                	andi	a5,a5,1
  2012b4:	0ff7f593          	andi	a1,a5,255
  2012b8:	fec46783          	lwu	a5,-20(s0)
  2012bc:	fe846603          	lwu	a2,-24(s0)
  2012c0:	6689                	lui	a3,0x2
  2012c2:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  2012c6:	02d606b3          	mul	a3,a2,a3
  2012ca:	97b6                	add	a5,a5,a3
  2012cc:	078a                	slli	a5,a5,0x2
  2012ce:	97ba                	add	a5,a5,a4
  2012d0:	872e                	mv	a4,a1
  2012d2:	8b05                	andi	a4,a4,1
  2012d4:	0107171b          	slliw	a4,a4,0x10
  2012d8:	4390                	lw	a2,0(a5)
  2012da:	76c1                	lui	a3,0xffff0
  2012dc:	16fd                	addi	a3,a3,-1
  2012de:	8ef1                	and	a3,a3,a2
  2012e0:	8f55                	or	a4,a4,a3
  2012e2:	c398                	sw	a4,0(a5)
  2012e4:	fe842783          	lw	a5,-24(s0)
  2012e8:	2785                	addiw	a5,a5,1
  2012ea:	fef42423          	sw	a5,-24(s0)
  2012ee:	fe842783          	lw	a5,-24(s0)
  2012f2:	0007871b          	sext.w	a4,a5
  2012f6:	03f00793          	li	a5,63
  2012fa:	ece7fce3          	bgeu	a5,a4,2011d2 <FindBadBlock+0x50a>
  2012fe:	fec42783          	lw	a5,-20(s0)
  201302:	2785                	addiw	a5,a5,1
  201304:	fef42623          	sw	a5,-20(s0)
  201308:	fec42783          	lw	a5,-20(s0)
  20130c:	0007871b          	sext.w	a4,a5
  201310:	6789                	lui	a5,0x2
  201312:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  201316:	9ee7f2e3          	bgeu	a5,a4,200cfa <FindBadBlock+0x32>
  20131a:	0001                	nop
  20131c:	0001                	nop
  20131e:	60ea                	ld	ra,152(sp)
  201320:	644a                	ld	s0,144(sp)
  201322:	610d                	addi	sp,sp,160
  201324:	8082                	ret

0000000000201326 <SaveBadBlockTable>:
  201326:	715d                	addi	sp,sp,-80
  201328:	e486                	sd	ra,72(sp)
  20132a:	e0a2                	sd	s0,64(sp)
  20132c:	0880                	addi	s0,sp,80
  20132e:	fca43423          	sd	a0,-56(s0)
  201332:	fcb43023          	sd	a1,-64(s0)
  201336:	87b2                	mv	a5,a2
  201338:	faf42e23          	sw	a5,-68(s0)
  20133c:	fe042423          	sw	zero,-24(s0)
  201340:	6789                	lui	a5,0x2
  201342:	0b078793          	addi	a5,a5,176 # 20b0 <start-0x1fdf50>
  201346:	fef42223          	sw	a5,-28(s0)
  20134a:	4785                	li	a5,1
  20134c:	fef42023          	sw	a5,-32(s0)
  201350:	a93d                	j	20178e <SaveBadBlockTable+0x468>
  201352:	fe042623          	sw	zero,-20(s0)
  201356:	a121                	j	20175e <SaveBadBlockTable+0x438>
  201358:	fec46783          	lwu	a5,-20(s0)
  20135c:	fc843703          	ld	a4,-56(s0)
  201360:	97ba                	add	a5,a5,a4
  201362:	0007c783          	lbu	a5,0(a5)
  201366:	cf81                	beqz	a5,20137e <SaveBadBlockTable+0x58>
  201368:	fec46783          	lwu	a5,-20(s0)
  20136c:	fc843703          	ld	a4,-56(s0)
  201370:	97ba                	add	a5,a5,a4
  201372:	0007c783          	lbu	a5,0(a5)
  201376:	873e                	mv	a4,a5
  201378:	478d                	li	a5,3
  20137a:	3cf71d63          	bne	a4,a5,201754 <SaveBadBlockTable+0x42e>
  20137e:	fe842783          	lw	a5,-24(s0)
  201382:	2781                	sext.w	a5,a5
  201384:	18079e63          	bnez	a5,201520 <SaveBadBlockTable+0x1fa>
  201388:	7d9010ef          	jal	ra,203360 <GetFromFreeReqQ>
  20138c:	87aa                	mv	a5,a0
  20138e:	fcf42e23          	sw	a5,-36(s0)
  201392:	002107b7          	lui	a5,0x210
  201396:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20139a:	fdc46683          	lwu	a3,-36(s0)
  20139e:	03400793          	li	a5,52
  2013a2:	02f687b3          	mul	a5,a3,a5
  2013a6:	97ba                	add	a5,a5,a4
  2013a8:	4398                	lw	a4,0(a5)
  2013aa:	9b41                	andi	a4,a4,-16
  2013ac:	00176713          	ori	a4,a4,1
  2013b0:	c398                	sw	a4,0(a5)
  2013b2:	002107b7          	lui	a5,0x210
  2013b6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2013ba:	fdc46683          	lwu	a3,-36(s0)
  2013be:	03400793          	li	a5,52
  2013c2:	02f687b3          	mul	a5,a3,a5
  2013c6:	97ba                	add	a5,a5,a4
  2013c8:	4731                	li	a4,12
  2013ca:	00e780a3          	sb	a4,1(a5)
  2013ce:	002107b7          	lui	a5,0x210
  2013d2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2013d6:	fdc46683          	lwu	a3,-36(s0)
  2013da:	03400793          	li	a5,52
  2013de:	02f687b3          	mul	a5,a3,a5
  2013e2:	97ba                	add	a5,a5,a4
  2013e4:	4b98                	lw	a4,16(a5)
  2013e6:	9b4d                	andi	a4,a4,-13
  2013e8:	00476713          	ori	a4,a4,4
  2013ec:	cb98                	sw	a4,16(a5)
  2013ee:	002107b7          	lui	a5,0x210
  2013f2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2013f6:	fdc46683          	lwu	a3,-36(s0)
  2013fa:	03400793          	li	a5,52
  2013fe:	02f687b3          	mul	a5,a3,a5
  201402:	97ba                	add	a5,a5,a4
  201404:	4b98                	lw	a4,16(a5)
  201406:	00376713          	ori	a4,a4,3
  20140a:	cb98                	sw	a4,16(a5)
  20140c:	002107b7          	lui	a5,0x210
  201410:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201414:	fdc46683          	lwu	a3,-36(s0)
  201418:	03400793          	li	a5,52
  20141c:	02f687b3          	mul	a5,a3,a5
  201420:	97ba                	add	a5,a5,a4
  201422:	4b98                	lw	a4,16(a5)
  201424:	fbf77713          	andi	a4,a4,-65
  201428:	cb98                	sw	a4,16(a5)
  20142a:	002107b7          	lui	a5,0x210
  20142e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201432:	fdc46683          	lwu	a3,-36(s0)
  201436:	03400793          	li	a5,52
  20143a:	02f687b3          	mul	a5,a3,a5
  20143e:	97ba                	add	a5,a5,a4
  201440:	4b98                	lw	a4,16(a5)
  201442:	08076713          	ori	a4,a4,128
  201446:	cb98                	sw	a4,16(a5)
  201448:	fec42783          	lw	a5,-20(s0)
  20144c:	8bbd                	andi	a5,a5,15
  20144e:	0ff7f793          	andi	a5,a5,255
  201452:	00210737          	lui	a4,0x210
  201456:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  20145a:	8b9d                	andi	a5,a5,7
  20145c:	0ff7f613          	andi	a2,a5,255
  201460:	fdc46683          	lwu	a3,-36(s0)
  201464:	03400793          	li	a5,52
  201468:	02f687b3          	mul	a5,a3,a5
  20146c:	97ba                	add	a5,a5,a4
  20146e:	8732                	mv	a4,a2
  201470:	00f77613          	andi	a2,a4,15
  201474:	53d8                	lw	a4,36(a5)
  201476:	9b41                	andi	a4,a4,-16
  201478:	86ba                	mv	a3,a4
  20147a:	8732                	mv	a4,a2
  20147c:	8f55                	or	a4,a4,a3
  20147e:	d3d8                	sw	a4,36(a5)
  201480:	fec42783          	lw	a5,-20(s0)
  201484:	0037d79b          	srliw	a5,a5,0x3
  201488:	0007869b          	sext.w	a3,a5
  20148c:	002107b7          	lui	a5,0x210
  201490:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201494:	87b6                	mv	a5,a3
  201496:	8bbd                	andi	a5,a5,15
  201498:	0ff7f613          	andi	a2,a5,255
  20149c:	fdc46683          	lwu	a3,-36(s0)
  2014a0:	03400793          	li	a5,52
  2014a4:	02f687b3          	mul	a5,a3,a5
  2014a8:	97ba                	add	a5,a5,a4
  2014aa:	8732                	mv	a4,a2
  2014ac:	8b3d                	andi	a4,a4,15
  2014ae:	0047171b          	slliw	a4,a4,0x4
  2014b2:	53d4                	lw	a3,36(a5)
  2014b4:	f0f6f693          	andi	a3,a3,-241
  2014b8:	8f55                	or	a4,a4,a3
  2014ba:	d3d8                	sw	a4,36(a5)
  2014bc:	002107b7          	lui	a5,0x210
  2014c0:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  2014c4:	002107b7          	lui	a5,0x210
  2014c8:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2014cc:	fec46783          	lwu	a5,-20(s0)
  2014d0:	078a                	slli	a5,a5,0x2
  2014d2:	97ba                	add	a5,a5,a4
  2014d4:	0007d703          	lhu	a4,0(a5)
  2014d8:	fdc46603          	lwu	a2,-36(s0)
  2014dc:	03400793          	li	a5,52
  2014e0:	02f607b3          	mul	a5,a2,a5
  2014e4:	97b6                	add	a5,a5,a3
  2014e6:	0087171b          	slliw	a4,a4,0x8
  2014ea:	53d0                	lw	a2,36(a5)
  2014ec:	ff0006b7          	lui	a3,0xff000
  2014f0:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  2014f4:	8ef1                	and	a3,a3,a2
  2014f6:	8f55                	or	a4,a4,a3
  2014f8:	d3d8                	sw	a4,36(a5)
  2014fa:	002107b7          	lui	a5,0x210
  2014fe:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201502:	fdc46683          	lwu	a3,-36(s0)
  201506:	03400793          	li	a5,52
  20150a:	02f687b3          	mul	a5,a3,a5
  20150e:	97ba                	add	a5,a5,a4
  201510:	02079423          	sh	zero,40(a5)
  201514:	fdc42783          	lw	a5,-36(s0)
  201518:	4581                	li	a1,0
  20151a:	853e                	mv	a0,a5
  20151c:	72b090ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  201520:	641010ef          	jal	ra,203360 <GetFromFreeReqQ>
  201524:	87aa                	mv	a5,a0
  201526:	fcf42e23          	sw	a5,-36(s0)
  20152a:	002107b7          	lui	a5,0x210
  20152e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201532:	fdc46683          	lwu	a3,-36(s0)
  201536:	03400793          	li	a5,52
  20153a:	02f687b3          	mul	a5,a3,a5
  20153e:	97ba                	add	a5,a5,a4
  201540:	4398                	lw	a4,0(a5)
  201542:	9b41                	andi	a4,a4,-16
  201544:	00176713          	ori	a4,a4,1
  201548:	c398                	sw	a4,0(a5)
  20154a:	002107b7          	lui	a5,0x210
  20154e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201552:	fdc46683          	lwu	a3,-36(s0)
  201556:	03400793          	li	a5,52
  20155a:	02f687b3          	mul	a5,a3,a5
  20155e:	97ba                	add	a5,a5,a4
  201560:	000780a3          	sb	zero,1(a5)
  201564:	002107b7          	lui	a5,0x210
  201568:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20156c:	fdc46683          	lwu	a3,-36(s0)
  201570:	03400793          	li	a5,52
  201574:	02f687b3          	mul	a5,a3,a5
  201578:	97ba                	add	a5,a5,a4
  20157a:	4b98                	lw	a4,16(a5)
  20157c:	9b71                	andi	a4,a4,-4
  20157e:	00276713          	ori	a4,a4,2
  201582:	cb98                	sw	a4,16(a5)
  201584:	002107b7          	lui	a5,0x210
  201588:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20158c:	fdc46683          	lwu	a3,-36(s0)
  201590:	03400793          	li	a5,52
  201594:	02f687b3          	mul	a5,a3,a5
  201598:	97ba                	add	a5,a5,a4
  20159a:	4b98                	lw	a4,16(a5)
  20159c:	9b4d                	andi	a4,a4,-13
  20159e:	00476713          	ori	a4,a4,4
  2015a2:	cb98                	sw	a4,16(a5)
  2015a4:	002107b7          	lui	a5,0x210
  2015a8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2015ac:	fdc46683          	lwu	a3,-36(s0)
  2015b0:	03400793          	li	a5,52
  2015b4:	02f687b3          	mul	a5,a3,a5
  2015b8:	97ba                	add	a5,a5,a4
  2015ba:	4b98                	lw	a4,16(a5)
  2015bc:	01076713          	ori	a4,a4,16
  2015c0:	cb98                	sw	a4,16(a5)
  2015c2:	002107b7          	lui	a5,0x210
  2015c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2015ca:	fdc46683          	lwu	a3,-36(s0)
  2015ce:	03400793          	li	a5,52
  2015d2:	02f687b3          	mul	a5,a3,a5
  2015d6:	97ba                	add	a5,a5,a4
  2015d8:	4b98                	lw	a4,16(a5)
  2015da:	fdf77713          	andi	a4,a4,-33
  2015de:	cb98                	sw	a4,16(a5)
  2015e0:	002107b7          	lui	a5,0x210
  2015e4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2015e8:	fdc46683          	lwu	a3,-36(s0)
  2015ec:	03400793          	li	a5,52
  2015f0:	02f687b3          	mul	a5,a3,a5
  2015f4:	97ba                	add	a5,a5,a4
  2015f6:	4b98                	lw	a4,16(a5)
  2015f8:	fbf77713          	andi	a4,a4,-65
  2015fc:	cb98                	sw	a4,16(a5)
  2015fe:	002107b7          	lui	a5,0x210
  201602:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201606:	fdc46683          	lwu	a3,-36(s0)
  20160a:	03400793          	li	a5,52
  20160e:	02f687b3          	mul	a5,a3,a5
  201612:	97ba                	add	a5,a5,a4
  201614:	4b98                	lw	a4,16(a5)
  201616:	08076713          	ori	a4,a4,128
  20161a:	cb98                	sw	a4,16(a5)
  20161c:	fec46783          	lwu	a5,-20(s0)
  201620:	078a                	slli	a5,a5,0x2
  201622:	fc043703          	ld	a4,-64(s0)
  201626:	97ba                	add	a5,a5,a4
  201628:	4398                	lw	a4,0(a5)
  20162a:	fe842783          	lw	a5,-24(s0)
  20162e:	fbc42683          	lw	a3,-68(s0)
  201632:	02f687bb          	mulw	a5,a3,a5
  201636:	2781                	sext.w	a5,a5
  201638:	002106b7          	lui	a3,0x210
  20163c:	1806b683          	ld	a3,384(a3) # 210180 <reqPoolPtr>
  201640:	9fb9                	addw	a5,a5,a4
  201642:	0007871b          	sext.w	a4,a5
  201646:	fdc46603          	lwu	a2,-36(s0)
  20164a:	03400793          	li	a5,52
  20164e:	02f607b3          	mul	a5,a2,a5
  201652:	97b6                	add	a5,a5,a3
  201654:	cbd8                	sw	a4,20(a5)
  201656:	fec42783          	lw	a5,-20(s0)
  20165a:	8bbd                	andi	a5,a5,15
  20165c:	0ff7f793          	andi	a5,a5,255
  201660:	00210737          	lui	a4,0x210
  201664:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  201668:	8b9d                	andi	a5,a5,7
  20166a:	0ff7f613          	andi	a2,a5,255
  20166e:	fdc46683          	lwu	a3,-36(s0)
  201672:	03400793          	li	a5,52
  201676:	02f687b3          	mul	a5,a3,a5
  20167a:	97ba                	add	a5,a5,a4
  20167c:	8732                	mv	a4,a2
  20167e:	00f77613          	andi	a2,a4,15
  201682:	53d8                	lw	a4,36(a5)
  201684:	9b41                	andi	a4,a4,-16
  201686:	86ba                	mv	a3,a4
  201688:	8732                	mv	a4,a2
  20168a:	8f55                	or	a4,a4,a3
  20168c:	d3d8                	sw	a4,36(a5)
  20168e:	fec42783          	lw	a5,-20(s0)
  201692:	0037d79b          	srliw	a5,a5,0x3
  201696:	0007869b          	sext.w	a3,a5
  20169a:	002107b7          	lui	a5,0x210
  20169e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2016a2:	87b6                	mv	a5,a3
  2016a4:	8bbd                	andi	a5,a5,15
  2016a6:	0ff7f613          	andi	a2,a5,255
  2016aa:	fdc46683          	lwu	a3,-36(s0)
  2016ae:	03400793          	li	a5,52
  2016b2:	02f687b3          	mul	a5,a3,a5
  2016b6:	97ba                	add	a5,a5,a4
  2016b8:	8732                	mv	a4,a2
  2016ba:	8b3d                	andi	a4,a4,15
  2016bc:	0047171b          	slliw	a4,a4,0x4
  2016c0:	53d4                	lw	a3,36(a5)
  2016c2:	f0f6f693          	andi	a3,a3,-241
  2016c6:	8f55                	or	a4,a4,a3
  2016c8:	d3d8                	sw	a4,36(a5)
  2016ca:	002107b7          	lui	a5,0x210
  2016ce:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  2016d2:	002107b7          	lui	a5,0x210
  2016d6:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2016da:	fec46783          	lwu	a5,-20(s0)
  2016de:	078a                	slli	a5,a5,0x2
  2016e0:	97ba                	add	a5,a5,a4
  2016e2:	0007d703          	lhu	a4,0(a5)
  2016e6:	fdc46603          	lwu	a2,-36(s0)
  2016ea:	03400793          	li	a5,52
  2016ee:	02f607b3          	mul	a5,a2,a5
  2016f2:	97b6                	add	a5,a5,a3
  2016f4:	0087171b          	slliw	a4,a4,0x8
  2016f8:	53d0                	lw	a2,36(a5)
  2016fa:	ff0006b7          	lui	a3,0xff000
  2016fe:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  201702:	8ef1                	and	a3,a3,a2
  201704:	8f55                	or	a4,a4,a3
  201706:	d3d8                	sw	a4,36(a5)
  201708:	fe042783          	lw	a5,-32(s0)
  20170c:	2781                	sext.w	a5,a5
  20170e:	00f05f63          	blez	a5,20172c <SaveBadBlockTable+0x406>
  201712:	fe042783          	lw	a5,-32(s0)
  201716:	17c2                	slli	a5,a5,0x30
  201718:	93c1                	srli	a5,a5,0x30
  20171a:	0017979b          	slliw	a5,a5,0x1
  20171e:	17c2                	slli	a5,a5,0x30
  201720:	93c1                	srli	a5,a5,0x30
  201722:	37fd                	addiw	a5,a5,-1
  201724:	03079713          	slli	a4,a5,0x30
  201728:	9341                	srli	a4,a4,0x30
  20172a:	a011                	j	20172e <SaveBadBlockTable+0x408>
  20172c:	4701                	li	a4,0
  20172e:	002107b7          	lui	a5,0x210
  201732:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  201736:	fdc46603          	lwu	a2,-36(s0)
  20173a:	03400793          	li	a5,52
  20173e:	02f607b3          	mul	a5,a2,a5
  201742:	97b6                	add	a5,a5,a3
  201744:	02e79423          	sh	a4,40(a5)
  201748:	fdc42783          	lw	a5,-36(s0)
  20174c:	4581                	li	a1,0
  20174e:	853e                	mv	a0,a5
  201750:	4f7090ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  201754:	fec42783          	lw	a5,-20(s0)
  201758:	2785                	addiw	a5,a5,1
  20175a:	fef42623          	sw	a5,-20(s0)
  20175e:	fec42783          	lw	a5,-20(s0)
  201762:	0007871b          	sext.w	a4,a5
  201766:	03f00793          	li	a5,63
  20176a:	bee7f7e3          	bgeu	a5,a4,201358 <SaveBadBlockTable+0x32>
  20176e:	fe842783          	lw	a5,-24(s0)
  201772:	2785                	addiw	a5,a5,1
  201774:	fef42423          	sw	a5,-24(s0)
  201778:	fe042783          	lw	a5,-32(s0)
  20177c:	2785                	addiw	a5,a5,1
  20177e:	fef42023          	sw	a5,-32(s0)
  201782:	fe442703          	lw	a4,-28(s0)
  201786:	77f1                	lui	a5,0xffffc
  201788:	9fb9                	addw	a5,a5,a4
  20178a:	fef42223          	sw	a5,-28(s0)
  20178e:	fe442783          	lw	a5,-28(s0)
  201792:	2781                	sext.w	a5,a5
  201794:	baf04fe3          	bgtz	a5,201352 <SaveBadBlockTable+0x2c>
  201798:	56f030ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  20179c:	fe042623          	sw	zero,-20(s0)
  2017a0:	a025                	j	2017c8 <SaveBadBlockTable+0x4a2>
  2017a2:	fec46783          	lwu	a5,-20(s0)
  2017a6:	fc843703          	ld	a4,-56(s0)
  2017aa:	97ba                	add	a5,a5,a4
  2017ac:	0007c783          	lbu	a5,0(a5) # ffffffffffffc000 <g_nvmeTask+0xffffffffffdebb98>
  2017b0:	e799                	bnez	a5,2017be <SaveBadBlockTable+0x498>
  2017b2:	0020f7b7          	lui	a5,0x20f
  2017b6:	de878513          	addi	a0,a5,-536 # 20ede8 <nvme_main+0x332>
  2017ba:	5ff020ef          	jal	ra,2045b8 <cpl_print>
  2017be:	fec42783          	lw	a5,-20(s0)
  2017c2:	2785                	addiw	a5,a5,1
  2017c4:	fef42623          	sw	a5,-20(s0)
  2017c8:	fec42783          	lw	a5,-20(s0)
  2017cc:	0007871b          	sext.w	a4,a5
  2017d0:	03f00793          	li	a5,63
  2017d4:	fce7f7e3          	bgeu	a5,a4,2017a2 <SaveBadBlockTable+0x47c>
  2017d8:	0001                	nop
  2017da:	0001                	nop
  2017dc:	60a6                	ld	ra,72(sp)
  2017de:	6406                	ld	s0,64(sp)
  2017e0:	6161                	addi	sp,sp,80
  2017e2:	8082                	ret

00000000002017e4 <RecoverBadBlockTable>:
  2017e4:	d7010113          	addi	sp,sp,-656
  2017e8:	28113423          	sd	ra,648(sp)
  2017ec:	28813023          	sd	s0,640(sp)
  2017f0:	0d00                	addi	s0,sp,656
  2017f2:	87aa                	mv	a5,a0
  2017f4:	d6f42e23          	sw	a5,-644(s0)
  2017f8:	d7c42783          	lw	a5,-644(s0)
  2017fc:	fef42023          	sw	a5,-32(s0)
  201800:	6791                	lui	a5,0x4
  201802:	10078793          	addi	a5,a5,256 # 4100 <start-0x1fbf00>
  201806:	fcf42e23          	sw	a5,-36(s0)
  20180a:	fdc42783          	lw	a5,-36(s0)
  20180e:	0067979b          	slliw	a5,a5,0x6
  201812:	2781                	sext.w	a5,a5
  201814:	fe042703          	lw	a4,-32(s0)
  201818:	9fb9                	addw	a5,a5,a4
  20181a:	fcf42c23          	sw	a5,-40(s0)
  20181e:	6791                	lui	a5,0x4
  201820:	68078793          	addi	a5,a5,1664 # 4680 <start-0x1fb980>
  201824:	fcf42a23          	sw	a5,-44(s0)
  201828:	fe042623          	sw	zero,-20(s0)
  20182c:	a8b1                	j	201888 <RecoverBadBlockTable+0xa4>
  20182e:	fec42703          	lw	a4,-20(s0)
  201832:	fdc42783          	lw	a5,-36(s0)
  201836:	02f707bb          	mulw	a5,a4,a5
  20183a:	2781                	sext.w	a5,a5
  20183c:	fe042703          	lw	a4,-32(s0)
  201840:	9fb9                	addw	a5,a5,a4
  201842:	0007871b          	sext.w	a4,a5
  201846:	fec46783          	lwu	a5,-20(s0)
  20184a:	078a                	slli	a5,a5,0x2
  20184c:	ff040693          	addi	a3,s0,-16
  201850:	97b6                	add	a5,a5,a3
  201852:	ece7ac23          	sw	a4,-296(a5)
  201856:	fec42703          	lw	a4,-20(s0)
  20185a:	fd442783          	lw	a5,-44(s0)
  20185e:	02f707bb          	mulw	a5,a4,a5
  201862:	2781                	sext.w	a5,a5
  201864:	fd842703          	lw	a4,-40(s0)
  201868:	9fb9                	addw	a5,a5,a4
  20186a:	0007871b          	sext.w	a4,a5
  20186e:	fec46783          	lwu	a5,-20(s0)
  201872:	078a                	slli	a5,a5,0x2
  201874:	ff040693          	addi	a3,s0,-16
  201878:	97b6                	add	a5,a5,a3
  20187a:	dce7ac23          	sw	a4,-552(a5)
  20187e:	fec42783          	lw	a5,-20(s0)
  201882:	2785                	addiw	a5,a5,1
  201884:	fef42623          	sw	a5,-20(s0)
  201888:	fec42783          	lw	a5,-20(s0)
  20188c:	0007871b          	sext.w	a4,a5
  201890:	03f00793          	li	a5,63
  201894:	f8e7fde3          	bgeu	a5,a4,20182e <RecoverBadBlockTable+0x4a>
  201898:	fdc42703          	lw	a4,-36(s0)
  20189c:	ec840793          	addi	a5,s0,-312
  2018a0:	85ba                	mv	a1,a4
  2018a2:	853e                	mv	a0,a5
  2018a4:	970ff0ef          	jal	ra,200a14 <ReadBadBlockTable>
  2018a8:	fe042223          	sw	zero,-28(s0)
  2018ac:	fe042623          	sw	zero,-20(s0)
  2018b0:	a239                	j	2019be <RecoverBadBlockTable+0x1da>
  2018b2:	fec46783          	lwu	a5,-20(s0)
  2018b6:	078a                	slli	a5,a5,0x2
  2018b8:	ff040713          	addi	a4,s0,-16
  2018bc:	97ba                	add	a5,a5,a4
  2018be:	ed87a783          	lw	a5,-296(a5)
  2018c2:	1782                	slli	a5,a5,0x20
  2018c4:	9381                	srli	a5,a5,0x20
  2018c6:	fcf43423          	sd	a5,-56(s0)
  2018ca:	fc843783          	ld	a5,-56(s0)
  2018ce:	0007c783          	lbu	a5,0(a5)
  2018d2:	cb89                	beqz	a5,2018e4 <RecoverBadBlockTable+0x100>
  2018d4:	fc843783          	ld	a5,-56(s0)
  2018d8:	0007c783          	lbu	a5,0(a5)
  2018dc:	873e                	mv	a4,a5
  2018de:	4785                	li	a5,1
  2018e0:	0af71a63          	bne	a4,a5,201994 <RecoverBadBlockTable+0x1b0>
  2018e4:	0020f7b7          	lui	a5,0x20f
  2018e8:	e1878513          	addi	a0,a5,-488 # 20ee18 <nvme_main+0x362>
  2018ec:	4cd020ef          	jal	ra,2045b8 <cpl_print>
  2018f0:	fec46783          	lwu	a5,-20(s0)
  2018f4:	ff040713          	addi	a4,s0,-16
  2018f8:	97ba                	add	a5,a5,a4
  2018fa:	4705                	li	a4,1
  2018fc:	d8e78c23          	sb	a4,-616(a5)
  201900:	fe042423          	sw	zero,-24(s0)
  201904:	a885                	j	201974 <RecoverBadBlockTable+0x190>
  201906:	fec46783          	lwu	a5,-20(s0)
  20190a:	078a                	slli	a5,a5,0x2
  20190c:	ff040713          	addi	a4,s0,-16
  201910:	97ba                	add	a5,a5,a4
  201912:	ed87a783          	lw	a5,-296(a5)
  201916:	fe842703          	lw	a4,-24(s0)
  20191a:	9fb9                	addw	a5,a5,a4
  20191c:	2781                	sext.w	a5,a5
  20191e:	1782                	slli	a5,a5,0x20
  201920:	9381                	srli	a5,a5,0x20
  201922:	fcf43423          	sd	a5,-56(s0)
  201926:	fc843783          	ld	a5,-56(s0)
  20192a:	0007c683          	lbu	a3,0(a5)
  20192e:	002107b7          	lui	a5,0x210
  201932:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  201936:	87b6                	mv	a5,a3
  201938:	8b85                	andi	a5,a5,1
  20193a:	0ff7f593          	andi	a1,a5,255
  20193e:	fe846783          	lwu	a5,-24(s0)
  201942:	fec46603          	lwu	a2,-20(s0)
  201946:	6689                	lui	a3,0x2
  201948:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  20194c:	02d606b3          	mul	a3,a2,a3
  201950:	97b6                	add	a5,a5,a3
  201952:	078a                	slli	a5,a5,0x2
  201954:	97ba                	add	a5,a5,a4
  201956:	872e                	mv	a4,a1
  201958:	8b05                	andi	a4,a4,1
  20195a:	0107171b          	slliw	a4,a4,0x10
  20195e:	4390                	lw	a2,0(a5)
  201960:	76c1                	lui	a3,0xffff0
  201962:	16fd                	addi	a3,a3,-1
  201964:	8ef1                	and	a3,a3,a2
  201966:	8f55                	or	a4,a4,a3
  201968:	c398                	sw	a4,0(a5)
  20196a:	fe842783          	lw	a5,-24(s0)
  20196e:	2785                	addiw	a5,a5,1
  201970:	fef42423          	sw	a5,-24(s0)
  201974:	fe842783          	lw	a5,-24(s0)
  201978:	0007871b          	sext.w	a4,a5
  20197c:	6789                	lui	a5,0x2
  20197e:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  201982:	f8e7f2e3          	bgeu	a5,a4,201906 <RecoverBadBlockTable+0x122>
  201986:	0020f7b7          	lui	a5,0x20f
  20198a:	e4878513          	addi	a0,a5,-440 # 20ee48 <nvme_main+0x392>
  20198e:	42b020ef          	jal	ra,2045b8 <cpl_print>
  201992:	a00d                	j	2019b4 <RecoverBadBlockTable+0x1d0>
  201994:	0020f7b7          	lui	a5,0x20f
  201998:	e7878513          	addi	a0,a5,-392 # 20ee78 <nvme_main+0x3c2>
  20199c:	41d020ef          	jal	ra,2045b8 <cpl_print>
  2019a0:	fec46783          	lwu	a5,-20(s0)
  2019a4:	ff040713          	addi	a4,s0,-16
  2019a8:	97ba                	add	a5,a5,a4
  2019aa:	d8078c23          	sb	zero,-616(a5)
  2019ae:	4785                	li	a5,1
  2019b0:	fef42223          	sw	a5,-28(s0)
  2019b4:	fec42783          	lw	a5,-20(s0)
  2019b8:	2785                	addiw	a5,a5,1
  2019ba:	fef42623          	sw	a5,-20(s0)
  2019be:	fec42783          	lw	a5,-20(s0)
  2019c2:	0007871b          	sext.w	a4,a5
  2019c6:	03f00793          	li	a5,63
  2019ca:	eee7f4e3          	bgeu	a5,a4,2018b2 <RecoverBadBlockTable+0xce>
  2019ce:	fe442783          	lw	a5,-28(s0)
  2019d2:	0007871b          	sext.w	a4,a5
  2019d6:	4785                	li	a5,1
  2019d8:	02f71a63          	bne	a4,a5,201a0c <RecoverBadBlockTable+0x228>
  2019dc:	fd442703          	lw	a4,-44(s0)
  2019e0:	dc840693          	addi	a3,s0,-568
  2019e4:	fdc42603          	lw	a2,-36(s0)
  2019e8:	ec840593          	addi	a1,s0,-312
  2019ec:	d8840793          	addi	a5,s0,-632
  2019f0:	853e                	mv	a0,a5
  2019f2:	ad6ff0ef          	jal	ra,200cc8 <FindBadBlock>
  2019f6:	fdc42683          	lw	a3,-36(s0)
  2019fa:	ec840713          	addi	a4,s0,-312
  2019fe:	d8840793          	addi	a5,s0,-632
  201a02:	8636                	mv	a2,a3
  201a04:	85ba                	mv	a1,a4
  201a06:	853e                	mv	a0,a5
  201a08:	91fff0ef          	jal	ra,201326 <SaveBadBlockTable>
  201a0c:	fe042623          	sw	zero,-20(s0)
  201a10:	a01d                	j	201a36 <RecoverBadBlockTable+0x252>
  201a12:	002107b7          	lui	a5,0x210
  201a16:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  201a1a:	fec46783          	lwu	a5,-20(s0)
  201a1e:	078a                	slli	a5,a5,0x2
  201a20:	97ba                	add	a5,a5,a4
  201a22:	4394                	lw	a3,0(a5)
  201a24:	7741                	lui	a4,0xffff0
  201a26:	177d                	addi	a4,a4,-1
  201a28:	8f75                	and	a4,a4,a3
  201a2a:	c398                	sw	a4,0(a5)
  201a2c:	fec42783          	lw	a5,-20(s0)
  201a30:	2785                	addiw	a5,a5,1
  201a32:	fef42623          	sw	a5,-20(s0)
  201a36:	fec42783          	lw	a5,-20(s0)
  201a3a:	0007871b          	sext.w	a4,a5
  201a3e:	03f00793          	li	a5,63
  201a42:	fce7f8e3          	bgeu	a5,a4,201a12 <RecoverBadBlockTable+0x22e>
  201a46:	0001                	nop
  201a48:	0001                	nop
  201a4a:	28813083          	ld	ra,648(sp)
  201a4e:	28013403          	ld	s0,640(sp)
  201a52:	29010113          	addi	sp,sp,656
  201a56:	8082                	ret

0000000000201a58 <EraseTotalBlockSpace>:
  201a58:	1101                	addi	sp,sp,-32
  201a5a:	ec06                	sd	ra,24(sp)
  201a5c:	e822                	sd	s0,16(sp)
  201a5e:	1000                	addi	s0,sp,32
  201a60:	0020f7b7          	lui	a5,0x20f
  201a64:	eb078513          	addi	a0,a5,-336 # 20eeb0 <nvme_main+0x3fa>
  201a68:	351020ef          	jal	ra,2045b8 <cpl_print>
  201a6c:	fe042623          	sw	zero,-20(s0)
  201a70:	aa6d                	j	201c2a <EraseTotalBlockSpace+0x1d2>
  201a72:	fe042423          	sw	zero,-24(s0)
  201a76:	aa69                	j	201c10 <EraseTotalBlockSpace+0x1b8>
  201a78:	0e9010ef          	jal	ra,203360 <GetFromFreeReqQ>
  201a7c:	87aa                	mv	a5,a0
  201a7e:	fef42223          	sw	a5,-28(s0)
  201a82:	002107b7          	lui	a5,0x210
  201a86:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201a8a:	fe446683          	lwu	a3,-28(s0)
  201a8e:	03400793          	li	a5,52
  201a92:	02f687b3          	mul	a5,a3,a5
  201a96:	97ba                	add	a5,a5,a4
  201a98:	4398                	lw	a4,0(a5)
  201a9a:	9b41                	andi	a4,a4,-16
  201a9c:	00176713          	ori	a4,a4,1
  201aa0:	c398                	sw	a4,0(a5)
  201aa2:	002107b7          	lui	a5,0x210
  201aa6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201aaa:	fe446683          	lwu	a3,-28(s0)
  201aae:	03400793          	li	a5,52
  201ab2:	02f687b3          	mul	a5,a3,a5
  201ab6:	97ba                	add	a5,a5,a4
  201ab8:	4731                	li	a4,12
  201aba:	00e780a3          	sb	a4,1(a5)
  201abe:	002107b7          	lui	a5,0x210
  201ac2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201ac6:	fe446683          	lwu	a3,-28(s0)
  201aca:	03400793          	li	a5,52
  201ace:	02f687b3          	mul	a5,a3,a5
  201ad2:	97ba                	add	a5,a5,a4
  201ad4:	4b98                	lw	a4,16(a5)
  201ad6:	9b4d                	andi	a4,a4,-13
  201ad8:	00476713          	ori	a4,a4,4
  201adc:	cb98                	sw	a4,16(a5)
  201ade:	002107b7          	lui	a5,0x210
  201ae2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201ae6:	fe446683          	lwu	a3,-28(s0)
  201aea:	03400793          	li	a5,52
  201aee:	02f687b3          	mul	a5,a3,a5
  201af2:	97ba                	add	a5,a5,a4
  201af4:	4b98                	lw	a4,16(a5)
  201af6:	00376713          	ori	a4,a4,3
  201afa:	cb98                	sw	a4,16(a5)
  201afc:	002107b7          	lui	a5,0x210
  201b00:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201b04:	fe446683          	lwu	a3,-28(s0)
  201b08:	03400793          	li	a5,52
  201b0c:	02f687b3          	mul	a5,a3,a5
  201b10:	97ba                	add	a5,a5,a4
  201b12:	4b98                	lw	a4,16(a5)
  201b14:	fbf77713          	andi	a4,a4,-65
  201b18:	cb98                	sw	a4,16(a5)
  201b1a:	002107b7          	lui	a5,0x210
  201b1e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201b22:	fe446683          	lwu	a3,-28(s0)
  201b26:	03400793          	li	a5,52
  201b2a:	02f687b3          	mul	a5,a3,a5
  201b2e:	97ba                	add	a5,a5,a4
  201b30:	4b98                	lw	a4,16(a5)
  201b32:	08076713          	ori	a4,a4,128
  201b36:	cb98                	sw	a4,16(a5)
  201b38:	fe842783          	lw	a5,-24(s0)
  201b3c:	8bbd                	andi	a5,a5,15
  201b3e:	0ff7f793          	andi	a5,a5,255
  201b42:	00210737          	lui	a4,0x210
  201b46:	18073703          	ld	a4,384(a4) # 210180 <reqPoolPtr>
  201b4a:	8b9d                	andi	a5,a5,7
  201b4c:	0ff7f613          	andi	a2,a5,255
  201b50:	fe446683          	lwu	a3,-28(s0)
  201b54:	03400793          	li	a5,52
  201b58:	02f687b3          	mul	a5,a3,a5
  201b5c:	97ba                	add	a5,a5,a4
  201b5e:	8732                	mv	a4,a2
  201b60:	00f77613          	andi	a2,a4,15
  201b64:	53d8                	lw	a4,36(a5)
  201b66:	9b41                	andi	a4,a4,-16
  201b68:	86ba                	mv	a3,a4
  201b6a:	8732                	mv	a4,a2
  201b6c:	8f55                	or	a4,a4,a3
  201b6e:	d3d8                	sw	a4,36(a5)
  201b70:	fe842783          	lw	a5,-24(s0)
  201b74:	0037d79b          	srliw	a5,a5,0x3
  201b78:	0007869b          	sext.w	a3,a5
  201b7c:	002107b7          	lui	a5,0x210
  201b80:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201b84:	87b6                	mv	a5,a3
  201b86:	8bbd                	andi	a5,a5,15
  201b88:	0ff7f613          	andi	a2,a5,255
  201b8c:	fe446683          	lwu	a3,-28(s0)
  201b90:	03400793          	li	a5,52
  201b94:	02f687b3          	mul	a5,a3,a5
  201b98:	97ba                	add	a5,a5,a4
  201b9a:	8732                	mv	a4,a2
  201b9c:	8b3d                	andi	a4,a4,15
  201b9e:	0047171b          	slliw	a4,a4,0x4
  201ba2:	53d4                	lw	a3,36(a5)
  201ba4:	f0f6f693          	andi	a3,a3,-241
  201ba8:	8f55                	or	a4,a4,a3
  201baa:	d3d8                	sw	a4,36(a5)
  201bac:	002107b7          	lui	a5,0x210
  201bb0:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  201bb4:	fec42783          	lw	a5,-20(s0)
  201bb8:	03079713          	slli	a4,a5,0x30
  201bbc:	9341                	srli	a4,a4,0x30
  201bbe:	fe446603          	lwu	a2,-28(s0)
  201bc2:	03400793          	li	a5,52
  201bc6:	02f607b3          	mul	a5,a2,a5
  201bca:	97b6                	add	a5,a5,a3
  201bcc:	0087171b          	slliw	a4,a4,0x8
  201bd0:	53d0                	lw	a2,36(a5)
  201bd2:	ff0006b7          	lui	a3,0xff000
  201bd6:	0ff68693          	addi	a3,a3,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  201bda:	8ef1                	and	a3,a3,a2
  201bdc:	8f55                	or	a4,a4,a3
  201bde:	d3d8                	sw	a4,36(a5)
  201be0:	002107b7          	lui	a5,0x210
  201be4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201be8:	fe446683          	lwu	a3,-28(s0)
  201bec:	03400793          	li	a5,52
  201bf0:	02f687b3          	mul	a5,a3,a5
  201bf4:	97ba                	add	a5,a5,a4
  201bf6:	02079423          	sh	zero,40(a5)
  201bfa:	fe442783          	lw	a5,-28(s0)
  201bfe:	4581                	li	a1,0
  201c00:	853e                	mv	a0,a5
  201c02:	045090ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  201c06:	fe842783          	lw	a5,-24(s0)
  201c0a:	2785                	addiw	a5,a5,1
  201c0c:	fef42423          	sw	a5,-24(s0)
  201c10:	fe842783          	lw	a5,-24(s0)
  201c14:	0007871b          	sext.w	a4,a5
  201c18:	03f00793          	li	a5,63
  201c1c:	e4e7fee3          	bgeu	a5,a4,201a78 <EraseTotalBlockSpace+0x20>
  201c20:	fec42783          	lw	a5,-20(s0)
  201c24:	2785                	addiw	a5,a5,1
  201c26:	fef42623          	sw	a5,-20(s0)
  201c2a:	fec42783          	lw	a5,-20(s0)
  201c2e:	0007871b          	sext.w	a4,a5
  201c32:	6789                	lui	a5,0x2
  201c34:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  201c38:	e2e7fde3          	bgeu	a5,a4,201a72 <EraseTotalBlockSpace+0x1a>
  201c3c:	0cb030ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  201c40:	0020f7b7          	lui	a5,0x20f
  201c44:	ee878513          	addi	a0,a5,-280 # 20eee8 <nvme_main+0x432>
  201c48:	171020ef          	jal	ra,2045b8 <cpl_print>
  201c4c:	0001                	nop
  201c4e:	60e2                	ld	ra,24(sp)
  201c50:	6442                	ld	s0,16(sp)
  201c52:	6105                	addi	sp,sp,32
  201c54:	8082                	ret

0000000000201c56 <EraseUserBlockSpace>:
  201c56:	1101                	addi	sp,sp,-32
  201c58:	ec06                	sd	ra,24(sp)
  201c5a:	e822                	sd	s0,16(sp)
  201c5c:	1000                	addi	s0,sp,32
  201c5e:	0020f7b7          	lui	a5,0x20f
  201c62:	ef078513          	addi	a0,a5,-272 # 20eef0 <nvme_main+0x43a>
  201c66:	153020ef          	jal	ra,2045b8 <cpl_print>
  201c6a:	fe042623          	sw	zero,-20(s0)
  201c6e:	aa91                	j	201dc2 <EraseUserBlockSpace+0x16c>
  201c70:	fe042423          	sw	zero,-24(s0)
  201c74:	aa15                	j	201da8 <EraseUserBlockSpace+0x152>
  201c76:	002107b7          	lui	a5,0x210
  201c7a:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  201c7e:	fec46783          	lwu	a5,-20(s0)
  201c82:	fe846683          	lwu	a3,-24(s0)
  201c86:	873e                	mv	a4,a5
  201c88:	0706                	slli	a4,a4,0x1
  201c8a:	973e                	add	a4,a4,a5
  201c8c:	00271793          	slli	a5,a4,0x2
  201c90:	873e                	mv	a4,a5
  201c92:	87b6                	mv	a5,a3
  201c94:	0786                	slli	a5,a5,0x1
  201c96:	97b6                	add	a5,a5,a3
  201c98:	07be                	slli	a5,a5,0xf
  201c9a:	97ba                	add	a5,a5,a4
  201c9c:	97b2                	add	a5,a5,a2
  201c9e:	439c                	lw	a5,0(a5)
  201ca0:	8b85                	andi	a5,a5,1
  201ca2:	0ff7f793          	andi	a5,a5,255
  201ca6:	0e079c63          	bnez	a5,201d9e <EraseUserBlockSpace+0x148>
  201caa:	6b6010ef          	jal	ra,203360 <GetFromFreeReqQ>
  201cae:	87aa                	mv	a5,a0
  201cb0:	fef42223          	sw	a5,-28(s0)
  201cb4:	002107b7          	lui	a5,0x210
  201cb8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201cbc:	fe446683          	lwu	a3,-28(s0)
  201cc0:	03400793          	li	a5,52
  201cc4:	02f687b3          	mul	a5,a3,a5
  201cc8:	97ba                	add	a5,a5,a4
  201cca:	4398                	lw	a4,0(a5)
  201ccc:	9b41                	andi	a4,a4,-16
  201cce:	00176713          	ori	a4,a4,1
  201cd2:	c398                	sw	a4,0(a5)
  201cd4:	002107b7          	lui	a5,0x210
  201cd8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201cdc:	fe446683          	lwu	a3,-28(s0)
  201ce0:	03400793          	li	a5,52
  201ce4:	02f687b3          	mul	a5,a3,a5
  201ce8:	97ba                	add	a5,a5,a4
  201cea:	4731                	li	a4,12
  201cec:	00e780a3          	sb	a4,1(a5)
  201cf0:	002107b7          	lui	a5,0x210
  201cf4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201cf8:	fe446683          	lwu	a3,-28(s0)
  201cfc:	03400793          	li	a5,52
  201d00:	02f687b3          	mul	a5,a3,a5
  201d04:	97ba                	add	a5,a5,a4
  201d06:	4b98                	lw	a4,16(a5)
  201d08:	9b4d                	andi	a4,a4,-13
  201d0a:	cb98                	sw	a4,16(a5)
  201d0c:	002107b7          	lui	a5,0x210
  201d10:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201d14:	fe446683          	lwu	a3,-28(s0)
  201d18:	03400793          	li	a5,52
  201d1c:	02f687b3          	mul	a5,a3,a5
  201d20:	97ba                	add	a5,a5,a4
  201d22:	4b98                	lw	a4,16(a5)
  201d24:	00376713          	ori	a4,a4,3
  201d28:	cb98                	sw	a4,16(a5)
  201d2a:	002107b7          	lui	a5,0x210
  201d2e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201d32:	fe446683          	lwu	a3,-28(s0)
  201d36:	03400793          	li	a5,52
  201d3a:	02f687b3          	mul	a5,a3,a5
  201d3e:	97ba                	add	a5,a5,a4
  201d40:	4b98                	lw	a4,16(a5)
  201d42:	fbf77713          	andi	a4,a4,-65
  201d46:	cb98                	sw	a4,16(a5)
  201d48:	002107b7          	lui	a5,0x210
  201d4c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  201d50:	fe446683          	lwu	a3,-28(s0)
  201d54:	03400793          	li	a5,52
  201d58:	02f687b3          	mul	a5,a3,a5
  201d5c:	97ba                	add	a5,a5,a4
  201d5e:	4b98                	lw	a4,16(a5)
  201d60:	f7f77713          	andi	a4,a4,-129
  201d64:	cb98                	sw	a4,16(a5)
  201d66:	fec42783          	lw	a5,-20(s0)
  201d6a:	00d7979b          	slliw	a5,a5,0xd
  201d6e:	2781                	sext.w	a5,a5
  201d70:	00210737          	lui	a4,0x210
  201d74:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  201d78:	fe842703          	lw	a4,-24(s0)
  201d7c:	9fb9                	addw	a5,a5,a4
  201d7e:	0007871b          	sext.w	a4,a5
  201d82:	fe446603          	lwu	a2,-28(s0)
  201d86:	03400793          	li	a5,52
  201d8a:	02f607b3          	mul	a5,a2,a5
  201d8e:	97b6                	add	a5,a5,a3
  201d90:	d3d8                	sw	a4,36(a5)
  201d92:	fe442783          	lw	a5,-28(s0)
  201d96:	4581                	li	a1,0
  201d98:	853e                	mv	a0,a5
  201d9a:	6ac090ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  201d9e:	fe842783          	lw	a5,-24(s0)
  201da2:	2785                	addiw	a5,a5,1
  201da4:	fef42423          	sw	a5,-24(s0)
  201da8:	fe842783          	lw	a5,-24(s0)
  201dac:	0007871b          	sext.w	a4,a5
  201db0:	03f00793          	li	a5,63
  201db4:	ece7f1e3          	bgeu	a5,a4,201c76 <EraseUserBlockSpace+0x20>
  201db8:	fec42783          	lw	a5,-20(s0)
  201dbc:	2785                	addiw	a5,a5,1
  201dbe:	fef42623          	sw	a5,-20(s0)
  201dc2:	fec42783          	lw	a5,-20(s0)
  201dc6:	0007871b          	sext.w	a4,a5
  201dca:	6789                	lui	a5,0x2
  201dcc:	eaf762e3          	bltu	a4,a5,201c70 <EraseUserBlockSpace+0x1a>
  201dd0:	736030ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  201dd4:	0020f7b7          	lui	a5,0x20f
  201dd8:	ee878513          	addi	a0,a5,-280 # 20eee8 <nvme_main+0x432>
  201ddc:	7dc020ef          	jal	ra,2045b8 <cpl_print>
  201de0:	0001                	nop
  201de2:	60e2                	ld	ra,24(sp)
  201de4:	6442                	ld	s0,16(sp)
  201de6:	6105                	addi	sp,sp,32
  201de8:	8082                	ret

0000000000201dea <InitBlockDieMap>:
  201dea:	1101                	addi	sp,sp,-32
  201dec:	ec06                	sd	ra,24(sp)
  201dee:	e822                	sd	s0,16(sp)
  201df0:	1000                	addi	s0,sp,32
  201df2:	4785                	li	a5,1
  201df4:	fef405a3          	sb	a5,-21(s0)
  201df8:	0020f7b7          	lui	a5,0x20f
  201dfc:	f2078513          	addi	a0,a5,-224 # 20ef20 <nvme_main+0x46a>
  201e00:	7b8020ef          	jal	ra,2045b8 <cpl_print>
  201e04:	88dfe0ef          	jal	ra,200690 <InitDieMap>
  201e08:	11144537          	lui	a0,0x11144
  201e0c:	9d9ff0ef          	jal	ra,2017e4 <RecoverBadBlockTable>
  201e10:	fe042623          	sw	zero,-20(s0)
  201e14:	a099                	j	201e5a <InitBlockDieMap+0x70>
  201e16:	002107b7          	lui	a5,0x210
  201e1a:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  201e1e:	002107b7          	lui	a5,0x210
  201e22:	f587b683          	ld	a3,-168(a5) # 20ff58 <bbtInfoMapPtr>
  201e26:	fec46783          	lwu	a5,-20(s0)
  201e2a:	078a                	slli	a5,a5,0x2
  201e2c:	97b6                	add	a5,a5,a3
  201e2e:	0007d783          	lhu	a5,0(a5)
  201e32:	2781                	sext.w	a5,a5
  201e34:	fec46603          	lwu	a2,-20(s0)
  201e38:	6689                	lui	a3,0x2
  201e3a:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  201e3e:	02d606b3          	mul	a3,a2,a3
  201e42:	97b6                	add	a5,a5,a3
  201e44:	078a                	slli	a5,a5,0x2
  201e46:	97ba                	add	a5,a5,a4
  201e48:	4394                	lw	a3,0(a5)
  201e4a:	6741                	lui	a4,0x10
  201e4c:	8f55                	or	a4,a4,a3
  201e4e:	c398                	sw	a4,0(a5)
  201e50:	fec42783          	lw	a5,-20(s0)
  201e54:	2785                	addiw	a5,a5,1
  201e56:	fef42623          	sw	a5,-20(s0)
  201e5a:	fec42783          	lw	a5,-20(s0)
  201e5e:	0007871b          	sext.w	a4,a5
  201e62:	03f00793          	li	a5,63
  201e66:	fae7f8e3          	bgeu	a5,a4,201e16 <InitBlockDieMap+0x2c>
  201e6a:	bb2fe0ef          	jal	ra,20021c <RemapBadBlock>
  201e6e:	8a5fe0ef          	jal	ra,200712 <InitBlockMap>
  201e72:	feb44783          	lbu	a5,-21(s0)
  201e76:	0ff7f793          	andi	a5,a5,255
  201e7a:	c399                	beqz	a5,201e80 <InitBlockDieMap+0x96>
  201e7c:	ddbff0ef          	jal	ra,201c56 <EraseUserBlockSpace>
  201e80:	afbfe0ef          	jal	ra,20097a <InitCurrentBlockOfDieMap>
  201e84:	0001                	nop
  201e86:	60e2                	ld	ra,24(sp)
  201e88:	6442                	ld	s0,16(sp)
  201e8a:	6105                	addi	sp,sp,32
  201e8c:	8082                	ret

0000000000201e8e <AddrTransRead>:
  201e8e:	7179                	addi	sp,sp,-48
  201e90:	f406                	sd	ra,40(sp)
  201e92:	f022                	sd	s0,32(sp)
  201e94:	1800                	addi	s0,sp,48
  201e96:	87aa                	mv	a5,a0
  201e98:	fcf42e23          	sw	a5,-36(s0)
  201e9c:	fdc42783          	lw	a5,-36(s0)
  201ea0:	0007871b          	sext.w	a4,a5
  201ea4:	040007b7          	lui	a5,0x4000
  201ea8:	02f77963          	bgeu	a4,a5,201eda <AddrTransRead+0x4c>
  201eac:	002107b7          	lui	a5,0x210
  201eb0:	f387b703          	ld	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  201eb4:	fdc46783          	lwu	a5,-36(s0)
  201eb8:	078a                	slli	a5,a5,0x2
  201eba:	97ba                	add	a5,a5,a4
  201ebc:	439c                	lw	a5,0(a5)
  201ebe:	fef42623          	sw	a5,-20(s0)
  201ec2:	fec42783          	lw	a5,-20(s0)
  201ec6:	0007871b          	sext.w	a4,a5
  201eca:	57fd                	li	a5,-1
  201ecc:	00f70563          	beq	a4,a5,201ed6 <AddrTransRead+0x48>
  201ed0:	fec42783          	lw	a5,-20(s0)
  201ed4:	a809                	j	201ee6 <AddrTransRead+0x58>
  201ed6:	57fd                	li	a5,-1
  201ed8:	a039                	j	201ee6 <AddrTransRead+0x58>
  201eda:	0020f7b7          	lui	a5,0x20f
  201ede:	f5078513          	addi	a0,a5,-176 # 20ef50 <nvme_main+0x49a>
  201ee2:	6d6020ef          	jal	ra,2045b8 <cpl_print>
  201ee6:	853e                	mv	a0,a5
  201ee8:	70a2                	ld	ra,40(sp)
  201eea:	7402                	ld	s0,32(sp)
  201eec:	6145                	addi	sp,sp,48
  201eee:	8082                	ret

0000000000201ef0 <AddrTransWrite>:
  201ef0:	7179                	addi	sp,sp,-48
  201ef2:	f406                	sd	ra,40(sp)
  201ef4:	f022                	sd	s0,32(sp)
  201ef6:	1800                	addi	s0,sp,48
  201ef8:	87aa                	mv	a5,a0
  201efa:	fcf42e23          	sw	a5,-36(s0)
  201efe:	fdc42783          	lw	a5,-36(s0)
  201f02:	0007871b          	sext.w	a4,a5
  201f06:	040007b7          	lui	a5,0x4000
  201f0a:	04f77563          	bgeu	a4,a5,201f54 <AddrTransWrite+0x64>
  201f0e:	fdc42783          	lw	a5,-36(s0)
  201f12:	853e                	mv	a0,a5
  201f14:	600000ef          	jal	ra,202514 <InvalidateOldVsa>
  201f18:	052000ef          	jal	ra,201f6a <FindFreeVirtualSlice>
  201f1c:	87aa                	mv	a5,a0
  201f1e:	fef42623          	sw	a5,-20(s0)
  201f22:	002107b7          	lui	a5,0x210
  201f26:	f387b703          	ld	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  201f2a:	fdc46783          	lwu	a5,-36(s0)
  201f2e:	078a                	slli	a5,a5,0x2
  201f30:	97ba                	add	a5,a5,a4
  201f32:	fec42703          	lw	a4,-20(s0)
  201f36:	c398                	sw	a4,0(a5)
  201f38:	002107b7          	lui	a5,0x210
  201f3c:	f507b703          	ld	a4,-176(a5) # 20ff50 <virtualSliceMapPtr>
  201f40:	fec46783          	lwu	a5,-20(s0)
  201f44:	078a                	slli	a5,a5,0x2
  201f46:	97ba                	add	a5,a5,a4
  201f48:	fdc42703          	lw	a4,-36(s0)
  201f4c:	c398                	sw	a4,0(a5)
  201f4e:	fec42783          	lw	a5,-20(s0)
  201f52:	a039                	j	201f60 <AddrTransWrite+0x70>
  201f54:	0020f7b7          	lui	a5,0x20f
  201f58:	fb078513          	addi	a0,a5,-80 # 20efb0 <nvme_main+0x4fa>
  201f5c:	65c020ef          	jal	ra,2045b8 <cpl_print>
  201f60:	853e                	mv	a0,a5
  201f62:	70a2                	ld	ra,40(sp)
  201f64:	7402                	ld	s0,32(sp)
  201f66:	6145                	addi	sp,sp,48
  201f68:	8082                	ret

0000000000201f6a <FindFreeVirtualSlice>:
  201f6a:	1101                	addi	sp,sp,-32
  201f6c:	ec06                	sd	ra,24(sp)
  201f6e:	e822                	sd	s0,16(sp)
  201f70:	1000                	addi	s0,sp,32
  201f72:	002107b7          	lui	a5,0x210
  201f76:	f307c783          	lbu	a5,-208(a5) # 20ff30 <sliceAllocationTargetDie>
  201f7a:	fef42423          	sw	a5,-24(s0)
  201f7e:	002107b7          	lui	a5,0x210
  201f82:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  201f86:	fe846703          	lwu	a4,-24(s0)
  201f8a:	87ba                	mv	a5,a4
  201f8c:	0786                	slli	a5,a5,0x1
  201f8e:	97ba                	add	a5,a5,a4
  201f90:	078a                	slli	a5,a5,0x2
  201f92:	97b6                	add	a5,a5,a3
  201f94:	0007d783          	lhu	a5,0(a5)
  201f98:	fef42623          	sw	a5,-20(s0)
  201f9c:	002107b7          	lui	a5,0x210
  201fa0:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  201fa4:	fec46783          	lwu	a5,-20(s0)
  201fa8:	fe846683          	lwu	a3,-24(s0)
  201fac:	873e                	mv	a4,a5
  201fae:	0706                	slli	a4,a4,0x1
  201fb0:	973e                	add	a4,a4,a5
  201fb2:	00271793          	slli	a5,a4,0x2
  201fb6:	873e                	mv	a4,a5
  201fb8:	87b6                	mv	a5,a3
  201fba:	0786                	slli	a5,a5,0x1
  201fbc:	97b6                	add	a5,a5,a3
  201fbe:	07be                	slli	a5,a5,0xf
  201fc0:	97ba                	add	a5,a5,a4
  201fc2:	97b2                	add	a5,a5,a2
  201fc4:	0047d783          	lhu	a5,4(a5)
  201fc8:	0007871b          	sext.w	a4,a5
  201fcc:	08000793          	li	a5,128
  201fd0:	14f71463          	bne	a4,a5,202118 <FindFreeVirtualSlice+0x1ae>
  201fd4:	fe842783          	lw	a5,-24(s0)
  201fd8:	4581                	li	a1,0
  201fda:	853e                	mv	a0,a5
  201fdc:	333000ef          	jal	ra,202b0e <GetFromFbList>
  201fe0:	87aa                	mv	a5,a0
  201fe2:	fef42623          	sw	a5,-20(s0)
  201fe6:	fec42783          	lw	a5,-20(s0)
  201fea:	0007871b          	sext.w	a4,a5
  201fee:	67c1                	lui	a5,0x10
  201ff0:	17fd                	addi	a5,a5,-1
  201ff2:	02f70563          	beq	a4,a5,20201c <FindFreeVirtualSlice+0xb2>
  201ff6:	002107b7          	lui	a5,0x210
  201ffa:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  201ffe:	fec42783          	lw	a5,-20(s0)
  202002:	03079693          	slli	a3,a5,0x30
  202006:	92c1                	srli	a3,a3,0x30
  202008:	fe846703          	lwu	a4,-24(s0)
  20200c:	87ba                	mv	a5,a4
  20200e:	0786                	slli	a5,a5,0x1
  202010:	97ba                	add	a5,a5,a4
  202012:	078a                	slli	a5,a5,0x2
  202014:	97b2                	add	a5,a5,a2
  202016:	00d79023          	sh	a3,0(a5)
  20201a:	a289                	j	20215c <FindFreeVirtualSlice+0x1f2>
  20201c:	fe842783          	lw	a5,-24(s0)
  202020:	853e                	mv	a0,a5
  202022:	0d80a0ef          	jal	ra,20c0fa <GarbageCollection>
  202026:	002107b7          	lui	a5,0x210
  20202a:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  20202e:	fe846703          	lwu	a4,-24(s0)
  202032:	87ba                	mv	a5,a4
  202034:	0786                	slli	a5,a5,0x1
  202036:	97ba                	add	a5,a5,a4
  202038:	078a                	slli	a5,a5,0x2
  20203a:	97b6                	add	a5,a5,a3
  20203c:	0007d783          	lhu	a5,0(a5)
  202040:	fef42623          	sw	a5,-20(s0)
  202044:	002107b7          	lui	a5,0x210
  202048:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  20204c:	fec46783          	lwu	a5,-20(s0)
  202050:	fe846683          	lwu	a3,-24(s0)
  202054:	873e                	mv	a4,a5
  202056:	0706                	slli	a4,a4,0x1
  202058:	973e                	add	a4,a4,a5
  20205a:	00271793          	slli	a5,a4,0x2
  20205e:	873e                	mv	a4,a5
  202060:	87b6                	mv	a5,a3
  202062:	0786                	slli	a5,a5,0x1
  202064:	97b6                	add	a5,a5,a3
  202066:	07be                	slli	a5,a5,0xf
  202068:	97ba                	add	a5,a5,a4
  20206a:	97b2                	add	a5,a5,a2
  20206c:	0047d783          	lhu	a5,4(a5)
  202070:	0007871b          	sext.w	a4,a5
  202074:	08000793          	li	a5,128
  202078:	04f71d63          	bne	a4,a5,2020d2 <FindFreeVirtualSlice+0x168>
  20207c:	fe842783          	lw	a5,-24(s0)
  202080:	4581                	li	a1,0
  202082:	853e                	mv	a0,a5
  202084:	28b000ef          	jal	ra,202b0e <GetFromFbList>
  202088:	87aa                	mv	a5,a0
  20208a:	fef42623          	sw	a5,-20(s0)
  20208e:	fec42783          	lw	a5,-20(s0)
  202092:	0007871b          	sext.w	a4,a5
  202096:	67c1                	lui	a5,0x10
  202098:	17fd                	addi	a5,a5,-1
  20209a:	02f70563          	beq	a4,a5,2020c4 <FindFreeVirtualSlice+0x15a>
  20209e:	002107b7          	lui	a5,0x210
  2020a2:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  2020a6:	fec42783          	lw	a5,-20(s0)
  2020aa:	03079693          	slli	a3,a5,0x30
  2020ae:	92c1                	srli	a3,a3,0x30
  2020b0:	fe846703          	lwu	a4,-24(s0)
  2020b4:	87ba                	mv	a5,a4
  2020b6:	0786                	slli	a5,a5,0x1
  2020b8:	97ba                	add	a5,a5,a4
  2020ba:	078a                	slli	a5,a5,0x2
  2020bc:	97b2                	add	a5,a5,a2
  2020be:	00d79023          	sh	a3,0(a5)
  2020c2:	a869                	j	20215c <FindFreeVirtualSlice+0x1f2>
  2020c4:	0020f7b7          	lui	a5,0x20f
  2020c8:	01078513          	addi	a0,a5,16 # 20f010 <nvme_main+0x55a>
  2020cc:	4ec020ef          	jal	ra,2045b8 <cpl_print>
  2020d0:	a071                	j	20215c <FindFreeVirtualSlice+0x1f2>
  2020d2:	002107b7          	lui	a5,0x210
  2020d6:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2020da:	fec46783          	lwu	a5,-20(s0)
  2020de:	fe846683          	lwu	a3,-24(s0)
  2020e2:	873e                	mv	a4,a5
  2020e4:	0706                	slli	a4,a4,0x1
  2020e6:	973e                	add	a4,a4,a5
  2020e8:	00271793          	slli	a5,a4,0x2
  2020ec:	873e                	mv	a4,a5
  2020ee:	87b6                	mv	a5,a3
  2020f0:	0786                	slli	a5,a5,0x1
  2020f2:	97b6                	add	a5,a5,a3
  2020f4:	07be                	slli	a5,a5,0xf
  2020f6:	97ba                	add	a5,a5,a4
  2020f8:	97b2                	add	a5,a5,a2
  2020fa:	0047d783          	lhu	a5,4(a5)
  2020fe:	0007871b          	sext.w	a4,a5
  202102:	08000793          	li	a5,128
  202106:	04e7fb63          	bgeu	a5,a4,20215c <FindFreeVirtualSlice+0x1f2>
  20210a:	0020f7b7          	lui	a5,0x20f
  20210e:	04878513          	addi	a0,a5,72 # 20f048 <nvme_main+0x592>
  202112:	4a6020ef          	jal	ra,2045b8 <cpl_print>
  202116:	a099                	j	20215c <FindFreeVirtualSlice+0x1f2>
  202118:	002107b7          	lui	a5,0x210
  20211c:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202120:	fec46783          	lwu	a5,-20(s0)
  202124:	fe846683          	lwu	a3,-24(s0)
  202128:	873e                	mv	a4,a5
  20212a:	0706                	slli	a4,a4,0x1
  20212c:	973e                	add	a4,a4,a5
  20212e:	00271793          	slli	a5,a4,0x2
  202132:	873e                	mv	a4,a5
  202134:	87b6                	mv	a5,a3
  202136:	0786                	slli	a5,a5,0x1
  202138:	97b6                	add	a5,a5,a3
  20213a:	07be                	slli	a5,a5,0xf
  20213c:	97ba                	add	a5,a5,a4
  20213e:	97b2                	add	a5,a5,a2
  202140:	0047d783          	lhu	a5,4(a5)
  202144:	0007871b          	sext.w	a4,a5
  202148:	08000793          	li	a5,128
  20214c:	00e7f863          	bgeu	a5,a4,20215c <FindFreeVirtualSlice+0x1f2>
  202150:	0020f7b7          	lui	a5,0x20f
  202154:	04878513          	addi	a0,a5,72 # 20f048 <nvme_main+0x592>
  202158:	460020ef          	jal	ra,2045b8 <cpl_print>
  20215c:	fec42783          	lw	a5,-20(s0)
  202160:	0077979b          	slliw	a5,a5,0x7
  202164:	0007861b          	sext.w	a2,a5
  202168:	002107b7          	lui	a5,0x210
  20216c:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202170:	fec46783          	lwu	a5,-20(s0)
  202174:	fe846683          	lwu	a3,-24(s0)
  202178:	873e                	mv	a4,a5
  20217a:	0706                	slli	a4,a4,0x1
  20217c:	973e                	add	a4,a4,a5
  20217e:	00271793          	slli	a5,a4,0x2
  202182:	873e                	mv	a4,a5
  202184:	87b6                	mv	a5,a3
  202186:	0786                	slli	a5,a5,0x1
  202188:	97b6                	add	a5,a5,a3
  20218a:	07be                	slli	a5,a5,0xf
  20218c:	97ba                	add	a5,a5,a4
  20218e:	97ae                	add	a5,a5,a1
  202190:	0047d783          	lhu	a5,4(a5)
  202194:	2781                	sext.w	a5,a5
  202196:	9fb1                	addw	a5,a5,a2
  202198:	2781                	sext.w	a5,a5
  20219a:	0067979b          	slliw	a5,a5,0x6
  20219e:	2781                	sext.w	a5,a5
  2021a0:	fe842703          	lw	a4,-24(s0)
  2021a4:	9fb9                	addw	a5,a5,a4
  2021a6:	fef42223          	sw	a5,-28(s0)
  2021aa:	002107b7          	lui	a5,0x210
  2021ae:	f487b683          	ld	a3,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2021b2:	fec46783          	lwu	a5,-20(s0)
  2021b6:	fe846603          	lwu	a2,-24(s0)
  2021ba:	873e                	mv	a4,a5
  2021bc:	0706                	slli	a4,a4,0x1
  2021be:	973e                	add	a4,a4,a5
  2021c0:	00271793          	slli	a5,a4,0x2
  2021c4:	873e                	mv	a4,a5
  2021c6:	87b2                	mv	a5,a2
  2021c8:	0786                	slli	a5,a5,0x1
  2021ca:	97b2                	add	a5,a5,a2
  2021cc:	07be                	slli	a5,a5,0xf
  2021ce:	97ba                	add	a5,a5,a4
  2021d0:	97b6                	add	a5,a5,a3
  2021d2:	0047d783          	lhu	a5,4(a5)
  2021d6:	2785                	addiw	a5,a5,1
  2021d8:	03079593          	slli	a1,a5,0x30
  2021dc:	91c1                	srli	a1,a1,0x30
  2021de:	fec46783          	lwu	a5,-20(s0)
  2021e2:	fe846603          	lwu	a2,-24(s0)
  2021e6:	873e                	mv	a4,a5
  2021e8:	0706                	slli	a4,a4,0x1
  2021ea:	973e                	add	a4,a4,a5
  2021ec:	00271793          	slli	a5,a4,0x2
  2021f0:	873e                	mv	a4,a5
  2021f2:	87b2                	mv	a5,a2
  2021f4:	0786                	slli	a5,a5,0x1
  2021f6:	97b2                	add	a5,a5,a2
  2021f8:	07be                	slli	a5,a5,0xf
  2021fa:	97ba                	add	a5,a5,a4
  2021fc:	97b6                	add	a5,a5,a3
  2021fe:	00b79223          	sh	a1,4(a5)
  202202:	27e000ef          	jal	ra,202480 <FindDieForFreeSliceAllocation>
  202206:	87aa                	mv	a5,a0
  202208:	2781                	sext.w	a5,a5
  20220a:	0ff7f713          	andi	a4,a5,255
  20220e:	002107b7          	lui	a5,0x210
  202212:	f2e78823          	sb	a4,-208(a5) # 20ff30 <sliceAllocationTargetDie>
  202216:	002107b7          	lui	a5,0x210
  20221a:	f307c783          	lbu	a5,-208(a5) # 20ff30 <sliceAllocationTargetDie>
  20221e:	fef42423          	sw	a5,-24(s0)
  202222:	fe442783          	lw	a5,-28(s0)
  202226:	853e                	mv	a0,a5
  202228:	60e2                	ld	ra,24(sp)
  20222a:	6442                	ld	s0,16(sp)
  20222c:	6105                	addi	sp,sp,32
  20222e:	8082                	ret

0000000000202230 <FindFreeVirtualSliceForGc>:
  202230:	7179                	addi	sp,sp,-48
  202232:	f406                	sd	ra,40(sp)
  202234:	f022                	sd	s0,32(sp)
  202236:	1800                	addi	s0,sp,48
  202238:	87aa                	mv	a5,a0
  20223a:	872e                	mv	a4,a1
  20223c:	fcf42e23          	sw	a5,-36(s0)
  202240:	87ba                	mv	a5,a4
  202242:	fcf42c23          	sw	a5,-40(s0)
  202246:	fdc42783          	lw	a5,-36(s0)
  20224a:	fef42423          	sw	a5,-24(s0)
  20224e:	002107b7          	lui	a5,0x210
  202252:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202256:	fe846703          	lwu	a4,-24(s0)
  20225a:	87ba                	mv	a5,a4
  20225c:	0786                	slli	a5,a5,0x1
  20225e:	97ba                	add	a5,a5,a4
  202260:	078a                	slli	a5,a5,0x2
  202262:	97b6                	add	a5,a5,a3
  202264:	0007d783          	lhu	a5,0(a5)
  202268:	0007871b          	sext.w	a4,a5
  20226c:	fd842783          	lw	a5,-40(s0)
  202270:	2781                	sext.w	a5,a5
  202272:	06e79563          	bne	a5,a4,2022dc <FindFreeVirtualSliceForGc+0xac>
  202276:	fe842783          	lw	a5,-24(s0)
  20227a:	4585                	li	a1,1
  20227c:	853e                	mv	a0,a5
  20227e:	091000ef          	jal	ra,202b0e <GetFromFbList>
  202282:	87aa                	mv	a5,a0
  202284:	0007871b          	sext.w	a4,a5
  202288:	002107b7          	lui	a5,0x210
  20228c:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  202290:	87ba                	mv	a5,a4
  202292:	03079693          	slli	a3,a5,0x30
  202296:	92c1                	srli	a3,a3,0x30
  202298:	fe846703          	lwu	a4,-24(s0)
  20229c:	87ba                	mv	a5,a4
  20229e:	0786                	slli	a5,a5,0x1
  2022a0:	97ba                	add	a5,a5,a4
  2022a2:	078a                	slli	a5,a5,0x2
  2022a4:	97b2                	add	a5,a5,a2
  2022a6:	00d79023          	sh	a3,0(a5)
  2022aa:	002107b7          	lui	a5,0x210
  2022ae:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2022b2:	fe846703          	lwu	a4,-24(s0)
  2022b6:	87ba                	mv	a5,a4
  2022b8:	0786                	slli	a5,a5,0x1
  2022ba:	97ba                	add	a5,a5,a4
  2022bc:	078a                	slli	a5,a5,0x2
  2022be:	97b6                	add	a5,a5,a3
  2022c0:	0007d783          	lhu	a5,0(a5)
  2022c4:	0007871b          	sext.w	a4,a5
  2022c8:	67c1                	lui	a5,0x10
  2022ca:	17fd                	addi	a5,a5,-1
  2022cc:	00f71863          	bne	a4,a5,2022dc <FindFreeVirtualSliceForGc+0xac>
  2022d0:	0020f7b7          	lui	a5,0x20f
  2022d4:	08078513          	addi	a0,a5,128 # 20f080 <nvme_main+0x5ca>
  2022d8:	2e0020ef          	jal	ra,2045b8 <cpl_print>
  2022dc:	002107b7          	lui	a5,0x210
  2022e0:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2022e4:	fe846703          	lwu	a4,-24(s0)
  2022e8:	87ba                	mv	a5,a4
  2022ea:	0786                	slli	a5,a5,0x1
  2022ec:	97ba                	add	a5,a5,a4
  2022ee:	078a                	slli	a5,a5,0x2
  2022f0:	97b6                	add	a5,a5,a3
  2022f2:	0007d783          	lhu	a5,0(a5)
  2022f6:	fef42623          	sw	a5,-20(s0)
  2022fa:	002107b7          	lui	a5,0x210
  2022fe:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202302:	fec46783          	lwu	a5,-20(s0)
  202306:	fe846683          	lwu	a3,-24(s0)
  20230a:	873e                	mv	a4,a5
  20230c:	0706                	slli	a4,a4,0x1
  20230e:	973e                	add	a4,a4,a5
  202310:	00271793          	slli	a5,a4,0x2
  202314:	873e                	mv	a4,a5
  202316:	87b6                	mv	a5,a3
  202318:	0786                	slli	a5,a5,0x1
  20231a:	97b6                	add	a5,a5,a3
  20231c:	07be                	slli	a5,a5,0xf
  20231e:	97ba                	add	a5,a5,a4
  202320:	97b2                	add	a5,a5,a2
  202322:	0047d783          	lhu	a5,4(a5)
  202326:	0007871b          	sext.w	a4,a5
  20232a:	08000793          	li	a5,128
  20232e:	04f71d63          	bne	a4,a5,202388 <FindFreeVirtualSliceForGc+0x158>
  202332:	fe842783          	lw	a5,-24(s0)
  202336:	4585                	li	a1,1
  202338:	853e                	mv	a0,a5
  20233a:	7d4000ef          	jal	ra,202b0e <GetFromFbList>
  20233e:	87aa                	mv	a5,a0
  202340:	fef42623          	sw	a5,-20(s0)
  202344:	fec42783          	lw	a5,-20(s0)
  202348:	0007871b          	sext.w	a4,a5
  20234c:	67c1                	lui	a5,0x10
  20234e:	17fd                	addi	a5,a5,-1
  202350:	02f70563          	beq	a4,a5,20237a <FindFreeVirtualSliceForGc+0x14a>
  202354:	002107b7          	lui	a5,0x210
  202358:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  20235c:	fec42783          	lw	a5,-20(s0)
  202360:	03079693          	slli	a3,a5,0x30
  202364:	92c1                	srli	a3,a3,0x30
  202366:	fe846703          	lwu	a4,-24(s0)
  20236a:	87ba                	mv	a5,a4
  20236c:	0786                	slli	a5,a5,0x1
  20236e:	97ba                	add	a5,a5,a4
  202370:	078a                	slli	a5,a5,0x2
  202372:	97b2                	add	a5,a5,a2
  202374:	00d79023          	sh	a3,0(a5)
  202378:	a891                	j	2023cc <FindFreeVirtualSliceForGc+0x19c>
  20237a:	0020f7b7          	lui	a5,0x20f
  20237e:	08078513          	addi	a0,a5,128 # 20f080 <nvme_main+0x5ca>
  202382:	236020ef          	jal	ra,2045b8 <cpl_print>
  202386:	a099                	j	2023cc <FindFreeVirtualSliceForGc+0x19c>
  202388:	002107b7          	lui	a5,0x210
  20238c:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202390:	fec46783          	lwu	a5,-20(s0)
  202394:	fe846683          	lwu	a3,-24(s0)
  202398:	873e                	mv	a4,a5
  20239a:	0706                	slli	a4,a4,0x1
  20239c:	973e                	add	a4,a4,a5
  20239e:	00271793          	slli	a5,a4,0x2
  2023a2:	873e                	mv	a4,a5
  2023a4:	87b6                	mv	a5,a3
  2023a6:	0786                	slli	a5,a5,0x1
  2023a8:	97b6                	add	a5,a5,a3
  2023aa:	07be                	slli	a5,a5,0xf
  2023ac:	97ba                	add	a5,a5,a4
  2023ae:	97b2                	add	a5,a5,a2
  2023b0:	0047d783          	lhu	a5,4(a5)
  2023b4:	0007871b          	sext.w	a4,a5
  2023b8:	08000793          	li	a5,128
  2023bc:	00e7f863          	bgeu	a5,a4,2023cc <FindFreeVirtualSliceForGc+0x19c>
  2023c0:	0020f7b7          	lui	a5,0x20f
  2023c4:	0b078513          	addi	a0,a5,176 # 20f0b0 <nvme_main+0x5fa>
  2023c8:	1f0020ef          	jal	ra,2045b8 <cpl_print>
  2023cc:	fec42783          	lw	a5,-20(s0)
  2023d0:	0077979b          	slliw	a5,a5,0x7
  2023d4:	0007861b          	sext.w	a2,a5
  2023d8:	002107b7          	lui	a5,0x210
  2023dc:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2023e0:	fec46783          	lwu	a5,-20(s0)
  2023e4:	fe846683          	lwu	a3,-24(s0)
  2023e8:	873e                	mv	a4,a5
  2023ea:	0706                	slli	a4,a4,0x1
  2023ec:	973e                	add	a4,a4,a5
  2023ee:	00271793          	slli	a5,a4,0x2
  2023f2:	873e                	mv	a4,a5
  2023f4:	87b6                	mv	a5,a3
  2023f6:	0786                	slli	a5,a5,0x1
  2023f8:	97b6                	add	a5,a5,a3
  2023fa:	07be                	slli	a5,a5,0xf
  2023fc:	97ba                	add	a5,a5,a4
  2023fe:	97ae                	add	a5,a5,a1
  202400:	0047d783          	lhu	a5,4(a5)
  202404:	2781                	sext.w	a5,a5
  202406:	9fb1                	addw	a5,a5,a2
  202408:	2781                	sext.w	a5,a5
  20240a:	0067979b          	slliw	a5,a5,0x6
  20240e:	2781                	sext.w	a5,a5
  202410:	fe842703          	lw	a4,-24(s0)
  202414:	9fb9                	addw	a5,a5,a4
  202416:	fef42223          	sw	a5,-28(s0)
  20241a:	002107b7          	lui	a5,0x210
  20241e:	f487b683          	ld	a3,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202422:	fec46783          	lwu	a5,-20(s0)
  202426:	fe846603          	lwu	a2,-24(s0)
  20242a:	873e                	mv	a4,a5
  20242c:	0706                	slli	a4,a4,0x1
  20242e:	973e                	add	a4,a4,a5
  202430:	00271793          	slli	a5,a4,0x2
  202434:	873e                	mv	a4,a5
  202436:	87b2                	mv	a5,a2
  202438:	0786                	slli	a5,a5,0x1
  20243a:	97b2                	add	a5,a5,a2
  20243c:	07be                	slli	a5,a5,0xf
  20243e:	97ba                	add	a5,a5,a4
  202440:	97b6                	add	a5,a5,a3
  202442:	0047d783          	lhu	a5,4(a5)
  202446:	2785                	addiw	a5,a5,1
  202448:	03079593          	slli	a1,a5,0x30
  20244c:	91c1                	srli	a1,a1,0x30
  20244e:	fec46783          	lwu	a5,-20(s0)
  202452:	fe846603          	lwu	a2,-24(s0)
  202456:	873e                	mv	a4,a5
  202458:	0706                	slli	a4,a4,0x1
  20245a:	973e                	add	a4,a4,a5
  20245c:	00271793          	slli	a5,a4,0x2
  202460:	873e                	mv	a4,a5
  202462:	87b2                	mv	a5,a2
  202464:	0786                	slli	a5,a5,0x1
  202466:	97b2                	add	a5,a5,a2
  202468:	07be                	slli	a5,a5,0xf
  20246a:	97ba                	add	a5,a5,a4
  20246c:	97b6                	add	a5,a5,a3
  20246e:	00b79223          	sh	a1,4(a5)
  202472:	fe442783          	lw	a5,-28(s0)
  202476:	853e                	mv	a0,a5
  202478:	70a2                	ld	ra,40(sp)
  20247a:	7402                	ld	s0,32(sp)
  20247c:	6145                	addi	sp,sp,48
  20247e:	8082                	ret

0000000000202480 <FindDieForFreeSliceAllocation>:
  202480:	1101                	addi	sp,sp,-32
  202482:	ec22                	sd	s0,24(sp)
  202484:	1000                	addi	s0,sp,32
  202486:	002107b7          	lui	a5,0x210
  20248a:	f287c783          	lbu	a5,-216(a5) # 20ff28 <__bss_start>
  20248e:	0007871b          	sext.w	a4,a5
  202492:	002107b7          	lui	a5,0x210
  202496:	f297c783          	lbu	a5,-215(a5) # 20ff29 <targetWay.2888>
  20249a:	2781                	sext.w	a5,a5
  20249c:	0037979b          	slliw	a5,a5,0x3
  2024a0:	2781                	sext.w	a5,a5
  2024a2:	9fb9                	addw	a5,a5,a4
  2024a4:	2781                	sext.w	a5,a5
  2024a6:	fef42623          	sw	a5,-20(s0)
  2024aa:	002107b7          	lui	a5,0x210
  2024ae:	f287c783          	lbu	a5,-216(a5) # 20ff28 <__bss_start>
  2024b2:	873e                	mv	a4,a5
  2024b4:	479d                	li	a5,7
  2024b6:	00f70e63          	beq	a4,a5,2024d2 <FindDieForFreeSliceAllocation+0x52>
  2024ba:	002107b7          	lui	a5,0x210
  2024be:	f287c783          	lbu	a5,-216(a5) # 20ff28 <__bss_start>
  2024c2:	2785                	addiw	a5,a5,1
  2024c4:	0ff7f713          	andi	a4,a5,255
  2024c8:	002107b7          	lui	a5,0x210
  2024cc:	f2e78423          	sb	a4,-216(a5) # 20ff28 <__bss_start>
  2024d0:	a825                	j	202508 <FindDieForFreeSliceAllocation+0x88>
  2024d2:	002107b7          	lui	a5,0x210
  2024d6:	f2078423          	sb	zero,-216(a5) # 20ff28 <__bss_start>
  2024da:	002107b7          	lui	a5,0x210
  2024de:	f297c783          	lbu	a5,-215(a5) # 20ff29 <targetWay.2888>
  2024e2:	2781                	sext.w	a5,a5
  2024e4:	2785                	addiw	a5,a5,1
  2024e6:	2781                	sext.w	a5,a5
  2024e8:	873e                	mv	a4,a5
  2024ea:	41f7579b          	sraiw	a5,a4,0x1f
  2024ee:	01d7d79b          	srliw	a5,a5,0x1d
  2024f2:	9f3d                	addw	a4,a4,a5
  2024f4:	8b1d                	andi	a4,a4,7
  2024f6:	40f707bb          	subw	a5,a4,a5
  2024fa:	2781                	sext.w	a5,a5
  2024fc:	0ff7f713          	andi	a4,a5,255
  202500:	002107b7          	lui	a5,0x210
  202504:	f2e784a3          	sb	a4,-215(a5) # 20ff29 <targetWay.2888>
  202508:	fec42783          	lw	a5,-20(s0)
  20250c:	853e                	mv	a0,a5
  20250e:	6462                	ld	s0,24(sp)
  202510:	6105                	addi	sp,sp,32
  202512:	8082                	ret

0000000000202514 <InvalidateOldVsa>:
  202514:	7179                	addi	sp,sp,-48
  202516:	f406                	sd	ra,40(sp)
  202518:	f022                	sd	s0,32(sp)
  20251a:	1800                	addi	s0,sp,48
  20251c:	87aa                	mv	a5,a0
  20251e:	fcf42e23          	sw	a5,-36(s0)
  202522:	002107b7          	lui	a5,0x210
  202526:	f387b703          	ld	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  20252a:	fdc46783          	lwu	a5,-36(s0)
  20252e:	078a                	slli	a5,a5,0x2
  202530:	97ba                	add	a5,a5,a4
  202532:	439c                	lw	a5,0(a5)
  202534:	fef42623          	sw	a5,-20(s0)
  202538:	fec42783          	lw	a5,-20(s0)
  20253c:	0007871b          	sext.w	a4,a5
  202540:	57fd                	li	a5,-1
  202542:	10f70c63          	beq	a4,a5,20265a <InvalidateOldVsa+0x146>
  202546:	002107b7          	lui	a5,0x210
  20254a:	f507b703          	ld	a4,-176(a5) # 20ff50 <virtualSliceMapPtr>
  20254e:	fec46783          	lwu	a5,-20(s0)
  202552:	078a                	slli	a5,a5,0x2
  202554:	97ba                	add	a5,a5,a4
  202556:	4398                	lw	a4,0(a5)
  202558:	fdc42783          	lw	a5,-36(s0)
  20255c:	2781                	sext.w	a5,a5
  20255e:	0ee79d63          	bne	a5,a4,202658 <InvalidateOldVsa+0x144>
  202562:	fec42783          	lw	a5,-20(s0)
  202566:	03f7f793          	andi	a5,a5,63
  20256a:	fef42423          	sw	a5,-24(s0)
  20256e:	fec42783          	lw	a5,-20(s0)
  202572:	00d7d79b          	srliw	a5,a5,0xd
  202576:	fef42223          	sw	a5,-28(s0)
  20257a:	fe442703          	lw	a4,-28(s0)
  20257e:	fe842783          	lw	a5,-24(s0)
  202582:	85ba                	mv	a1,a4
  202584:	853e                	mv	a0,a5
  202586:	553090ef          	jal	ra,20c2d8 <SelectiveGetFromGcVictimList>
  20258a:	002107b7          	lui	a5,0x210
  20258e:	f487b683          	ld	a3,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202592:	fe446783          	lwu	a5,-28(s0)
  202596:	fe846603          	lwu	a2,-24(s0)
  20259a:	873e                	mv	a4,a5
  20259c:	0706                	slli	a4,a4,0x1
  20259e:	973e                	add	a4,a4,a5
  2025a0:	00271793          	slli	a5,a4,0x2
  2025a4:	873e                	mv	a4,a5
  2025a6:	87b2                	mv	a5,a2
  2025a8:	0786                	slli	a5,a5,0x1
  2025aa:	97b2                	add	a5,a5,a2
  2025ac:	07be                	slli	a5,a5,0xf
  2025ae:	97ba                	add	a5,a5,a4
  2025b0:	97b6                	add	a5,a5,a3
  2025b2:	439c                	lw	a5,0(a5)
  2025b4:	0027d79b          	srliw	a5,a5,0x2
  2025b8:	9bfd                	andi	a5,a5,-1
  2025ba:	17c2                	slli	a5,a5,0x30
  2025bc:	93c1                	srli	a5,a5,0x30
  2025be:	2785                	addiw	a5,a5,1
  2025c0:	03079593          	slli	a1,a5,0x30
  2025c4:	91c1                	srli	a1,a1,0x30
  2025c6:	fe446783          	lwu	a5,-28(s0)
  2025ca:	fe846603          	lwu	a2,-24(s0)
  2025ce:	873e                	mv	a4,a5
  2025d0:	0706                	slli	a4,a4,0x1
  2025d2:	973e                	add	a4,a4,a5
  2025d4:	00271793          	slli	a5,a4,0x2
  2025d8:	873e                	mv	a4,a5
  2025da:	87b2                	mv	a5,a2
  2025dc:	0786                	slli	a5,a5,0x1
  2025de:	97b2                	add	a5,a5,a2
  2025e0:	07be                	slli	a5,a5,0xf
  2025e2:	97ba                	add	a5,a5,a4
  2025e4:	97b6                	add	a5,a5,a3
  2025e6:	0025971b          	slliw	a4,a1,0x2
  2025ea:	4390                	lw	a2,0(a5)
  2025ec:	fffc06b7          	lui	a3,0xfffc0
  2025f0:	068d                	addi	a3,a3,3
  2025f2:	8ef1                	and	a3,a3,a2
  2025f4:	8f55                	or	a4,a4,a3
  2025f6:	c398                	sw	a4,0(a5)
  2025f8:	002107b7          	lui	a5,0x210
  2025fc:	f387b703          	ld	a4,-200(a5) # 20ff38 <logicalSliceMapPtr>
  202600:	fdc46783          	lwu	a5,-36(s0)
  202604:	078a                	slli	a5,a5,0x2
  202606:	97ba                	add	a5,a5,a4
  202608:	577d                	li	a4,-1
  20260a:	c398                	sw	a4,0(a5)
  20260c:	002107b7          	lui	a5,0x210
  202610:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202614:	fe446783          	lwu	a5,-28(s0)
  202618:	fe846683          	lwu	a3,-24(s0)
  20261c:	873e                	mv	a4,a5
  20261e:	0706                	slli	a4,a4,0x1
  202620:	973e                	add	a4,a4,a5
  202622:	00271793          	slli	a5,a4,0x2
  202626:	873e                	mv	a4,a5
  202628:	87b6                	mv	a5,a3
  20262a:	0786                	slli	a5,a5,0x1
  20262c:	97b6                	add	a5,a5,a3
  20262e:	07be                	slli	a5,a5,0xf
  202630:	97ba                	add	a5,a5,a4
  202632:	97b2                	add	a5,a5,a2
  202634:	439c                	lw	a5,0(a5)
  202636:	0027d79b          	srliw	a5,a5,0x2
  20263a:	9bfd                	andi	a5,a5,-1
  20263c:	17c2                	slli	a5,a5,0x30
  20263e:	93c1                	srli	a5,a5,0x30
  202640:	0007869b          	sext.w	a3,a5
  202644:	fe442703          	lw	a4,-28(s0)
  202648:	fe842783          	lw	a5,-24(s0)
  20264c:	8636                	mv	a2,a3
  20264e:	85ba                	mv	a1,a4
  202650:	853e                	mv	a0,a5
  202652:	16f090ef          	jal	ra,20bfc0 <PutToGcVictimList>
  202656:	a011                	j	20265a <InvalidateOldVsa+0x146>
  202658:	0001                	nop
  20265a:	70a2                	ld	ra,40(sp)
  20265c:	7402                	ld	s0,32(sp)
  20265e:	6145                	addi	sp,sp,48
  202660:	8082                	ret

0000000000202662 <EraseBlock>:
  202662:	7179                	addi	sp,sp,-48
  202664:	f406                	sd	ra,40(sp)
  202666:	f022                	sd	s0,32(sp)
  202668:	1800                	addi	s0,sp,48
  20266a:	87aa                	mv	a5,a0
  20266c:	872e                	mv	a4,a1
  20266e:	fcf42e23          	sw	a5,-36(s0)
  202672:	87ba                	mv	a5,a4
  202674:	fcf42c23          	sw	a5,-40(s0)
  202678:	4e9000ef          	jal	ra,203360 <GetFromFreeReqQ>
  20267c:	87aa                	mv	a5,a0
  20267e:	fef42423          	sw	a5,-24(s0)
  202682:	002107b7          	lui	a5,0x210
  202686:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20268a:	fe846683          	lwu	a3,-24(s0)
  20268e:	03400793          	li	a5,52
  202692:	02f687b3          	mul	a5,a3,a5
  202696:	97ba                	add	a5,a5,a4
  202698:	4398                	lw	a4,0(a5)
  20269a:	9b41                	andi	a4,a4,-16
  20269c:	00176713          	ori	a4,a4,1
  2026a0:	c398                	sw	a4,0(a5)
  2026a2:	002107b7          	lui	a5,0x210
  2026a6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2026aa:	fe846683          	lwu	a3,-24(s0)
  2026ae:	03400793          	li	a5,52
  2026b2:	02f687b3          	mul	a5,a3,a5
  2026b6:	97ba                	add	a5,a5,a4
  2026b8:	4731                	li	a4,12
  2026ba:	00e780a3          	sb	a4,1(a5)
  2026be:	002107b7          	lui	a5,0x210
  2026c2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2026c6:	fe846683          	lwu	a3,-24(s0)
  2026ca:	03400793          	li	a5,52
  2026ce:	02f687b3          	mul	a5,a3,a5
  2026d2:	97ba                	add	a5,a5,a4
  2026d4:	4b98                	lw	a4,16(a5)
  2026d6:	9b4d                	andi	a4,a4,-13
  2026d8:	cb98                	sw	a4,16(a5)
  2026da:	002107b7          	lui	a5,0x210
  2026de:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2026e2:	fe846683          	lwu	a3,-24(s0)
  2026e6:	03400793          	li	a5,52
  2026ea:	02f687b3          	mul	a5,a3,a5
  2026ee:	97ba                	add	a5,a5,a4
  2026f0:	4b98                	lw	a4,16(a5)
  2026f2:	00376713          	ori	a4,a4,3
  2026f6:	cb98                	sw	a4,16(a5)
  2026f8:	002107b7          	lui	a5,0x210
  2026fc:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  202700:	fe846683          	lwu	a3,-24(s0)
  202704:	03400793          	li	a5,52
  202708:	02f687b3          	mul	a5,a3,a5
  20270c:	97ba                	add	a5,a5,a4
  20270e:	4b98                	lw	a4,16(a5)
  202710:	04076713          	ori	a4,a4,64
  202714:	cb98                	sw	a4,16(a5)
  202716:	002107b7          	lui	a5,0x210
  20271a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20271e:	fe846683          	lwu	a3,-24(s0)
  202722:	03400793          	li	a5,52
  202726:	02f687b3          	mul	a5,a3,a5
  20272a:	97ba                	add	a5,a5,a4
  20272c:	4b98                	lw	a4,16(a5)
  20272e:	f7f77713          	andi	a4,a4,-129
  202732:	cb98                	sw	a4,16(a5)
  202734:	fd842783          	lw	a5,-40(s0)
  202738:	00d7979b          	slliw	a5,a5,0xd
  20273c:	2781                	sext.w	a5,a5
  20273e:	00210737          	lui	a4,0x210
  202742:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  202746:	fdc42703          	lw	a4,-36(s0)
  20274a:	9fb9                	addw	a5,a5,a4
  20274c:	0007871b          	sext.w	a4,a5
  202750:	fe846603          	lwu	a2,-24(s0)
  202754:	03400793          	li	a5,52
  202758:	02f607b3          	mul	a5,a2,a5
  20275c:	97b6                	add	a5,a5,a3
  20275e:	d3d8                	sw	a4,36(a5)
  202760:	002107b7          	lui	a5,0x210
  202764:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202768:	fd846783          	lwu	a5,-40(s0)
  20276c:	fdc46683          	lwu	a3,-36(s0)
  202770:	873e                	mv	a4,a5
  202772:	0706                	slli	a4,a4,0x1
  202774:	973e                	add	a4,a4,a5
  202776:	00271793          	slli	a5,a4,0x2
  20277a:	873e                	mv	a4,a5
  20277c:	87b6                	mv	a5,a3
  20277e:	0786                	slli	a5,a5,0x1
  202780:	97b6                	add	a5,a5,a3
  202782:	07be                	slli	a5,a5,0xf
  202784:	97ba                	add	a5,a5,a4
  202786:	97b2                	add	a5,a5,a2
  202788:	0047d703          	lhu	a4,4(a5)
  20278c:	002107b7          	lui	a5,0x210
  202790:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  202794:	2701                	sext.w	a4,a4
  202796:	fe846603          	lwu	a2,-24(s0)
  20279a:	03400793          	li	a5,52
  20279e:	02f607b3          	mul	a5,a2,a5
  2027a2:	97b6                	add	a5,a5,a3
  2027a4:	d798                	sw	a4,40(a5)
  2027a6:	fe842783          	lw	a5,-24(s0)
  2027aa:	4581                	li	a1,0
  2027ac:	853e                	mv	a0,a5
  2027ae:	499080ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  2027b2:	002107b7          	lui	a5,0x210
  2027b6:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2027ba:	fd846783          	lwu	a5,-40(s0)
  2027be:	fdc46683          	lwu	a3,-36(s0)
  2027c2:	873e                	mv	a4,a5
  2027c4:	0706                	slli	a4,a4,0x1
  2027c6:	973e                	add	a4,a4,a5
  2027c8:	00271793          	slli	a5,a4,0x2
  2027cc:	873e                	mv	a4,a5
  2027ce:	87b6                	mv	a5,a3
  2027d0:	0786                	slli	a5,a5,0x1
  2027d2:	97b6                	add	a5,a5,a3
  2027d4:	07be                	slli	a5,a5,0xf
  2027d6:	97ba                	add	a5,a5,a4
  2027d8:	97b2                	add	a5,a5,a2
  2027da:	4398                	lw	a4,0(a5)
  2027dc:	00276713          	ori	a4,a4,2
  2027e0:	c398                	sw	a4,0(a5)
  2027e2:	002107b7          	lui	a5,0x210
  2027e6:	f487b683          	ld	a3,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2027ea:	fd846783          	lwu	a5,-40(s0)
  2027ee:	fdc46603          	lwu	a2,-36(s0)
  2027f2:	873e                	mv	a4,a5
  2027f4:	0706                	slli	a4,a4,0x1
  2027f6:	973e                	add	a4,a4,a5
  2027f8:	00271793          	slli	a5,a4,0x2
  2027fc:	873e                	mv	a4,a5
  2027fe:	87b2                	mv	a5,a2
  202800:	0786                	slli	a5,a5,0x1
  202802:	97b2                	add	a5,a5,a2
  202804:	07be                	slli	a5,a5,0xf
  202806:	97ba                	add	a5,a5,a4
  202808:	97b6                	add	a5,a5,a3
  20280a:	0067d783          	lhu	a5,6(a5)
  20280e:	2785                	addiw	a5,a5,1
  202810:	03079593          	slli	a1,a5,0x30
  202814:	91c1                	srli	a1,a1,0x30
  202816:	fd846783          	lwu	a5,-40(s0)
  20281a:	fdc46603          	lwu	a2,-36(s0)
  20281e:	873e                	mv	a4,a5
  202820:	0706                	slli	a4,a4,0x1
  202822:	973e                	add	a4,a4,a5
  202824:	00271793          	slli	a5,a4,0x2
  202828:	873e                	mv	a4,a5
  20282a:	87b2                	mv	a5,a2
  20282c:	0786                	slli	a5,a5,0x1
  20282e:	97b2                	add	a5,a5,a2
  202830:	07be                	slli	a5,a5,0xf
  202832:	97ba                	add	a5,a5,a4
  202834:	97b6                	add	a5,a5,a3
  202836:	00b79323          	sh	a1,6(a5)
  20283a:	002107b7          	lui	a5,0x210
  20283e:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202842:	fd846783          	lwu	a5,-40(s0)
  202846:	fdc46683          	lwu	a3,-36(s0)
  20284a:	873e                	mv	a4,a5
  20284c:	0706                	slli	a4,a4,0x1
  20284e:	973e                	add	a4,a4,a5
  202850:	00271793          	slli	a5,a4,0x2
  202854:	873e                	mv	a4,a5
  202856:	87b6                	mv	a5,a3
  202858:	0786                	slli	a5,a5,0x1
  20285a:	97b6                	add	a5,a5,a3
  20285c:	07be                	slli	a5,a5,0xf
  20285e:	97ba                	add	a5,a5,a4
  202860:	97b2                	add	a5,a5,a2
  202862:	4394                	lw	a3,0(a5)
  202864:	fffc0737          	lui	a4,0xfffc0
  202868:	070d                	addi	a4,a4,3
  20286a:	8f75                	and	a4,a4,a3
  20286c:	c398                	sw	a4,0(a5)
  20286e:	002107b7          	lui	a5,0x210
  202872:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202876:	fd846783          	lwu	a5,-40(s0)
  20287a:	fdc46683          	lwu	a3,-36(s0)
  20287e:	873e                	mv	a4,a5
  202880:	0706                	slli	a4,a4,0x1
  202882:	973e                	add	a4,a4,a5
  202884:	00271793          	slli	a5,a4,0x2
  202888:	873e                	mv	a4,a5
  20288a:	87b6                	mv	a5,a3
  20288c:	0786                	slli	a5,a5,0x1
  20288e:	97b6                	add	a5,a5,a3
  202890:	07be                	slli	a5,a5,0xf
  202892:	97ba                	add	a5,a5,a4
  202894:	97b2                	add	a5,a5,a2
  202896:	00079223          	sh	zero,4(a5)
  20289a:	fd842703          	lw	a4,-40(s0)
  20289e:	fdc42783          	lw	a5,-36(s0)
  2028a2:	85ba                	mv	a1,a4
  2028a4:	853e                	mv	a0,a5
  2028a6:	066000ef          	jal	ra,20290c <PutToFbList>
  2028aa:	fe042623          	sw	zero,-20(s0)
  2028ae:	a089                	j	2028f0 <EraseBlock+0x28e>
  2028b0:	fd842783          	lw	a5,-40(s0)
  2028b4:	0077979b          	slliw	a5,a5,0x7
  2028b8:	2781                	sext.w	a5,a5
  2028ba:	fec42703          	lw	a4,-20(s0)
  2028be:	9fb9                	addw	a5,a5,a4
  2028c0:	2781                	sext.w	a5,a5
  2028c2:	0067979b          	slliw	a5,a5,0x6
  2028c6:	2781                	sext.w	a5,a5
  2028c8:	fdc42703          	lw	a4,-36(s0)
  2028cc:	9fb9                	addw	a5,a5,a4
  2028ce:	fef42223          	sw	a5,-28(s0)
  2028d2:	002107b7          	lui	a5,0x210
  2028d6:	f507b703          	ld	a4,-176(a5) # 20ff50 <virtualSliceMapPtr>
  2028da:	fe446783          	lwu	a5,-28(s0)
  2028de:	078a                	slli	a5,a5,0x2
  2028e0:	97ba                	add	a5,a5,a4
  2028e2:	577d                	li	a4,-1
  2028e4:	c398                	sw	a4,0(a5)
  2028e6:	fec42783          	lw	a5,-20(s0)
  2028ea:	2785                	addiw	a5,a5,1
  2028ec:	fef42623          	sw	a5,-20(s0)
  2028f0:	fec42783          	lw	a5,-20(s0)
  2028f4:	0007871b          	sext.w	a4,a5
  2028f8:	07f00793          	li	a5,127
  2028fc:	fae7fae3          	bgeu	a5,a4,2028b0 <EraseBlock+0x24e>
  202900:	0001                	nop
  202902:	0001                	nop
  202904:	70a2                	ld	ra,40(sp)
  202906:	7402                	ld	s0,32(sp)
  202908:	6145                	addi	sp,sp,48
  20290a:	8082                	ret

000000000020290c <PutToFbList>:
  20290c:	1101                	addi	sp,sp,-32
  20290e:	ec22                	sd	s0,24(sp)
  202910:	1000                	addi	s0,sp,32
  202912:	87aa                	mv	a5,a0
  202914:	872e                	mv	a4,a1
  202916:	fef42623          	sw	a5,-20(s0)
  20291a:	87ba                	mv	a5,a4
  20291c:	fef42423          	sw	a5,-24(s0)
  202920:	002107b7          	lui	a5,0x210
  202924:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202928:	fec46703          	lwu	a4,-20(s0)
  20292c:	87ba                	mv	a5,a4
  20292e:	0786                	slli	a5,a5,0x1
  202930:	97ba                	add	a5,a5,a4
  202932:	078a                	slli	a5,a5,0x2
  202934:	97b6                	add	a5,a5,a3
  202936:	0047d783          	lhu	a5,4(a5)
  20293a:	0007871b          	sext.w	a4,a5
  20293e:	67c1                	lui	a5,0x10
  202940:	17fd                	addi	a5,a5,-1
  202942:	0ef70663          	beq	a4,a5,202a2e <PutToFbList+0x122>
  202946:	002107b7          	lui	a5,0x210
  20294a:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  20294e:	002107b7          	lui	a5,0x210
  202952:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202956:	fec46703          	lwu	a4,-20(s0)
  20295a:	87ba                	mv	a5,a4
  20295c:	0786                	slli	a5,a5,0x1
  20295e:	97ba                	add	a5,a5,a4
  202960:	078a                	slli	a5,a5,0x2
  202962:	97b6                	add	a5,a5,a3
  202964:	0047d603          	lhu	a2,4(a5)
  202968:	fe846783          	lwu	a5,-24(s0)
  20296c:	fec46683          	lwu	a3,-20(s0)
  202970:	873e                	mv	a4,a5
  202972:	0706                	slli	a4,a4,0x1
  202974:	973e                	add	a4,a4,a5
  202976:	00271793          	slli	a5,a4,0x2
  20297a:	873e                	mv	a4,a5
  20297c:	87b6                	mv	a5,a3
  20297e:	0786                	slli	a5,a5,0x1
  202980:	97b6                	add	a5,a5,a3
  202982:	07be                	slli	a5,a5,0xf
  202984:	97ba                	add	a5,a5,a4
  202986:	97ae                	add	a5,a5,a1
  202988:	00c79423          	sh	a2,8(a5)
  20298c:	002107b7          	lui	a5,0x210
  202990:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202994:	fe846783          	lwu	a5,-24(s0)
  202998:	fec46683          	lwu	a3,-20(s0)
  20299c:	873e                	mv	a4,a5
  20299e:	0706                	slli	a4,a4,0x1
  2029a0:	973e                	add	a4,a4,a5
  2029a2:	00271793          	slli	a5,a4,0x2
  2029a6:	873e                	mv	a4,a5
  2029a8:	87b6                	mv	a5,a3
  2029aa:	0786                	slli	a5,a5,0x1
  2029ac:	97b6                	add	a5,a5,a3
  2029ae:	07be                	slli	a5,a5,0xf
  2029b0:	97ba                	add	a5,a5,a4
  2029b2:	97b2                	add	a5,a5,a2
  2029b4:	577d                	li	a4,-1
  2029b6:	00e79523          	sh	a4,10(a5)
  2029ba:	002107b7          	lui	a5,0x210
  2029be:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  2029c2:	002107b7          	lui	a5,0x210
  2029c6:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  2029ca:	fec46703          	lwu	a4,-20(s0)
  2029ce:	87ba                	mv	a5,a4
  2029d0:	0786                	slli	a5,a5,0x1
  2029d2:	97ba                	add	a5,a5,a4
  2029d4:	078a                	slli	a5,a5,0x2
  2029d6:	97b6                	add	a5,a5,a3
  2029d8:	0047d783          	lhu	a5,4(a5)
  2029dc:	2781                	sext.w	a5,a5
  2029de:	fe842703          	lw	a4,-24(s0)
  2029e2:	03071613          	slli	a2,a4,0x30
  2029e6:	9241                	srli	a2,a2,0x30
  2029e8:	fec46683          	lwu	a3,-20(s0)
  2029ec:	873e                	mv	a4,a5
  2029ee:	0706                	slli	a4,a4,0x1
  2029f0:	973e                	add	a4,a4,a5
  2029f2:	00271793          	slli	a5,a4,0x2
  2029f6:	873e                	mv	a4,a5
  2029f8:	87b6                	mv	a5,a3
  2029fa:	0786                	slli	a5,a5,0x1
  2029fc:	97b6                	add	a5,a5,a3
  2029fe:	07be                	slli	a5,a5,0xf
  202a00:	97ba                	add	a5,a5,a4
  202a02:	97ae                	add	a5,a5,a1
  202a04:	00c79523          	sh	a2,10(a5)
  202a08:	002107b7          	lui	a5,0x210
  202a0c:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  202a10:	fe842783          	lw	a5,-24(s0)
  202a14:	03079693          	slli	a3,a5,0x30
  202a18:	92c1                	srli	a3,a3,0x30
  202a1a:	fec46703          	lwu	a4,-20(s0)
  202a1e:	87ba                	mv	a5,a4
  202a20:	0786                	slli	a5,a5,0x1
  202a22:	97ba                	add	a5,a5,a4
  202a24:	078a                	slli	a5,a5,0x2
  202a26:	97b2                	add	a5,a5,a2
  202a28:	00d79223          	sh	a3,4(a5)
  202a2c:	a05d                	j	202ad2 <PutToFbList+0x1c6>
  202a2e:	002107b7          	lui	a5,0x210
  202a32:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202a36:	fe846783          	lwu	a5,-24(s0)
  202a3a:	fec46683          	lwu	a3,-20(s0)
  202a3e:	873e                	mv	a4,a5
  202a40:	0706                	slli	a4,a4,0x1
  202a42:	973e                	add	a4,a4,a5
  202a44:	00271793          	slli	a5,a4,0x2
  202a48:	873e                	mv	a4,a5
  202a4a:	87b6                	mv	a5,a3
  202a4c:	0786                	slli	a5,a5,0x1
  202a4e:	97b6                	add	a5,a5,a3
  202a50:	07be                	slli	a5,a5,0xf
  202a52:	97ba                	add	a5,a5,a4
  202a54:	97b2                	add	a5,a5,a2
  202a56:	577d                	li	a4,-1
  202a58:	00e79423          	sh	a4,8(a5)
  202a5c:	002107b7          	lui	a5,0x210
  202a60:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202a64:	fe846783          	lwu	a5,-24(s0)
  202a68:	fec46683          	lwu	a3,-20(s0)
  202a6c:	873e                	mv	a4,a5
  202a6e:	0706                	slli	a4,a4,0x1
  202a70:	973e                	add	a4,a4,a5
  202a72:	00271793          	slli	a5,a4,0x2
  202a76:	873e                	mv	a4,a5
  202a78:	87b6                	mv	a5,a3
  202a7a:	0786                	slli	a5,a5,0x1
  202a7c:	97b6                	add	a5,a5,a3
  202a7e:	07be                	slli	a5,a5,0xf
  202a80:	97ba                	add	a5,a5,a4
  202a82:	97b2                	add	a5,a5,a2
  202a84:	577d                	li	a4,-1
  202a86:	00e79523          	sh	a4,10(a5)
  202a8a:	002107b7          	lui	a5,0x210
  202a8e:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  202a92:	fe842783          	lw	a5,-24(s0)
  202a96:	03079693          	slli	a3,a5,0x30
  202a9a:	92c1                	srli	a3,a3,0x30
  202a9c:	fec46703          	lwu	a4,-20(s0)
  202aa0:	87ba                	mv	a5,a4
  202aa2:	0786                	slli	a5,a5,0x1
  202aa4:	97ba                	add	a5,a5,a4
  202aa6:	078a                	slli	a5,a5,0x2
  202aa8:	97b2                	add	a5,a5,a2
  202aaa:	00d79123          	sh	a3,2(a5)
  202aae:	002107b7          	lui	a5,0x210
  202ab2:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  202ab6:	fe842783          	lw	a5,-24(s0)
  202aba:	03079693          	slli	a3,a5,0x30
  202abe:	92c1                	srli	a3,a3,0x30
  202ac0:	fec46703          	lwu	a4,-20(s0)
  202ac4:	87ba                	mv	a5,a4
  202ac6:	0786                	slli	a5,a5,0x1
  202ac8:	97ba                	add	a5,a5,a4
  202aca:	078a                	slli	a5,a5,0x2
  202acc:	97b2                	add	a5,a5,a2
  202ace:	00d79223          	sh	a3,4(a5)
  202ad2:	002107b7          	lui	a5,0x210
  202ad6:	f407b703          	ld	a4,-192(a5) # 20ff40 <virtualDieMapPtr>
  202ada:	fec46683          	lwu	a3,-20(s0)
  202ade:	87b6                	mv	a5,a3
  202ae0:	0786                	slli	a5,a5,0x1
  202ae2:	97b6                	add	a5,a5,a3
  202ae4:	078a                	slli	a5,a5,0x2
  202ae6:	97ba                	add	a5,a5,a4
  202ae8:	0067d783          	lhu	a5,6(a5)
  202aec:	2785                	addiw	a5,a5,1
  202aee:	03079613          	slli	a2,a5,0x30
  202af2:	9241                	srli	a2,a2,0x30
  202af4:	fec46683          	lwu	a3,-20(s0)
  202af8:	87b6                	mv	a5,a3
  202afa:	0786                	slli	a5,a5,0x1
  202afc:	97b6                	add	a5,a5,a3
  202afe:	078a                	slli	a5,a5,0x2
  202b00:	97ba                	add	a5,a5,a4
  202b02:	00c79323          	sh	a2,6(a5)
  202b06:	0001                	nop
  202b08:	6462                	ld	s0,24(sp)
  202b0a:	6105                	addi	sp,sp,32
  202b0c:	8082                	ret

0000000000202b0e <GetFromFbList>:
  202b0e:	7179                	addi	sp,sp,-48
  202b10:	f406                	sd	ra,40(sp)
  202b12:	f022                	sd	s0,32(sp)
  202b14:	1800                	addi	s0,sp,48
  202b16:	87aa                	mv	a5,a0
  202b18:	872e                	mv	a4,a1
  202b1a:	fcf42e23          	sw	a5,-36(s0)
  202b1e:	87ba                	mv	a5,a4
  202b20:	fcf42c23          	sw	a5,-40(s0)
  202b24:	002107b7          	lui	a5,0x210
  202b28:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202b2c:	fdc46703          	lwu	a4,-36(s0)
  202b30:	87ba                	mv	a5,a4
  202b32:	0786                	slli	a5,a5,0x1
  202b34:	97ba                	add	a5,a5,a4
  202b36:	078a                	slli	a5,a5,0x2
  202b38:	97b6                	add	a5,a5,a3
  202b3a:	0027d783          	lhu	a5,2(a5)
  202b3e:	fef42623          	sw	a5,-20(s0)
  202b42:	fd842783          	lw	a5,-40(s0)
  202b46:	2781                	sext.w	a5,a5
  202b48:	e795                	bnez	a5,202b74 <GetFromFbList+0x66>
  202b4a:	002107b7          	lui	a5,0x210
  202b4e:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202b52:	fdc46703          	lwu	a4,-36(s0)
  202b56:	87ba                	mv	a5,a4
  202b58:	0786                	slli	a5,a5,0x1
  202b5a:	97ba                	add	a5,a5,a4
  202b5c:	078a                	slli	a5,a5,0x2
  202b5e:	97b6                	add	a5,a5,a3
  202b60:	0067d783          	lhu	a5,6(a5)
  202b64:	0007871b          	sext.w	a4,a5
  202b68:	4785                	li	a5,1
  202b6a:	02e7ed63          	bltu	a5,a4,202ba4 <GetFromFbList+0x96>
  202b6e:	67c1                	lui	a5,0x10
  202b70:	17fd                	addi	a5,a5,-1
  202b72:	a411                	j	202d76 <GetFromFbList+0x268>
  202b74:	fd842783          	lw	a5,-40(s0)
  202b78:	0007871b          	sext.w	a4,a5
  202b7c:	4785                	li	a5,1
  202b7e:	00f71d63          	bne	a4,a5,202b98 <GetFromFbList+0x8a>
  202b82:	fec42783          	lw	a5,-20(s0)
  202b86:	0007871b          	sext.w	a4,a5
  202b8a:	67c1                	lui	a5,0x10
  202b8c:	17fd                	addi	a5,a5,-1
  202b8e:	00f71b63          	bne	a4,a5,202ba4 <GetFromFbList+0x96>
  202b92:	67c1                	lui	a5,0x10
  202b94:	17fd                	addi	a5,a5,-1
  202b96:	a2c5                	j	202d76 <GetFromFbList+0x268>
  202b98:	0020f7b7          	lui	a5,0x20f
  202b9c:	0e878513          	addi	a0,a5,232 # 20f0e8 <nvme_main+0x632>
  202ba0:	219010ef          	jal	ra,2045b8 <cpl_print>
  202ba4:	002107b7          	lui	a5,0x210
  202ba8:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202bac:	fec46783          	lwu	a5,-20(s0)
  202bb0:	fdc46683          	lwu	a3,-36(s0)
  202bb4:	873e                	mv	a4,a5
  202bb6:	0706                	slli	a4,a4,0x1
  202bb8:	973e                	add	a4,a4,a5
  202bba:	00271793          	slli	a5,a4,0x2
  202bbe:	873e                	mv	a4,a5
  202bc0:	87b6                	mv	a5,a3
  202bc2:	0786                	slli	a5,a5,0x1
  202bc4:	97b6                	add	a5,a5,a3
  202bc6:	07be                	slli	a5,a5,0xf
  202bc8:	97ba                	add	a5,a5,a4
  202bca:	97b2                	add	a5,a5,a2
  202bcc:	00a7d783          	lhu	a5,10(a5)
  202bd0:	0007871b          	sext.w	a4,a5
  202bd4:	67c1                	lui	a5,0x10
  202bd6:	17fd                	addi	a5,a5,-1
  202bd8:	0af70263          	beq	a4,a5,202c7c <GetFromFbList+0x16e>
  202bdc:	002107b7          	lui	a5,0x210
  202be0:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202be4:	002107b7          	lui	a5,0x210
  202be8:	f407b603          	ld	a2,-192(a5) # 20ff40 <virtualDieMapPtr>
  202bec:	fec46783          	lwu	a5,-20(s0)
  202bf0:	fdc46683          	lwu	a3,-36(s0)
  202bf4:	873e                	mv	a4,a5
  202bf6:	0706                	slli	a4,a4,0x1
  202bf8:	973e                	add	a4,a4,a5
  202bfa:	00271793          	slli	a5,a4,0x2
  202bfe:	873e                	mv	a4,a5
  202c00:	87b6                	mv	a5,a3
  202c02:	0786                	slli	a5,a5,0x1
  202c04:	97b6                	add	a5,a5,a3
  202c06:	07be                	slli	a5,a5,0xf
  202c08:	97ba                	add	a5,a5,a4
  202c0a:	97ae                	add	a5,a5,a1
  202c0c:	00a7d683          	lhu	a3,10(a5)
  202c10:	fdc46703          	lwu	a4,-36(s0)
  202c14:	87ba                	mv	a5,a4
  202c16:	0786                	slli	a5,a5,0x1
  202c18:	97ba                	add	a5,a5,a4
  202c1a:	078a                	slli	a5,a5,0x2
  202c1c:	97b2                	add	a5,a5,a2
  202c1e:	00d79123          	sh	a3,2(a5)
  202c22:	002107b7          	lui	a5,0x210
  202c26:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202c2a:	002107b7          	lui	a5,0x210
  202c2e:	f487b583          	ld	a1,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202c32:	fec46783          	lwu	a5,-20(s0)
  202c36:	fdc46683          	lwu	a3,-36(s0)
  202c3a:	873e                	mv	a4,a5
  202c3c:	0706                	slli	a4,a4,0x1
  202c3e:	973e                	add	a4,a4,a5
  202c40:	00271793          	slli	a5,a4,0x2
  202c44:	873e                	mv	a4,a5
  202c46:	87b6                	mv	a5,a3
  202c48:	0786                	slli	a5,a5,0x1
  202c4a:	97b6                	add	a5,a5,a3
  202c4c:	07be                	slli	a5,a5,0xf
  202c4e:	97ba                	add	a5,a5,a4
  202c50:	97ae                	add	a5,a5,a1
  202c52:	00a7d783          	lhu	a5,10(a5)
  202c56:	2781                	sext.w	a5,a5
  202c58:	fdc46683          	lwu	a3,-36(s0)
  202c5c:	873e                	mv	a4,a5
  202c5e:	0706                	slli	a4,a4,0x1
  202c60:	973e                	add	a4,a4,a5
  202c62:	00271793          	slli	a5,a4,0x2
  202c66:	873e                	mv	a4,a5
  202c68:	87b6                	mv	a5,a3
  202c6a:	0786                	slli	a5,a5,0x1
  202c6c:	97b6                	add	a5,a5,a3
  202c6e:	07be                	slli	a5,a5,0xf
  202c70:	97ba                	add	a5,a5,a4
  202c72:	97b2                	add	a5,a5,a2
  202c74:	577d                	li	a4,-1
  202c76:	00e79423          	sh	a4,8(a5)
  202c7a:	a82d                	j	202cb4 <GetFromFbList+0x1a6>
  202c7c:	002107b7          	lui	a5,0x210
  202c80:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202c84:	fdc46703          	lwu	a4,-36(s0)
  202c88:	87ba                	mv	a5,a4
  202c8a:	0786                	slli	a5,a5,0x1
  202c8c:	97ba                	add	a5,a5,a4
  202c8e:	078a                	slli	a5,a5,0x2
  202c90:	97b6                	add	a5,a5,a3
  202c92:	577d                	li	a4,-1
  202c94:	00e79123          	sh	a4,2(a5)
  202c98:	002107b7          	lui	a5,0x210
  202c9c:	f407b683          	ld	a3,-192(a5) # 20ff40 <virtualDieMapPtr>
  202ca0:	fdc46703          	lwu	a4,-36(s0)
  202ca4:	87ba                	mv	a5,a4
  202ca6:	0786                	slli	a5,a5,0x1
  202ca8:	97ba                	add	a5,a5,a4
  202caa:	078a                	slli	a5,a5,0x2
  202cac:	97b6                	add	a5,a5,a3
  202cae:	577d                	li	a4,-1
  202cb0:	00e79223          	sh	a4,4(a5)
  202cb4:	002107b7          	lui	a5,0x210
  202cb8:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202cbc:	fec46783          	lwu	a5,-20(s0)
  202cc0:	fdc46683          	lwu	a3,-36(s0)
  202cc4:	873e                	mv	a4,a5
  202cc6:	0706                	slli	a4,a4,0x1
  202cc8:	973e                	add	a4,a4,a5
  202cca:	00271793          	slli	a5,a4,0x2
  202cce:	873e                	mv	a4,a5
  202cd0:	87b6                	mv	a5,a3
  202cd2:	0786                	slli	a5,a5,0x1
  202cd4:	97b6                	add	a5,a5,a3
  202cd6:	07be                	slli	a5,a5,0xf
  202cd8:	97ba                	add	a5,a5,a4
  202cda:	97b2                	add	a5,a5,a2
  202cdc:	4398                	lw	a4,0(a5)
  202cde:	9b75                	andi	a4,a4,-3
  202ce0:	c398                	sw	a4,0(a5)
  202ce2:	002107b7          	lui	a5,0x210
  202ce6:	f407b703          	ld	a4,-192(a5) # 20ff40 <virtualDieMapPtr>
  202cea:	fdc46683          	lwu	a3,-36(s0)
  202cee:	87b6                	mv	a5,a3
  202cf0:	0786                	slli	a5,a5,0x1
  202cf2:	97b6                	add	a5,a5,a3
  202cf4:	078a                	slli	a5,a5,0x2
  202cf6:	97ba                	add	a5,a5,a4
  202cf8:	0067d783          	lhu	a5,6(a5)
  202cfc:	37fd                	addiw	a5,a5,-1
  202cfe:	03079613          	slli	a2,a5,0x30
  202d02:	9241                	srli	a2,a2,0x30
  202d04:	fdc46683          	lwu	a3,-36(s0)
  202d08:	87b6                	mv	a5,a3
  202d0a:	0786                	slli	a5,a5,0x1
  202d0c:	97b6                	add	a5,a5,a3
  202d0e:	078a                	slli	a5,a5,0x2
  202d10:	97ba                	add	a5,a5,a4
  202d12:	00c79323          	sh	a2,6(a5)
  202d16:	002107b7          	lui	a5,0x210
  202d1a:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202d1e:	fec46783          	lwu	a5,-20(s0)
  202d22:	fdc46683          	lwu	a3,-36(s0)
  202d26:	873e                	mv	a4,a5
  202d28:	0706                	slli	a4,a4,0x1
  202d2a:	973e                	add	a4,a4,a5
  202d2c:	00271793          	slli	a5,a4,0x2
  202d30:	873e                	mv	a4,a5
  202d32:	87b6                	mv	a5,a3
  202d34:	0786                	slli	a5,a5,0x1
  202d36:	97b6                	add	a5,a5,a3
  202d38:	07be                	slli	a5,a5,0xf
  202d3a:	97ba                	add	a5,a5,a4
  202d3c:	97b2                	add	a5,a5,a2
  202d3e:	577d                	li	a4,-1
  202d40:	00e79523          	sh	a4,10(a5)
  202d44:	002107b7          	lui	a5,0x210
  202d48:	f487b603          	ld	a2,-184(a5) # 20ff48 <virtualBlockMapPtr>
  202d4c:	fec46783          	lwu	a5,-20(s0)
  202d50:	fdc46683          	lwu	a3,-36(s0)
  202d54:	873e                	mv	a4,a5
  202d56:	0706                	slli	a4,a4,0x1
  202d58:	973e                	add	a4,a4,a5
  202d5a:	00271793          	slli	a5,a4,0x2
  202d5e:	873e                	mv	a4,a5
  202d60:	87b6                	mv	a5,a3
  202d62:	0786                	slli	a5,a5,0x1
  202d64:	97b6                	add	a5,a5,a3
  202d66:	07be                	slli	a5,a5,0xf
  202d68:	97ba                	add	a5,a5,a4
  202d6a:	97b2                	add	a5,a5,a2
  202d6c:	577d                	li	a4,-1
  202d6e:	00e79423          	sh	a4,8(a5)
  202d72:	fec42783          	lw	a5,-20(s0)
  202d76:	853e                	mv	a0,a5
  202d78:	70a2                	ld	ra,40(sp)
  202d7a:	7402                	ld	s0,32(sp)
  202d7c:	6145                	addi	sp,sp,48
  202d7e:	8082                	ret

0000000000202d80 <UpdatePhyBlockMapForGrownBadBlock>:
  202d80:	1101                	addi	sp,sp,-32
  202d82:	ec22                	sd	s0,24(sp)
  202d84:	1000                	addi	s0,sp,32
  202d86:	87aa                	mv	a5,a0
  202d88:	872e                	mv	a4,a1
  202d8a:	fef42623          	sw	a5,-20(s0)
  202d8e:	87ba                	mv	a5,a4
  202d90:	fef42423          	sw	a5,-24(s0)
  202d94:	002107b7          	lui	a5,0x210
  202d98:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  202d9c:	fe846783          	lwu	a5,-24(s0)
  202da0:	fec46603          	lwu	a2,-20(s0)
  202da4:	6689                	lui	a3,0x2
  202da6:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  202daa:	02d606b3          	mul	a3,a2,a3
  202dae:	97b6                	add	a5,a5,a3
  202db0:	078a                	slli	a5,a5,0x2
  202db2:	97ba                	add	a5,a5,a4
  202db4:	4394                	lw	a3,0(a5)
  202db6:	6741                	lui	a4,0x10
  202db8:	8f55                	or	a4,a4,a3
  202dba:	c398                	sw	a4,0(a5)
  202dbc:	002107b7          	lui	a5,0x210
  202dc0:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  202dc4:	fec46783          	lwu	a5,-20(s0)
  202dc8:	078a                	slli	a5,a5,0x2
  202dca:	97ba                	add	a5,a5,a4
  202dcc:	4394                	lw	a3,0(a5)
  202dce:	6741                	lui	a4,0x10
  202dd0:	8f55                	or	a4,a4,a3
  202dd2:	c398                	sw	a4,0(a5)
  202dd4:	0001                	nop
  202dd6:	6462                	ld	s0,24(sp)
  202dd8:	6105                	addi	sp,sp,32
  202dda:	8082                	ret

0000000000202ddc <UpdateBadBlockTableForGrownBadBlock>:
  202ddc:	7109                	addi	sp,sp,-384
  202dde:	fe86                	sd	ra,376(sp)
  202de0:	faa2                	sd	s0,368(sp)
  202de2:	0300                	addi	s0,sp,384
  202de4:	87aa                	mv	a5,a0
  202de6:	e8f42623          	sw	a5,-372(s0)
  202dea:	e8c42783          	lw	a5,-372(s0)
  202dee:	fef42223          	sw	a5,-28(s0)
  202df2:	6791                	lui	a5,0x4
  202df4:	10078793          	addi	a5,a5,256 # 4100 <start-0x1fbf00>
  202df8:	fef42023          	sw	a5,-32(s0)
  202dfc:	fe042623          	sw	zero,-20(s0)
  202e00:	a815                	j	202e34 <UpdateBadBlockTableForGrownBadBlock+0x58>
  202e02:	fec42703          	lw	a4,-20(s0)
  202e06:	fe042783          	lw	a5,-32(s0)
  202e0a:	02f707bb          	mulw	a5,a4,a5
  202e0e:	2781                	sext.w	a5,a5
  202e10:	fe442703          	lw	a4,-28(s0)
  202e14:	9fb9                	addw	a5,a5,a4
  202e16:	0007871b          	sext.w	a4,a5
  202e1a:	fec46783          	lwu	a5,-20(s0)
  202e1e:	078a                	slli	a5,a5,0x2
  202e20:	ff040693          	addi	a3,s0,-16
  202e24:	97b6                	add	a5,a5,a3
  202e26:	eee7a423          	sw	a4,-280(a5)
  202e2a:	fec42783          	lw	a5,-20(s0)
  202e2e:	2785                	addiw	a5,a5,1
  202e30:	fef42623          	sw	a5,-20(s0)
  202e34:	fec42783          	lw	a5,-20(s0)
  202e38:	0007871b          	sext.w	a4,a5
  202e3c:	03f00793          	li	a5,63
  202e40:	fce7f1e3          	bgeu	a5,a4,202e02 <UpdateBadBlockTableForGrownBadBlock+0x26>
  202e44:	fe042623          	sw	zero,-20(s0)
  202e48:	a8dd                	j	202f3e <UpdateBadBlockTableForGrownBadBlock+0x162>
  202e4a:	002107b7          	lui	a5,0x210
  202e4e:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  202e52:	fec46783          	lwu	a5,-20(s0)
  202e56:	078a                	slli	a5,a5,0x2
  202e58:	97ba                	add	a5,a5,a4
  202e5a:	439c                	lw	a5,0(a5)
  202e5c:	0107d79b          	srliw	a5,a5,0x10
  202e60:	8b85                	andi	a5,a5,1
  202e62:	0ff7f793          	andi	a5,a5,255
  202e66:	873e                	mv	a4,a5
  202e68:	4785                	li	a5,1
  202e6a:	0af71d63          	bne	a4,a5,202f24 <UpdateBadBlockTableForGrownBadBlock+0x148>
  202e6e:	fe042423          	sw	zero,-24(s0)
  202e72:	a079                	j	202f00 <UpdateBadBlockTableForGrownBadBlock+0x124>
  202e74:	fec46783          	lwu	a5,-20(s0)
  202e78:	078a                	slli	a5,a5,0x2
  202e7a:	ff040713          	addi	a4,s0,-16
  202e7e:	97ba                	add	a5,a5,a4
  202e80:	ee87a783          	lw	a5,-280(a5)
  202e84:	fe842703          	lw	a4,-24(s0)
  202e88:	9fb9                	addw	a5,a5,a4
  202e8a:	2781                	sext.w	a5,a5
  202e8c:	1782                	slli	a5,a5,0x20
  202e8e:	9381                	srli	a5,a5,0x20
  202e90:	fcf43c23          	sd	a5,-40(s0)
  202e94:	002107b7          	lui	a5,0x210
  202e98:	f587b703          	ld	a4,-168(a5) # 20ff58 <bbtInfoMapPtr>
  202e9c:	fec46783          	lwu	a5,-20(s0)
  202ea0:	078a                	slli	a5,a5,0x2
  202ea2:	97ba                	add	a5,a5,a4
  202ea4:	0007d783          	lhu	a5,0(a5)
  202ea8:	0007871b          	sext.w	a4,a5
  202eac:	fe842783          	lw	a5,-24(s0)
  202eb0:	2781                	sext.w	a5,a5
  202eb2:	02e78e63          	beq	a5,a4,202eee <UpdateBadBlockTableForGrownBadBlock+0x112>
  202eb6:	002107b7          	lui	a5,0x210
  202eba:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  202ebe:	fe846783          	lwu	a5,-24(s0)
  202ec2:	fec46603          	lwu	a2,-20(s0)
  202ec6:	6689                	lui	a3,0x2
  202ec8:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  202ecc:	02d606b3          	mul	a3,a2,a3
  202ed0:	97b6                	add	a5,a5,a3
  202ed2:	078a                	slli	a5,a5,0x2
  202ed4:	97ba                	add	a5,a5,a4
  202ed6:	439c                	lw	a5,0(a5)
  202ed8:	0107d79b          	srliw	a5,a5,0x10
  202edc:	8b85                	andi	a5,a5,1
  202ede:	0ff7f793          	andi	a5,a5,255
  202ee2:	873e                	mv	a4,a5
  202ee4:	fd843783          	ld	a5,-40(s0)
  202ee8:	00e78023          	sb	a4,0(a5)
  202eec:	a029                	j	202ef6 <UpdateBadBlockTableForGrownBadBlock+0x11a>
  202eee:	fd843783          	ld	a5,-40(s0)
  202ef2:	00078023          	sb	zero,0(a5)
  202ef6:	fe842783          	lw	a5,-24(s0)
  202efa:	2785                	addiw	a5,a5,1
  202efc:	fef42423          	sw	a5,-24(s0)
  202f00:	fe842783          	lw	a5,-24(s0)
  202f04:	0007871b          	sext.w	a4,a5
  202f08:	6789                	lui	a5,0x2
  202f0a:	0af78793          	addi	a5,a5,175 # 20af <start-0x1fdf51>
  202f0e:	f6e7f3e3          	bgeu	a5,a4,202e74 <UpdateBadBlockTableForGrownBadBlock+0x98>
  202f12:	fec46783          	lwu	a5,-20(s0)
  202f16:	ff040713          	addi	a4,s0,-16
  202f1a:	97ba                	add	a5,a5,a4
  202f1c:	470d                	li	a4,3
  202f1e:	eae78423          	sb	a4,-344(a5)
  202f22:	a809                	j	202f34 <UpdateBadBlockTableForGrownBadBlock+0x158>
  202f24:	fec46783          	lwu	a5,-20(s0)
  202f28:	ff040713          	addi	a4,s0,-16
  202f2c:	97ba                	add	a5,a5,a4
  202f2e:	4709                	li	a4,2
  202f30:	eae78423          	sb	a4,-344(a5)
  202f34:	fec42783          	lw	a5,-20(s0)
  202f38:	2785                	addiw	a5,a5,1
  202f3a:	fef42623          	sw	a5,-20(s0)
  202f3e:	fec42783          	lw	a5,-20(s0)
  202f42:	0007871b          	sext.w	a4,a5
  202f46:	03f00793          	li	a5,63
  202f4a:	f0e7f0e3          	bgeu	a5,a4,202e4a <UpdateBadBlockTableForGrownBadBlock+0x6e>
  202f4e:	fe042683          	lw	a3,-32(s0)
  202f52:	ed840713          	addi	a4,s0,-296
  202f56:	e9840793          	addi	a5,s0,-360
  202f5a:	8636                	mv	a2,a3
  202f5c:	85ba                	mv	a1,a4
  202f5e:	853e                	mv	a0,a5
  202f60:	bc6fe0ef          	jal	ra,201326 <SaveBadBlockTable>
  202f64:	0001                	nop
  202f66:	70f6                	ld	ra,376(sp)
  202f68:	7456                	ld	s0,368(sp)
  202f6a:	6119                	addi	sp,sp,384
  202f6c:	8082                	ret

0000000000202f6e <InitReqPool>:
  202f6e:	1101                	addi	sp,sp,-32
  202f70:	ec22                	sd	s0,24(sp)
  202f72:	1000                	addi	s0,sp,32
  202f74:	002107b7          	lui	a5,0x210
  202f78:	38818737          	lui	a4,0x38818
  202f7c:	60070713          	addi	a4,a4,1536 # 38818600 <g_nvmeTask+0x38608198>
  202f80:	18e7b023          	sd	a4,384(a5) # 210180 <reqPoolPtr>
  202f84:	002107b7          	lui	a5,0x210
  202f88:	18079423          	sh	zero,392(a5) # 210188 <freeReqQ>
  202f8c:	002107b7          	lui	a5,0x210
  202f90:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  202f94:	6709                	lui	a4,0x2
  202f96:	177d                	addi	a4,a4,-1
  202f98:	00e79123          	sh	a4,2(a5)
  202f9c:	002107b7          	lui	a5,0x210
  202fa0:	577d                	li	a4,-1
  202fa2:	f6e79823          	sh	a4,-144(a5) # 20ff70 <sliceReqQ>
  202fa6:	002107b7          	lui	a5,0x210
  202faa:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  202fae:	577d                	li	a4,-1
  202fb0:	00e79123          	sh	a4,2(a5)
  202fb4:	002107b7          	lui	a5,0x210
  202fb8:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  202fbc:	00079223          	sh	zero,4(a5)
  202fc0:	002107b7          	lui	a5,0x210
  202fc4:	577d                	li	a4,-1
  202fc6:	f6e79c23          	sh	a4,-136(a5) # 20ff78 <blockedByBufDepReqQ>
  202fca:	002107b7          	lui	a5,0x210
  202fce:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  202fd2:	577d                	li	a4,-1
  202fd4:	00e79123          	sh	a4,2(a5)
  202fd8:	002107b7          	lui	a5,0x210
  202fdc:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  202fe0:	00079223          	sh	zero,4(a5)
  202fe4:	002107b7          	lui	a5,0x210
  202fe8:	577d                	li	a4,-1
  202fea:	18e79823          	sh	a4,400(a5) # 210190 <nvmeDmaReqQ>
  202fee:	002107b7          	lui	a5,0x210
  202ff2:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  202ff6:	577d                	li	a4,-1
  202ff8:	00e79123          	sh	a4,2(a5)
  202ffc:	002107b7          	lui	a5,0x210
  203000:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203004:	00079223          	sh	zero,4(a5)
  203008:	fe042623          	sw	zero,-20(s0)
  20300c:	a8e9                	j	2030e6 <InitReqPool+0x178>
  20300e:	fe042423          	sw	zero,-24(s0)
  203012:	a875                	j	2030ce <InitReqPool+0x160>
  203014:	002107b7          	lui	a5,0x210
  203018:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  20301c:	fe842783          	lw	a5,-24(s0)
  203020:	fec42683          	lw	a3,-20(s0)
  203024:	068e                	slli	a3,a3,0x3
  203026:	97b6                	add	a5,a5,a3
  203028:	078e                	slli	a5,a5,0x3
  20302a:	97ba                	add	a5,a5,a4
  20302c:	577d                	li	a4,-1
  20302e:	00e79023          	sh	a4,0(a5)
  203032:	002107b7          	lui	a5,0x210
  203036:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  20303a:	fe842783          	lw	a5,-24(s0)
  20303e:	fec42683          	lw	a3,-20(s0)
  203042:	068e                	slli	a3,a3,0x3
  203044:	97b6                	add	a5,a5,a3
  203046:	078e                	slli	a5,a5,0x3
  203048:	97ba                	add	a5,a5,a4
  20304a:	577d                	li	a4,-1
  20304c:	00e79123          	sh	a4,2(a5)
  203050:	002107b7          	lui	a5,0x210
  203054:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203058:	fe842783          	lw	a5,-24(s0)
  20305c:	fec42683          	lw	a3,-20(s0)
  203060:	068e                	slli	a3,a3,0x3
  203062:	97b6                	add	a5,a5,a3
  203064:	078e                	slli	a5,a5,0x3
  203066:	97ba                	add	a5,a5,a4
  203068:	00079223          	sh	zero,4(a5)
  20306c:	002107b7          	lui	a5,0x210
  203070:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  203074:	fe842783          	lw	a5,-24(s0)
  203078:	fec42683          	lw	a3,-20(s0)
  20307c:	068e                	slli	a3,a3,0x3
  20307e:	97b6                	add	a5,a5,a3
  203080:	078e                	slli	a5,a5,0x3
  203082:	97ba                	add	a5,a5,a4
  203084:	577d                	li	a4,-1
  203086:	00e79023          	sh	a4,0(a5)
  20308a:	002107b7          	lui	a5,0x210
  20308e:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  203092:	fe842783          	lw	a5,-24(s0)
  203096:	fec42683          	lw	a3,-20(s0)
  20309a:	068e                	slli	a3,a3,0x3
  20309c:	97b6                	add	a5,a5,a3
  20309e:	078e                	slli	a5,a5,0x3
  2030a0:	97ba                	add	a5,a5,a4
  2030a2:	577d                	li	a4,-1
  2030a4:	00e79123          	sh	a4,2(a5)
  2030a8:	002107b7          	lui	a5,0x210
  2030ac:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2030b0:	fe842783          	lw	a5,-24(s0)
  2030b4:	fec42683          	lw	a3,-20(s0)
  2030b8:	068e                	slli	a3,a3,0x3
  2030ba:	97b6                	add	a5,a5,a3
  2030bc:	078e                	slli	a5,a5,0x3
  2030be:	97ba                	add	a5,a5,a4
  2030c0:	00079223          	sh	zero,4(a5)
  2030c4:	fe842783          	lw	a5,-24(s0)
  2030c8:	2785                	addiw	a5,a5,1
  2030ca:	fef42423          	sw	a5,-24(s0)
  2030ce:	fe842783          	lw	a5,-24(s0)
  2030d2:	0007871b          	sext.w	a4,a5
  2030d6:	479d                	li	a5,7
  2030d8:	f2e7dee3          	bge	a5,a4,203014 <InitReqPool+0xa6>
  2030dc:	fec42783          	lw	a5,-20(s0)
  2030e0:	2785                	addiw	a5,a5,1
  2030e2:	fef42623          	sw	a5,-20(s0)
  2030e6:	fec42783          	lw	a5,-20(s0)
  2030ea:	0007871b          	sext.w	a4,a5
  2030ee:	479d                	li	a5,7
  2030f0:	f0e7dfe3          	bge	a5,a4,20300e <InitReqPool+0xa0>
  2030f4:	fe042223          	sw	zero,-28(s0)
  2030f8:	a86d                	j	2031b2 <InitReqPool+0x244>
  2030fa:	002107b7          	lui	a5,0x210
  2030fe:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203102:	fe442683          	lw	a3,-28(s0)
  203106:	03400793          	li	a5,52
  20310a:	02f687b3          	mul	a5,a3,a5
  20310e:	97ba                	add	a5,a5,a4
  203110:	4398                	lw	a4,0(a5)
  203112:	f0f77713          	andi	a4,a4,-241
  203116:	01076713          	ori	a4,a4,16
  20311a:	c398                	sw	a4,0(a5)
  20311c:	002107b7          	lui	a5,0x210
  203120:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203124:	fe442683          	lw	a3,-28(s0)
  203128:	03400793          	li	a5,52
  20312c:	02f687b3          	mul	a5,a3,a5
  203130:	97ba                	add	a5,a5,a4
  203132:	577d                	li	a4,-1
  203134:	02e79823          	sh	a4,48(a5)
  203138:	002107b7          	lui	a5,0x210
  20313c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203140:	fe442683          	lw	a3,-28(s0)
  203144:	03400793          	li	a5,52
  203148:	02f687b3          	mul	a5,a3,a5
  20314c:	97ba                	add	a5,a5,a4
  20314e:	577d                	li	a4,-1
  203150:	02e79923          	sh	a4,50(a5)
  203154:	fe442783          	lw	a5,-28(s0)
  203158:	17c2                	slli	a5,a5,0x30
  20315a:	93c1                	srli	a5,a5,0x30
  20315c:	00210737          	lui	a4,0x210
  203160:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  203164:	37fd                	addiw	a5,a5,-1
  203166:	03079713          	slli	a4,a5,0x30
  20316a:	9341                	srli	a4,a4,0x30
  20316c:	fe442603          	lw	a2,-28(s0)
  203170:	03400793          	li	a5,52
  203174:	02f607b3          	mul	a5,a2,a5
  203178:	97b6                	add	a5,a5,a3
  20317a:	02e79623          	sh	a4,44(a5)
  20317e:	fe442783          	lw	a5,-28(s0)
  203182:	17c2                	slli	a5,a5,0x30
  203184:	93c1                	srli	a5,a5,0x30
  203186:	00210737          	lui	a4,0x210
  20318a:	18073683          	ld	a3,384(a4) # 210180 <reqPoolPtr>
  20318e:	2785                	addiw	a5,a5,1
  203190:	03079713          	slli	a4,a5,0x30
  203194:	9341                	srli	a4,a4,0x30
  203196:	fe442603          	lw	a2,-28(s0)
  20319a:	03400793          	li	a5,52
  20319e:	02f607b3          	mul	a5,a2,a5
  2031a2:	97b6                	add	a5,a5,a3
  2031a4:	02e79723          	sh	a4,46(a5)
  2031a8:	fe442783          	lw	a5,-28(s0)
  2031ac:	2785                	addiw	a5,a5,1
  2031ae:	fef42223          	sw	a5,-28(s0)
  2031b2:	fe442783          	lw	a5,-28(s0)
  2031b6:	0007871b          	sext.w	a4,a5
  2031ba:	6789                	lui	a5,0x2
  2031bc:	f2f74fe3          	blt	a4,a5,2030fa <InitReqPool+0x18c>
  2031c0:	002107b7          	lui	a5,0x210
  2031c4:	1807b783          	ld	a5,384(a5) # 210180 <reqPoolPtr>
  2031c8:	577d                	li	a4,-1
  2031ca:	02e79623          	sh	a4,44(a5)
  2031ce:	002107b7          	lui	a5,0x210
  2031d2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2031d6:	000687b7          	lui	a5,0x68
  2031da:	97ba                	add	a5,a5,a4
  2031dc:	577d                	li	a4,-1
  2031de:	fee79d23          	sh	a4,-6(a5) # 67ffa <start-0x198006>
  2031e2:	002107b7          	lui	a5,0x210
  2031e6:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  2031ea:	6709                	lui	a4,0x2
  2031ec:	00e79223          	sh	a4,4(a5)
  2031f0:	002107b7          	lui	a5,0x210
  2031f4:	f607a423          	sw	zero,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  2031f8:	002107b7          	lui	a5,0x210
  2031fc:	3807ac23          	sw	zero,920(a5) # 210398 <blockedReqCnt>
  203200:	0001                	nop
  203202:	6462                	ld	s0,24(sp)
  203204:	6105                	addi	sp,sp,32
  203206:	8082                	ret

0000000000203208 <PutToFreeReqQ>:
  203208:	1101                	addi	sp,sp,-32
  20320a:	ec22                	sd	s0,24(sp)
  20320c:	1000                	addi	s0,sp,32
  20320e:	87aa                	mv	a5,a0
  203210:	fef42623          	sw	a5,-20(s0)
  203214:	002107b7          	lui	a5,0x210
  203218:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  20321c:	0027d783          	lhu	a5,2(a5)
  203220:	0007871b          	sext.w	a4,a5
  203224:	67c1                	lui	a5,0x10
  203226:	17fd                	addi	a5,a5,-1
  203228:	08f70763          	beq	a4,a5,2032b6 <PutToFreeReqQ+0xae>
  20322c:	002107b7          	lui	a5,0x210
  203230:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203234:	002107b7          	lui	a5,0x210
  203238:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  20323c:	0027d703          	lhu	a4,2(a5)
  203240:	fec46603          	lwu	a2,-20(s0)
  203244:	03400793          	li	a5,52
  203248:	02f607b3          	mul	a5,a2,a5
  20324c:	97b6                	add	a5,a5,a3
  20324e:	02e79623          	sh	a4,44(a5)
  203252:	002107b7          	lui	a5,0x210
  203256:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20325a:	fec46683          	lwu	a3,-20(s0)
  20325e:	03400793          	li	a5,52
  203262:	02f687b3          	mul	a5,a3,a5
  203266:	97ba                	add	a5,a5,a4
  203268:	577d                	li	a4,-1
  20326a:	02e79723          	sh	a4,46(a5)
  20326e:	002107b7          	lui	a5,0x210
  203272:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203276:	002107b7          	lui	a5,0x210
  20327a:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  20327e:	0027d783          	lhu	a5,2(a5)
  203282:	0007861b          	sext.w	a2,a5
  203286:	fec42783          	lw	a5,-20(s0)
  20328a:	03079713          	slli	a4,a5,0x30
  20328e:	9341                	srli	a4,a4,0x30
  203290:	03400793          	li	a5,52
  203294:	02f607b3          	mul	a5,a2,a5
  203298:	97b6                	add	a5,a5,a3
  20329a:	02e79723          	sh	a4,46(a5)
  20329e:	fec42783          	lw	a5,-20(s0)
  2032a2:	03079713          	slli	a4,a5,0x30
  2032a6:	9341                	srli	a4,a4,0x30
  2032a8:	002107b7          	lui	a5,0x210
  2032ac:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  2032b0:	00e79123          	sh	a4,2(a5)
  2032b4:	a08d                	j	203316 <PutToFreeReqQ+0x10e>
  2032b6:	002107b7          	lui	a5,0x210
  2032ba:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2032be:	fec46683          	lwu	a3,-20(s0)
  2032c2:	03400793          	li	a5,52
  2032c6:	02f687b3          	mul	a5,a3,a5
  2032ca:	97ba                	add	a5,a5,a4
  2032cc:	577d                	li	a4,-1
  2032ce:	02e79623          	sh	a4,44(a5)
  2032d2:	002107b7          	lui	a5,0x210
  2032d6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2032da:	fec46683          	lwu	a3,-20(s0)
  2032de:	03400793          	li	a5,52
  2032e2:	02f687b3          	mul	a5,a3,a5
  2032e6:	97ba                	add	a5,a5,a4
  2032e8:	577d                	li	a4,-1
  2032ea:	02e79723          	sh	a4,46(a5)
  2032ee:	fec42783          	lw	a5,-20(s0)
  2032f2:	03079713          	slli	a4,a5,0x30
  2032f6:	9341                	srli	a4,a4,0x30
  2032f8:	002107b7          	lui	a5,0x210
  2032fc:	18e79423          	sh	a4,392(a5) # 210188 <freeReqQ>
  203300:	fec42783          	lw	a5,-20(s0)
  203304:	03079713          	slli	a4,a5,0x30
  203308:	9341                	srli	a4,a4,0x30
  20330a:	002107b7          	lui	a5,0x210
  20330e:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203312:	00e79123          	sh	a4,2(a5)
  203316:	002107b7          	lui	a5,0x210
  20331a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20331e:	fec46683          	lwu	a3,-20(s0)
  203322:	03400793          	li	a5,52
  203326:	02f687b3          	mul	a5,a3,a5
  20332a:	97ba                	add	a5,a5,a4
  20332c:	4398                	lw	a4,0(a5)
  20332e:	f0f77713          	andi	a4,a4,-241
  203332:	01076713          	ori	a4,a4,16
  203336:	c398                	sw	a4,0(a5)
  203338:	002107b7          	lui	a5,0x210
  20333c:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203340:	0047d783          	lhu	a5,4(a5)
  203344:	2785                	addiw	a5,a5,1
  203346:	03079713          	slli	a4,a5,0x30
  20334a:	9341                	srli	a4,a4,0x30
  20334c:	002107b7          	lui	a5,0x210
  203350:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203354:	00e79223          	sh	a4,4(a5)
  203358:	0001                	nop
  20335a:	6462                	ld	s0,24(sp)
  20335c:	6105                	addi	sp,sp,32
  20335e:	8082                	ret

0000000000203360 <GetFromFreeReqQ>:
  203360:	1101                	addi	sp,sp,-32
  203362:	ec06                	sd	ra,24(sp)
  203364:	e822                	sd	s0,16(sp)
  203366:	1000                	addi	s0,sp,32
  203368:	002107b7          	lui	a5,0x210
  20336c:	1887d783          	lhu	a5,392(a5) # 210188 <freeReqQ>
  203370:	fef42623          	sw	a5,-20(s0)
  203374:	fec42783          	lw	a5,-20(s0)
  203378:	0007871b          	sext.w	a4,a5
  20337c:	67c1                	lui	a5,0x10
  20337e:	17fd                	addi	a5,a5,-1
  203380:	00f71a63          	bne	a4,a5,203394 <GetFromFreeReqQ+0x34>
  203384:	1c8020ef          	jal	ra,20554c <SyncAvailFreeReq>
  203388:	002107b7          	lui	a5,0x210
  20338c:	1887d783          	lhu	a5,392(a5) # 210188 <freeReqQ>
  203390:	fef42623          	sw	a5,-20(s0)
  203394:	002107b7          	lui	a5,0x210
  203398:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20339c:	fec46683          	lwu	a3,-20(s0)
  2033a0:	03400793          	li	a5,52
  2033a4:	02f687b3          	mul	a5,a3,a5
  2033a8:	97ba                	add	a5,a5,a4
  2033aa:	02e7d783          	lhu	a5,46(a5)
  2033ae:	0007871b          	sext.w	a4,a5
  2033b2:	67c1                	lui	a5,0x10
  2033b4:	17fd                	addi	a5,a5,-1
  2033b6:	04f70f63          	beq	a4,a5,203414 <GetFromFreeReqQ+0xb4>
  2033ba:	002107b7          	lui	a5,0x210
  2033be:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2033c2:	fec46683          	lwu	a3,-20(s0)
  2033c6:	03400793          	li	a5,52
  2033ca:	02f687b3          	mul	a5,a3,a5
  2033ce:	97ba                	add	a5,a5,a4
  2033d0:	02e7d703          	lhu	a4,46(a5)
  2033d4:	002107b7          	lui	a5,0x210
  2033d8:	18e79423          	sh	a4,392(a5) # 210188 <freeReqQ>
  2033dc:	002107b7          	lui	a5,0x210
  2033e0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2033e4:	002107b7          	lui	a5,0x210
  2033e8:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2033ec:	fec46603          	lwu	a2,-20(s0)
  2033f0:	03400793          	li	a5,52
  2033f4:	02f607b3          	mul	a5,a2,a5
  2033f8:	97b6                	add	a5,a5,a3
  2033fa:	02e7d783          	lhu	a5,46(a5)
  2033fe:	0007869b          	sext.w	a3,a5
  203402:	03400793          	li	a5,52
  203406:	02f687b3          	mul	a5,a3,a5
  20340a:	97ba                	add	a5,a5,a4
  20340c:	577d                	li	a4,-1
  20340e:	02e79623          	sh	a4,44(a5)
  203412:	a829                	j	20342c <GetFromFreeReqQ+0xcc>
  203414:	002107b7          	lui	a5,0x210
  203418:	577d                	li	a4,-1
  20341a:	18e79423          	sh	a4,392(a5) # 210188 <freeReqQ>
  20341e:	002107b7          	lui	a5,0x210
  203422:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203426:	577d                	li	a4,-1
  203428:	00e79123          	sh	a4,2(a5)
  20342c:	002107b7          	lui	a5,0x210
  203430:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203434:	fec46683          	lwu	a3,-20(s0)
  203438:	03400793          	li	a5,52
  20343c:	02f687b3          	mul	a5,a3,a5
  203440:	97ba                	add	a5,a5,a4
  203442:	4398                	lw	a4,0(a5)
  203444:	f0f77713          	andi	a4,a4,-241
  203448:	c398                	sw	a4,0(a5)
  20344a:	002107b7          	lui	a5,0x210
  20344e:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203452:	0047d783          	lhu	a5,4(a5)
  203456:	37fd                	addiw	a5,a5,-1
  203458:	03079713          	slli	a4,a5,0x30
  20345c:	9341                	srli	a4,a4,0x30
  20345e:	002107b7          	lui	a5,0x210
  203462:	18878793          	addi	a5,a5,392 # 210188 <freeReqQ>
  203466:	00e79223          	sh	a4,4(a5)
  20346a:	fec42783          	lw	a5,-20(s0)
  20346e:	853e                	mv	a0,a5
  203470:	60e2                	ld	ra,24(sp)
  203472:	6442                	ld	s0,16(sp)
  203474:	6105                	addi	sp,sp,32
  203476:	8082                	ret

0000000000203478 <PutToSliceReqQ>:
  203478:	1101                	addi	sp,sp,-32
  20347a:	ec22                	sd	s0,24(sp)
  20347c:	1000                	addi	s0,sp,32
  20347e:	87aa                	mv	a5,a0
  203480:	fef42623          	sw	a5,-20(s0)
  203484:	002107b7          	lui	a5,0x210
  203488:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  20348c:	0027d783          	lhu	a5,2(a5)
  203490:	0007871b          	sext.w	a4,a5
  203494:	67c1                	lui	a5,0x10
  203496:	17fd                	addi	a5,a5,-1
  203498:	08f70763          	beq	a4,a5,203526 <PutToSliceReqQ+0xae>
  20349c:	002107b7          	lui	a5,0x210
  2034a0:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2034a4:	002107b7          	lui	a5,0x210
  2034a8:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2034ac:	0027d703          	lhu	a4,2(a5)
  2034b0:	fec46603          	lwu	a2,-20(s0)
  2034b4:	03400793          	li	a5,52
  2034b8:	02f607b3          	mul	a5,a2,a5
  2034bc:	97b6                	add	a5,a5,a3
  2034be:	02e79623          	sh	a4,44(a5)
  2034c2:	002107b7          	lui	a5,0x210
  2034c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2034ca:	fec46683          	lwu	a3,-20(s0)
  2034ce:	03400793          	li	a5,52
  2034d2:	02f687b3          	mul	a5,a3,a5
  2034d6:	97ba                	add	a5,a5,a4
  2034d8:	577d                	li	a4,-1
  2034da:	02e79723          	sh	a4,46(a5)
  2034de:	002107b7          	lui	a5,0x210
  2034e2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2034e6:	002107b7          	lui	a5,0x210
  2034ea:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2034ee:	0027d783          	lhu	a5,2(a5)
  2034f2:	0007861b          	sext.w	a2,a5
  2034f6:	fec42783          	lw	a5,-20(s0)
  2034fa:	03079713          	slli	a4,a5,0x30
  2034fe:	9341                	srli	a4,a4,0x30
  203500:	03400793          	li	a5,52
  203504:	02f607b3          	mul	a5,a2,a5
  203508:	97b6                	add	a5,a5,a3
  20350a:	02e79723          	sh	a4,46(a5)
  20350e:	fec42783          	lw	a5,-20(s0)
  203512:	03079713          	slli	a4,a5,0x30
  203516:	9341                	srli	a4,a4,0x30
  203518:	002107b7          	lui	a5,0x210
  20351c:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  203520:	00e79123          	sh	a4,2(a5)
  203524:	a08d                	j	203586 <PutToSliceReqQ+0x10e>
  203526:	002107b7          	lui	a5,0x210
  20352a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20352e:	fec46683          	lwu	a3,-20(s0)
  203532:	03400793          	li	a5,52
  203536:	02f687b3          	mul	a5,a3,a5
  20353a:	97ba                	add	a5,a5,a4
  20353c:	577d                	li	a4,-1
  20353e:	02e79623          	sh	a4,44(a5)
  203542:	002107b7          	lui	a5,0x210
  203546:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20354a:	fec46683          	lwu	a3,-20(s0)
  20354e:	03400793          	li	a5,52
  203552:	02f687b3          	mul	a5,a3,a5
  203556:	97ba                	add	a5,a5,a4
  203558:	577d                	li	a4,-1
  20355a:	02e79723          	sh	a4,46(a5)
  20355e:	fec42783          	lw	a5,-20(s0)
  203562:	03079713          	slli	a4,a5,0x30
  203566:	9341                	srli	a4,a4,0x30
  203568:	002107b7          	lui	a5,0x210
  20356c:	f6e79823          	sh	a4,-144(a5) # 20ff70 <sliceReqQ>
  203570:	fec42783          	lw	a5,-20(s0)
  203574:	03079713          	slli	a4,a5,0x30
  203578:	9341                	srli	a4,a4,0x30
  20357a:	002107b7          	lui	a5,0x210
  20357e:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  203582:	00e79123          	sh	a4,2(a5)
  203586:	002107b7          	lui	a5,0x210
  20358a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20358e:	fec46683          	lwu	a3,-20(s0)
  203592:	03400793          	li	a5,52
  203596:	02f687b3          	mul	a5,a3,a5
  20359a:	97ba                	add	a5,a5,a4
  20359c:	4398                	lw	a4,0(a5)
  20359e:	f0f77713          	andi	a4,a4,-241
  2035a2:	02076713          	ori	a4,a4,32
  2035a6:	c398                	sw	a4,0(a5)
  2035a8:	002107b7          	lui	a5,0x210
  2035ac:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2035b0:	0047d783          	lhu	a5,4(a5)
  2035b4:	2785                	addiw	a5,a5,1
  2035b6:	03079713          	slli	a4,a5,0x30
  2035ba:	9341                	srli	a4,a4,0x30
  2035bc:	002107b7          	lui	a5,0x210
  2035c0:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2035c4:	00e79223          	sh	a4,4(a5)
  2035c8:	0001                	nop
  2035ca:	6462                	ld	s0,24(sp)
  2035cc:	6105                	addi	sp,sp,32
  2035ce:	8082                	ret

00000000002035d0 <GetFromSliceReqQ>:
  2035d0:	1101                	addi	sp,sp,-32
  2035d2:	ec22                	sd	s0,24(sp)
  2035d4:	1000                	addi	s0,sp,32
  2035d6:	002107b7          	lui	a5,0x210
  2035da:	f707d783          	lhu	a5,-144(a5) # 20ff70 <sliceReqQ>
  2035de:	fef42623          	sw	a5,-20(s0)
  2035e2:	fec42783          	lw	a5,-20(s0)
  2035e6:	0007871b          	sext.w	a4,a5
  2035ea:	67c1                	lui	a5,0x10
  2035ec:	17fd                	addi	a5,a5,-1
  2035ee:	00f71563          	bne	a4,a5,2035f8 <GetFromSliceReqQ+0x28>
  2035f2:	67c1                	lui	a5,0x10
  2035f4:	17fd                	addi	a5,a5,-1
  2035f6:	a8f1                	j	2036d2 <GetFromSliceReqQ+0x102>
  2035f8:	002107b7          	lui	a5,0x210
  2035fc:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203600:	fec46683          	lwu	a3,-20(s0)
  203604:	03400793          	li	a5,52
  203608:	02f687b3          	mul	a5,a3,a5
  20360c:	97ba                	add	a5,a5,a4
  20360e:	02e7d783          	lhu	a5,46(a5)
  203612:	0007871b          	sext.w	a4,a5
  203616:	67c1                	lui	a5,0x10
  203618:	17fd                	addi	a5,a5,-1
  20361a:	04f70f63          	beq	a4,a5,203678 <GetFromSliceReqQ+0xa8>
  20361e:	002107b7          	lui	a5,0x210
  203622:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203626:	fec46683          	lwu	a3,-20(s0)
  20362a:	03400793          	li	a5,52
  20362e:	02f687b3          	mul	a5,a3,a5
  203632:	97ba                	add	a5,a5,a4
  203634:	02e7d703          	lhu	a4,46(a5)
  203638:	002107b7          	lui	a5,0x210
  20363c:	f6e79823          	sh	a4,-144(a5) # 20ff70 <sliceReqQ>
  203640:	002107b7          	lui	a5,0x210
  203644:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203648:	002107b7          	lui	a5,0x210
  20364c:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203650:	fec46603          	lwu	a2,-20(s0)
  203654:	03400793          	li	a5,52
  203658:	02f607b3          	mul	a5,a2,a5
  20365c:	97b6                	add	a5,a5,a3
  20365e:	02e7d783          	lhu	a5,46(a5)
  203662:	0007869b          	sext.w	a3,a5
  203666:	03400793          	li	a5,52
  20366a:	02f687b3          	mul	a5,a3,a5
  20366e:	97ba                	add	a5,a5,a4
  203670:	577d                	li	a4,-1
  203672:	02e79623          	sh	a4,44(a5)
  203676:	a829                	j	203690 <GetFromSliceReqQ+0xc0>
  203678:	002107b7          	lui	a5,0x210
  20367c:	577d                	li	a4,-1
  20367e:	f6e79823          	sh	a4,-144(a5) # 20ff70 <sliceReqQ>
  203682:	002107b7          	lui	a5,0x210
  203686:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  20368a:	577d                	li	a4,-1
  20368c:	00e79123          	sh	a4,2(a5)
  203690:	002107b7          	lui	a5,0x210
  203694:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203698:	fec46683          	lwu	a3,-20(s0)
  20369c:	03400793          	li	a5,52
  2036a0:	02f687b3          	mul	a5,a3,a5
  2036a4:	97ba                	add	a5,a5,a4
  2036a6:	4398                	lw	a4,0(a5)
  2036a8:	f0f77713          	andi	a4,a4,-241
  2036ac:	c398                	sw	a4,0(a5)
  2036ae:	002107b7          	lui	a5,0x210
  2036b2:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2036b6:	0047d783          	lhu	a5,4(a5)
  2036ba:	37fd                	addiw	a5,a5,-1
  2036bc:	03079713          	slli	a4,a5,0x30
  2036c0:	9341                	srli	a4,a4,0x30
  2036c2:	002107b7          	lui	a5,0x210
  2036c6:	f7078793          	addi	a5,a5,-144 # 20ff70 <sliceReqQ>
  2036ca:	00e79223          	sh	a4,4(a5)
  2036ce:	fec42783          	lw	a5,-20(s0)
  2036d2:	853e                	mv	a0,a5
  2036d4:	6462                	ld	s0,24(sp)
  2036d6:	6105                	addi	sp,sp,32
  2036d8:	8082                	ret

00000000002036da <PutToBlockedByBufDepReqQ>:
  2036da:	1101                	addi	sp,sp,-32
  2036dc:	ec22                	sd	s0,24(sp)
  2036de:	1000                	addi	s0,sp,32
  2036e0:	87aa                	mv	a5,a0
  2036e2:	fef42623          	sw	a5,-20(s0)
  2036e6:	002107b7          	lui	a5,0x210
  2036ea:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  2036ee:	0027d783          	lhu	a5,2(a5)
  2036f2:	0007871b          	sext.w	a4,a5
  2036f6:	67c1                	lui	a5,0x10
  2036f8:	17fd                	addi	a5,a5,-1
  2036fa:	08f70763          	beq	a4,a5,203788 <PutToBlockedByBufDepReqQ+0xae>
  2036fe:	002107b7          	lui	a5,0x210
  203702:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203706:	002107b7          	lui	a5,0x210
  20370a:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  20370e:	0027d703          	lhu	a4,2(a5)
  203712:	fec46603          	lwu	a2,-20(s0)
  203716:	03400793          	li	a5,52
  20371a:	02f607b3          	mul	a5,a2,a5
  20371e:	97b6                	add	a5,a5,a3
  203720:	02e79623          	sh	a4,44(a5)
  203724:	002107b7          	lui	a5,0x210
  203728:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20372c:	fec46683          	lwu	a3,-20(s0)
  203730:	03400793          	li	a5,52
  203734:	02f687b3          	mul	a5,a3,a5
  203738:	97ba                	add	a5,a5,a4
  20373a:	577d                	li	a4,-1
  20373c:	02e79723          	sh	a4,46(a5)
  203740:	002107b7          	lui	a5,0x210
  203744:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203748:	002107b7          	lui	a5,0x210
  20374c:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203750:	0027d783          	lhu	a5,2(a5)
  203754:	0007861b          	sext.w	a2,a5
  203758:	fec42783          	lw	a5,-20(s0)
  20375c:	03079713          	slli	a4,a5,0x30
  203760:	9341                	srli	a4,a4,0x30
  203762:	03400793          	li	a5,52
  203766:	02f607b3          	mul	a5,a2,a5
  20376a:	97b6                	add	a5,a5,a3
  20376c:	02e79723          	sh	a4,46(a5)
  203770:	fec42783          	lw	a5,-20(s0)
  203774:	03079713          	slli	a4,a5,0x30
  203778:	9341                	srli	a4,a4,0x30
  20377a:	002107b7          	lui	a5,0x210
  20377e:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203782:	00e79123          	sh	a4,2(a5)
  203786:	a08d                	j	2037e8 <PutToBlockedByBufDepReqQ+0x10e>
  203788:	002107b7          	lui	a5,0x210
  20378c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203790:	fec46683          	lwu	a3,-20(s0)
  203794:	03400793          	li	a5,52
  203798:	02f687b3          	mul	a5,a3,a5
  20379c:	97ba                	add	a5,a5,a4
  20379e:	577d                	li	a4,-1
  2037a0:	02e79623          	sh	a4,44(a5)
  2037a4:	002107b7          	lui	a5,0x210
  2037a8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2037ac:	fec46683          	lwu	a3,-20(s0)
  2037b0:	03400793          	li	a5,52
  2037b4:	02f687b3          	mul	a5,a3,a5
  2037b8:	97ba                	add	a5,a5,a4
  2037ba:	577d                	li	a4,-1
  2037bc:	02e79723          	sh	a4,46(a5)
  2037c0:	fec42783          	lw	a5,-20(s0)
  2037c4:	03079713          	slli	a4,a5,0x30
  2037c8:	9341                	srli	a4,a4,0x30
  2037ca:	002107b7          	lui	a5,0x210
  2037ce:	f6e79c23          	sh	a4,-136(a5) # 20ff78 <blockedByBufDepReqQ>
  2037d2:	fec42783          	lw	a5,-20(s0)
  2037d6:	03079713          	slli	a4,a5,0x30
  2037da:	9341                	srli	a4,a4,0x30
  2037dc:	002107b7          	lui	a5,0x210
  2037e0:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  2037e4:	00e79123          	sh	a4,2(a5)
  2037e8:	002107b7          	lui	a5,0x210
  2037ec:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2037f0:	fec46683          	lwu	a3,-20(s0)
  2037f4:	03400793          	li	a5,52
  2037f8:	02f687b3          	mul	a5,a3,a5
  2037fc:	97ba                	add	a5,a5,a4
  2037fe:	4398                	lw	a4,0(a5)
  203800:	f0f77713          	andi	a4,a4,-241
  203804:	03076713          	ori	a4,a4,48
  203808:	c398                	sw	a4,0(a5)
  20380a:	002107b7          	lui	a5,0x210
  20380e:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203812:	0047d783          	lhu	a5,4(a5)
  203816:	2785                	addiw	a5,a5,1
  203818:	03079713          	slli	a4,a5,0x30
  20381c:	9341                	srli	a4,a4,0x30
  20381e:	002107b7          	lui	a5,0x210
  203822:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203826:	00e79223          	sh	a4,4(a5)
  20382a:	002107b7          	lui	a5,0x210
  20382e:	3987a783          	lw	a5,920(a5) # 210398 <blockedReqCnt>
  203832:	2785                	addiw	a5,a5,1
  203834:	0007871b          	sext.w	a4,a5
  203838:	002107b7          	lui	a5,0x210
  20383c:	38e7ac23          	sw	a4,920(a5) # 210398 <blockedReqCnt>
  203840:	0001                	nop
  203842:	6462                	ld	s0,24(sp)
  203844:	6105                	addi	sp,sp,32
  203846:	8082                	ret

0000000000203848 <SelectiveGetFromBlockedByBufDepReqQ>:
  203848:	7179                	addi	sp,sp,-48
  20384a:	f406                	sd	ra,40(sp)
  20384c:	f022                	sd	s0,32(sp)
  20384e:	1800                	addi	s0,sp,48
  203850:	87aa                	mv	a5,a0
  203852:	fcf42e23          	sw	a5,-36(s0)
  203856:	fdc42783          	lw	a5,-36(s0)
  20385a:	0007871b          	sext.w	a4,a5
  20385e:	67c1                	lui	a5,0x10
  203860:	17fd                	addi	a5,a5,-1
  203862:	00f71863          	bne	a4,a5,203872 <SelectiveGetFromBlockedByBufDepReqQ+0x2a>
  203866:	0020f7b7          	lui	a5,0x20f
  20386a:	11878513          	addi	a0,a5,280 # 20f118 <nvme_main+0x662>
  20386e:	54b000ef          	jal	ra,2045b8 <cpl_print>
  203872:	002107b7          	lui	a5,0x210
  203876:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20387a:	fdc46683          	lwu	a3,-36(s0)
  20387e:	03400793          	li	a5,52
  203882:	02f687b3          	mul	a5,a3,a5
  203886:	97ba                	add	a5,a5,a4
  203888:	02c7d783          	lhu	a5,44(a5)
  20388c:	fef42623          	sw	a5,-20(s0)
  203890:	002107b7          	lui	a5,0x210
  203894:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203898:	fdc46683          	lwu	a3,-36(s0)
  20389c:	03400793          	li	a5,52
  2038a0:	02f687b3          	mul	a5,a3,a5
  2038a4:	97ba                	add	a5,a5,a4
  2038a6:	02e7d783          	lhu	a5,46(a5)
  2038aa:	fef42423          	sw	a5,-24(s0)
  2038ae:	fe842783          	lw	a5,-24(s0)
  2038b2:	0007871b          	sext.w	a4,a5
  2038b6:	67c1                	lui	a5,0x10
  2038b8:	17fd                	addi	a5,a5,-1
  2038ba:	04f70f63          	beq	a4,a5,203918 <SelectiveGetFromBlockedByBufDepReqQ+0xd0>
  2038be:	fec42783          	lw	a5,-20(s0)
  2038c2:	0007871b          	sext.w	a4,a5
  2038c6:	67c1                	lui	a5,0x10
  2038c8:	17fd                	addi	a5,a5,-1
  2038ca:	04f70763          	beq	a4,a5,203918 <SelectiveGetFromBlockedByBufDepReqQ+0xd0>
  2038ce:	002107b7          	lui	a5,0x210
  2038d2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2038d6:	fe842783          	lw	a5,-24(s0)
  2038da:	03079713          	slli	a4,a5,0x30
  2038de:	9341                	srli	a4,a4,0x30
  2038e0:	fec46603          	lwu	a2,-20(s0)
  2038e4:	03400793          	li	a5,52
  2038e8:	02f607b3          	mul	a5,a2,a5
  2038ec:	97b6                	add	a5,a5,a3
  2038ee:	02e79723          	sh	a4,46(a5)
  2038f2:	002107b7          	lui	a5,0x210
  2038f6:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  2038fa:	fec42783          	lw	a5,-20(s0)
  2038fe:	03079713          	slli	a4,a5,0x30
  203902:	9341                	srli	a4,a4,0x30
  203904:	fe846603          	lwu	a2,-24(s0)
  203908:	03400793          	li	a5,52
  20390c:	02f607b3          	mul	a5,a2,a5
  203910:	97b6                	add	a5,a5,a3
  203912:	02e79623          	sh	a4,44(a5)
  203916:	a87d                	j	2039d4 <SelectiveGetFromBlockedByBufDepReqQ+0x18c>
  203918:	fe842783          	lw	a5,-24(s0)
  20391c:	0007871b          	sext.w	a4,a5
  203920:	67c1                	lui	a5,0x10
  203922:	17fd                	addi	a5,a5,-1
  203924:	04f71463          	bne	a4,a5,20396c <SelectiveGetFromBlockedByBufDepReqQ+0x124>
  203928:	fec42783          	lw	a5,-20(s0)
  20392c:	0007871b          	sext.w	a4,a5
  203930:	67c1                	lui	a5,0x10
  203932:	17fd                	addi	a5,a5,-1
  203934:	02f70c63          	beq	a4,a5,20396c <SelectiveGetFromBlockedByBufDepReqQ+0x124>
  203938:	002107b7          	lui	a5,0x210
  20393c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203940:	fec46683          	lwu	a3,-20(s0)
  203944:	03400793          	li	a5,52
  203948:	02f687b3          	mul	a5,a3,a5
  20394c:	97ba                	add	a5,a5,a4
  20394e:	577d                	li	a4,-1
  203950:	02e79723          	sh	a4,46(a5)
  203954:	fec42783          	lw	a5,-20(s0)
  203958:	03079713          	slli	a4,a5,0x30
  20395c:	9341                	srli	a4,a4,0x30
  20395e:	002107b7          	lui	a5,0x210
  203962:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203966:	00e79123          	sh	a4,2(a5)
  20396a:	a0ad                	j	2039d4 <SelectiveGetFromBlockedByBufDepReqQ+0x18c>
  20396c:	fe842783          	lw	a5,-24(s0)
  203970:	0007871b          	sext.w	a4,a5
  203974:	67c1                	lui	a5,0x10
  203976:	17fd                	addi	a5,a5,-1
  203978:	04f70263          	beq	a4,a5,2039bc <SelectiveGetFromBlockedByBufDepReqQ+0x174>
  20397c:	fec42783          	lw	a5,-20(s0)
  203980:	0007871b          	sext.w	a4,a5
  203984:	67c1                	lui	a5,0x10
  203986:	17fd                	addi	a5,a5,-1
  203988:	02f71a63          	bne	a4,a5,2039bc <SelectiveGetFromBlockedByBufDepReqQ+0x174>
  20398c:	002107b7          	lui	a5,0x210
  203990:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203994:	fe846683          	lwu	a3,-24(s0)
  203998:	03400793          	li	a5,52
  20399c:	02f687b3          	mul	a5,a3,a5
  2039a0:	97ba                	add	a5,a5,a4
  2039a2:	577d                	li	a4,-1
  2039a4:	02e79623          	sh	a4,44(a5)
  2039a8:	fe842783          	lw	a5,-24(s0)
  2039ac:	03079713          	slli	a4,a5,0x30
  2039b0:	9341                	srli	a4,a4,0x30
  2039b2:	002107b7          	lui	a5,0x210
  2039b6:	f6e79c23          	sh	a4,-136(a5) # 20ff78 <blockedByBufDepReqQ>
  2039ba:	a829                	j	2039d4 <SelectiveGetFromBlockedByBufDepReqQ+0x18c>
  2039bc:	002107b7          	lui	a5,0x210
  2039c0:	577d                	li	a4,-1
  2039c2:	f6e79c23          	sh	a4,-136(a5) # 20ff78 <blockedByBufDepReqQ>
  2039c6:	002107b7          	lui	a5,0x210
  2039ca:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  2039ce:	577d                	li	a4,-1
  2039d0:	00e79123          	sh	a4,2(a5)
  2039d4:	002107b7          	lui	a5,0x210
  2039d8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2039dc:	fdc46683          	lwu	a3,-36(s0)
  2039e0:	03400793          	li	a5,52
  2039e4:	02f687b3          	mul	a5,a3,a5
  2039e8:	97ba                	add	a5,a5,a4
  2039ea:	4398                	lw	a4,0(a5)
  2039ec:	f0f77713          	andi	a4,a4,-241
  2039f0:	c398                	sw	a4,0(a5)
  2039f2:	002107b7          	lui	a5,0x210
  2039f6:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  2039fa:	0047d783          	lhu	a5,4(a5)
  2039fe:	37fd                	addiw	a5,a5,-1
  203a00:	03079713          	slli	a4,a5,0x30
  203a04:	9341                	srli	a4,a4,0x30
  203a06:	002107b7          	lui	a5,0x210
  203a0a:	f7878793          	addi	a5,a5,-136 # 20ff78 <blockedByBufDepReqQ>
  203a0e:	00e79223          	sh	a4,4(a5)
  203a12:	002107b7          	lui	a5,0x210
  203a16:	3987a783          	lw	a5,920(a5) # 210398 <blockedReqCnt>
  203a1a:	37fd                	addiw	a5,a5,-1
  203a1c:	0007871b          	sext.w	a4,a5
  203a20:	002107b7          	lui	a5,0x210
  203a24:	38e7ac23          	sw	a4,920(a5) # 210398 <blockedReqCnt>
  203a28:	0001                	nop
  203a2a:	70a2                	ld	ra,40(sp)
  203a2c:	7402                	ld	s0,32(sp)
  203a2e:	6145                	addi	sp,sp,48
  203a30:	8082                	ret

0000000000203a32 <PutToBlockedByRowAddrDepReqQ>:
  203a32:	1101                	addi	sp,sp,-32
  203a34:	ec22                	sd	s0,24(sp)
  203a36:	1000                	addi	s0,sp,32
  203a38:	87aa                	mv	a5,a0
  203a3a:	86ae                	mv	a3,a1
  203a3c:	8732                	mv	a4,a2
  203a3e:	fef42623          	sw	a5,-20(s0)
  203a42:	87b6                	mv	a5,a3
  203a44:	fef42423          	sw	a5,-24(s0)
  203a48:	87ba                	mv	a5,a4
  203a4a:	fef42223          	sw	a5,-28(s0)
  203a4e:	002107b7          	lui	a5,0x210
  203a52:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203a56:	fe446783          	lwu	a5,-28(s0)
  203a5a:	fe846683          	lwu	a3,-24(s0)
  203a5e:	068e                	slli	a3,a3,0x3
  203a60:	97b6                	add	a5,a5,a3
  203a62:	078e                	slli	a5,a5,0x3
  203a64:	97ba                	add	a5,a5,a4
  203a66:	0027d783          	lhu	a5,2(a5)
  203a6a:	0007871b          	sext.w	a4,a5
  203a6e:	67c1                	lui	a5,0x10
  203a70:	17fd                	addi	a5,a5,-1
  203a72:	0af70f63          	beq	a4,a5,203b30 <PutToBlockedByRowAddrDepReqQ+0xfe>
  203a76:	002107b7          	lui	a5,0x210
  203a7a:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203a7e:	002107b7          	lui	a5,0x210
  203a82:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203a86:	fe446783          	lwu	a5,-28(s0)
  203a8a:	fe846603          	lwu	a2,-24(s0)
  203a8e:	060e                	slli	a2,a2,0x3
  203a90:	97b2                	add	a5,a5,a2
  203a92:	078e                	slli	a5,a5,0x3
  203a94:	97ba                	add	a5,a5,a4
  203a96:	0027d703          	lhu	a4,2(a5)
  203a9a:	fec46603          	lwu	a2,-20(s0)
  203a9e:	03400793          	li	a5,52
  203aa2:	02f607b3          	mul	a5,a2,a5
  203aa6:	97b6                	add	a5,a5,a3
  203aa8:	02e79623          	sh	a4,44(a5)
  203aac:	002107b7          	lui	a5,0x210
  203ab0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203ab4:	fec46683          	lwu	a3,-20(s0)
  203ab8:	03400793          	li	a5,52
  203abc:	02f687b3          	mul	a5,a3,a5
  203ac0:	97ba                	add	a5,a5,a4
  203ac2:	577d                	li	a4,-1
  203ac4:	02e79723          	sh	a4,46(a5)
  203ac8:	002107b7          	lui	a5,0x210
  203acc:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203ad0:	002107b7          	lui	a5,0x210
  203ad4:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203ad8:	fe446783          	lwu	a5,-28(s0)
  203adc:	fe846603          	lwu	a2,-24(s0)
  203ae0:	060e                	slli	a2,a2,0x3
  203ae2:	97b2                	add	a5,a5,a2
  203ae4:	078e                	slli	a5,a5,0x3
  203ae6:	97ba                	add	a5,a5,a4
  203ae8:	0027d783          	lhu	a5,2(a5)
  203aec:	0007861b          	sext.w	a2,a5
  203af0:	fec42783          	lw	a5,-20(s0)
  203af4:	03079713          	slli	a4,a5,0x30
  203af8:	9341                	srli	a4,a4,0x30
  203afa:	03400793          	li	a5,52
  203afe:	02f607b3          	mul	a5,a2,a5
  203b02:	97b6                	add	a5,a5,a3
  203b04:	02e79723          	sh	a4,46(a5)
  203b08:	fec42783          	lw	a5,-20(s0)
  203b0c:	03079713          	slli	a4,a5,0x30
  203b10:	9341                	srli	a4,a4,0x30
  203b12:	002107b7          	lui	a5,0x210
  203b16:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203b1a:	fe446783          	lwu	a5,-28(s0)
  203b1e:	fe846603          	lwu	a2,-24(s0)
  203b22:	060e                	slli	a2,a2,0x3
  203b24:	97b2                	add	a5,a5,a2
  203b26:	078e                	slli	a5,a5,0x3
  203b28:	97b6                	add	a5,a5,a3
  203b2a:	00e79123          	sh	a4,2(a5)
  203b2e:	a059                	j	203bb4 <PutToBlockedByRowAddrDepReqQ+0x182>
  203b30:	002107b7          	lui	a5,0x210
  203b34:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203b38:	fec46683          	lwu	a3,-20(s0)
  203b3c:	03400793          	li	a5,52
  203b40:	02f687b3          	mul	a5,a3,a5
  203b44:	97ba                	add	a5,a5,a4
  203b46:	577d                	li	a4,-1
  203b48:	02e79623          	sh	a4,44(a5)
  203b4c:	002107b7          	lui	a5,0x210
  203b50:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203b54:	fec46683          	lwu	a3,-20(s0)
  203b58:	03400793          	li	a5,52
  203b5c:	02f687b3          	mul	a5,a3,a5
  203b60:	97ba                	add	a5,a5,a4
  203b62:	577d                	li	a4,-1
  203b64:	02e79723          	sh	a4,46(a5)
  203b68:	fec42783          	lw	a5,-20(s0)
  203b6c:	03079713          	slli	a4,a5,0x30
  203b70:	9341                	srli	a4,a4,0x30
  203b72:	002107b7          	lui	a5,0x210
  203b76:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203b7a:	fe446783          	lwu	a5,-28(s0)
  203b7e:	fe846603          	lwu	a2,-24(s0)
  203b82:	060e                	slli	a2,a2,0x3
  203b84:	97b2                	add	a5,a5,a2
  203b86:	078e                	slli	a5,a5,0x3
  203b88:	97b6                	add	a5,a5,a3
  203b8a:	00e79023          	sh	a4,0(a5)
  203b8e:	fec42783          	lw	a5,-20(s0)
  203b92:	03079713          	slli	a4,a5,0x30
  203b96:	9341                	srli	a4,a4,0x30
  203b98:	002107b7          	lui	a5,0x210
  203b9c:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203ba0:	fe446783          	lwu	a5,-28(s0)
  203ba4:	fe846603          	lwu	a2,-24(s0)
  203ba8:	060e                	slli	a2,a2,0x3
  203baa:	97b2                	add	a5,a5,a2
  203bac:	078e                	slli	a5,a5,0x3
  203bae:	97b6                	add	a5,a5,a3
  203bb0:	00e79123          	sh	a4,2(a5)
  203bb4:	002107b7          	lui	a5,0x210
  203bb8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203bbc:	fec46683          	lwu	a3,-20(s0)
  203bc0:	03400793          	li	a5,52
  203bc4:	02f687b3          	mul	a5,a3,a5
  203bc8:	97ba                	add	a5,a5,a4
  203bca:	4398                	lw	a4,0(a5)
  203bcc:	f0f77713          	andi	a4,a4,-241
  203bd0:	04076713          	ori	a4,a4,64
  203bd4:	c398                	sw	a4,0(a5)
  203bd6:	002107b7          	lui	a5,0x210
  203bda:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203bde:	fe446783          	lwu	a5,-28(s0)
  203be2:	fe846683          	lwu	a3,-24(s0)
  203be6:	068e                	slli	a3,a3,0x3
  203be8:	97b6                	add	a5,a5,a3
  203bea:	078e                	slli	a5,a5,0x3
  203bec:	97ba                	add	a5,a5,a4
  203bee:	0047d783          	lhu	a5,4(a5)
  203bf2:	2785                	addiw	a5,a5,1
  203bf4:	03079713          	slli	a4,a5,0x30
  203bf8:	9341                	srli	a4,a4,0x30
  203bfa:	002107b7          	lui	a5,0x210
  203bfe:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203c02:	fe446783          	lwu	a5,-28(s0)
  203c06:	fe846603          	lwu	a2,-24(s0)
  203c0a:	060e                	slli	a2,a2,0x3
  203c0c:	97b2                	add	a5,a5,a2
  203c0e:	078e                	slli	a5,a5,0x3
  203c10:	97b6                	add	a5,a5,a3
  203c12:	00e79223          	sh	a4,4(a5)
  203c16:	002107b7          	lui	a5,0x210
  203c1a:	3987a783          	lw	a5,920(a5) # 210398 <blockedReqCnt>
  203c1e:	2785                	addiw	a5,a5,1
  203c20:	0007871b          	sext.w	a4,a5
  203c24:	002107b7          	lui	a5,0x210
  203c28:	38e7ac23          	sw	a4,920(a5) # 210398 <blockedReqCnt>
  203c2c:	0001                	nop
  203c2e:	6462                	ld	s0,24(sp)
  203c30:	6105                	addi	sp,sp,32
  203c32:	8082                	ret

0000000000203c34 <SelectiveGetFromBlockedByRowAddrDepReqQ>:
  203c34:	7179                	addi	sp,sp,-48
  203c36:	f406                	sd	ra,40(sp)
  203c38:	f022                	sd	s0,32(sp)
  203c3a:	1800                	addi	s0,sp,48
  203c3c:	87aa                	mv	a5,a0
  203c3e:	86ae                	mv	a3,a1
  203c40:	8732                	mv	a4,a2
  203c42:	fcf42e23          	sw	a5,-36(s0)
  203c46:	87b6                	mv	a5,a3
  203c48:	fcf42c23          	sw	a5,-40(s0)
  203c4c:	87ba                	mv	a5,a4
  203c4e:	fcf42a23          	sw	a5,-44(s0)
  203c52:	fdc42783          	lw	a5,-36(s0)
  203c56:	0007871b          	sext.w	a4,a5
  203c5a:	67c1                	lui	a5,0x10
  203c5c:	17fd                	addi	a5,a5,-1
  203c5e:	00f71863          	bne	a4,a5,203c6e <SelectiveGetFromBlockedByRowAddrDepReqQ+0x3a>
  203c62:	0020f7b7          	lui	a5,0x20f
  203c66:	11878513          	addi	a0,a5,280 # 20f118 <nvme_main+0x662>
  203c6a:	14f000ef          	jal	ra,2045b8 <cpl_print>
  203c6e:	002107b7          	lui	a5,0x210
  203c72:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203c76:	fdc46683          	lwu	a3,-36(s0)
  203c7a:	03400793          	li	a5,52
  203c7e:	02f687b3          	mul	a5,a3,a5
  203c82:	97ba                	add	a5,a5,a4
  203c84:	02c7d783          	lhu	a5,44(a5)
  203c88:	fef42623          	sw	a5,-20(s0)
  203c8c:	002107b7          	lui	a5,0x210
  203c90:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203c94:	fdc46683          	lwu	a3,-36(s0)
  203c98:	03400793          	li	a5,52
  203c9c:	02f687b3          	mul	a5,a3,a5
  203ca0:	97ba                	add	a5,a5,a4
  203ca2:	02e7d783          	lhu	a5,46(a5)
  203ca6:	fef42423          	sw	a5,-24(s0)
  203caa:	fe842783          	lw	a5,-24(s0)
  203cae:	0007871b          	sext.w	a4,a5
  203cb2:	67c1                	lui	a5,0x10
  203cb4:	17fd                	addi	a5,a5,-1
  203cb6:	04f70f63          	beq	a4,a5,203d14 <SelectiveGetFromBlockedByRowAddrDepReqQ+0xe0>
  203cba:	fec42783          	lw	a5,-20(s0)
  203cbe:	0007871b          	sext.w	a4,a5
  203cc2:	67c1                	lui	a5,0x10
  203cc4:	17fd                	addi	a5,a5,-1
  203cc6:	04f70763          	beq	a4,a5,203d14 <SelectiveGetFromBlockedByRowAddrDepReqQ+0xe0>
  203cca:	002107b7          	lui	a5,0x210
  203cce:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203cd2:	fe842783          	lw	a5,-24(s0)
  203cd6:	03079713          	slli	a4,a5,0x30
  203cda:	9341                	srli	a4,a4,0x30
  203cdc:	fec46603          	lwu	a2,-20(s0)
  203ce0:	03400793          	li	a5,52
  203ce4:	02f607b3          	mul	a5,a2,a5
  203ce8:	97b6                	add	a5,a5,a3
  203cea:	02e79723          	sh	a4,46(a5)
  203cee:	002107b7          	lui	a5,0x210
  203cf2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203cf6:	fec42783          	lw	a5,-20(s0)
  203cfa:	03079713          	slli	a4,a5,0x30
  203cfe:	9341                	srli	a4,a4,0x30
  203d00:	fe846603          	lwu	a2,-24(s0)
  203d04:	03400793          	li	a5,52
  203d08:	02f607b3          	mul	a5,a2,a5
  203d0c:	97b6                	add	a5,a5,a3
  203d0e:	02e79623          	sh	a4,44(a5)
  203d12:	a219                	j	203e18 <SelectiveGetFromBlockedByRowAddrDepReqQ+0x1e4>
  203d14:	fe842783          	lw	a5,-24(s0)
  203d18:	0007871b          	sext.w	a4,a5
  203d1c:	67c1                	lui	a5,0x10
  203d1e:	17fd                	addi	a5,a5,-1
  203d20:	04f71c63          	bne	a4,a5,203d78 <SelectiveGetFromBlockedByRowAddrDepReqQ+0x144>
  203d24:	fec42783          	lw	a5,-20(s0)
  203d28:	0007871b          	sext.w	a4,a5
  203d2c:	67c1                	lui	a5,0x10
  203d2e:	17fd                	addi	a5,a5,-1
  203d30:	04f70463          	beq	a4,a5,203d78 <SelectiveGetFromBlockedByRowAddrDepReqQ+0x144>
  203d34:	002107b7          	lui	a5,0x210
  203d38:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203d3c:	fec46683          	lwu	a3,-20(s0)
  203d40:	03400793          	li	a5,52
  203d44:	02f687b3          	mul	a5,a3,a5
  203d48:	97ba                	add	a5,a5,a4
  203d4a:	577d                	li	a4,-1
  203d4c:	02e79723          	sh	a4,46(a5)
  203d50:	fec42783          	lw	a5,-20(s0)
  203d54:	03079713          	slli	a4,a5,0x30
  203d58:	9341                	srli	a4,a4,0x30
  203d5a:	002107b7          	lui	a5,0x210
  203d5e:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203d62:	fd446783          	lwu	a5,-44(s0)
  203d66:	fd846603          	lwu	a2,-40(s0)
  203d6a:	060e                	slli	a2,a2,0x3
  203d6c:	97b2                	add	a5,a5,a2
  203d6e:	078e                	slli	a5,a5,0x3
  203d70:	97b6                	add	a5,a5,a3
  203d72:	00e79123          	sh	a4,2(a5)
  203d76:	a04d                	j	203e18 <SelectiveGetFromBlockedByRowAddrDepReqQ+0x1e4>
  203d78:	fe842783          	lw	a5,-24(s0)
  203d7c:	0007871b          	sext.w	a4,a5
  203d80:	67c1                	lui	a5,0x10
  203d82:	17fd                	addi	a5,a5,-1
  203d84:	04f70c63          	beq	a4,a5,203ddc <SelectiveGetFromBlockedByRowAddrDepReqQ+0x1a8>
  203d88:	fec42783          	lw	a5,-20(s0)
  203d8c:	0007871b          	sext.w	a4,a5
  203d90:	67c1                	lui	a5,0x10
  203d92:	17fd                	addi	a5,a5,-1
  203d94:	04f71463          	bne	a4,a5,203ddc <SelectiveGetFromBlockedByRowAddrDepReqQ+0x1a8>
  203d98:	002107b7          	lui	a5,0x210
  203d9c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203da0:	fe846683          	lwu	a3,-24(s0)
  203da4:	03400793          	li	a5,52
  203da8:	02f687b3          	mul	a5,a3,a5
  203dac:	97ba                	add	a5,a5,a4
  203dae:	577d                	li	a4,-1
  203db0:	02e79623          	sh	a4,44(a5)
  203db4:	fe842783          	lw	a5,-24(s0)
  203db8:	03079713          	slli	a4,a5,0x30
  203dbc:	9341                	srli	a4,a4,0x30
  203dbe:	002107b7          	lui	a5,0x210
  203dc2:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203dc6:	fd446783          	lwu	a5,-44(s0)
  203dca:	fd846603          	lwu	a2,-40(s0)
  203dce:	060e                	slli	a2,a2,0x3
  203dd0:	97b2                	add	a5,a5,a2
  203dd2:	078e                	slli	a5,a5,0x3
  203dd4:	97b6                	add	a5,a5,a3
  203dd6:	00e79023          	sh	a4,0(a5)
  203dda:	a83d                	j	203e18 <SelectiveGetFromBlockedByRowAddrDepReqQ+0x1e4>
  203ddc:	002107b7          	lui	a5,0x210
  203de0:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203de4:	fd446783          	lwu	a5,-44(s0)
  203de8:	fd846683          	lwu	a3,-40(s0)
  203dec:	068e                	slli	a3,a3,0x3
  203dee:	97b6                	add	a5,a5,a3
  203df0:	078e                	slli	a5,a5,0x3
  203df2:	97ba                	add	a5,a5,a4
  203df4:	577d                	li	a4,-1
  203df6:	00e79023          	sh	a4,0(a5)
  203dfa:	002107b7          	lui	a5,0x210
  203dfe:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203e02:	fd446783          	lwu	a5,-44(s0)
  203e06:	fd846683          	lwu	a3,-40(s0)
  203e0a:	068e                	slli	a3,a3,0x3
  203e0c:	97b6                	add	a5,a5,a3
  203e0e:	078e                	slli	a5,a5,0x3
  203e10:	97ba                	add	a5,a5,a4
  203e12:	577d                	li	a4,-1
  203e14:	00e79123          	sh	a4,2(a5)
  203e18:	002107b7          	lui	a5,0x210
  203e1c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203e20:	fdc46683          	lwu	a3,-36(s0)
  203e24:	03400793          	li	a5,52
  203e28:	02f687b3          	mul	a5,a3,a5
  203e2c:	97ba                	add	a5,a5,a4
  203e2e:	4398                	lw	a4,0(a5)
  203e30:	f0f77713          	andi	a4,a4,-241
  203e34:	c398                	sw	a4,0(a5)
  203e36:	002107b7          	lui	a5,0x210
  203e3a:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203e3e:	fd446783          	lwu	a5,-44(s0)
  203e42:	fd846683          	lwu	a3,-40(s0)
  203e46:	068e                	slli	a3,a3,0x3
  203e48:	97b6                	add	a5,a5,a3
  203e4a:	078e                	slli	a5,a5,0x3
  203e4c:	97ba                	add	a5,a5,a4
  203e4e:	0047d783          	lhu	a5,4(a5)
  203e52:	37fd                	addiw	a5,a5,-1
  203e54:	03079713          	slli	a4,a5,0x30
  203e58:	9341                	srli	a4,a4,0x30
  203e5a:	002107b7          	lui	a5,0x210
  203e5e:	f8078693          	addi	a3,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  203e62:	fd446783          	lwu	a5,-44(s0)
  203e66:	fd846603          	lwu	a2,-40(s0)
  203e6a:	060e                	slli	a2,a2,0x3
  203e6c:	97b2                	add	a5,a5,a2
  203e6e:	078e                	slli	a5,a5,0x3
  203e70:	97b6                	add	a5,a5,a3
  203e72:	00e79223          	sh	a4,4(a5)
  203e76:	002107b7          	lui	a5,0x210
  203e7a:	3987a783          	lw	a5,920(a5) # 210398 <blockedReqCnt>
  203e7e:	37fd                	addiw	a5,a5,-1
  203e80:	0007871b          	sext.w	a4,a5
  203e84:	002107b7          	lui	a5,0x210
  203e88:	38e7ac23          	sw	a4,920(a5) # 210398 <blockedReqCnt>
  203e8c:	0001                	nop
  203e8e:	70a2                	ld	ra,40(sp)
  203e90:	7402                	ld	s0,32(sp)
  203e92:	6145                	addi	sp,sp,48
  203e94:	8082                	ret

0000000000203e96 <PutToNvmeDmaReqQ>:
  203e96:	1101                	addi	sp,sp,-32
  203e98:	ec22                	sd	s0,24(sp)
  203e9a:	1000                	addi	s0,sp,32
  203e9c:	87aa                	mv	a5,a0
  203e9e:	fef42623          	sw	a5,-20(s0)
  203ea2:	002107b7          	lui	a5,0x210
  203ea6:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203eaa:	0027d783          	lhu	a5,2(a5)
  203eae:	0007871b          	sext.w	a4,a5
  203eb2:	67c1                	lui	a5,0x10
  203eb4:	17fd                	addi	a5,a5,-1
  203eb6:	08f70763          	beq	a4,a5,203f44 <PutToNvmeDmaReqQ+0xae>
  203eba:	002107b7          	lui	a5,0x210
  203ebe:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203ec2:	002107b7          	lui	a5,0x210
  203ec6:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203eca:	0027d703          	lhu	a4,2(a5)
  203ece:	fec46603          	lwu	a2,-20(s0)
  203ed2:	03400793          	li	a5,52
  203ed6:	02f607b3          	mul	a5,a2,a5
  203eda:	97b6                	add	a5,a5,a3
  203edc:	02e79623          	sh	a4,44(a5)
  203ee0:	002107b7          	lui	a5,0x210
  203ee4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203ee8:	fec46683          	lwu	a3,-20(s0)
  203eec:	03400793          	li	a5,52
  203ef0:	02f687b3          	mul	a5,a3,a5
  203ef4:	97ba                	add	a5,a5,a4
  203ef6:	577d                	li	a4,-1
  203ef8:	02e79723          	sh	a4,46(a5)
  203efc:	002107b7          	lui	a5,0x210
  203f00:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  203f04:	002107b7          	lui	a5,0x210
  203f08:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203f0c:	0027d783          	lhu	a5,2(a5)
  203f10:	0007861b          	sext.w	a2,a5
  203f14:	fec42783          	lw	a5,-20(s0)
  203f18:	03079713          	slli	a4,a5,0x30
  203f1c:	9341                	srli	a4,a4,0x30
  203f1e:	03400793          	li	a5,52
  203f22:	02f607b3          	mul	a5,a2,a5
  203f26:	97b6                	add	a5,a5,a3
  203f28:	02e79723          	sh	a4,46(a5)
  203f2c:	fec42783          	lw	a5,-20(s0)
  203f30:	03079713          	slli	a4,a5,0x30
  203f34:	9341                	srli	a4,a4,0x30
  203f36:	002107b7          	lui	a5,0x210
  203f3a:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203f3e:	00e79123          	sh	a4,2(a5)
  203f42:	a08d                	j	203fa4 <PutToNvmeDmaReqQ+0x10e>
  203f44:	002107b7          	lui	a5,0x210
  203f48:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203f4c:	fec46683          	lwu	a3,-20(s0)
  203f50:	03400793          	li	a5,52
  203f54:	02f687b3          	mul	a5,a3,a5
  203f58:	97ba                	add	a5,a5,a4
  203f5a:	577d                	li	a4,-1
  203f5c:	02e79623          	sh	a4,44(a5)
  203f60:	002107b7          	lui	a5,0x210
  203f64:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203f68:	fec46683          	lwu	a3,-20(s0)
  203f6c:	03400793          	li	a5,52
  203f70:	02f687b3          	mul	a5,a3,a5
  203f74:	97ba                	add	a5,a5,a4
  203f76:	577d                	li	a4,-1
  203f78:	02e79723          	sh	a4,46(a5)
  203f7c:	fec42783          	lw	a5,-20(s0)
  203f80:	03079713          	slli	a4,a5,0x30
  203f84:	9341                	srli	a4,a4,0x30
  203f86:	002107b7          	lui	a5,0x210
  203f8a:	18e79823          	sh	a4,400(a5) # 210190 <nvmeDmaReqQ>
  203f8e:	fec42783          	lw	a5,-20(s0)
  203f92:	03079713          	slli	a4,a5,0x30
  203f96:	9341                	srli	a4,a4,0x30
  203f98:	002107b7          	lui	a5,0x210
  203f9c:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203fa0:	00e79123          	sh	a4,2(a5)
  203fa4:	002107b7          	lui	a5,0x210
  203fa8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  203fac:	fec46683          	lwu	a3,-20(s0)
  203fb0:	03400793          	li	a5,52
  203fb4:	02f687b3          	mul	a5,a3,a5
  203fb8:	97ba                	add	a5,a5,a4
  203fba:	4398                	lw	a4,0(a5)
  203fbc:	f0f77713          	andi	a4,a4,-241
  203fc0:	05076713          	ori	a4,a4,80
  203fc4:	c398                	sw	a4,0(a5)
  203fc6:	002107b7          	lui	a5,0x210
  203fca:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203fce:	0047d783          	lhu	a5,4(a5)
  203fd2:	2785                	addiw	a5,a5,1
  203fd4:	03079713          	slli	a4,a5,0x30
  203fd8:	9341                	srli	a4,a4,0x30
  203fda:	002107b7          	lui	a5,0x210
  203fde:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  203fe2:	00e79223          	sh	a4,4(a5)
  203fe6:	0001                	nop
  203fe8:	6462                	ld	s0,24(sp)
  203fea:	6105                	addi	sp,sp,32
  203fec:	8082                	ret

0000000000203fee <SelectiveGetFromNvmeDmaReqQ>:
  203fee:	7179                	addi	sp,sp,-48
  203ff0:	f406                	sd	ra,40(sp)
  203ff2:	f022                	sd	s0,32(sp)
  203ff4:	1800                	addi	s0,sp,48
  203ff6:	87aa                	mv	a5,a0
  203ff8:	fcf42e23          	sw	a5,-36(s0)
  203ffc:	002107b7          	lui	a5,0x210
  204000:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204004:	fdc46683          	lwu	a3,-36(s0)
  204008:	03400793          	li	a5,52
  20400c:	02f687b3          	mul	a5,a3,a5
  204010:	97ba                	add	a5,a5,a4
  204012:	02c7d783          	lhu	a5,44(a5)
  204016:	fef42623          	sw	a5,-20(s0)
  20401a:	002107b7          	lui	a5,0x210
  20401e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204022:	fdc46683          	lwu	a3,-36(s0)
  204026:	03400793          	li	a5,52
  20402a:	02f687b3          	mul	a5,a3,a5
  20402e:	97ba                	add	a5,a5,a4
  204030:	02e7d783          	lhu	a5,46(a5)
  204034:	fef42423          	sw	a5,-24(s0)
  204038:	fe842783          	lw	a5,-24(s0)
  20403c:	0007871b          	sext.w	a4,a5
  204040:	67c1                	lui	a5,0x10
  204042:	17fd                	addi	a5,a5,-1
  204044:	04f70f63          	beq	a4,a5,2040a2 <SelectiveGetFromNvmeDmaReqQ+0xb4>
  204048:	fec42783          	lw	a5,-20(s0)
  20404c:	0007871b          	sext.w	a4,a5
  204050:	67c1                	lui	a5,0x10
  204052:	17fd                	addi	a5,a5,-1
  204054:	04f70763          	beq	a4,a5,2040a2 <SelectiveGetFromNvmeDmaReqQ+0xb4>
  204058:	002107b7          	lui	a5,0x210
  20405c:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204060:	fe842783          	lw	a5,-24(s0)
  204064:	03079713          	slli	a4,a5,0x30
  204068:	9341                	srli	a4,a4,0x30
  20406a:	fec46603          	lwu	a2,-20(s0)
  20406e:	03400793          	li	a5,52
  204072:	02f607b3          	mul	a5,a2,a5
  204076:	97b6                	add	a5,a5,a3
  204078:	02e79723          	sh	a4,46(a5)
  20407c:	002107b7          	lui	a5,0x210
  204080:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204084:	fec42783          	lw	a5,-20(s0)
  204088:	03079713          	slli	a4,a5,0x30
  20408c:	9341                	srli	a4,a4,0x30
  20408e:	fe846603          	lwu	a2,-24(s0)
  204092:	03400793          	li	a5,52
  204096:	02f607b3          	mul	a5,a2,a5
  20409a:	97b6                	add	a5,a5,a3
  20409c:	02e79623          	sh	a4,44(a5)
  2040a0:	a87d                	j	20415e <SelectiveGetFromNvmeDmaReqQ+0x170>
  2040a2:	fe842783          	lw	a5,-24(s0)
  2040a6:	0007871b          	sext.w	a4,a5
  2040aa:	67c1                	lui	a5,0x10
  2040ac:	17fd                	addi	a5,a5,-1
  2040ae:	04f71463          	bne	a4,a5,2040f6 <SelectiveGetFromNvmeDmaReqQ+0x108>
  2040b2:	fec42783          	lw	a5,-20(s0)
  2040b6:	0007871b          	sext.w	a4,a5
  2040ba:	67c1                	lui	a5,0x10
  2040bc:	17fd                	addi	a5,a5,-1
  2040be:	02f70c63          	beq	a4,a5,2040f6 <SelectiveGetFromNvmeDmaReqQ+0x108>
  2040c2:	002107b7          	lui	a5,0x210
  2040c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2040ca:	fec46683          	lwu	a3,-20(s0)
  2040ce:	03400793          	li	a5,52
  2040d2:	02f687b3          	mul	a5,a3,a5
  2040d6:	97ba                	add	a5,a5,a4
  2040d8:	577d                	li	a4,-1
  2040da:	02e79723          	sh	a4,46(a5)
  2040de:	fec42783          	lw	a5,-20(s0)
  2040e2:	03079713          	slli	a4,a5,0x30
  2040e6:	9341                	srli	a4,a4,0x30
  2040e8:	002107b7          	lui	a5,0x210
  2040ec:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  2040f0:	00e79123          	sh	a4,2(a5)
  2040f4:	a0ad                	j	20415e <SelectiveGetFromNvmeDmaReqQ+0x170>
  2040f6:	fe842783          	lw	a5,-24(s0)
  2040fa:	0007871b          	sext.w	a4,a5
  2040fe:	67c1                	lui	a5,0x10
  204100:	17fd                	addi	a5,a5,-1
  204102:	04f70263          	beq	a4,a5,204146 <SelectiveGetFromNvmeDmaReqQ+0x158>
  204106:	fec42783          	lw	a5,-20(s0)
  20410a:	0007871b          	sext.w	a4,a5
  20410e:	67c1                	lui	a5,0x10
  204110:	17fd                	addi	a5,a5,-1
  204112:	02f71a63          	bne	a4,a5,204146 <SelectiveGetFromNvmeDmaReqQ+0x158>
  204116:	002107b7          	lui	a5,0x210
  20411a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20411e:	fe846683          	lwu	a3,-24(s0)
  204122:	03400793          	li	a5,52
  204126:	02f687b3          	mul	a5,a3,a5
  20412a:	97ba                	add	a5,a5,a4
  20412c:	577d                	li	a4,-1
  20412e:	02e79623          	sh	a4,44(a5)
  204132:	fe842783          	lw	a5,-24(s0)
  204136:	03079713          	slli	a4,a5,0x30
  20413a:	9341                	srli	a4,a4,0x30
  20413c:	002107b7          	lui	a5,0x210
  204140:	18e79823          	sh	a4,400(a5) # 210190 <nvmeDmaReqQ>
  204144:	a829                	j	20415e <SelectiveGetFromNvmeDmaReqQ+0x170>
  204146:	002107b7          	lui	a5,0x210
  20414a:	577d                	li	a4,-1
  20414c:	18e79823          	sh	a4,400(a5) # 210190 <nvmeDmaReqQ>
  204150:	002107b7          	lui	a5,0x210
  204154:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  204158:	577d                	li	a4,-1
  20415a:	00e79123          	sh	a4,2(a5)
  20415e:	002107b7          	lui	a5,0x210
  204162:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204166:	fdc46683          	lwu	a3,-36(s0)
  20416a:	03400793          	li	a5,52
  20416e:	02f687b3          	mul	a5,a3,a5
  204172:	97ba                	add	a5,a5,a4
  204174:	4398                	lw	a4,0(a5)
  204176:	f0f77713          	andi	a4,a4,-241
  20417a:	c398                	sw	a4,0(a5)
  20417c:	002107b7          	lui	a5,0x210
  204180:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  204184:	0047d783          	lhu	a5,4(a5)
  204188:	37fd                	addiw	a5,a5,-1
  20418a:	03079713          	slli	a4,a5,0x30
  20418e:	9341                	srli	a4,a4,0x30
  204190:	002107b7          	lui	a5,0x210
  204194:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  204198:	00e79223          	sh	a4,4(a5)
  20419c:	fdc42783          	lw	a5,-36(s0)
  2041a0:	853e                	mv	a0,a5
  2041a2:	866ff0ef          	jal	ra,203208 <PutToFreeReqQ>
  2041a6:	fdc42783          	lw	a5,-36(s0)
  2041aa:	853e                	mv	a0,a5
  2041ac:	5bc070ef          	jal	ra,20b768 <ReleaseBlockedByBufDepReq>
  2041b0:	0001                	nop
  2041b2:	70a2                	ld	ra,40(sp)
  2041b4:	7402                	ld	s0,32(sp)
  2041b6:	6145                	addi	sp,sp,48
  2041b8:	8082                	ret

00000000002041ba <PutToNandReqQ>:
  2041ba:	1101                	addi	sp,sp,-32
  2041bc:	ec22                	sd	s0,24(sp)
  2041be:	1000                	addi	s0,sp,32
  2041c0:	87aa                	mv	a5,a0
  2041c2:	86ae                	mv	a3,a1
  2041c4:	8732                	mv	a4,a2
  2041c6:	fef42623          	sw	a5,-20(s0)
  2041ca:	87b6                	mv	a5,a3
  2041cc:	fef42423          	sw	a5,-24(s0)
  2041d0:	87ba                	mv	a5,a4
  2041d2:	fef42223          	sw	a5,-28(s0)
  2041d6:	002107b7          	lui	a5,0x210
  2041da:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2041de:	fe446783          	lwu	a5,-28(s0)
  2041e2:	fe846683          	lwu	a3,-24(s0)
  2041e6:	068e                	slli	a3,a3,0x3
  2041e8:	97b6                	add	a5,a5,a3
  2041ea:	078e                	slli	a5,a5,0x3
  2041ec:	97ba                	add	a5,a5,a4
  2041ee:	0027d783          	lhu	a5,2(a5)
  2041f2:	0007871b          	sext.w	a4,a5
  2041f6:	67c1                	lui	a5,0x10
  2041f8:	17fd                	addi	a5,a5,-1
  2041fa:	0af70f63          	beq	a4,a5,2042b8 <PutToNandReqQ+0xfe>
  2041fe:	002107b7          	lui	a5,0x210
  204202:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204206:	002107b7          	lui	a5,0x210
  20420a:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  20420e:	fe446783          	lwu	a5,-28(s0)
  204212:	fe846603          	lwu	a2,-24(s0)
  204216:	060e                	slli	a2,a2,0x3
  204218:	97b2                	add	a5,a5,a2
  20421a:	078e                	slli	a5,a5,0x3
  20421c:	97ba                	add	a5,a5,a4
  20421e:	0027d703          	lhu	a4,2(a5)
  204222:	fec46603          	lwu	a2,-20(s0)
  204226:	03400793          	li	a5,52
  20422a:	02f607b3          	mul	a5,a2,a5
  20422e:	97b6                	add	a5,a5,a3
  204230:	02e79623          	sh	a4,44(a5)
  204234:	002107b7          	lui	a5,0x210
  204238:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20423c:	fec46683          	lwu	a3,-20(s0)
  204240:	03400793          	li	a5,52
  204244:	02f687b3          	mul	a5,a3,a5
  204248:	97ba                	add	a5,a5,a4
  20424a:	577d                	li	a4,-1
  20424c:	02e79723          	sh	a4,46(a5)
  204250:	002107b7          	lui	a5,0x210
  204254:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204258:	002107b7          	lui	a5,0x210
  20425c:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  204260:	fe446783          	lwu	a5,-28(s0)
  204264:	fe846603          	lwu	a2,-24(s0)
  204268:	060e                	slli	a2,a2,0x3
  20426a:	97b2                	add	a5,a5,a2
  20426c:	078e                	slli	a5,a5,0x3
  20426e:	97ba                	add	a5,a5,a4
  204270:	0027d783          	lhu	a5,2(a5)
  204274:	0007861b          	sext.w	a2,a5
  204278:	fec42783          	lw	a5,-20(s0)
  20427c:	03079713          	slli	a4,a5,0x30
  204280:	9341                	srli	a4,a4,0x30
  204282:	03400793          	li	a5,52
  204286:	02f607b3          	mul	a5,a2,a5
  20428a:	97b6                	add	a5,a5,a3
  20428c:	02e79723          	sh	a4,46(a5)
  204290:	fec42783          	lw	a5,-20(s0)
  204294:	03079713          	slli	a4,a5,0x30
  204298:	9341                	srli	a4,a4,0x30
  20429a:	002107b7          	lui	a5,0x210
  20429e:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  2042a2:	fe446783          	lwu	a5,-28(s0)
  2042a6:	fe846603          	lwu	a2,-24(s0)
  2042aa:	060e                	slli	a2,a2,0x3
  2042ac:	97b2                	add	a5,a5,a2
  2042ae:	078e                	slli	a5,a5,0x3
  2042b0:	97b6                	add	a5,a5,a3
  2042b2:	00e79123          	sh	a4,2(a5)
  2042b6:	a059                	j	20433c <PutToNandReqQ+0x182>
  2042b8:	002107b7          	lui	a5,0x210
  2042bc:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2042c0:	fec46683          	lwu	a3,-20(s0)
  2042c4:	03400793          	li	a5,52
  2042c8:	02f687b3          	mul	a5,a3,a5
  2042cc:	97ba                	add	a5,a5,a4
  2042ce:	577d                	li	a4,-1
  2042d0:	02e79623          	sh	a4,44(a5)
  2042d4:	002107b7          	lui	a5,0x210
  2042d8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2042dc:	fec46683          	lwu	a3,-20(s0)
  2042e0:	03400793          	li	a5,52
  2042e4:	02f687b3          	mul	a5,a3,a5
  2042e8:	97ba                	add	a5,a5,a4
  2042ea:	577d                	li	a4,-1
  2042ec:	02e79723          	sh	a4,46(a5)
  2042f0:	fec42783          	lw	a5,-20(s0)
  2042f4:	03079713          	slli	a4,a5,0x30
  2042f8:	9341                	srli	a4,a4,0x30
  2042fa:	002107b7          	lui	a5,0x210
  2042fe:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  204302:	fe446783          	lwu	a5,-28(s0)
  204306:	fe846603          	lwu	a2,-24(s0)
  20430a:	060e                	slli	a2,a2,0x3
  20430c:	97b2                	add	a5,a5,a2
  20430e:	078e                	slli	a5,a5,0x3
  204310:	97b6                	add	a5,a5,a3
  204312:	00e79023          	sh	a4,0(a5)
  204316:	fec42783          	lw	a5,-20(s0)
  20431a:	03079713          	slli	a4,a5,0x30
  20431e:	9341                	srli	a4,a4,0x30
  204320:	002107b7          	lui	a5,0x210
  204324:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  204328:	fe446783          	lwu	a5,-28(s0)
  20432c:	fe846603          	lwu	a2,-24(s0)
  204330:	060e                	slli	a2,a2,0x3
  204332:	97b2                	add	a5,a5,a2
  204334:	078e                	slli	a5,a5,0x3
  204336:	97b6                	add	a5,a5,a3
  204338:	00e79123          	sh	a4,2(a5)
  20433c:	002107b7          	lui	a5,0x210
  204340:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204344:	fec46683          	lwu	a3,-20(s0)
  204348:	03400793          	li	a5,52
  20434c:	02f687b3          	mul	a5,a3,a5
  204350:	97ba                	add	a5,a5,a4
  204352:	4398                	lw	a4,0(a5)
  204354:	f0f77713          	andi	a4,a4,-241
  204358:	06076713          	ori	a4,a4,96
  20435c:	c398                	sw	a4,0(a5)
  20435e:	002107b7          	lui	a5,0x210
  204362:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  204366:	fe446783          	lwu	a5,-28(s0)
  20436a:	fe846683          	lwu	a3,-24(s0)
  20436e:	068e                	slli	a3,a3,0x3
  204370:	97b6                	add	a5,a5,a3
  204372:	078e                	slli	a5,a5,0x3
  204374:	97ba                	add	a5,a5,a4
  204376:	0047d783          	lhu	a5,4(a5)
  20437a:	2785                	addiw	a5,a5,1
  20437c:	03079713          	slli	a4,a5,0x30
  204380:	9341                	srli	a4,a4,0x30
  204382:	002107b7          	lui	a5,0x210
  204386:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  20438a:	fe446783          	lwu	a5,-28(s0)
  20438e:	fe846603          	lwu	a2,-24(s0)
  204392:	060e                	slli	a2,a2,0x3
  204394:	97b2                	add	a5,a5,a2
  204396:	078e                	slli	a5,a5,0x3
  204398:	97b6                	add	a5,a5,a3
  20439a:	00e79223          	sh	a4,4(a5)
  20439e:	002107b7          	lui	a5,0x210
  2043a2:	f687a783          	lw	a5,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  2043a6:	2785                	addiw	a5,a5,1
  2043a8:	0007871b          	sext.w	a4,a5
  2043ac:	002107b7          	lui	a5,0x210
  2043b0:	f6e7a423          	sw	a4,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  2043b4:	0001                	nop
  2043b6:	6462                	ld	s0,24(sp)
  2043b8:	6105                	addi	sp,sp,32
  2043ba:	8082                	ret

00000000002043bc <GetFromNandReqQ>:
  2043bc:	7179                	addi	sp,sp,-48
  2043be:	f406                	sd	ra,40(sp)
  2043c0:	f022                	sd	s0,32(sp)
  2043c2:	1800                	addi	s0,sp,48
  2043c4:	87aa                	mv	a5,a0
  2043c6:	8736                	mv	a4,a3
  2043c8:	fcf42e23          	sw	a5,-36(s0)
  2043cc:	87ae                	mv	a5,a1
  2043ce:	fcf42c23          	sw	a5,-40(s0)
  2043d2:	87b2                	mv	a5,a2
  2043d4:	fcf42a23          	sw	a5,-44(s0)
  2043d8:	87ba                	mv	a5,a4
  2043da:	fcf42823          	sw	a5,-48(s0)
  2043de:	002107b7          	lui	a5,0x210
  2043e2:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2043e6:	fd846783          	lwu	a5,-40(s0)
  2043ea:	fdc46683          	lwu	a3,-36(s0)
  2043ee:	068e                	slli	a3,a3,0x3
  2043f0:	97b6                	add	a5,a5,a3
  2043f2:	078e                	slli	a5,a5,0x3
  2043f4:	97ba                	add	a5,a5,a4
  2043f6:	0007d783          	lhu	a5,0(a5)
  2043fa:	fef42623          	sw	a5,-20(s0)
  2043fe:	fec42783          	lw	a5,-20(s0)
  204402:	0007871b          	sext.w	a4,a5
  204406:	67c1                	lui	a5,0x10
  204408:	17fd                	addi	a5,a5,-1
  20440a:	00f71863          	bne	a4,a5,20441a <GetFromNandReqQ+0x5e>
  20440e:	0020f7b7          	lui	a5,0x20f
  204412:	14078513          	addi	a0,a5,320 # 20f140 <nvme_main+0x68a>
  204416:	1a2000ef          	jal	ra,2045b8 <cpl_print>
  20441a:	002107b7          	lui	a5,0x210
  20441e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204422:	fec46683          	lwu	a3,-20(s0)
  204426:	03400793          	li	a5,52
  20442a:	02f687b3          	mul	a5,a3,a5
  20442e:	97ba                	add	a5,a5,a4
  204430:	02e7d783          	lhu	a5,46(a5)
  204434:	0007871b          	sext.w	a4,a5
  204438:	67c1                	lui	a5,0x10
  20443a:	17fd                	addi	a5,a5,-1
  20443c:	06f70963          	beq	a4,a5,2044ae <GetFromNandReqQ+0xf2>
  204440:	002107b7          	lui	a5,0x210
  204444:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204448:	fec46683          	lwu	a3,-20(s0)
  20444c:	03400793          	li	a5,52
  204450:	02f687b3          	mul	a5,a3,a5
  204454:	97ba                	add	a5,a5,a4
  204456:	02e7d703          	lhu	a4,46(a5)
  20445a:	002107b7          	lui	a5,0x210
  20445e:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  204462:	fd846783          	lwu	a5,-40(s0)
  204466:	fdc46603          	lwu	a2,-36(s0)
  20446a:	060e                	slli	a2,a2,0x3
  20446c:	97b2                	add	a5,a5,a2
  20446e:	078e                	slli	a5,a5,0x3
  204470:	97b6                	add	a5,a5,a3
  204472:	00e79023          	sh	a4,0(a5)
  204476:	002107b7          	lui	a5,0x210
  20447a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20447e:	002107b7          	lui	a5,0x210
  204482:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204486:	fec46603          	lwu	a2,-20(s0)
  20448a:	03400793          	li	a5,52
  20448e:	02f607b3          	mul	a5,a2,a5
  204492:	97b6                	add	a5,a5,a3
  204494:	02e7d783          	lhu	a5,46(a5)
  204498:	0007869b          	sext.w	a3,a5
  20449c:	03400793          	li	a5,52
  2044a0:	02f687b3          	mul	a5,a3,a5
  2044a4:	97ba                	add	a5,a5,a4
  2044a6:	577d                	li	a4,-1
  2044a8:	02e79623          	sh	a4,44(a5)
  2044ac:	a83d                	j	2044ea <GetFromNandReqQ+0x12e>
  2044ae:	002107b7          	lui	a5,0x210
  2044b2:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2044b6:	fd846783          	lwu	a5,-40(s0)
  2044ba:	fdc46683          	lwu	a3,-36(s0)
  2044be:	068e                	slli	a3,a3,0x3
  2044c0:	97b6                	add	a5,a5,a3
  2044c2:	078e                	slli	a5,a5,0x3
  2044c4:	97ba                	add	a5,a5,a4
  2044c6:	577d                	li	a4,-1
  2044c8:	00e79023          	sh	a4,0(a5)
  2044cc:	002107b7          	lui	a5,0x210
  2044d0:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2044d4:	fd846783          	lwu	a5,-40(s0)
  2044d8:	fdc46683          	lwu	a3,-36(s0)
  2044dc:	068e                	slli	a3,a3,0x3
  2044de:	97b6                	add	a5,a5,a3
  2044e0:	078e                	slli	a5,a5,0x3
  2044e2:	97ba                	add	a5,a5,a4
  2044e4:	577d                	li	a4,-1
  2044e6:	00e79123          	sh	a4,2(a5)
  2044ea:	002107b7          	lui	a5,0x210
  2044ee:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2044f2:	fec46683          	lwu	a3,-20(s0)
  2044f6:	03400793          	li	a5,52
  2044fa:	02f687b3          	mul	a5,a3,a5
  2044fe:	97ba                	add	a5,a5,a4
  204500:	4398                	lw	a4,0(a5)
  204502:	f0f77713          	andi	a4,a4,-241
  204506:	c398                	sw	a4,0(a5)
  204508:	002107b7          	lui	a5,0x210
  20450c:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  204510:	fd846783          	lwu	a5,-40(s0)
  204514:	fdc46683          	lwu	a3,-36(s0)
  204518:	068e                	slli	a3,a3,0x3
  20451a:	97b6                	add	a5,a5,a3
  20451c:	078e                	slli	a5,a5,0x3
  20451e:	97ba                	add	a5,a5,a4
  204520:	0047d783          	lhu	a5,4(a5)
  204524:	37fd                	addiw	a5,a5,-1
  204526:	03079713          	slli	a4,a5,0x30
  20452a:	9341                	srli	a4,a4,0x30
  20452c:	002107b7          	lui	a5,0x210
  204530:	19878693          	addi	a3,a5,408 # 210198 <nandReqQ>
  204534:	fd846783          	lwu	a5,-40(s0)
  204538:	fdc46603          	lwu	a2,-36(s0)
  20453c:	060e                	slli	a2,a2,0x3
  20453e:	97b2                	add	a5,a5,a2
  204540:	078e                	slli	a5,a5,0x3
  204542:	97b6                	add	a5,a5,a3
  204544:	00e79223          	sh	a4,4(a5)
  204548:	002107b7          	lui	a5,0x210
  20454c:	f687a783          	lw	a5,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  204550:	37fd                	addiw	a5,a5,-1
  204552:	0007871b          	sext.w	a4,a5
  204556:	002107b7          	lui	a5,0x210
  20455a:	f6e7a423          	sw	a4,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  20455e:	fec42783          	lw	a5,-20(s0)
  204562:	853e                	mv	a0,a5
  204564:	ca5fe0ef          	jal	ra,203208 <PutToFreeReqQ>
  204568:	fec42783          	lw	a5,-20(s0)
  20456c:	853e                	mv	a0,a5
  20456e:	1fa070ef          	jal	ra,20b768 <ReleaseBlockedByBufDepReq>
  204572:	0001                	nop
  204574:	70a2                	ld	ra,40(sp)
  204576:	7402                	ld	s0,32(sp)
  204578:	6145                	addi	sp,sp,48
  20457a:	8082                	ret

000000000020457c <XUartPs_SendByte>:
  20457c:	02c5071b          	addiw	a4,a0,44
  204580:	1702                	slli	a4,a4,0x20
  204582:	9301                	srli	a4,a4,0x20
  204584:	431c                	lw	a5,0(a4)
  204586:	8bc1                	andi	a5,a5,16
  204588:	fff5                	bnez	a5,204584 <XUartPs_SendByte+0x8>
  20458a:	0305051b          	addiw	a0,a0,48
  20458e:	1502                	slli	a0,a0,0x20
  204590:	2581                	sext.w	a1,a1
  204592:	9101                	srli	a0,a0,0x20
  204594:	c10c                	sw	a1,0(a0)
  204596:	8082                	ret

0000000000204598 <outbyte>:
  204598:	38000737          	lui	a4,0x38000
  20459c:	40b70713          	addi	a4,a4,1035 # 3800040b <g_nvmeTask+0x37deffa3>
  2045a0:	070a                	slli	a4,a4,0x2
  2045a2:	431c                	lw	a5,0(a4)
  2045a4:	8bc1                	andi	a5,a5,16
  2045a6:	fff5                	bnez	a5,2045a2 <outbyte+0xa>
  2045a8:	0e0007b7          	lui	a5,0xe000
  2045ac:	10378793          	addi	a5,a5,259 # e000103 <g_nvmeTask+0xddefc9b>
  2045b0:	2501                	sext.w	a0,a0
  2045b2:	0792                	slli	a5,a5,0x4
  2045b4:	c388                	sw	a0,0(a5)
  2045b6:	8082                	ret

00000000002045b8 <cpl_print>:
  2045b8:	00054683          	lbu	a3,0(a0) # 11144000 <g_nvmeTask+0x10f33b98>
  2045bc:	c685                	beqz	a3,2045e4 <cpl_print+0x2c>
  2045be:	38000737          	lui	a4,0x38000
  2045c2:	0e000637          	lui	a2,0xe000
  2045c6:	40b70713          	addi	a4,a4,1035 # 3800040b <g_nvmeTask+0x37deffa3>
  2045ca:	10360613          	addi	a2,a2,259 # e000103 <g_nvmeTask+0xddefc9b>
  2045ce:	070a                	slli	a4,a4,0x2
  2045d0:	0612                	slli	a2,a2,0x4
  2045d2:	431c                	lw	a5,0(a4)
  2045d4:	8bc1                	andi	a5,a5,16
  2045d6:	fff5                	bnez	a5,2045d2 <cpl_print+0x1a>
  2045d8:	2681                	sext.w	a3,a3
  2045da:	c214                	sw	a3,0(a2)
  2045dc:	00154683          	lbu	a3,1(a0)
  2045e0:	0505                	addi	a0,a0,1
  2045e2:	fae5                	bnez	a3,2045d2 <cpl_print+0x1a>
  2045e4:	8082                	ret

00000000002045e6 <cpl_printint>:
  2045e6:	c151                	beqz	a0,20466a <cpl_printint+0x84>
  2045e8:	1141                	addi	sp,sp,-16
  2045ea:	872a                	mv	a4,a0
  2045ec:	4781                	li	a5,0
  2045ee:	4829                	li	a6,10
  2045f0:	4625                	li	a2,9
  2045f2:	0007069b          	sext.w	a3,a4
  2045f6:	85be                	mv	a1,a5
  2045f8:	0307573b          	divuw	a4,a4,a6
  2045fc:	2785                	addiw	a5,a5,1
  2045fe:	fed66ae3          	bltu	a2,a3,2045f2 <cpl_printint+0xc>
  204602:	00f106b3          	add	a3,sp,a5
  204606:	4629                	li	a2,10
  204608:	48a5                	li	a7,9
  20460a:	16fd                	addi	a3,a3,-1
  20460c:	0005081b          	sext.w	a6,a0
  204610:	02c5773b          	remuw	a4,a0,a2
  204614:	0307071b          	addiw	a4,a4,48
  204618:	00e68023          	sb	a4,0(a3)
  20461c:	02c5553b          	divuw	a0,a0,a2
  204620:	ff08e5e3          	bltu	a7,a6,20460a <cpl_printint+0x24>
  204624:	0818                	addi	a4,sp,16
  204626:	97ba                	add	a5,a5,a4
  204628:	4729                	li	a4,10
  20462a:	fee78823          	sb	a4,-16(a5)
  20462e:	2589                	addiw	a1,a1,2
  204630:	081c                	addi	a5,sp,16
  204632:	97ae                	add	a5,a5,a1
  204634:	fe078823          	sb	zero,-16(a5)
  204638:	00014683          	lbu	a3,0(sp)
  20463c:	c68d                	beqz	a3,204666 <cpl_printint+0x80>
  20463e:	38000737          	lui	a4,0x38000
  204642:	0e0005b7          	lui	a1,0xe000
  204646:	40b70713          	addi	a4,a4,1035 # 3800040b <g_nvmeTask+0x37deffa3>
  20464a:	10358593          	addi	a1,a1,259 # e000103 <g_nvmeTask+0xddefc9b>
  20464e:	860a                	mv	a2,sp
  204650:	070a                	slli	a4,a4,0x2
  204652:	0592                	slli	a1,a1,0x4
  204654:	431c                	lw	a5,0(a4)
  204656:	8bc1                	andi	a5,a5,16
  204658:	fff5                	bnez	a5,204654 <cpl_printint+0x6e>
  20465a:	2681                	sext.w	a3,a3
  20465c:	c194                	sw	a3,0(a1)
  20465e:	00164683          	lbu	a3,1(a2)
  204662:	0605                	addi	a2,a2,1
  204664:	fae5                	bnez	a3,204654 <cpl_printint+0x6e>
  204666:	0141                	addi	sp,sp,16
  204668:	8082                	ret
  20466a:	38000737          	lui	a4,0x38000
  20466e:	0e0005b7          	lui	a1,0xe000
  204672:	00210637          	lui	a2,0x210
  204676:	40b70713          	addi	a4,a4,1035 # 3800040b <g_nvmeTask+0x37deffa3>
  20467a:	10358593          	addi	a1,a1,259 # e000103 <g_nvmeTask+0xddefc9b>
  20467e:	9b860613          	addi	a2,a2,-1608 # 20f9b8 <nvme_main+0xf02>
  204682:	03000693          	li	a3,48
  204686:	070a                	slli	a4,a4,0x2
  204688:	0592                	slli	a1,a1,0x4
  20468a:	431c                	lw	a5,0(a4)
  20468c:	8bc1                	andi	a5,a5,16
  20468e:	fff5                	bnez	a5,20468a <cpl_printint+0xa4>
  204690:	2681                	sext.w	a3,a3
  204692:	c194                	sw	a3,0(a1)
  204694:	00164683          	lbu	a3,1(a2)
  204698:	0605                	addi	a2,a2,1
  20469a:	fae5                	bnez	a3,20468a <cpl_printint+0xa4>
  20469c:	8082                	ret

000000000020469e <cpl_Out32>:
  20469e:	c10c                	sw	a1,0(a0)
  2046a0:	8082                	ret

00000000002046a2 <cpl_In32>:
  2046a2:	4108                	lw	a0,0(a0)
  2046a4:	2501                	sext.w	a0,a0
  2046a6:	8082                	ret

00000000002046a8 <InitDataBuf>:
  2046a8:	1101                	addi	sp,sp,-32
  2046aa:	ec22                	sd	s0,24(sp)
  2046ac:	1000                	addi	s0,sp,32
  2046ae:	002107b7          	lui	a5,0x210
  2046b2:	18000737          	lui	a4,0x18000
  2046b6:	3ae7b023          	sd	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2046ba:	002107b7          	lui	a5,0x210
  2046be:	18004737          	lui	a4,0x18004
  2046c2:	3ae7b823          	sd	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  2046c6:	002107b7          	lui	a5,0x210
  2046ca:	18005737          	lui	a4,0x18005
  2046ce:	3ae7b423          	sd	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  2046d2:	fe042623          	sw	zero,-20(s0)
  2046d6:	a8c5                	j	2047c6 <InitDataBuf+0x11e>
  2046d8:	002107b7          	lui	a5,0x210
  2046dc:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2046e0:	fec42783          	lw	a5,-20(s0)
  2046e4:	0792                	slli	a5,a5,0x4
  2046e6:	97ba                	add	a5,a5,a4
  2046e8:	577d                	li	a4,-1
  2046ea:	c398                	sw	a4,0(a5)
  2046ec:	fec42783          	lw	a5,-20(s0)
  2046f0:	17c2                	slli	a5,a5,0x30
  2046f2:	93c1                	srli	a5,a5,0x30
  2046f4:	00210737          	lui	a4,0x210
  2046f8:	3a073683          	ld	a3,928(a4) # 2103a0 <dataBufMapPtr>
  2046fc:	37fd                	addiw	a5,a5,-1
  2046fe:	03079713          	slli	a4,a5,0x30
  204702:	9341                	srli	a4,a4,0x30
  204704:	fec42783          	lw	a5,-20(s0)
  204708:	0792                	slli	a5,a5,0x4
  20470a:	97b6                	add	a5,a5,a3
  20470c:	00e79223          	sh	a4,4(a5)
  204710:	fec42783          	lw	a5,-20(s0)
  204714:	17c2                	slli	a5,a5,0x30
  204716:	93c1                	srli	a5,a5,0x30
  204718:	00210737          	lui	a4,0x210
  20471c:	3a073683          	ld	a3,928(a4) # 2103a0 <dataBufMapPtr>
  204720:	2785                	addiw	a5,a5,1
  204722:	03079713          	slli	a4,a5,0x30
  204726:	9341                	srli	a4,a4,0x30
  204728:	fec42783          	lw	a5,-20(s0)
  20472c:	0792                	slli	a5,a5,0x4
  20472e:	97b6                	add	a5,a5,a3
  204730:	00e79323          	sh	a4,6(a5)
  204734:	002107b7          	lui	a5,0x210
  204738:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20473c:	fec42783          	lw	a5,-20(s0)
  204740:	0792                	slli	a5,a5,0x4
  204742:	97ba                	add	a5,a5,a4
  204744:	47d4                	lw	a3,12(a5)
  204746:	7741                	lui	a4,0xffff0
  204748:	177d                	addi	a4,a4,-1
  20474a:	8f75                	and	a4,a4,a3
  20474c:	c7d8                	sw	a4,12(a5)
  20474e:	002107b7          	lui	a5,0x210
  204752:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204756:	fec42783          	lw	a5,-20(s0)
  20475a:	0792                	slli	a5,a5,0x4
  20475c:	97ba                	add	a5,a5,a4
  20475e:	577d                	li	a4,-1
  204760:	00e79423          	sh	a4,8(a5)
  204764:	002107b7          	lui	a5,0x210
  204768:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  20476c:	fec42783          	lw	a5,-20(s0)
  204770:	078a                	slli	a5,a5,0x2
  204772:	97ba                	add	a5,a5,a4
  204774:	577d                	li	a4,-1
  204776:	00e79023          	sh	a4,0(a5)
  20477a:	002107b7          	lui	a5,0x210
  20477e:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  204782:	fec42783          	lw	a5,-20(s0)
  204786:	078a                	slli	a5,a5,0x2
  204788:	97ba                	add	a5,a5,a4
  20478a:	577d                	li	a4,-1
  20478c:	00e79123          	sh	a4,2(a5)
  204790:	002107b7          	lui	a5,0x210
  204794:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204798:	fec42783          	lw	a5,-20(s0)
  20479c:	0792                	slli	a5,a5,0x4
  20479e:	97ba                	add	a5,a5,a4
  2047a0:	577d                	li	a4,-1
  2047a2:	00e79523          	sh	a4,10(a5)
  2047a6:	002107b7          	lui	a5,0x210
  2047aa:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2047ae:	fec42783          	lw	a5,-20(s0)
  2047b2:	0792                	slli	a5,a5,0x4
  2047b4:	97ba                	add	a5,a5,a4
  2047b6:	577d                	li	a4,-1
  2047b8:	00e79623          	sh	a4,12(a5)
  2047bc:	fec42783          	lw	a5,-20(s0)
  2047c0:	2785                	addiw	a5,a5,1
  2047c2:	fef42623          	sw	a5,-20(s0)
  2047c6:	fec42783          	lw	a5,-20(s0)
  2047ca:	0007871b          	sext.w	a4,a5
  2047ce:	3ff00793          	li	a5,1023
  2047d2:	f0e7d3e3          	bge	a5,a4,2046d8 <InitDataBuf+0x30>
  2047d6:	002107b7          	lui	a5,0x210
  2047da:	3a07b783          	ld	a5,928(a5) # 2103a0 <dataBufMapPtr>
  2047de:	577d                	li	a4,-1
  2047e0:	00e79223          	sh	a4,4(a5)
  2047e4:	002107b7          	lui	a5,0x210
  2047e8:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2047ec:	6791                	lui	a5,0x4
  2047ee:	97ba                	add	a5,a5,a4
  2047f0:	577d                	li	a4,-1
  2047f2:	fee79b23          	sh	a4,-10(a5) # 3ff6 <start-0x1fc00a>
  2047f6:	002107b7          	lui	a5,0x210
  2047fa:	3a079c23          	sh	zero,952(a5) # 2103b8 <dataBufLruList>
  2047fe:	002107b7          	lui	a5,0x210
  204802:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204806:	3ff00713          	li	a4,1023
  20480a:	00e79123          	sh	a4,2(a5)
  20480e:	fe042623          	sw	zero,-20(s0)
  204812:	a00d                	j	204834 <InitDataBuf+0x18c>
  204814:	002107b7          	lui	a5,0x210
  204818:	3a87b703          	ld	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  20481c:	fec42783          	lw	a5,-20(s0)
  204820:	078a                	slli	a5,a5,0x2
  204822:	97ba                	add	a5,a5,a4
  204824:	577d                	li	a4,-1
  204826:	00e79023          	sh	a4,0(a5)
  20482a:	fec42783          	lw	a5,-20(s0)
  20482e:	2785                	addiw	a5,a5,1
  204830:	fef42623          	sw	a5,-20(s0)
  204834:	fec42783          	lw	a5,-20(s0)
  204838:	0007871b          	sext.w	a4,a5
  20483c:	03f00793          	li	a5,63
  204840:	fce7dae3          	bge	a5,a4,204814 <InitDataBuf+0x16c>
  204844:	0001                	nop
  204846:	0001                	nop
  204848:	6462                	ld	s0,24(sp)
  20484a:	6105                	addi	sp,sp,32
  20484c:	8082                	ret

000000000020484e <CheckDataBufHit>:
  20484e:	7179                	addi	sp,sp,-48
  204850:	f422                	sd	s0,40(sp)
  204852:	1800                	addi	s0,sp,48
  204854:	87aa                	mv	a5,a0
  204856:	fcf42e23          	sw	a5,-36(s0)
  20485a:	002107b7          	lui	a5,0x210
  20485e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204862:	fdc46683          	lwu	a3,-36(s0)
  204866:	03400793          	li	a5,52
  20486a:	02f687b3          	mul	a5,a3,a5
  20486e:	97ba                	add	a5,a5,a4
  204870:	47dc                	lw	a5,12(a5)
  204872:	fef42423          	sw	a5,-24(s0)
  204876:	002107b7          	lui	a5,0x210
  20487a:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  20487e:	fe842783          	lw	a5,-24(s0)
  204882:	3ff7f793          	andi	a5,a5,1023
  204886:	2781                	sext.w	a5,a5
  204888:	1782                	slli	a5,a5,0x20
  20488a:	9381                	srli	a5,a5,0x20
  20488c:	078a                	slli	a5,a5,0x2
  20488e:	97ba                	add	a5,a5,a4
  204890:	0007d783          	lhu	a5,0(a5)
  204894:	fef42623          	sw	a5,-20(s0)
  204898:	accd                	j	204b8a <CheckDataBufHit+0x33c>
  20489a:	002107b7          	lui	a5,0x210
  20489e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2048a2:	fec46783          	lwu	a5,-20(s0)
  2048a6:	0792                	slli	a5,a5,0x4
  2048a8:	97ba                	add	a5,a5,a4
  2048aa:	4398                	lw	a4,0(a5)
  2048ac:	fe842783          	lw	a5,-24(s0)
  2048b0:	2781                	sext.w	a5,a5
  2048b2:	2ce79063          	bne	a5,a4,204b72 <CheckDataBufHit+0x324>
  2048b6:	002107b7          	lui	a5,0x210
  2048ba:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2048be:	fec46783          	lwu	a5,-20(s0)
  2048c2:	0792                	slli	a5,a5,0x4
  2048c4:	97ba                	add	a5,a5,a4
  2048c6:	0067d783          	lhu	a5,6(a5)
  2048ca:	0007871b          	sext.w	a4,a5
  2048ce:	67c1                	lui	a5,0x10
  2048d0:	17fd                	addi	a5,a5,-1
  2048d2:	0af70163          	beq	a4,a5,204974 <CheckDataBufHit+0x126>
  2048d6:	002107b7          	lui	a5,0x210
  2048da:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2048de:	fec46783          	lwu	a5,-20(s0)
  2048e2:	0792                	slli	a5,a5,0x4
  2048e4:	97ba                	add	a5,a5,a4
  2048e6:	0047d783          	lhu	a5,4(a5)
  2048ea:	0007871b          	sext.w	a4,a5
  2048ee:	67c1                	lui	a5,0x10
  2048f0:	17fd                	addi	a5,a5,-1
  2048f2:	08f70163          	beq	a4,a5,204974 <CheckDataBufHit+0x126>
  2048f6:	002107b7          	lui	a5,0x210
  2048fa:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2048fe:	002107b7          	lui	a5,0x210
  204902:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204906:	002107b7          	lui	a5,0x210
  20490a:	3a07b603          	ld	a2,928(a5) # 2103a0 <dataBufMapPtr>
  20490e:	fec46783          	lwu	a5,-20(s0)
  204912:	0792                	slli	a5,a5,0x4
  204914:	97b2                	add	a5,a5,a2
  204916:	0047d783          	lhu	a5,4(a5)
  20491a:	0007861b          	sext.w	a2,a5
  20491e:	fec46783          	lwu	a5,-20(s0)
  204922:	0792                	slli	a5,a5,0x4
  204924:	97ba                	add	a5,a5,a4
  204926:	0067d703          	lhu	a4,6(a5)
  20492a:	00461793          	slli	a5,a2,0x4
  20492e:	97b6                	add	a5,a5,a3
  204930:	00e79323          	sh	a4,6(a5)
  204934:	002107b7          	lui	a5,0x210
  204938:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20493c:	002107b7          	lui	a5,0x210
  204940:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204944:	002107b7          	lui	a5,0x210
  204948:	3a07b603          	ld	a2,928(a5) # 2103a0 <dataBufMapPtr>
  20494c:	fec46783          	lwu	a5,-20(s0)
  204950:	0792                	slli	a5,a5,0x4
  204952:	97b2                	add	a5,a5,a2
  204954:	0067d783          	lhu	a5,6(a5)
  204958:	0007861b          	sext.w	a2,a5
  20495c:	fec46783          	lwu	a5,-20(s0)
  204960:	0792                	slli	a5,a5,0x4
  204962:	97ba                	add	a5,a5,a4
  204964:	0047d703          	lhu	a4,4(a5)
  204968:	00461793          	slli	a5,a2,0x4
  20496c:	97b6                	add	a5,a5,a3
  20496e:	00e79223          	sh	a4,4(a5)
  204972:	a22d                	j	204a9c <CheckDataBufHit+0x24e>
  204974:	002107b7          	lui	a5,0x210
  204978:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20497c:	fec46783          	lwu	a5,-20(s0)
  204980:	0792                	slli	a5,a5,0x4
  204982:	97ba                	add	a5,a5,a4
  204984:	0067d783          	lhu	a5,6(a5)
  204988:	0007871b          	sext.w	a4,a5
  20498c:	67c1                	lui	a5,0x10
  20498e:	17fd                	addi	a5,a5,-1
  204990:	06f71763          	bne	a4,a5,2049fe <CheckDataBufHit+0x1b0>
  204994:	002107b7          	lui	a5,0x210
  204998:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20499c:	fec46783          	lwu	a5,-20(s0)
  2049a0:	0792                	slli	a5,a5,0x4
  2049a2:	97ba                	add	a5,a5,a4
  2049a4:	0047d783          	lhu	a5,4(a5)
  2049a8:	0007871b          	sext.w	a4,a5
  2049ac:	67c1                	lui	a5,0x10
  2049ae:	17fd                	addi	a5,a5,-1
  2049b0:	04f70763          	beq	a4,a5,2049fe <CheckDataBufHit+0x1b0>
  2049b4:	002107b7          	lui	a5,0x210
  2049b8:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2049bc:	002107b7          	lui	a5,0x210
  2049c0:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  2049c4:	fec46783          	lwu	a5,-20(s0)
  2049c8:	0792                	slli	a5,a5,0x4
  2049ca:	97b6                	add	a5,a5,a3
  2049cc:	0047d783          	lhu	a5,4(a5)
  2049d0:	2781                	sext.w	a5,a5
  2049d2:	0792                	slli	a5,a5,0x4
  2049d4:	97ba                	add	a5,a5,a4
  2049d6:	577d                	li	a4,-1
  2049d8:	00e79323          	sh	a4,6(a5)
  2049dc:	002107b7          	lui	a5,0x210
  2049e0:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2049e4:	fec46783          	lwu	a5,-20(s0)
  2049e8:	0792                	slli	a5,a5,0x4
  2049ea:	97ba                	add	a5,a5,a4
  2049ec:	0047d703          	lhu	a4,4(a5)
  2049f0:	002107b7          	lui	a5,0x210
  2049f4:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  2049f8:	00e79123          	sh	a4,2(a5)
  2049fc:	a045                	j	204a9c <CheckDataBufHit+0x24e>
  2049fe:	002107b7          	lui	a5,0x210
  204a02:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204a06:	fec46783          	lwu	a5,-20(s0)
  204a0a:	0792                	slli	a5,a5,0x4
  204a0c:	97ba                	add	a5,a5,a4
  204a0e:	0067d783          	lhu	a5,6(a5)
  204a12:	0007871b          	sext.w	a4,a5
  204a16:	67c1                	lui	a5,0x10
  204a18:	17fd                	addi	a5,a5,-1
  204a1a:	06f70563          	beq	a4,a5,204a84 <CheckDataBufHit+0x236>
  204a1e:	002107b7          	lui	a5,0x210
  204a22:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204a26:	fec46783          	lwu	a5,-20(s0)
  204a2a:	0792                	slli	a5,a5,0x4
  204a2c:	97ba                	add	a5,a5,a4
  204a2e:	0047d783          	lhu	a5,4(a5)
  204a32:	0007871b          	sext.w	a4,a5
  204a36:	67c1                	lui	a5,0x10
  204a38:	17fd                	addi	a5,a5,-1
  204a3a:	04f71563          	bne	a4,a5,204a84 <CheckDataBufHit+0x236>
  204a3e:	002107b7          	lui	a5,0x210
  204a42:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204a46:	002107b7          	lui	a5,0x210
  204a4a:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204a4e:	fec46783          	lwu	a5,-20(s0)
  204a52:	0792                	slli	a5,a5,0x4
  204a54:	97b6                	add	a5,a5,a3
  204a56:	0067d783          	lhu	a5,6(a5)
  204a5a:	2781                	sext.w	a5,a5
  204a5c:	0792                	slli	a5,a5,0x4
  204a5e:	97ba                	add	a5,a5,a4
  204a60:	577d                	li	a4,-1
  204a62:	00e79223          	sh	a4,4(a5)
  204a66:	002107b7          	lui	a5,0x210
  204a6a:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204a6e:	fec46783          	lwu	a5,-20(s0)
  204a72:	0792                	slli	a5,a5,0x4
  204a74:	97ba                	add	a5,a5,a4
  204a76:	0067d703          	lhu	a4,6(a5)
  204a7a:	002107b7          	lui	a5,0x210
  204a7e:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204a82:	a829                	j	204a9c <CheckDataBufHit+0x24e>
  204a84:	002107b7          	lui	a5,0x210
  204a88:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204a8c:	577d                	li	a4,-1
  204a8e:	00e79123          	sh	a4,2(a5)
  204a92:	002107b7          	lui	a5,0x210
  204a96:	577d                	li	a4,-1
  204a98:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204a9c:	002107b7          	lui	a5,0x210
  204aa0:	3b87d783          	lhu	a5,952(a5) # 2103b8 <dataBufLruList>
  204aa4:	0007871b          	sext.w	a4,a5
  204aa8:	67c1                	lui	a5,0x10
  204aaa:	17fd                	addi	a5,a5,-1
  204aac:	06f70663          	beq	a4,a5,204b18 <CheckDataBufHit+0x2ca>
  204ab0:	002107b7          	lui	a5,0x210
  204ab4:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204ab8:	fec46783          	lwu	a5,-20(s0)
  204abc:	0792                	slli	a5,a5,0x4
  204abe:	97ba                	add	a5,a5,a4
  204ac0:	577d                	li	a4,-1
  204ac2:	00e79223          	sh	a4,4(a5)
  204ac6:	002107b7          	lui	a5,0x210
  204aca:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204ace:	002107b7          	lui	a5,0x210
  204ad2:	3b87d703          	lhu	a4,952(a5) # 2103b8 <dataBufLruList>
  204ad6:	fec46783          	lwu	a5,-20(s0)
  204ada:	0792                	slli	a5,a5,0x4
  204adc:	97b6                	add	a5,a5,a3
  204ade:	00e79323          	sh	a4,6(a5)
  204ae2:	002107b7          	lui	a5,0x210
  204ae6:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204aea:	002107b7          	lui	a5,0x210
  204aee:	3b87d783          	lhu	a5,952(a5) # 2103b8 <dataBufLruList>
  204af2:	2781                	sext.w	a5,a5
  204af4:	fec42703          	lw	a4,-20(s0)
  204af8:	1742                	slli	a4,a4,0x30
  204afa:	9341                	srli	a4,a4,0x30
  204afc:	0792                	slli	a5,a5,0x4
  204afe:	97b6                	add	a5,a5,a3
  204b00:	00e79223          	sh	a4,4(a5)
  204b04:	fec42783          	lw	a5,-20(s0)
  204b08:	03079713          	slli	a4,a5,0x30
  204b0c:	9341                	srli	a4,a4,0x30
  204b0e:	002107b7          	lui	a5,0x210
  204b12:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204b16:	a899                	j	204b6c <CheckDataBufHit+0x31e>
  204b18:	002107b7          	lui	a5,0x210
  204b1c:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204b20:	fec46783          	lwu	a5,-20(s0)
  204b24:	0792                	slli	a5,a5,0x4
  204b26:	97ba                	add	a5,a5,a4
  204b28:	577d                	li	a4,-1
  204b2a:	00e79223          	sh	a4,4(a5)
  204b2e:	002107b7          	lui	a5,0x210
  204b32:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204b36:	fec46783          	lwu	a5,-20(s0)
  204b3a:	0792                	slli	a5,a5,0x4
  204b3c:	97ba                	add	a5,a5,a4
  204b3e:	577d                	li	a4,-1
  204b40:	00e79323          	sh	a4,6(a5)
  204b44:	fec42783          	lw	a5,-20(s0)
  204b48:	03079713          	slli	a4,a5,0x30
  204b4c:	9341                	srli	a4,a4,0x30
  204b4e:	002107b7          	lui	a5,0x210
  204b52:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204b56:	fec42783          	lw	a5,-20(s0)
  204b5a:	03079713          	slli	a4,a5,0x30
  204b5e:	9341                	srli	a4,a4,0x30
  204b60:	002107b7          	lui	a5,0x210
  204b64:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204b68:	00e79123          	sh	a4,2(a5)
  204b6c:	fec42783          	lw	a5,-20(s0)
  204b70:	a03d                	j	204b9e <CheckDataBufHit+0x350>
  204b72:	002107b7          	lui	a5,0x210
  204b76:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204b7a:	fec46783          	lwu	a5,-20(s0)
  204b7e:	0792                	slli	a5,a5,0x4
  204b80:	97ba                	add	a5,a5,a4
  204b82:	00c7d783          	lhu	a5,12(a5)
  204b86:	fef42623          	sw	a5,-20(s0)
  204b8a:	fec42783          	lw	a5,-20(s0)
  204b8e:	0007871b          	sext.w	a4,a5
  204b92:	67c1                	lui	a5,0x10
  204b94:	17fd                	addi	a5,a5,-1
  204b96:	d0f712e3          	bne	a4,a5,20489a <CheckDataBufHit+0x4c>
  204b9a:	67c1                	lui	a5,0x10
  204b9c:	17fd                	addi	a5,a5,-1
  204b9e:	853e                	mv	a0,a5
  204ba0:	7422                	ld	s0,40(sp)
  204ba2:	6145                	addi	sp,sp,48
  204ba4:	8082                	ret

0000000000204ba6 <AllocateDataBuf>:
  204ba6:	1101                	addi	sp,sp,-32
  204ba8:	ec06                	sd	ra,24(sp)
  204baa:	e822                	sd	s0,16(sp)
  204bac:	1000                	addi	s0,sp,32
  204bae:	002107b7          	lui	a5,0x210
  204bb2:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204bb6:	0027d783          	lhu	a5,2(a5)
  204bba:	fef42623          	sw	a5,-20(s0)
  204bbe:	fec42783          	lw	a5,-20(s0)
  204bc2:	0007871b          	sext.w	a4,a5
  204bc6:	67c1                	lui	a5,0x10
  204bc8:	17fd                	addi	a5,a5,-1
  204bca:	00f71863          	bne	a4,a5,204bda <AllocateDataBuf+0x34>
  204bce:	0020f7b7          	lui	a5,0x20f
  204bd2:	18078513          	addi	a0,a5,384 # 20f180 <nvme_main+0x6ca>
  204bd6:	9e3ff0ef          	jal	ra,2045b8 <cpl_print>
  204bda:	002107b7          	lui	a5,0x210
  204bde:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204be2:	fec46783          	lwu	a5,-20(s0)
  204be6:	0792                	slli	a5,a5,0x4
  204be8:	97ba                	add	a5,a5,a4
  204bea:	0047d783          	lhu	a5,4(a5)
  204bee:	0007871b          	sext.w	a4,a5
  204bf2:	67c1                	lui	a5,0x10
  204bf4:	17fd                	addi	a5,a5,-1
  204bf6:	0af70a63          	beq	a4,a5,204caa <AllocateDataBuf+0x104>
  204bfa:	002107b7          	lui	a5,0x210
  204bfe:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204c02:	002107b7          	lui	a5,0x210
  204c06:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204c0a:	fec46783          	lwu	a5,-20(s0)
  204c0e:	0792                	slli	a5,a5,0x4
  204c10:	97b6                	add	a5,a5,a3
  204c12:	0047d783          	lhu	a5,4(a5)
  204c16:	2781                	sext.w	a5,a5
  204c18:	0792                	slli	a5,a5,0x4
  204c1a:	97ba                	add	a5,a5,a4
  204c1c:	577d                	li	a4,-1
  204c1e:	00e79323          	sh	a4,6(a5)
  204c22:	002107b7          	lui	a5,0x210
  204c26:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204c2a:	fec46783          	lwu	a5,-20(s0)
  204c2e:	0792                	slli	a5,a5,0x4
  204c30:	97ba                	add	a5,a5,a4
  204c32:	0047d703          	lhu	a4,4(a5)
  204c36:	002107b7          	lui	a5,0x210
  204c3a:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204c3e:	00e79123          	sh	a4,2(a5)
  204c42:	002107b7          	lui	a5,0x210
  204c46:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204c4a:	fec46783          	lwu	a5,-20(s0)
  204c4e:	0792                	slli	a5,a5,0x4
  204c50:	97ba                	add	a5,a5,a4
  204c52:	577d                	li	a4,-1
  204c54:	00e79223          	sh	a4,4(a5)
  204c58:	002107b7          	lui	a5,0x210
  204c5c:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204c60:	002107b7          	lui	a5,0x210
  204c64:	3b87d703          	lhu	a4,952(a5) # 2103b8 <dataBufLruList>
  204c68:	fec46783          	lwu	a5,-20(s0)
  204c6c:	0792                	slli	a5,a5,0x4
  204c6e:	97b6                	add	a5,a5,a3
  204c70:	00e79323          	sh	a4,6(a5)
  204c74:	002107b7          	lui	a5,0x210
  204c78:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204c7c:	002107b7          	lui	a5,0x210
  204c80:	3b87d783          	lhu	a5,952(a5) # 2103b8 <dataBufLruList>
  204c84:	2781                	sext.w	a5,a5
  204c86:	fec42703          	lw	a4,-20(s0)
  204c8a:	1742                	slli	a4,a4,0x30
  204c8c:	9341                	srli	a4,a4,0x30
  204c8e:	0792                	slli	a5,a5,0x4
  204c90:	97b6                	add	a5,a5,a3
  204c92:	00e79223          	sh	a4,4(a5)
  204c96:	fec42783          	lw	a5,-20(s0)
  204c9a:	03079713          	slli	a4,a5,0x30
  204c9e:	9341                	srli	a4,a4,0x30
  204ca0:	002107b7          	lui	a5,0x210
  204ca4:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204ca8:	a899                	j	204cfe <AllocateDataBuf+0x158>
  204caa:	002107b7          	lui	a5,0x210
  204cae:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204cb2:	fec46783          	lwu	a5,-20(s0)
  204cb6:	0792                	slli	a5,a5,0x4
  204cb8:	97ba                	add	a5,a5,a4
  204cba:	577d                	li	a4,-1
  204cbc:	00e79223          	sh	a4,4(a5)
  204cc0:	002107b7          	lui	a5,0x210
  204cc4:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204cc8:	fec46783          	lwu	a5,-20(s0)
  204ccc:	0792                	slli	a5,a5,0x4
  204cce:	97ba                	add	a5,a5,a4
  204cd0:	577d                	li	a4,-1
  204cd2:	00e79323          	sh	a4,6(a5)
  204cd6:	fec42783          	lw	a5,-20(s0)
  204cda:	03079713          	slli	a4,a5,0x30
  204cde:	9341                	srli	a4,a4,0x30
  204ce0:	002107b7          	lui	a5,0x210
  204ce4:	3ae79c23          	sh	a4,952(a5) # 2103b8 <dataBufLruList>
  204ce8:	fec42783          	lw	a5,-20(s0)
  204cec:	03079713          	slli	a4,a5,0x30
  204cf0:	9341                	srli	a4,a4,0x30
  204cf2:	002107b7          	lui	a5,0x210
  204cf6:	3b878793          	addi	a5,a5,952 # 2103b8 <dataBufLruList>
  204cfa:	00e79123          	sh	a4,2(a5)
  204cfe:	fec42783          	lw	a5,-20(s0)
  204d02:	853e                	mv	a0,a5
  204d04:	2f8000ef          	jal	ra,204ffc <SelectiveGetFromDataBufHashList>
  204d08:	fec42783          	lw	a5,-20(s0)
  204d0c:	853e                	mv	a0,a5
  204d0e:	60e2                	ld	ra,24(sp)
  204d10:	6442                	ld	s0,16(sp)
  204d12:	6105                	addi	sp,sp,32
  204d14:	8082                	ret

0000000000204d16 <UpdateDataBufEntryInfoBlockingReq>:
  204d16:	1101                	addi	sp,sp,-32
  204d18:	ec22                	sd	s0,24(sp)
  204d1a:	1000                	addi	s0,sp,32
  204d1c:	87aa                	mv	a5,a0
  204d1e:	872e                	mv	a4,a1
  204d20:	fef42623          	sw	a5,-20(s0)
  204d24:	87ba                	mv	a5,a4
  204d26:	fef42423          	sw	a5,-24(s0)
  204d2a:	002107b7          	lui	a5,0x210
  204d2e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204d32:	fec46783          	lwu	a5,-20(s0)
  204d36:	0792                	slli	a5,a5,0x4
  204d38:	97ba                	add	a5,a5,a4
  204d3a:	0087d783          	lhu	a5,8(a5)
  204d3e:	0007871b          	sext.w	a4,a5
  204d42:	67c1                	lui	a5,0x10
  204d44:	17fd                	addi	a5,a5,-1
  204d46:	06f70863          	beq	a4,a5,204db6 <UpdateDataBufEntryInfoBlockingReq+0xa0>
  204d4a:	002107b7          	lui	a5,0x210
  204d4e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204d52:	002107b7          	lui	a5,0x210
  204d56:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204d5a:	fec46783          	lwu	a5,-20(s0)
  204d5e:	0792                	slli	a5,a5,0x4
  204d60:	97ba                	add	a5,a5,a4
  204d62:	0087d703          	lhu	a4,8(a5)
  204d66:	fe846603          	lwu	a2,-24(s0)
  204d6a:	03400793          	li	a5,52
  204d6e:	02f607b3          	mul	a5,a2,a5
  204d72:	97b6                	add	a5,a5,a3
  204d74:	02e79823          	sh	a4,48(a5)
  204d78:	002107b7          	lui	a5,0x210
  204d7c:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204d80:	002107b7          	lui	a5,0x210
  204d84:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204d88:	fe846603          	lwu	a2,-24(s0)
  204d8c:	03400793          	li	a5,52
  204d90:	02f607b3          	mul	a5,a2,a5
  204d94:	97ba                	add	a5,a5,a4
  204d96:	0307d783          	lhu	a5,48(a5)
  204d9a:	0007861b          	sext.w	a2,a5
  204d9e:	fe842783          	lw	a5,-24(s0)
  204da2:	03079713          	slli	a4,a5,0x30
  204da6:	9341                	srli	a4,a4,0x30
  204da8:	03400793          	li	a5,52
  204dac:	02f607b3          	mul	a5,a2,a5
  204db0:	97b6                	add	a5,a5,a3
  204db2:	02e79923          	sh	a4,50(a5)
  204db6:	002107b7          	lui	a5,0x210
  204dba:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204dbe:	fe842783          	lw	a5,-24(s0)
  204dc2:	03079713          	slli	a4,a5,0x30
  204dc6:	9341                	srli	a4,a4,0x30
  204dc8:	fec46783          	lwu	a5,-20(s0)
  204dcc:	0792                	slli	a5,a5,0x4
  204dce:	97b6                	add	a5,a5,a3
  204dd0:	00e79423          	sh	a4,8(a5)
  204dd4:	0001                	nop
  204dd6:	6462                	ld	s0,24(sp)
  204dd8:	6105                	addi	sp,sp,32
  204dda:	8082                	ret

0000000000204ddc <AllocateTempDataBuf>:
  204ddc:	1101                	addi	sp,sp,-32
  204dde:	ec22                	sd	s0,24(sp)
  204de0:	1000                	addi	s0,sp,32
  204de2:	87aa                	mv	a5,a0
  204de4:	fef42623          	sw	a5,-20(s0)
  204de8:	fec42783          	lw	a5,-20(s0)
  204dec:	853e                	mv	a0,a5
  204dee:	6462                	ld	s0,24(sp)
  204df0:	6105                	addi	sp,sp,32
  204df2:	8082                	ret

0000000000204df4 <UpdateTempDataBufEntryInfoBlockingReq>:
  204df4:	1101                	addi	sp,sp,-32
  204df6:	ec22                	sd	s0,24(sp)
  204df8:	1000                	addi	s0,sp,32
  204dfa:	87aa                	mv	a5,a0
  204dfc:	872e                	mv	a4,a1
  204dfe:	fef42623          	sw	a5,-20(s0)
  204e02:	87ba                	mv	a5,a4
  204e04:	fef42423          	sw	a5,-24(s0)
  204e08:	002107b7          	lui	a5,0x210
  204e0c:	3a87b703          	ld	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  204e10:	fec46783          	lwu	a5,-20(s0)
  204e14:	078a                	slli	a5,a5,0x2
  204e16:	97ba                	add	a5,a5,a4
  204e18:	0007d783          	lhu	a5,0(a5)
  204e1c:	0007871b          	sext.w	a4,a5
  204e20:	67c1                	lui	a5,0x10
  204e22:	17fd                	addi	a5,a5,-1
  204e24:	06f70863          	beq	a4,a5,204e94 <UpdateTempDataBufEntryInfoBlockingReq+0xa0>
  204e28:	002107b7          	lui	a5,0x210
  204e2c:	3a87b703          	ld	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  204e30:	002107b7          	lui	a5,0x210
  204e34:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204e38:	fec46783          	lwu	a5,-20(s0)
  204e3c:	078a                	slli	a5,a5,0x2
  204e3e:	97ba                	add	a5,a5,a4
  204e40:	0007d703          	lhu	a4,0(a5)
  204e44:	fe846603          	lwu	a2,-24(s0)
  204e48:	03400793          	li	a5,52
  204e4c:	02f607b3          	mul	a5,a2,a5
  204e50:	97b6                	add	a5,a5,a3
  204e52:	02e79823          	sh	a4,48(a5)
  204e56:	002107b7          	lui	a5,0x210
  204e5a:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  204e5e:	002107b7          	lui	a5,0x210
  204e62:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  204e66:	fe846603          	lwu	a2,-24(s0)
  204e6a:	03400793          	li	a5,52
  204e6e:	02f607b3          	mul	a5,a2,a5
  204e72:	97ba                	add	a5,a5,a4
  204e74:	0307d783          	lhu	a5,48(a5)
  204e78:	0007861b          	sext.w	a2,a5
  204e7c:	fe842783          	lw	a5,-24(s0)
  204e80:	03079713          	slli	a4,a5,0x30
  204e84:	9341                	srli	a4,a4,0x30
  204e86:	03400793          	li	a5,52
  204e8a:	02f607b3          	mul	a5,a2,a5
  204e8e:	97b6                	add	a5,a5,a3
  204e90:	02e79923          	sh	a4,50(a5)
  204e94:	002107b7          	lui	a5,0x210
  204e98:	3a87b683          	ld	a3,936(a5) # 2103a8 <tempDataBufMapPtr>
  204e9c:	fe842783          	lw	a5,-24(s0)
  204ea0:	03079713          	slli	a4,a5,0x30
  204ea4:	9341                	srli	a4,a4,0x30
  204ea6:	fec46783          	lwu	a5,-20(s0)
  204eaa:	078a                	slli	a5,a5,0x2
  204eac:	97b6                	add	a5,a5,a3
  204eae:	00e79023          	sh	a4,0(a5)
  204eb2:	0001                	nop
  204eb4:	6462                	ld	s0,24(sp)
  204eb6:	6105                	addi	sp,sp,32
  204eb8:	8082                	ret

0000000000204eba <PutToDataBufHashList>:
  204eba:	7179                	addi	sp,sp,-48
  204ebc:	f422                	sd	s0,40(sp)
  204ebe:	1800                	addi	s0,sp,48
  204ec0:	87aa                	mv	a5,a0
  204ec2:	fcf42e23          	sw	a5,-36(s0)
  204ec6:	002107b7          	lui	a5,0x210
  204eca:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204ece:	fdc46783          	lwu	a5,-36(s0)
  204ed2:	0792                	slli	a5,a5,0x4
  204ed4:	97ba                	add	a5,a5,a4
  204ed6:	439c                	lw	a5,0(a5)
  204ed8:	3ff7f793          	andi	a5,a5,1023
  204edc:	fef42623          	sw	a5,-20(s0)
  204ee0:	002107b7          	lui	a5,0x210
  204ee4:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  204ee8:	fec46783          	lwu	a5,-20(s0)
  204eec:	078a                	slli	a5,a5,0x2
  204eee:	97ba                	add	a5,a5,a4
  204ef0:	0027d783          	lhu	a5,2(a5)
  204ef4:	0007871b          	sext.w	a4,a5
  204ef8:	67c1                	lui	a5,0x10
  204efa:	17fd                	addi	a5,a5,-1
  204efc:	08f70863          	beq	a4,a5,204f8c <PutToDataBufHashList+0xd2>
  204f00:	002107b7          	lui	a5,0x210
  204f04:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  204f08:	002107b7          	lui	a5,0x210
  204f0c:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204f10:	fec46783          	lwu	a5,-20(s0)
  204f14:	078a                	slli	a5,a5,0x2
  204f16:	97ba                	add	a5,a5,a4
  204f18:	0027d703          	lhu	a4,2(a5)
  204f1c:	fdc46783          	lwu	a5,-36(s0)
  204f20:	0792                	slli	a5,a5,0x4
  204f22:	97b6                	add	a5,a5,a3
  204f24:	00e79523          	sh	a4,10(a5)
  204f28:	002107b7          	lui	a5,0x210
  204f2c:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204f30:	fdc46783          	lwu	a5,-36(s0)
  204f34:	0792                	slli	a5,a5,0x4
  204f36:	97ba                	add	a5,a5,a4
  204f38:	577d                	li	a4,-1
  204f3a:	00e79623          	sh	a4,12(a5)
  204f3e:	002107b7          	lui	a5,0x210
  204f42:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  204f46:	002107b7          	lui	a5,0x210
  204f4a:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  204f4e:	fec46783          	lwu	a5,-20(s0)
  204f52:	078a                	slli	a5,a5,0x2
  204f54:	97ba                	add	a5,a5,a4
  204f56:	0027d783          	lhu	a5,2(a5)
  204f5a:	2781                	sext.w	a5,a5
  204f5c:	fdc42703          	lw	a4,-36(s0)
  204f60:	1742                	slli	a4,a4,0x30
  204f62:	9341                	srli	a4,a4,0x30
  204f64:	0792                	slli	a5,a5,0x4
  204f66:	97b6                	add	a5,a5,a3
  204f68:	00e79623          	sh	a4,12(a5)
  204f6c:	002107b7          	lui	a5,0x210
  204f70:	3b07b683          	ld	a3,944(a5) # 2103b0 <dataBufHashTablePtr>
  204f74:	fdc42783          	lw	a5,-36(s0)
  204f78:	03079713          	slli	a4,a5,0x30
  204f7c:	9341                	srli	a4,a4,0x30
  204f7e:	fec46783          	lwu	a5,-20(s0)
  204f82:	078a                	slli	a5,a5,0x2
  204f84:	97b6                	add	a5,a5,a3
  204f86:	00e79123          	sh	a4,2(a5)
  204f8a:	a0ad                	j	204ff4 <PutToDataBufHashList+0x13a>
  204f8c:	002107b7          	lui	a5,0x210
  204f90:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204f94:	fdc46783          	lwu	a5,-36(s0)
  204f98:	0792                	slli	a5,a5,0x4
  204f9a:	97ba                	add	a5,a5,a4
  204f9c:	577d                	li	a4,-1
  204f9e:	00e79523          	sh	a4,10(a5)
  204fa2:	002107b7          	lui	a5,0x210
  204fa6:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  204faa:	fdc46783          	lwu	a5,-36(s0)
  204fae:	0792                	slli	a5,a5,0x4
  204fb0:	97ba                	add	a5,a5,a4
  204fb2:	577d                	li	a4,-1
  204fb4:	00e79623          	sh	a4,12(a5)
  204fb8:	002107b7          	lui	a5,0x210
  204fbc:	3b07b683          	ld	a3,944(a5) # 2103b0 <dataBufHashTablePtr>
  204fc0:	fdc42783          	lw	a5,-36(s0)
  204fc4:	03079713          	slli	a4,a5,0x30
  204fc8:	9341                	srli	a4,a4,0x30
  204fca:	fec46783          	lwu	a5,-20(s0)
  204fce:	078a                	slli	a5,a5,0x2
  204fd0:	97b6                	add	a5,a5,a3
  204fd2:	00e79023          	sh	a4,0(a5)
  204fd6:	002107b7          	lui	a5,0x210
  204fda:	3b07b683          	ld	a3,944(a5) # 2103b0 <dataBufHashTablePtr>
  204fde:	fdc42783          	lw	a5,-36(s0)
  204fe2:	03079713          	slli	a4,a5,0x30
  204fe6:	9341                	srli	a4,a4,0x30
  204fe8:	fec46783          	lwu	a5,-20(s0)
  204fec:	078a                	slli	a5,a5,0x2
  204fee:	97b6                	add	a5,a5,a3
  204ff0:	00e79123          	sh	a4,2(a5)
  204ff4:	0001                	nop
  204ff6:	7422                	ld	s0,40(sp)
  204ff8:	6145                	addi	sp,sp,48
  204ffa:	8082                	ret

0000000000204ffc <SelectiveGetFromDataBufHashList>:
  204ffc:	7179                	addi	sp,sp,-48
  204ffe:	f422                	sd	s0,40(sp)
  205000:	1800                	addi	s0,sp,48
  205002:	87aa                	mv	a5,a0
  205004:	fcf42e23          	sw	a5,-36(s0)
  205008:	002107b7          	lui	a5,0x210
  20500c:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  205010:	fdc46783          	lwu	a5,-36(s0)
  205014:	0792                	slli	a5,a5,0x4
  205016:	97ba                	add	a5,a5,a4
  205018:	439c                	lw	a5,0(a5)
  20501a:	873e                	mv	a4,a5
  20501c:	57fd                	li	a5,-1
  20501e:	18f70363          	beq	a4,a5,2051a4 <SelectiveGetFromDataBufHashList+0x1a8>
  205022:	002107b7          	lui	a5,0x210
  205026:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20502a:	fdc46783          	lwu	a5,-36(s0)
  20502e:	0792                	slli	a5,a5,0x4
  205030:	97ba                	add	a5,a5,a4
  205032:	00a7d783          	lhu	a5,10(a5)
  205036:	fef42623          	sw	a5,-20(s0)
  20503a:	002107b7          	lui	a5,0x210
  20503e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  205042:	fdc46783          	lwu	a5,-36(s0)
  205046:	0792                	slli	a5,a5,0x4
  205048:	97ba                	add	a5,a5,a4
  20504a:	00c7d783          	lhu	a5,12(a5)
  20504e:	fef42423          	sw	a5,-24(s0)
  205052:	002107b7          	lui	a5,0x210
  205056:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20505a:	fdc46783          	lwu	a5,-36(s0)
  20505e:	0792                	slli	a5,a5,0x4
  205060:	97ba                	add	a5,a5,a4
  205062:	439c                	lw	a5,0(a5)
  205064:	3ff7f793          	andi	a5,a5,1023
  205068:	fef42223          	sw	a5,-28(s0)
  20506c:	fe842783          	lw	a5,-24(s0)
  205070:	0007871b          	sext.w	a4,a5
  205074:	67c1                	lui	a5,0x10
  205076:	17fd                	addi	a5,a5,-1
  205078:	04f70963          	beq	a4,a5,2050ca <SelectiveGetFromDataBufHashList+0xce>
  20507c:	fec42783          	lw	a5,-20(s0)
  205080:	0007871b          	sext.w	a4,a5
  205084:	67c1                	lui	a5,0x10
  205086:	17fd                	addi	a5,a5,-1
  205088:	04f70163          	beq	a4,a5,2050ca <SelectiveGetFromDataBufHashList+0xce>
  20508c:	002107b7          	lui	a5,0x210
  205090:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  205094:	fe842783          	lw	a5,-24(s0)
  205098:	03079713          	slli	a4,a5,0x30
  20509c:	9341                	srli	a4,a4,0x30
  20509e:	fec46783          	lwu	a5,-20(s0)
  2050a2:	0792                	slli	a5,a5,0x4
  2050a4:	97b6                	add	a5,a5,a3
  2050a6:	00e79623          	sh	a4,12(a5)
  2050aa:	002107b7          	lui	a5,0x210
  2050ae:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  2050b2:	fec42783          	lw	a5,-20(s0)
  2050b6:	03079713          	slli	a4,a5,0x30
  2050ba:	9341                	srli	a4,a4,0x30
  2050bc:	fe846783          	lwu	a5,-24(s0)
  2050c0:	0792                	slli	a5,a5,0x4
  2050c2:	97b6                	add	a5,a5,a3
  2050c4:	00e79523          	sh	a4,10(a5)
  2050c8:	a8f1                	j	2051a4 <SelectiveGetFromDataBufHashList+0x1a8>
  2050ca:	fe842783          	lw	a5,-24(s0)
  2050ce:	0007871b          	sext.w	a4,a5
  2050d2:	67c1                	lui	a5,0x10
  2050d4:	17fd                	addi	a5,a5,-1
  2050d6:	04f71563          	bne	a4,a5,205120 <SelectiveGetFromDataBufHashList+0x124>
  2050da:	fec42783          	lw	a5,-20(s0)
  2050de:	0007871b          	sext.w	a4,a5
  2050e2:	67c1                	lui	a5,0x10
  2050e4:	17fd                	addi	a5,a5,-1
  2050e6:	02f70d63          	beq	a4,a5,205120 <SelectiveGetFromDataBufHashList+0x124>
  2050ea:	002107b7          	lui	a5,0x210
  2050ee:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  2050f2:	fec46783          	lwu	a5,-20(s0)
  2050f6:	0792                	slli	a5,a5,0x4
  2050f8:	97ba                	add	a5,a5,a4
  2050fa:	577d                	li	a4,-1
  2050fc:	00e79623          	sh	a4,12(a5)
  205100:	002107b7          	lui	a5,0x210
  205104:	3b07b683          	ld	a3,944(a5) # 2103b0 <dataBufHashTablePtr>
  205108:	fec42783          	lw	a5,-20(s0)
  20510c:	03079713          	slli	a4,a5,0x30
  205110:	9341                	srli	a4,a4,0x30
  205112:	fe446783          	lwu	a5,-28(s0)
  205116:	078a                	slli	a5,a5,0x2
  205118:	97b6                	add	a5,a5,a3
  20511a:	00e79123          	sh	a4,2(a5)
  20511e:	a059                	j	2051a4 <SelectiveGetFromDataBufHashList+0x1a8>
  205120:	fe842783          	lw	a5,-24(s0)
  205124:	0007871b          	sext.w	a4,a5
  205128:	67c1                	lui	a5,0x10
  20512a:	17fd                	addi	a5,a5,-1
  20512c:	04f70563          	beq	a4,a5,205176 <SelectiveGetFromDataBufHashList+0x17a>
  205130:	fec42783          	lw	a5,-20(s0)
  205134:	0007871b          	sext.w	a4,a5
  205138:	67c1                	lui	a5,0x10
  20513a:	17fd                	addi	a5,a5,-1
  20513c:	02f71d63          	bne	a4,a5,205176 <SelectiveGetFromDataBufHashList+0x17a>
  205140:	002107b7          	lui	a5,0x210
  205144:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  205148:	fe846783          	lwu	a5,-24(s0)
  20514c:	0792                	slli	a5,a5,0x4
  20514e:	97ba                	add	a5,a5,a4
  205150:	577d                	li	a4,-1
  205152:	00e79523          	sh	a4,10(a5)
  205156:	002107b7          	lui	a5,0x210
  20515a:	3b07b683          	ld	a3,944(a5) # 2103b0 <dataBufHashTablePtr>
  20515e:	fe842783          	lw	a5,-24(s0)
  205162:	03079713          	slli	a4,a5,0x30
  205166:	9341                	srli	a4,a4,0x30
  205168:	fe446783          	lwu	a5,-28(s0)
  20516c:	078a                	slli	a5,a5,0x2
  20516e:	97b6                	add	a5,a5,a3
  205170:	00e79023          	sh	a4,0(a5)
  205174:	a805                	j	2051a4 <SelectiveGetFromDataBufHashList+0x1a8>
  205176:	002107b7          	lui	a5,0x210
  20517a:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  20517e:	fe446783          	lwu	a5,-28(s0)
  205182:	078a                	slli	a5,a5,0x2
  205184:	97ba                	add	a5,a5,a4
  205186:	577d                	li	a4,-1
  205188:	00e79023          	sh	a4,0(a5)
  20518c:	002107b7          	lui	a5,0x210
  205190:	3b07b703          	ld	a4,944(a5) # 2103b0 <dataBufHashTablePtr>
  205194:	fe446783          	lwu	a5,-28(s0)
  205198:	078a                	slli	a5,a5,0x2
  20519a:	97ba                	add	a5,a5,a4
  20519c:	577d                	li	a4,-1
  20519e:	00e79123          	sh	a4,2(a5)
  2051a2:	a009                	j	2051a4 <SelectiveGetFromDataBufHashList+0x1a8>
  2051a4:	0001                	nop
  2051a6:	7422                	ld	s0,40(sp)
  2051a8:	6145                	addi	sp,sp,48
  2051aa:	8082                	ret

00000000002051ac <InitReqScheduler>:
  2051ac:	1101                	addi	sp,sp,-32
  2051ae:	ec22                	sd	s0,24(sp)
  2051b0:	1000                	addi	s0,sp,32
  2051b2:	002107b7          	lui	a5,0x210
  2051b6:	17000737          	lui	a4,0x17000
  2051ba:	3ce7bc23          	sd	a4,984(a5) # 2103d8 <completeFlagTablePtr>
  2051be:	002107b7          	lui	a5,0x210
  2051c2:	17000737          	lui	a4,0x17000
  2051c6:	10070713          	addi	a4,a4,256 # 17000100 <g_nvmeTask+0x16defc98>
  2051ca:	3ce7b023          	sd	a4,960(a5) # 2103c0 <statusReportTablePtr>
  2051ce:	002107b7          	lui	a5,0x210
  2051d2:	17000737          	lui	a4,0x17000
  2051d6:	20070713          	addi	a4,a4,512 # 17000200 <g_nvmeTask+0x16defd98>
  2051da:	3ce7b823          	sd	a4,976(a5) # 2103d0 <eccErrorInfoTablePtr>
  2051de:	002107b7          	lui	a5,0x210
  2051e2:	38a80737          	lui	a4,0x38a80
  2051e6:	70070713          	addi	a4,a4,1792 # 38a80700 <g_nvmeTask+0x38870298>
  2051ea:	3ee7b423          	sd	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  2051ee:	002107b7          	lui	a5,0x210
  2051f2:	38a80737          	lui	a4,0x38a80
  2051f6:	60070713          	addi	a4,a4,1536 # 38a80600 <g_nvmeTask+0x38870198>
  2051fa:	3ee7b023          	sd	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2051fe:	002107b7          	lui	a5,0x210
  205202:	38a81737          	lui	a4,0x38a81
  205206:	80070713          	addi	a4,a4,-2048 # 38a80800 <g_nvmeTask+0x38870398>
  20520a:	3ce7b423          	sd	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20520e:	fe042623          	sw	zero,-20(s0)
  205212:	acf1                	j	2054ee <InitReqScheduler+0x342>
  205214:	002107b7          	lui	a5,0x210
  205218:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20521c:	fec42783          	lw	a5,-20(s0)
  205220:	078e                	slli	a5,a5,0x3
  205222:	97ba                	add	a5,a5,a4
  205224:	4398                	lw	a4,0(a5)
  205226:	9b41                	andi	a4,a4,-16
  205228:	c398                	sw	a4,0(a5)
  20522a:	002107b7          	lui	a5,0x210
  20522e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205232:	fec42783          	lw	a5,-20(s0)
  205236:	078e                	slli	a5,a5,0x3
  205238:	97ba                	add	a5,a5,a4
  20523a:	4398                	lw	a4,0(a5)
  20523c:	f0f77713          	andi	a4,a4,-241
  205240:	07076713          	ori	a4,a4,112
  205244:	c398                	sw	a4,0(a5)
  205246:	002107b7          	lui	a5,0x210
  20524a:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20524e:	fec42783          	lw	a5,-20(s0)
  205252:	078e                	slli	a5,a5,0x3
  205254:	97ba                	add	a5,a5,a4
  205256:	4394                	lw	a3,0(a5)
  205258:	6705                	lui	a4,0x1
  20525a:	f0070713          	addi	a4,a4,-256 # f00 <start-0x1ff100>
  20525e:	8f55                	or	a4,a4,a3
  205260:	c398                	sw	a4,0(a5)
  205262:	002107b7          	lui	a5,0x210
  205266:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20526a:	fec42783          	lw	a5,-20(s0)
  20526e:	078e                	slli	a5,a5,0x3
  205270:	97ba                	add	a5,a5,a4
  205272:	4394                	lw	a3,0(a5)
  205274:	673d                	lui	a4,0xf
  205276:	8f55                	or	a4,a4,a3
  205278:	c398                	sw	a4,0(a5)
  20527a:	002107b7          	lui	a5,0x210
  20527e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205282:	fec42783          	lw	a5,-20(s0)
  205286:	078e                	slli	a5,a5,0x3
  205288:	97ba                	add	a5,a5,a4
  20528a:	43d4                	lw	a3,4(a5)
  20528c:	6705                	lui	a4,0x1
  20528e:	f0070713          	addi	a4,a4,-256 # f00 <start-0x1ff100>
  205292:	8f55                	or	a4,a4,a3
  205294:	c3d8                	sw	a4,4(a5)
  205296:	002107b7          	lui	a5,0x210
  20529a:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20529e:	fec42783          	lw	a5,-20(s0)
  2052a2:	078e                	slli	a5,a5,0x3
  2052a4:	97ba                	add	a5,a5,a4
  2052a6:	43d4                	lw	a3,4(a5)
  2052a8:	673d                	lui	a4,0xf
  2052aa:	8f55                	or	a4,a4,a3
  2052ac:	c3d8                	sw	a4,4(a5)
  2052ae:	002107b7          	lui	a5,0x210
  2052b2:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2052b6:	fec42783          	lw	a5,-20(s0)
  2052ba:	078e                	slli	a5,a5,0x3
  2052bc:	97ba                	add	a5,a5,a4
  2052be:	4394                	lw	a3,0(a5)
  2052c0:	000f0737          	lui	a4,0xf0
  2052c4:	8f55                	or	a4,a4,a3
  2052c6:	c398                	sw	a4,0(a5)
  2052c8:	002107b7          	lui	a5,0x210
  2052cc:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2052d0:	fec42783          	lw	a5,-20(s0)
  2052d4:	078e                	slli	a5,a5,0x3
  2052d6:	97ba                	add	a5,a5,a4
  2052d8:	4394                	lw	a3,0(a5)
  2052da:	00f00737          	lui	a4,0xf00
  2052de:	8f55                	or	a4,a4,a3
  2052e0:	c398                	sw	a4,0(a5)
  2052e2:	002107b7          	lui	a5,0x210
  2052e6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2052ea:	fec42783          	lw	a5,-20(s0)
  2052ee:	078e                	slli	a5,a5,0x3
  2052f0:	97ba                	add	a5,a5,a4
  2052f2:	4394                	lw	a3,0(a5)
  2052f4:	0f000737          	lui	a4,0xf000
  2052f8:	8f55                	or	a4,a4,a3
  2052fa:	c398                	sw	a4,0(a5)
  2052fc:	002107b7          	lui	a5,0x210
  205300:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205304:	fec42783          	lw	a5,-20(s0)
  205308:	078e                	slli	a5,a5,0x3
  20530a:	97ba                	add	a5,a5,a4
  20530c:	4394                	lw	a3,0(a5)
  20530e:	f0000737          	lui	a4,0xf0000
  205312:	8f55                	or	a4,a4,a3
  205314:	c398                	sw	a4,0(a5)
  205316:	002107b7          	lui	a5,0x210
  20531a:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20531e:	fec42783          	lw	a5,-20(s0)
  205322:	078e                	slli	a5,a5,0x3
  205324:	97ba                	add	a5,a5,a4
  205326:	43d8                	lw	a4,4(a5)
  205328:	00f76713          	ori	a4,a4,15
  20532c:	c3d8                	sw	a4,4(a5)
  20532e:	002107b7          	lui	a5,0x210
  205332:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205336:	fec42783          	lw	a5,-20(s0)
  20533a:	078e                	slli	a5,a5,0x3
  20533c:	97ba                	add	a5,a5,a4
  20533e:	43d8                	lw	a4,4(a5)
  205340:	0f076713          	ori	a4,a4,240
  205344:	c3d8                	sw	a4,4(a5)
  205346:	002107b7          	lui	a5,0x210
  20534a:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20534e:	fec42783          	lw	a5,-20(s0)
  205352:	078e                	slli	a5,a5,0x3
  205354:	97ba                	add	a5,a5,a4
  205356:	43d4                	lw	a3,4(a5)
  205358:	000f0737          	lui	a4,0xf0
  20535c:	8f55                	or	a4,a4,a3
  20535e:	c3d8                	sw	a4,4(a5)
  205360:	002107b7          	lui	a5,0x210
  205364:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205368:	fec42783          	lw	a5,-20(s0)
  20536c:	078e                	slli	a5,a5,0x3
  20536e:	97ba                	add	a5,a5,a4
  205370:	43d4                	lw	a3,4(a5)
  205372:	00f00737          	lui	a4,0xf00
  205376:	8f55                	or	a4,a4,a3
  205378:	c3d8                	sw	a4,4(a5)
  20537a:	fe042423          	sw	zero,-24(s0)
  20537e:	a21d                	j	2054a4 <InitReqScheduler+0x2f8>
  205380:	002107b7          	lui	a5,0x210
  205384:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205388:	fe842783          	lw	a5,-24(s0)
  20538c:	fec42683          	lw	a3,-20(s0)
  205390:	068e                	slli	a3,a3,0x3
  205392:	97b6                	add	a5,a5,a3
  205394:	078a                	slli	a5,a5,0x2
  205396:	97ba                	add	a5,a5,a4
  205398:	00078023          	sb	zero,0(a5)
  20539c:	002107b7          	lui	a5,0x210
  2053a0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2053a4:	fe842783          	lw	a5,-24(s0)
  2053a8:	fec42683          	lw	a3,-20(s0)
  2053ac:	068e                	slli	a3,a3,0x3
  2053ae:	97b6                	add	a5,a5,a3
  2053b0:	078a                	slli	a5,a5,0x2
  2053b2:	97ba                	add	a5,a5,a4
  2053b4:	4394                	lw	a3,0(a5)
  2053b6:	777d                	lui	a4,0xfffff
  2053b8:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  2053bc:	8f75                	and	a4,a4,a3
  2053be:	c398                	sw	a4,0(a5)
  2053c0:	fe842783          	lw	a5,-24(s0)
  2053c4:	0ff7f793          	andi	a5,a5,255
  2053c8:	37fd                	addiw	a5,a5,-1
  2053ca:	0ff7f693          	andi	a3,a5,255
  2053ce:	002107b7          	lui	a5,0x210
  2053d2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2053d6:	87b6                	mv	a5,a3
  2053d8:	8bbd                	andi	a5,a5,15
  2053da:	0ff7f613          	andi	a2,a5,255
  2053de:	fe842783          	lw	a5,-24(s0)
  2053e2:	fec42683          	lw	a3,-20(s0)
  2053e6:	068e                	slli	a3,a3,0x3
  2053e8:	97b6                	add	a5,a5,a3
  2053ea:	078a                	slli	a5,a5,0x2
  2053ec:	97ba                	add	a5,a5,a4
  2053ee:	8732                	mv	a4,a2
  2053f0:	8b3d                	andi	a4,a4,15
  2053f2:	00c7171b          	slliw	a4,a4,0xc
  2053f6:	4390                	lw	a2,0(a5)
  2053f8:	76c5                	lui	a3,0xffff1
  2053fa:	16fd                	addi	a3,a3,-1
  2053fc:	8ef1                	and	a3,a3,a2
  2053fe:	8f55                	or	a4,a4,a3
  205400:	c398                	sw	a4,0(a5)
  205402:	fe842783          	lw	a5,-24(s0)
  205406:	0ff7f793          	andi	a5,a5,255
  20540a:	2785                	addiw	a5,a5,1
  20540c:	0ff7f693          	andi	a3,a5,255
  205410:	002107b7          	lui	a5,0x210
  205414:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205418:	87b6                	mv	a5,a3
  20541a:	8bbd                	andi	a5,a5,15
  20541c:	0ff7f613          	andi	a2,a5,255
  205420:	fe842783          	lw	a5,-24(s0)
  205424:	fec42683          	lw	a3,-20(s0)
  205428:	068e                	slli	a3,a3,0x3
  20542a:	97b6                	add	a5,a5,a3
  20542c:	078a                	slli	a5,a5,0x2
  20542e:	97ba                	add	a5,a5,a4
  205430:	8732                	mv	a4,a2
  205432:	8b3d                	andi	a4,a4,15
  205434:	0107171b          	slliw	a4,a4,0x10
  205438:	4390                	lw	a2,0(a5)
  20543a:	fff106b7          	lui	a3,0xfff10
  20543e:	16fd                	addi	a3,a3,-1
  205440:	8ef1                	and	a3,a3,a2
  205442:	8f55                	or	a4,a4,a3
  205444:	c398                	sw	a4,0(a5)
  205446:	002107b7          	lui	a5,0x210
  20544a:	3d87b703          	ld	a4,984(a5) # 2103d8 <completeFlagTablePtr>
  20544e:	fe842783          	lw	a5,-24(s0)
  205452:	fec42683          	lw	a3,-20(s0)
  205456:	068e                	slli	a3,a3,0x3
  205458:	97b6                	add	a5,a5,a3
  20545a:	078a                	slli	a5,a5,0x2
  20545c:	97ba                	add	a5,a5,a4
  20545e:	0007a023          	sw	zero,0(a5)
  205462:	002107b7          	lui	a5,0x210
  205466:	3c07b703          	ld	a4,960(a5) # 2103c0 <statusReportTablePtr>
  20546a:	fe842783          	lw	a5,-24(s0)
  20546e:	fec42683          	lw	a3,-20(s0)
  205472:	068e                	slli	a3,a3,0x3
  205474:	97b6                	add	a5,a5,a3
  205476:	078a                	slli	a5,a5,0x2
  205478:	97ba                	add	a5,a5,a4
  20547a:	0007a023          	sw	zero,0(a5)
  20547e:	002107b7          	lui	a5,0x210
  205482:	3e87b703          	ld	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  205486:	fe842783          	lw	a5,-24(s0)
  20548a:	fec42683          	lw	a3,-20(s0)
  20548e:	068e                	slli	a3,a3,0x3
  205490:	97b6                	add	a5,a5,a3
  205492:	078a                	slli	a5,a5,0x2
  205494:	97ba                	add	a5,a5,a4
  205496:	4715                	li	a4,5
  205498:	c398                	sw	a4,0(a5)
  20549a:	fe842783          	lw	a5,-24(s0)
  20549e:	2785                	addiw	a5,a5,1
  2054a0:	fef42423          	sw	a5,-24(s0)
  2054a4:	fe842783          	lw	a5,-24(s0)
  2054a8:	0007871b          	sext.w	a4,a5
  2054ac:	479d                	li	a5,7
  2054ae:	ece7d9e3          	bge	a5,a4,205380 <InitReqScheduler+0x1d4>
  2054b2:	002107b7          	lui	a5,0x210
  2054b6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2054ba:	fec42783          	lw	a5,-20(s0)
  2054be:	0796                	slli	a5,a5,0x5
  2054c0:	97ba                	add	a5,a5,a4
  2054c2:	4394                	lw	a3,0(a5)
  2054c4:	673d                	lui	a4,0xf
  2054c6:	8f55                	or	a4,a4,a3
  2054c8:	c398                	sw	a4,0(a5)
  2054ca:	002107b7          	lui	a5,0x210
  2054ce:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2054d2:	fec42783          	lw	a5,-20(s0)
  2054d6:	0796                	slli	a5,a5,0x5
  2054d8:	97ba                	add	a5,a5,a4
  2054da:	4fd4                	lw	a3,28(a5)
  2054dc:	000f0737          	lui	a4,0xf0
  2054e0:	8f55                	or	a4,a4,a3
  2054e2:	cfd8                	sw	a4,28(a5)
  2054e4:	fec42783          	lw	a5,-20(s0)
  2054e8:	2785                	addiw	a5,a5,1
  2054ea:	fef42623          	sw	a5,-20(s0)
  2054ee:	fec42783          	lw	a5,-20(s0)
  2054f2:	0007871b          	sext.w	a4,a5
  2054f6:	479d                	li	a5,7
  2054f8:	d0e7dee3          	bge	a5,a4,205214 <InitReqScheduler+0x68>
  2054fc:	0001                	nop
  2054fe:	0001                	nop
  205500:	6462                	ld	s0,24(sp)
  205502:	6105                	addi	sp,sp,32
  205504:	8082                	ret

0000000000205506 <SyncAllLowLevelReqDone>:
  205506:	1141                	addi	sp,sp,-16
  205508:	e406                	sd	ra,8(sp)
  20550a:	e022                	sd	s0,0(sp)
  20550c:	0800                	addi	s0,sp,16
  20550e:	a029                	j	205518 <SyncAllLowLevelReqDone+0x12>
  205510:	12b060ef          	jal	ra,20be3a <CheckDoneNvmeDmaReq>
  205514:	0cc000ef          	jal	ra,2055e0 <SchedulingNandReq>
  205518:	002107b7          	lui	a5,0x210
  20551c:	1907d783          	lhu	a5,400(a5) # 210190 <nvmeDmaReqQ>
  205520:	0007871b          	sext.w	a4,a5
  205524:	67c1                	lui	a5,0x10
  205526:	17fd                	addi	a5,a5,-1
  205528:	fef714e3          	bne	a4,a5,205510 <SyncAllLowLevelReqDone+0xa>
  20552c:	002107b7          	lui	a5,0x210
  205530:	f687a783          	lw	a5,-152(a5) # 20ff68 <notCompletedNandReqCnt>
  205534:	fff1                	bnez	a5,205510 <SyncAllLowLevelReqDone+0xa>
  205536:	002107b7          	lui	a5,0x210
  20553a:	3987a783          	lw	a5,920(a5) # 210398 <blockedReqCnt>
  20553e:	fbe9                	bnez	a5,205510 <SyncAllLowLevelReqDone+0xa>
  205540:	0001                	nop
  205542:	0001                	nop
  205544:	60a2                	ld	ra,8(sp)
  205546:	6402                	ld	s0,0(sp)
  205548:	0141                	addi	sp,sp,16
  20554a:	8082                	ret

000000000020554c <SyncAvailFreeReq>:
  20554c:	1141                	addi	sp,sp,-16
  20554e:	e406                	sd	ra,8(sp)
  205550:	e022                	sd	s0,0(sp)
  205552:	0800                	addi	s0,sp,16
  205554:	a029                	j	20555e <SyncAvailFreeReq+0x12>
  205556:	0e5060ef          	jal	ra,20be3a <CheckDoneNvmeDmaReq>
  20555a:	086000ef          	jal	ra,2055e0 <SchedulingNandReq>
  20555e:	002107b7          	lui	a5,0x210
  205562:	1887d783          	lhu	a5,392(a5) # 210188 <freeReqQ>
  205566:	0007871b          	sext.w	a4,a5
  20556a:	67c1                	lui	a5,0x10
  20556c:	17fd                	addi	a5,a5,-1
  20556e:	fef704e3          	beq	a4,a5,205556 <SyncAvailFreeReq+0xa>
  205572:	0001                	nop
  205574:	0001                	nop
  205576:	60a2                	ld	ra,8(sp)
  205578:	6402                	ld	s0,0(sp)
  20557a:	0141                	addi	sp,sp,16
  20557c:	8082                	ret

000000000020557e <SyncReleaseEraseReq>:
  20557e:	1101                	addi	sp,sp,-32
  205580:	ec06                	sd	ra,24(sp)
  205582:	e822                	sd	s0,16(sp)
  205584:	1000                	addi	s0,sp,32
  205586:	87aa                	mv	a5,a0
  205588:	86ae                	mv	a3,a1
  20558a:	8732                	mv	a4,a2
  20558c:	fef42623          	sw	a5,-20(s0)
  205590:	87b6                	mv	a5,a3
  205592:	fef42423          	sw	a5,-24(s0)
  205596:	87ba                	mv	a5,a4
  205598:	fef42223          	sw	a5,-28(s0)
  20559c:	a029                	j	2055a6 <SyncReleaseEraseReq+0x28>
  20559e:	09d060ef          	jal	ra,20be3a <CheckDoneNvmeDmaReq>
  2055a2:	03e000ef          	jal	ra,2055e0 <SchedulingNandReq>
  2055a6:	002107b7          	lui	a5,0x210
  2055aa:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  2055ae:	fe446783          	lwu	a5,-28(s0)
  2055b2:	fec46603          	lwu	a2,-20(s0)
  2055b6:	fe846683          	lwu	a3,-24(s0)
  2055ba:	060e                	slli	a2,a2,0x3
  2055bc:	96b2                	add	a3,a3,a2
  2055be:	06b6                	slli	a3,a3,0xd
  2055c0:	97b6                	add	a5,a5,a3
  2055c2:	078a                	slli	a5,a5,0x2
  2055c4:	97ba                	add	a5,a5,a4
  2055c6:	439c                	lw	a5,0(a5)
  2055c8:	01c7d79b          	srliw	a5,a5,0x1c
  2055cc:	8b85                	andi	a5,a5,1
  2055ce:	0ff7f793          	andi	a5,a5,255
  2055d2:	f7f1                	bnez	a5,20559e <SyncReleaseEraseReq+0x20>
  2055d4:	0001                	nop
  2055d6:	0001                	nop
  2055d8:	60e2                	ld	ra,24(sp)
  2055da:	6442                	ld	s0,16(sp)
  2055dc:	6105                	addi	sp,sp,32
  2055de:	8082                	ret

00000000002055e0 <SchedulingNandReq>:
  2055e0:	1101                	addi	sp,sp,-32
  2055e2:	ec06                	sd	ra,24(sp)
  2055e4:	e822                	sd	s0,16(sp)
  2055e6:	1000                	addi	s0,sp,32
  2055e8:	fe042623          	sw	zero,-20(s0)
  2055ec:	a819                	j	205602 <SchedulingNandReq+0x22>
  2055ee:	fec42783          	lw	a5,-20(s0)
  2055f2:	853e                	mv	a0,a5
  2055f4:	028000ef          	jal	ra,20561c <SchedulingNandReqPerCh>
  2055f8:	fec42783          	lw	a5,-20(s0)
  2055fc:	2785                	addiw	a5,a5,1
  2055fe:	fef42623          	sw	a5,-20(s0)
  205602:	fec42783          	lw	a5,-20(s0)
  205606:	0007871b          	sext.w	a4,a5
  20560a:	479d                	li	a5,7
  20560c:	fee7d1e3          	bge	a5,a4,2055ee <SchedulingNandReq+0xe>
  205610:	0001                	nop
  205612:	0001                	nop
  205614:	60e2                	ld	ra,24(sp)
  205616:	6442                	ld	s0,16(sp)
  205618:	6105                	addi	sp,sp,32
  20561a:	8082                	ret

000000000020561c <SchedulingNandReqPerCh>:
  20561c:	7139                	addi	sp,sp,-64
  20561e:	fc06                	sd	ra,56(sp)
  205620:	f822                	sd	s0,48(sp)
  205622:	0080                	addi	s0,sp,64
  205624:	87aa                	mv	a5,a0
  205626:	fcf42623          	sw	a5,-52(s0)
  20562a:	fe042423          	sw	zero,-24(s0)
  20562e:	002107b7          	lui	a5,0x210
  205632:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205636:	fcc46783          	lwu	a5,-52(s0)
  20563a:	078e                	slli	a5,a5,0x3
  20563c:	97ba                	add	a5,a5,a4
  20563e:	439c                	lw	a5,0(a5)
  205640:	8bbd                	andi	a5,a5,15
  205642:	0ff7f793          	andi	a5,a5,255
  205646:	873e                	mv	a4,a5
  205648:	47bd                	li	a5,15
  20564a:	12f70a63          	beq	a4,a5,20577e <SchedulingNandReqPerCh+0x162>
  20564e:	002107b7          	lui	a5,0x210
  205652:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205656:	fcc46783          	lwu	a5,-52(s0)
  20565a:	078e                	slli	a5,a5,0x3
  20565c:	97ba                	add	a5,a5,a4
  20565e:	439c                	lw	a5,0(a5)
  205660:	8bbd                	andi	a5,a5,15
  205662:	0ff7f793          	andi	a5,a5,255
  205666:	fef42623          	sw	a5,-20(s0)
  20566a:	a219                	j	205770 <SchedulingNandReqPerCh+0x154>
  20566c:	002107b7          	lui	a5,0x210
  205670:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  205674:	fec46783          	lwu	a5,-20(s0)
  205678:	fcc46683          	lwu	a3,-52(s0)
  20567c:	068e                	slli	a3,a3,0x3
  20567e:	97b6                	add	a5,a5,a3
  205680:	078e                	slli	a5,a5,0x3
  205682:	97ba                	add	a5,a5,a4
  205684:	0007d783          	lhu	a5,0(a5)
  205688:	0007871b          	sext.w	a4,a5
  20568c:	67c1                	lui	a5,0x10
  20568e:	17fd                	addi	a5,a5,-1
  205690:	00f71a63          	bne	a4,a5,2056a4 <SchedulingNandReqPerCh+0x88>
  205694:	fec42703          	lw	a4,-20(s0)
  205698:	fcc42783          	lw	a5,-52(s0)
  20569c:	85ba                	mv	a1,a4
  20569e:	853e                	mv	a0,a5
  2056a0:	464060ef          	jal	ra,20bb04 <ReleaseBlockedByRowAddrDepReq>
  2056a4:	002107b7          	lui	a5,0x210
  2056a8:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2056ac:	fec46783          	lwu	a5,-20(s0)
  2056b0:	fcc46683          	lwu	a3,-52(s0)
  2056b4:	068e                	slli	a3,a3,0x3
  2056b6:	97b6                	add	a5,a5,a3
  2056b8:	078e                	slli	a5,a5,0x3
  2056ba:	97ba                	add	a5,a5,a4
  2056bc:	0007d783          	lhu	a5,0(a5)
  2056c0:	0007871b          	sext.w	a4,a5
  2056c4:	67c1                	lui	a5,0x10
  2056c6:	17fd                	addi	a5,a5,-1
  2056c8:	06f70b63          	beq	a4,a5,20573e <SchedulingNandReqPerCh+0x122>
  2056cc:	002107b7          	lui	a5,0x210
  2056d0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2056d4:	fec46783          	lwu	a5,-20(s0)
  2056d8:	fcc46683          	lwu	a3,-52(s0)
  2056dc:	068e                	slli	a3,a3,0x3
  2056de:	97b6                	add	a5,a5,a3
  2056e0:	078a                	slli	a5,a5,0x2
  2056e2:	97ba                	add	a5,a5,a4
  2056e4:	439c                	lw	a5,0(a5)
  2056e6:	0107d79b          	srliw	a5,a5,0x10
  2056ea:	8bbd                	andi	a5,a5,15
  2056ec:	0ff7f793          	andi	a5,a5,255
  2056f0:	fef42223          	sw	a5,-28(s0)
  2056f4:	fec42703          	lw	a4,-20(s0)
  2056f8:	fcc42783          	lw	a5,-52(s0)
  2056fc:	85ba                	mv	a1,a4
  2056fe:	853e                	mv	a0,a5
  205700:	2a3000ef          	jal	ra,2061a2 <SelectivGetFromNandIdleList>
  205704:	002107b7          	lui	a5,0x210
  205708:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  20570c:	fec46783          	lwu	a5,-20(s0)
  205710:	fcc46683          	lwu	a3,-52(s0)
  205714:	068e                	slli	a3,a3,0x3
  205716:	97b6                	add	a5,a5,a3
  205718:	078e                	slli	a5,a5,0x3
  20571a:	97ba                	add	a5,a5,a4
  20571c:	0007d783          	lhu	a5,0(a5)
  205720:	2781                	sext.w	a5,a5
  205722:	fec42683          	lw	a3,-20(s0)
  205726:	fcc42703          	lw	a4,-52(s0)
  20572a:	8636                	mv	a2,a3
  20572c:	85ba                	mv	a1,a4
  20572e:	853e                	mv	a0,a5
  205730:	75a000ef          	jal	ra,205e8a <PutToNandWayPriorityTable>
  205734:	fe442783          	lw	a5,-28(s0)
  205738:	fef42623          	sw	a5,-20(s0)
  20573c:	a815                	j	205770 <SchedulingNandReqPerCh+0x154>
  20573e:	002107b7          	lui	a5,0x210
  205742:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205746:	fec46783          	lwu	a5,-20(s0)
  20574a:	fcc46683          	lwu	a3,-52(s0)
  20574e:	068e                	slli	a3,a3,0x3
  205750:	97b6                	add	a5,a5,a3
  205752:	078a                	slli	a5,a5,0x2
  205754:	97ba                	add	a5,a5,a4
  205756:	439c                	lw	a5,0(a5)
  205758:	0107d79b          	srliw	a5,a5,0x10
  20575c:	8bbd                	andi	a5,a5,15
  20575e:	0ff7f793          	andi	a5,a5,255
  205762:	fef42623          	sw	a5,-20(s0)
  205766:	fe842783          	lw	a5,-24(s0)
  20576a:	2785                	addiw	a5,a5,1
  20576c:	fef42423          	sw	a5,-24(s0)
  205770:	fec42783          	lw	a5,-20(s0)
  205774:	0007871b          	sext.w	a4,a5
  205778:	47bd                	li	a5,15
  20577a:	eef719e3          	bne	a4,a5,20566c <SchedulingNandReqPerCh+0x50>
  20577e:	002107b7          	lui	a5,0x210
  205782:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205786:	fcc46783          	lwu	a5,-52(s0)
  20578a:	078e                	slli	a5,a5,0x3
  20578c:	97ba                	add	a5,a5,a4
  20578e:	439c                	lw	a5,0(a5)
  205790:	0087d79b          	srliw	a5,a5,0x8
  205794:	8bbd                	andi	a5,a5,15
  205796:	0ff7f793          	andi	a5,a5,255
  20579a:	873e                	mv	a4,a5
  20579c:	47bd                	li	a5,15
  20579e:	26f70863          	beq	a4,a5,205a0e <SchedulingNandReqPerCh+0x3f2>
  2057a2:	002107b7          	lui	a5,0x210
  2057a6:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  2057aa:	fcc46783          	lwu	a5,-52(s0)
  2057ae:	078e                	slli	a5,a5,0x3
  2057b0:	97ba                	add	a5,a5,a4
  2057b2:	639c                	ld	a5,0(a5)
  2057b4:	853e                	mv	a0,a5
  2057b6:	416040ef          	jal	ra,209bcc <V2FReadyBusyAsync>
  2057ba:	87aa                	mv	a5,a0
  2057bc:	fef42023          	sw	a5,-32(s0)
  2057c0:	002107b7          	lui	a5,0x210
  2057c4:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2057c8:	fcc46783          	lwu	a5,-52(s0)
  2057cc:	078e                	slli	a5,a5,0x3
  2057ce:	97ba                	add	a5,a5,a4
  2057d0:	439c                	lw	a5,0(a5)
  2057d2:	0087d79b          	srliw	a5,a5,0x8
  2057d6:	8bbd                	andi	a5,a5,15
  2057d8:	0ff7f793          	andi	a5,a5,255
  2057dc:	fef42623          	sw	a5,-20(s0)
  2057e0:	a405                	j	205a00 <SchedulingNandReqPerCh+0x3e4>
  2057e2:	fec42783          	lw	a5,-20(s0)
  2057e6:	fe042703          	lw	a4,-32(s0)
  2057ea:	00f757bb          	srlw	a5,a4,a5
  2057ee:	2781                	sext.w	a5,a5
  2057f0:	8b85                	andi	a5,a5,1
  2057f2:	2781                	sext.w	a5,a5
  2057f4:	1c078d63          	beqz	a5,2059ce <SchedulingNandReqPerCh+0x3b2>
  2057f8:	fec42703          	lw	a4,-20(s0)
  2057fc:	fcc42783          	lw	a5,-52(s0)
  205800:	85ba                	mv	a1,a4
  205802:	853e                	mv	a0,a5
  205804:	6b8030ef          	jal	ra,208ebc <CheckReqStatus>
  205808:	87aa                	mv	a5,a0
  20580a:	fcf42e23          	sw	a5,-36(s0)
  20580e:	fdc42783          	lw	a5,-36(s0)
  205812:	2781                	sext.w	a5,a5
  205814:	10078463          	beqz	a5,20591c <SchedulingNandReqPerCh+0x300>
  205818:	fdc42683          	lw	a3,-36(s0)
  20581c:	fec42703          	lw	a4,-20(s0)
  205820:	fcc42783          	lw	a5,-52(s0)
  205824:	8636                	mv	a2,a3
  205826:	85ba                	mv	a1,a4
  205828:	853e                	mv	a0,a5
  20582a:	263030ef          	jal	ra,20928c <ExecuteNandReq>
  20582e:	002107b7          	lui	a5,0x210
  205832:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205836:	fec46783          	lwu	a5,-20(s0)
  20583a:	fcc46683          	lwu	a3,-52(s0)
  20583e:	068e                	slli	a3,a3,0x3
  205840:	97b6                	add	a5,a5,a3
  205842:	078a                	slli	a5,a5,0x2
  205844:	97ba                	add	a5,a5,a4
  205846:	439c                	lw	a5,0(a5)
  205848:	0107d79b          	srliw	a5,a5,0x10
  20584c:	8bbd                	andi	a5,a5,15
  20584e:	0ff7f793          	andi	a5,a5,255
  205852:	fef42223          	sw	a5,-28(s0)
  205856:	fec42703          	lw	a4,-20(s0)
  20585a:	fcc42783          	lw	a5,-52(s0)
  20585e:	85ba                	mv	a1,a4
  205860:	853e                	mv	a0,a5
  205862:	661000ef          	jal	ra,2066c2 <SelectivGetFromNandStatusReportList>
  205866:	002107b7          	lui	a5,0x210
  20586a:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  20586e:	fec46783          	lwu	a5,-20(s0)
  205872:	fcc46683          	lwu	a3,-52(s0)
  205876:	068e                	slli	a3,a3,0x3
  205878:	97b6                	add	a5,a5,a3
  20587a:	078e                	slli	a5,a5,0x3
  20587c:	97ba                	add	a5,a5,a4
  20587e:	0007d783          	lhu	a5,0(a5)
  205882:	0007871b          	sext.w	a4,a5
  205886:	67c1                	lui	a5,0x10
  205888:	17fd                	addi	a5,a5,-1
  20588a:	00f71a63          	bne	a4,a5,20589e <SchedulingNandReqPerCh+0x282>
  20588e:	fec42703          	lw	a4,-20(s0)
  205892:	fcc42783          	lw	a5,-52(s0)
  205896:	85ba                	mv	a1,a4
  205898:	853e                	mv	a0,a5
  20589a:	26a060ef          	jal	ra,20bb04 <ReleaseBlockedByRowAddrDepReq>
  20589e:	002107b7          	lui	a5,0x210
  2058a2:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2058a6:	fec46783          	lwu	a5,-20(s0)
  2058aa:	fcc46683          	lwu	a3,-52(s0)
  2058ae:	068e                	slli	a3,a3,0x3
  2058b0:	97b6                	add	a5,a5,a3
  2058b2:	078e                	slli	a5,a5,0x3
  2058b4:	97ba                	add	a5,a5,a4
  2058b6:	0007d783          	lhu	a5,0(a5)
  2058ba:	0007871b          	sext.w	a4,a5
  2058be:	67c1                	lui	a5,0x10
  2058c0:	17fd                	addi	a5,a5,-1
  2058c2:	02f70b63          	beq	a4,a5,2058f8 <SchedulingNandReqPerCh+0x2dc>
  2058c6:	002107b7          	lui	a5,0x210
  2058ca:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2058ce:	fec46783          	lwu	a5,-20(s0)
  2058d2:	fcc46683          	lwu	a3,-52(s0)
  2058d6:	068e                	slli	a3,a3,0x3
  2058d8:	97b6                	add	a5,a5,a3
  2058da:	078e                	slli	a5,a5,0x3
  2058dc:	97ba                	add	a5,a5,a4
  2058de:	0007d783          	lhu	a5,0(a5)
  2058e2:	2781                	sext.w	a5,a5
  2058e4:	fec42683          	lw	a3,-20(s0)
  2058e8:	fcc42703          	lw	a4,-52(s0)
  2058ec:	8636                	mv	a2,a3
  2058ee:	85ba                	mv	a1,a4
  2058f0:	853e                	mv	a0,a5
  2058f2:	598000ef          	jal	ra,205e8a <PutToNandWayPriorityTable>
  2058f6:	a831                	j	205912 <SchedulingNandReqPerCh+0x2f6>
  2058f8:	fec42703          	lw	a4,-20(s0)
  2058fc:	fcc42783          	lw	a5,-52(s0)
  205900:	85ba                	mv	a1,a4
  205902:	853e                	mv	a0,a5
  205904:	6da000ef          	jal	ra,205fde <PutToNandIdleList>
  205908:	fe842783          	lw	a5,-24(s0)
  20590c:	2785                	addiw	a5,a5,1
  20590e:	fef42423          	sw	a5,-24(s0)
  205912:	fe442783          	lw	a5,-28(s0)
  205916:	fef42623          	sw	a5,-20(s0)
  20591a:	a0dd                	j	205a00 <SchedulingNandReqPerCh+0x3e4>
  20591c:	002107b7          	lui	a5,0x210
  205920:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205924:	fec46783          	lwu	a5,-20(s0)
  205928:	fcc46683          	lwu	a3,-52(s0)
  20592c:	068e                	slli	a3,a3,0x3
  20592e:	97b6                	add	a5,a5,a3
  205930:	078a                	slli	a5,a5,0x2
  205932:	97ba                	add	a5,a5,a4
  205934:	439c                	lw	a5,0(a5)
  205936:	0087d79b          	srliw	a5,a5,0x8
  20593a:	8bbd                	andi	a5,a5,15
  20593c:	0ff7f793          	andi	a5,a5,255
  205940:	873e                	mv	a4,a5
  205942:	4785                	li	a5,1
  205944:	04f71b63          	bne	a4,a5,20599a <SchedulingNandReqPerCh+0x37e>
  205948:	002107b7          	lui	a5,0x210
  20594c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205950:	fec46783          	lwu	a5,-20(s0)
  205954:	fcc46683          	lwu	a3,-52(s0)
  205958:	068e                	slli	a3,a3,0x3
  20595a:	97b6                	add	a5,a5,a3
  20595c:	078a                	slli	a5,a5,0x2
  20595e:	97ba                	add	a5,a5,a4
  205960:	439c                	lw	a5,0(a5)
  205962:	0107d79b          	srliw	a5,a5,0x10
  205966:	8bbd                	andi	a5,a5,15
  205968:	0ff7f793          	andi	a5,a5,255
  20596c:	fef42223          	sw	a5,-28(s0)
  205970:	fec42703          	lw	a4,-20(s0)
  205974:	fcc42783          	lw	a5,-52(s0)
  205978:	85ba                	mv	a1,a4
  20597a:	853e                	mv	a0,a5
  20597c:	547000ef          	jal	ra,2066c2 <SelectivGetFromNandStatusReportList>
  205980:	fec42703          	lw	a4,-20(s0)
  205984:	fcc42783          	lw	a5,-52(s0)
  205988:	85ba                	mv	a1,a4
  20598a:	853e                	mv	a0,a5
  20598c:	524020ef          	jal	ra,207eb0 <PutToNandStatusCheckList>
  205990:	fe442783          	lw	a5,-28(s0)
  205994:	fef42623          	sw	a5,-20(s0)
  205998:	a0a5                	j	205a00 <SchedulingNandReqPerCh+0x3e4>
  20599a:	002107b7          	lui	a5,0x210
  20599e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2059a2:	fec46783          	lwu	a5,-20(s0)
  2059a6:	fcc46683          	lwu	a3,-52(s0)
  2059aa:	068e                	slli	a3,a3,0x3
  2059ac:	97b6                	add	a5,a5,a3
  2059ae:	078a                	slli	a5,a5,0x2
  2059b0:	97ba                	add	a5,a5,a4
  2059b2:	439c                	lw	a5,0(a5)
  2059b4:	0107d79b          	srliw	a5,a5,0x10
  2059b8:	8bbd                	andi	a5,a5,15
  2059ba:	0ff7f793          	andi	a5,a5,255
  2059be:	fef42623          	sw	a5,-20(s0)
  2059c2:	fe842783          	lw	a5,-24(s0)
  2059c6:	2785                	addiw	a5,a5,1
  2059c8:	fef42423          	sw	a5,-24(s0)
  2059cc:	a815                	j	205a00 <SchedulingNandReqPerCh+0x3e4>
  2059ce:	002107b7          	lui	a5,0x210
  2059d2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2059d6:	fec46783          	lwu	a5,-20(s0)
  2059da:	fcc46683          	lwu	a3,-52(s0)
  2059de:	068e                	slli	a3,a3,0x3
  2059e0:	97b6                	add	a5,a5,a3
  2059e2:	078a                	slli	a5,a5,0x2
  2059e4:	97ba                	add	a5,a5,a4
  2059e6:	439c                	lw	a5,0(a5)
  2059e8:	0107d79b          	srliw	a5,a5,0x10
  2059ec:	8bbd                	andi	a5,a5,15
  2059ee:	0ff7f793          	andi	a5,a5,255
  2059f2:	fef42623          	sw	a5,-20(s0)
  2059f6:	fe842783          	lw	a5,-24(s0)
  2059fa:	2785                	addiw	a5,a5,1
  2059fc:	fef42423          	sw	a5,-24(s0)
  205a00:	fec42783          	lw	a5,-20(s0)
  205a04:	0007871b          	sext.w	a4,a5
  205a08:	47bd                	li	a5,15
  205a0a:	dcf71ce3          	bne	a4,a5,2057e2 <SchedulingNandReqPerCh+0x1c6>
  205a0e:	fe842783          	lw	a5,-24(s0)
  205a12:	0007871b          	sext.w	a4,a5
  205a16:	47a1                	li	a5,8
  205a18:	46f70563          	beq	a4,a5,205e82 <SchedulingNandReqPerCh+0x866>
  205a1c:	002107b7          	lui	a5,0x210
  205a20:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205a24:	fcc46783          	lwu	a5,-52(s0)
  205a28:	078e                	slli	a5,a5,0x3
  205a2a:	97ba                	add	a5,a5,a4
  205a2c:	639c                	ld	a5,0(a5)
  205a2e:	853e                	mv	a0,a5
  205a30:	57b030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205a34:	87aa                	mv	a5,a0
  205a36:	2781                	sext.w	a5,a5
  205a38:	44079563          	bnez	a5,205e82 <SchedulingNandReqPerCh+0x866>
  205a3c:	002107b7          	lui	a5,0x210
  205a40:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205a44:	fcc46783          	lwu	a5,-52(s0)
  205a48:	078e                	slli	a5,a5,0x3
  205a4a:	97ba                	add	a5,a5,a4
  205a4c:	43dc                	lw	a5,4(a5)
  205a4e:	0107d79b          	srliw	a5,a5,0x10
  205a52:	8bbd                	andi	a5,a5,15
  205a54:	0ff7f793          	andi	a5,a5,255
  205a58:	873e                	mv	a4,a5
  205a5a:	47bd                	li	a5,15
  205a5c:	0ef70263          	beq	a4,a5,205b40 <SchedulingNandReqPerCh+0x524>
  205a60:	002107b7          	lui	a5,0x210
  205a64:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205a68:	fcc46783          	lwu	a5,-52(s0)
  205a6c:	078e                	slli	a5,a5,0x3
  205a6e:	97ba                	add	a5,a5,a4
  205a70:	639c                	ld	a5,0(a5)
  205a72:	853e                	mv	a0,a5
  205a74:	158040ef          	jal	ra,209bcc <V2FReadyBusyAsync>
  205a78:	87aa                	mv	a5,a0
  205a7a:	fef42023          	sw	a5,-32(s0)
  205a7e:	002107b7          	lui	a5,0x210
  205a82:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205a86:	fcc46783          	lwu	a5,-52(s0)
  205a8a:	078e                	slli	a5,a5,0x3
  205a8c:	97ba                	add	a5,a5,a4
  205a8e:	43dc                	lw	a5,4(a5)
  205a90:	0107d79b          	srliw	a5,a5,0x10
  205a94:	8bbd                	andi	a5,a5,15
  205a96:	0ff7f793          	andi	a5,a5,255
  205a9a:	fef42623          	sw	a5,-20(s0)
  205a9e:	a851                	j	205b32 <SchedulingNandReqPerCh+0x516>
  205aa0:	fec42783          	lw	a5,-20(s0)
  205aa4:	fe042703          	lw	a4,-32(s0)
  205aa8:	00f757bb          	srlw	a5,a4,a5
  205aac:	2781                	sext.w	a5,a5
  205aae:	8b85                	andi	a5,a5,1
  205ab0:	2781                	sext.w	a5,a5
  205ab2:	cfa1                	beqz	a5,205b0a <SchedulingNandReqPerCh+0x4ee>
  205ab4:	fec42703          	lw	a4,-20(s0)
  205ab8:	fcc42783          	lw	a5,-52(s0)
  205abc:	85ba                	mv	a1,a4
  205abe:	853e                	mv	a0,a5
  205ac0:	3fc030ef          	jal	ra,208ebc <CheckReqStatus>
  205ac4:	87aa                	mv	a5,a0
  205ac6:	fcf42e23          	sw	a5,-36(s0)
  205aca:	fec42703          	lw	a4,-20(s0)
  205ace:	fcc42783          	lw	a5,-52(s0)
  205ad2:	85ba                	mv	a1,a4
  205ad4:	853e                	mv	a0,a5
  205ad6:	5aa020ef          	jal	ra,208080 <SelectiveGetFromNandStatusCheckList>
  205ada:	fec42703          	lw	a4,-20(s0)
  205ade:	fcc42783          	lw	a5,-52(s0)
  205ae2:	85ba                	mv	a1,a4
  205ae4:	853e                	mv	a0,a5
  205ae6:	211000ef          	jal	ra,2064f6 <PutToNandStatusReportList>
  205aea:	002107b7          	lui	a5,0x210
  205aee:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205af2:	fcc46783          	lwu	a5,-52(s0)
  205af6:	078e                	slli	a5,a5,0x3
  205af8:	97ba                	add	a5,a5,a4
  205afa:	639c                	ld	a5,0(a5)
  205afc:	853e                	mv	a0,a5
  205afe:	4ad030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205b02:	87aa                	mv	a5,a0
  205b04:	2781                	sext.w	a5,a5
  205b06:	36079563          	bnez	a5,205e70 <SchedulingNandReqPerCh+0x854>
  205b0a:	002107b7          	lui	a5,0x210
  205b0e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205b12:	fec46783          	lwu	a5,-20(s0)
  205b16:	fcc46683          	lwu	a3,-52(s0)
  205b1a:	068e                	slli	a3,a3,0x3
  205b1c:	97b6                	add	a5,a5,a3
  205b1e:	078a                	slli	a5,a5,0x2
  205b20:	97ba                	add	a5,a5,a4
  205b22:	439c                	lw	a5,0(a5)
  205b24:	0107d79b          	srliw	a5,a5,0x10
  205b28:	8bbd                	andi	a5,a5,15
  205b2a:	0ff7f793          	andi	a5,a5,255
  205b2e:	fef42623          	sw	a5,-20(s0)
  205b32:	fec42783          	lw	a5,-20(s0)
  205b36:	0007871b          	sext.w	a4,a5
  205b3a:	47bd                	li	a5,15
  205b3c:	f6f712e3          	bne	a4,a5,205aa0 <SchedulingNandReqPerCh+0x484>
  205b40:	002107b7          	lui	a5,0x210
  205b44:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205b48:	fcc46783          	lwu	a5,-52(s0)
  205b4c:	078e                	slli	a5,a5,0x3
  205b4e:	97ba                	add	a5,a5,a4
  205b50:	439c                	lw	a5,0(a5)
  205b52:	0107d79b          	srliw	a5,a5,0x10
  205b56:	8bbd                	andi	a5,a5,15
  205b58:	0ff7f793          	andi	a5,a5,255
  205b5c:	873e                	mv	a4,a5
  205b5e:	47bd                	li	a5,15
  205b60:	0af70763          	beq	a4,a5,205c0e <SchedulingNandReqPerCh+0x5f2>
  205b64:	002107b7          	lui	a5,0x210
  205b68:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205b6c:	fcc46783          	lwu	a5,-52(s0)
  205b70:	078e                	slli	a5,a5,0x3
  205b72:	97ba                	add	a5,a5,a4
  205b74:	439c                	lw	a5,0(a5)
  205b76:	0107d79b          	srliw	a5,a5,0x10
  205b7a:	8bbd                	andi	a5,a5,15
  205b7c:	0ff7f793          	andi	a5,a5,255
  205b80:	fef42623          	sw	a5,-20(s0)
  205b84:	a8b5                	j	205c00 <SchedulingNandReqPerCh+0x5e4>
  205b86:	fec42703          	lw	a4,-20(s0)
  205b8a:	fcc42783          	lw	a5,-52(s0)
  205b8e:	4601                	li	a2,0
  205b90:	85ba                	mv	a1,a4
  205b92:	853e                	mv	a0,a5
  205b94:	6f8030ef          	jal	ra,20928c <ExecuteNandReq>
  205b98:	fec42703          	lw	a4,-20(s0)
  205b9c:	fcc42783          	lw	a5,-52(s0)
  205ba0:	85ba                	mv	a1,a4
  205ba2:	853e                	mv	a0,a5
  205ba4:	04c010ef          	jal	ra,206bf0 <SelectiveGetFromNandReadTriggerList>
  205ba8:	fec42703          	lw	a4,-20(s0)
  205bac:	fcc42783          	lw	a5,-52(s0)
  205bb0:	85ba                	mv	a1,a4
  205bb2:	853e                	mv	a0,a5
  205bb4:	2fc020ef          	jal	ra,207eb0 <PutToNandStatusCheckList>
  205bb8:	002107b7          	lui	a5,0x210
  205bbc:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205bc0:	fcc46783          	lwu	a5,-52(s0)
  205bc4:	078e                	slli	a5,a5,0x3
  205bc6:	97ba                	add	a5,a5,a4
  205bc8:	639c                	ld	a5,0(a5)
  205bca:	853e                	mv	a0,a5
  205bcc:	3df030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205bd0:	87aa                	mv	a5,a0
  205bd2:	2781                	sext.w	a5,a5
  205bd4:	2a079063          	bnez	a5,205e74 <SchedulingNandReqPerCh+0x858>
  205bd8:	002107b7          	lui	a5,0x210
  205bdc:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205be0:	fec46783          	lwu	a5,-20(s0)
  205be4:	fcc46683          	lwu	a3,-52(s0)
  205be8:	068e                	slli	a3,a3,0x3
  205bea:	97b6                	add	a5,a5,a3
  205bec:	078a                	slli	a5,a5,0x2
  205bee:	97ba                	add	a5,a5,a4
  205bf0:	439c                	lw	a5,0(a5)
  205bf2:	0107d79b          	srliw	a5,a5,0x10
  205bf6:	8bbd                	andi	a5,a5,15
  205bf8:	0ff7f793          	andi	a5,a5,255
  205bfc:	fef42623          	sw	a5,-20(s0)
  205c00:	fec42783          	lw	a5,-20(s0)
  205c04:	0007871b          	sext.w	a4,a5
  205c08:	47bd                	li	a5,15
  205c0a:	f6f71ee3          	bne	a4,a5,205b86 <SchedulingNandReqPerCh+0x56a>
  205c0e:	002107b7          	lui	a5,0x210
  205c12:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205c16:	fcc46783          	lwu	a5,-52(s0)
  205c1a:	078e                	slli	a5,a5,0x3
  205c1c:	97ba                	add	a5,a5,a4
  205c1e:	43dc                	lw	a5,4(a5)
  205c20:	0087d79b          	srliw	a5,a5,0x8
  205c24:	8bbd                	andi	a5,a5,15
  205c26:	0ff7f793          	andi	a5,a5,255
  205c2a:	873e                	mv	a4,a5
  205c2c:	47bd                	li	a5,15
  205c2e:	0af70763          	beq	a4,a5,205cdc <SchedulingNandReqPerCh+0x6c0>
  205c32:	002107b7          	lui	a5,0x210
  205c36:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205c3a:	fcc46783          	lwu	a5,-52(s0)
  205c3e:	078e                	slli	a5,a5,0x3
  205c40:	97ba                	add	a5,a5,a4
  205c42:	43dc                	lw	a5,4(a5)
  205c44:	0087d79b          	srliw	a5,a5,0x8
  205c48:	8bbd                	andi	a5,a5,15
  205c4a:	0ff7f793          	andi	a5,a5,255
  205c4e:	fef42623          	sw	a5,-20(s0)
  205c52:	a8b5                	j	205cce <SchedulingNandReqPerCh+0x6b2>
  205c54:	fec42703          	lw	a4,-20(s0)
  205c58:	fcc42783          	lw	a5,-52(s0)
  205c5c:	4601                	li	a2,0
  205c5e:	85ba                	mv	a1,a4
  205c60:	853e                	mv	a0,a5
  205c62:	62a030ef          	jal	ra,20928c <ExecuteNandReq>
  205c66:	fec42703          	lw	a4,-20(s0)
  205c6a:	fcc42783          	lw	a5,-52(s0)
  205c6e:	85ba                	mv	a1,a4
  205c70:	853e                	mv	a0,a5
  205c72:	6e1010ef          	jal	ra,207b52 <SelectiveGetFromNandEraseList>
  205c76:	fec42703          	lw	a4,-20(s0)
  205c7a:	fcc42783          	lw	a5,-52(s0)
  205c7e:	85ba                	mv	a1,a4
  205c80:	853e                	mv	a0,a5
  205c82:	22e020ef          	jal	ra,207eb0 <PutToNandStatusCheckList>
  205c86:	002107b7          	lui	a5,0x210
  205c8a:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205c8e:	fcc46783          	lwu	a5,-52(s0)
  205c92:	078e                	slli	a5,a5,0x3
  205c94:	97ba                	add	a5,a5,a4
  205c96:	639c                	ld	a5,0(a5)
  205c98:	853e                	mv	a0,a5
  205c9a:	311030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205c9e:	87aa                	mv	a5,a0
  205ca0:	2781                	sext.w	a5,a5
  205ca2:	1c079b63          	bnez	a5,205e78 <SchedulingNandReqPerCh+0x85c>
  205ca6:	002107b7          	lui	a5,0x210
  205caa:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205cae:	fec46783          	lwu	a5,-20(s0)
  205cb2:	fcc46683          	lwu	a3,-52(s0)
  205cb6:	068e                	slli	a3,a3,0x3
  205cb8:	97b6                	add	a5,a5,a3
  205cba:	078a                	slli	a5,a5,0x2
  205cbc:	97ba                	add	a5,a5,a4
  205cbe:	439c                	lw	a5,0(a5)
  205cc0:	0107d79b          	srliw	a5,a5,0x10
  205cc4:	8bbd                	andi	a5,a5,15
  205cc6:	0ff7f793          	andi	a5,a5,255
  205cca:	fef42623          	sw	a5,-20(s0)
  205cce:	fec42783          	lw	a5,-20(s0)
  205cd2:	0007871b          	sext.w	a4,a5
  205cd6:	47bd                	li	a5,15
  205cd8:	f6f71ee3          	bne	a4,a5,205c54 <SchedulingNandReqPerCh+0x638>
  205cdc:	002107b7          	lui	a5,0x210
  205ce0:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205ce4:	fcc46783          	lwu	a5,-52(s0)
  205ce8:	078e                	slli	a5,a5,0x3
  205cea:	97ba                	add	a5,a5,a4
  205cec:	439c                	lw	a5,0(a5)
  205cee:	0187d79b          	srliw	a5,a5,0x18
  205cf2:	8bbd                	andi	a5,a5,15
  205cf4:	0ff7f793          	andi	a5,a5,255
  205cf8:	873e                	mv	a4,a5
  205cfa:	47bd                	li	a5,15
  205cfc:	0af70763          	beq	a4,a5,205daa <SchedulingNandReqPerCh+0x78e>
  205d00:	002107b7          	lui	a5,0x210
  205d04:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205d08:	fcc46783          	lwu	a5,-52(s0)
  205d0c:	078e                	slli	a5,a5,0x3
  205d0e:	97ba                	add	a5,a5,a4
  205d10:	439c                	lw	a5,0(a5)
  205d12:	0187d79b          	srliw	a5,a5,0x18
  205d16:	8bbd                	andi	a5,a5,15
  205d18:	0ff7f793          	andi	a5,a5,255
  205d1c:	fef42623          	sw	a5,-20(s0)
  205d20:	a8b5                	j	205d9c <SchedulingNandReqPerCh+0x780>
  205d22:	fec42703          	lw	a4,-20(s0)
  205d26:	fcc42783          	lw	a5,-52(s0)
  205d2a:	4601                	li	a2,0
  205d2c:	85ba                	mv	a1,a4
  205d2e:	853e                	mv	a0,a5
  205d30:	55c030ef          	jal	ra,20928c <ExecuteNandReq>
  205d34:	fec42703          	lw	a4,-20(s0)
  205d38:	fcc42783          	lw	a5,-52(s0)
  205d3c:	85ba                	mv	a1,a4
  205d3e:	853e                	mv	a0,a5
  205d40:	3d2010ef          	jal	ra,207112 <SelectiveGetFromNandWriteList>
  205d44:	fec42703          	lw	a4,-20(s0)
  205d48:	fcc42783          	lw	a5,-52(s0)
  205d4c:	85ba                	mv	a1,a4
  205d4e:	853e                	mv	a0,a5
  205d50:	160020ef          	jal	ra,207eb0 <PutToNandStatusCheckList>
  205d54:	002107b7          	lui	a5,0x210
  205d58:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205d5c:	fcc46783          	lwu	a5,-52(s0)
  205d60:	078e                	slli	a5,a5,0x3
  205d62:	97ba                	add	a5,a5,a4
  205d64:	639c                	ld	a5,0(a5)
  205d66:	853e                	mv	a0,a5
  205d68:	243030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205d6c:	87aa                	mv	a5,a0
  205d6e:	2781                	sext.w	a5,a5
  205d70:	10079663          	bnez	a5,205e7c <SchedulingNandReqPerCh+0x860>
  205d74:	002107b7          	lui	a5,0x210
  205d78:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205d7c:	fec46783          	lwu	a5,-20(s0)
  205d80:	fcc46683          	lwu	a3,-52(s0)
  205d84:	068e                	slli	a3,a3,0x3
  205d86:	97b6                	add	a5,a5,a3
  205d88:	078a                	slli	a5,a5,0x2
  205d8a:	97ba                	add	a5,a5,a4
  205d8c:	439c                	lw	a5,0(a5)
  205d8e:	0107d79b          	srliw	a5,a5,0x10
  205d92:	8bbd                	andi	a5,a5,15
  205d94:	0ff7f793          	andi	a5,a5,255
  205d98:	fef42623          	sw	a5,-20(s0)
  205d9c:	fec42783          	lw	a5,-20(s0)
  205da0:	0007871b          	sext.w	a4,a5
  205da4:	47bd                	li	a5,15
  205da6:	f6f71ee3          	bne	a4,a5,205d22 <SchedulingNandReqPerCh+0x706>
  205daa:	002107b7          	lui	a5,0x210
  205dae:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205db2:	fcc46783          	lwu	a5,-52(s0)
  205db6:	078e                	slli	a5,a5,0x3
  205db8:	97ba                	add	a5,a5,a4
  205dba:	43dc                	lw	a5,4(a5)
  205dbc:	8bbd                	andi	a5,a5,15
  205dbe:	0ff7f793          	andi	a5,a5,255
  205dc2:	873e                	mv	a4,a5
  205dc4:	47bd                	li	a5,15
  205dc6:	0af70e63          	beq	a4,a5,205e82 <SchedulingNandReqPerCh+0x866>
  205dca:	002107b7          	lui	a5,0x210
  205dce:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205dd2:	fcc46783          	lwu	a5,-52(s0)
  205dd6:	078e                	slli	a5,a5,0x3
  205dd8:	97ba                	add	a5,a5,a4
  205dda:	43dc                	lw	a5,4(a5)
  205ddc:	8bbd                	andi	a5,a5,15
  205dde:	0ff7f793          	andi	a5,a5,255
  205de2:	fef42623          	sw	a5,-20(s0)
  205de6:	a8ad                	j	205e60 <SchedulingNandReqPerCh+0x844>
  205de8:	fec42703          	lw	a4,-20(s0)
  205dec:	fcc42783          	lw	a5,-52(s0)
  205df0:	4601                	li	a2,0
  205df2:	85ba                	mv	a1,a4
  205df4:	853e                	mv	a0,a5
  205df6:	496030ef          	jal	ra,20928c <ExecuteNandReq>
  205dfa:	fec42703          	lw	a4,-20(s0)
  205dfe:	fcc42783          	lw	a5,-52(s0)
  205e02:	85ba                	mv	a1,a4
  205e04:	853e                	mv	a0,a5
  205e06:	02d010ef          	jal	ra,207632 <SelectiveGetFromNandReadTransferList>
  205e0a:	fec42703          	lw	a4,-20(s0)
  205e0e:	fcc42783          	lw	a5,-52(s0)
  205e12:	85ba                	mv	a1,a4
  205e14:	853e                	mv	a0,a5
  205e16:	6e0000ef          	jal	ra,2064f6 <PutToNandStatusReportList>
  205e1a:	002107b7          	lui	a5,0x210
  205e1e:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  205e22:	fcc46783          	lwu	a5,-52(s0)
  205e26:	078e                	slli	a5,a5,0x3
  205e28:	97ba                	add	a5,a5,a4
  205e2a:	639c                	ld	a5,0(a5)
  205e2c:	853e                	mv	a0,a5
  205e2e:	17d030ef          	jal	ra,2097aa <V2FIsControllerBusy>
  205e32:	87aa                	mv	a5,a0
  205e34:	2781                	sext.w	a5,a5
  205e36:	e7a9                	bnez	a5,205e80 <SchedulingNandReqPerCh+0x864>
  205e38:	002107b7          	lui	a5,0x210
  205e3c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  205e40:	fec46783          	lwu	a5,-20(s0)
  205e44:	fcc46683          	lwu	a3,-52(s0)
  205e48:	068e                	slli	a3,a3,0x3
  205e4a:	97b6                	add	a5,a5,a3
  205e4c:	078a                	slli	a5,a5,0x2
  205e4e:	97ba                	add	a5,a5,a4
  205e50:	439c                	lw	a5,0(a5)
  205e52:	0107d79b          	srliw	a5,a5,0x10
  205e56:	8bbd                	andi	a5,a5,15
  205e58:	0ff7f793          	andi	a5,a5,255
  205e5c:	fef42623          	sw	a5,-20(s0)
  205e60:	fec42783          	lw	a5,-20(s0)
  205e64:	0007871b          	sext.w	a4,a5
  205e68:	47bd                	li	a5,15
  205e6a:	f6f71fe3          	bne	a4,a5,205de8 <SchedulingNandReqPerCh+0x7cc>
  205e6e:	a811                	j	205e82 <SchedulingNandReqPerCh+0x866>
  205e70:	0001                	nop
  205e72:	a801                	j	205e82 <SchedulingNandReqPerCh+0x866>
  205e74:	0001                	nop
  205e76:	a031                	j	205e82 <SchedulingNandReqPerCh+0x866>
  205e78:	0001                	nop
  205e7a:	a021                	j	205e82 <SchedulingNandReqPerCh+0x866>
  205e7c:	0001                	nop
  205e7e:	a011                	j	205e82 <SchedulingNandReqPerCh+0x866>
  205e80:	0001                	nop
  205e82:	70e2                	ld	ra,56(sp)
  205e84:	7442                	ld	s0,48(sp)
  205e86:	6121                	addi	sp,sp,64
  205e88:	8082                	ret

0000000000205e8a <PutToNandWayPriorityTable>:
  205e8a:	1101                	addi	sp,sp,-32
  205e8c:	ec06                	sd	ra,24(sp)
  205e8e:	e822                	sd	s0,16(sp)
  205e90:	1000                	addi	s0,sp,32
  205e92:	87aa                	mv	a5,a0
  205e94:	86ae                	mv	a3,a1
  205e96:	8732                	mv	a4,a2
  205e98:	fef42623          	sw	a5,-20(s0)
  205e9c:	87b6                	mv	a5,a3
  205e9e:	fef42423          	sw	a5,-24(s0)
  205ea2:	87ba                	mv	a5,a4
  205ea4:	fef42223          	sw	a5,-28(s0)
  205ea8:	002107b7          	lui	a5,0x210
  205eac:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205eb0:	fec46683          	lwu	a3,-20(s0)
  205eb4:	03400793          	li	a5,52
  205eb8:	02f687b3          	mul	a5,a3,a5
  205ebc:	97ba                	add	a5,a5,a4
  205ebe:	0017c783          	lbu	a5,1(a5)
  205ec2:	873e                	mv	a4,a5
  205ec4:	47a1                	li	a5,8
  205ec6:	00f71b63          	bne	a4,a5,205edc <PutToNandWayPriorityTable+0x52>
  205eca:	fe442703          	lw	a4,-28(s0)
  205ece:	fe842783          	lw	a5,-24(s0)
  205ed2:	85ba                	mv	a1,a4
  205ed4:	853e                	mv	a0,a5
  205ed6:	34b000ef          	jal	ra,206a20 <PutToNandReadTriggerList>
  205eda:	a8ed                	j	205fd4 <PutToNandWayPriorityTable+0x14a>
  205edc:	002107b7          	lui	a5,0x210
  205ee0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205ee4:	fec46683          	lwu	a3,-20(s0)
  205ee8:	03400793          	li	a5,52
  205eec:	02f687b3          	mul	a5,a3,a5
  205ef0:	97ba                	add	a5,a5,a4
  205ef2:	0017c783          	lbu	a5,1(a5)
  205ef6:	873e                	mv	a4,a5
  205ef8:	47a5                	li	a5,9
  205efa:	00f71b63          	bne	a4,a5,205f10 <PutToNandWayPriorityTable+0x86>
  205efe:	fe442703          	lw	a4,-28(s0)
  205f02:	fe842783          	lw	a5,-24(s0)
  205f06:	85ba                	mv	a1,a4
  205f08:	853e                	mv	a0,a5
  205f0a:	564010ef          	jal	ra,20746e <PutToNandReadTransferList>
  205f0e:	a0d9                	j	205fd4 <PutToNandWayPriorityTable+0x14a>
  205f10:	002107b7          	lui	a5,0x210
  205f14:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205f18:	fec46683          	lwu	a3,-20(s0)
  205f1c:	03400793          	li	a5,52
  205f20:	02f687b3          	mul	a5,a3,a5
  205f24:	97ba                	add	a5,a5,a4
  205f26:	0017c783          	lbu	a5,1(a5)
  205f2a:	eb91                	bnez	a5,205f3e <PutToNandWayPriorityTable+0xb4>
  205f2c:	fe442703          	lw	a4,-28(s0)
  205f30:	fe842783          	lw	a5,-24(s0)
  205f34:	85ba                	mv	a1,a4
  205f36:	853e                	mv	a0,a5
  205f38:	018010ef          	jal	ra,206f50 <PutToNandWriteList>
  205f3c:	a861                	j	205fd4 <PutToNandWayPriorityTable+0x14a>
  205f3e:	002107b7          	lui	a5,0x210
  205f42:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205f46:	fec46683          	lwu	a3,-20(s0)
  205f4a:	03400793          	li	a5,52
  205f4e:	02f687b3          	mul	a5,a3,a5
  205f52:	97ba                	add	a5,a5,a4
  205f54:	0017c783          	lbu	a5,1(a5)
  205f58:	873e                	mv	a4,a5
  205f5a:	47b1                	li	a5,12
  205f5c:	00f71b63          	bne	a4,a5,205f72 <PutToNandWayPriorityTable+0xe8>
  205f60:	fe442703          	lw	a4,-28(s0)
  205f64:	fe842783          	lw	a5,-24(s0)
  205f68:	85ba                	mv	a1,a4
  205f6a:	853e                	mv	a0,a5
  205f6c:	21b010ef          	jal	ra,207986 <PutToNandEraseList>
  205f70:	a095                	j	205fd4 <PutToNandWayPriorityTable+0x14a>
  205f72:	002107b7          	lui	a5,0x210
  205f76:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205f7a:	fec46683          	lwu	a3,-20(s0)
  205f7e:	03400793          	li	a5,52
  205f82:	02f687b3          	mul	a5,a3,a5
  205f86:	97ba                	add	a5,a5,a4
  205f88:	0017c783          	lbu	a5,1(a5)
  205f8c:	873e                	mv	a4,a5
  205f8e:	47b5                	li	a5,13
  205f90:	02f70363          	beq	a4,a5,205fb6 <PutToNandWayPriorityTable+0x12c>
  205f94:	002107b7          	lui	a5,0x210
  205f98:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  205f9c:	fec46683          	lwu	a3,-20(s0)
  205fa0:	03400793          	li	a5,52
  205fa4:	02f687b3          	mul	a5,a3,a5
  205fa8:	97ba                	add	a5,a5,a4
  205faa:	0017c783          	lbu	a5,1(a5)
  205fae:	873e                	mv	a4,a5
  205fb0:	47b9                	li	a5,14
  205fb2:	00f71b63          	bne	a4,a5,205fc8 <PutToNandWayPriorityTable+0x13e>
  205fb6:	fe442703          	lw	a4,-28(s0)
  205fba:	fe842783          	lw	a5,-24(s0)
  205fbe:	85ba                	mv	a1,a4
  205fc0:	853e                	mv	a0,a5
  205fc2:	78f000ef          	jal	ra,206f50 <PutToNandWriteList>
  205fc6:	a039                	j	205fd4 <PutToNandWayPriorityTable+0x14a>
  205fc8:	0020f7b7          	lui	a5,0x20f
  205fcc:	1b878513          	addi	a0,a5,440 # 20f1b8 <nvme_main+0x702>
  205fd0:	de8fe0ef          	jal	ra,2045b8 <cpl_print>
  205fd4:	0001                	nop
  205fd6:	60e2                	ld	ra,24(sp)
  205fd8:	6442                	ld	s0,16(sp)
  205fda:	6105                	addi	sp,sp,32
  205fdc:	8082                	ret

0000000000205fde <PutToNandIdleList>:
  205fde:	1101                	addi	sp,sp,-32
  205fe0:	ec22                	sd	s0,24(sp)
  205fe2:	1000                	addi	s0,sp,32
  205fe4:	87aa                	mv	a5,a0
  205fe6:	872e                	mv	a4,a1
  205fe8:	fef42623          	sw	a5,-20(s0)
  205fec:	87ba                	mv	a5,a4
  205fee:	fef42423          	sw	a5,-24(s0)
  205ff2:	002107b7          	lui	a5,0x210
  205ff6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  205ffa:	fec46783          	lwu	a5,-20(s0)
  205ffe:	078e                	slli	a5,a5,0x3
  206000:	97ba                	add	a5,a5,a4
  206002:	439c                	lw	a5,0(a5)
  206004:	0047d79b          	srliw	a5,a5,0x4
  206008:	8bbd                	andi	a5,a5,15
  20600a:	0ff7f793          	andi	a5,a5,255
  20600e:	873e                	mv	a4,a5
  206010:	47bd                	li	a5,15
  206012:	0ef70763          	beq	a4,a5,206100 <PutToNandIdleList+0x122>
  206016:	002107b7          	lui	a5,0x210
  20601a:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  20601e:	002107b7          	lui	a5,0x210
  206022:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206026:	fec46783          	lwu	a5,-20(s0)
  20602a:	078e                	slli	a5,a5,0x3
  20602c:	97b6                	add	a5,a5,a3
  20602e:	439c                	lw	a5,0(a5)
  206030:	0047d79b          	srliw	a5,a5,0x4
  206034:	8bbd                	andi	a5,a5,15
  206036:	0ff7f613          	andi	a2,a5,255
  20603a:	fe846783          	lwu	a5,-24(s0)
  20603e:	fec46683          	lwu	a3,-20(s0)
  206042:	068e                	slli	a3,a3,0x3
  206044:	97b6                	add	a5,a5,a3
  206046:	078a                	slli	a5,a5,0x2
  206048:	97ba                	add	a5,a5,a4
  20604a:	8732                	mv	a4,a2
  20604c:	8b3d                	andi	a4,a4,15
  20604e:	00c7171b          	slliw	a4,a4,0xc
  206052:	4390                	lw	a2,0(a5)
  206054:	76c5                	lui	a3,0xffff1
  206056:	16fd                	addi	a3,a3,-1
  206058:	8ef1                	and	a3,a3,a2
  20605a:	8f55                	or	a4,a4,a3
  20605c:	c398                	sw	a4,0(a5)
  20605e:	002107b7          	lui	a5,0x210
  206062:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206066:	fe846783          	lwu	a5,-24(s0)
  20606a:	fec46683          	lwu	a3,-20(s0)
  20606e:	068e                	slli	a3,a3,0x3
  206070:	97b6                	add	a5,a5,a3
  206072:	078a                	slli	a5,a5,0x2
  206074:	97ba                	add	a5,a5,a4
  206076:	4394                	lw	a3,0(a5)
  206078:	000f0737          	lui	a4,0xf0
  20607c:	8f55                	or	a4,a4,a3
  20607e:	c398                	sw	a4,0(a5)
  206080:	002107b7          	lui	a5,0x210
  206084:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206088:	002107b7          	lui	a5,0x210
  20608c:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206090:	fec46783          	lwu	a5,-20(s0)
  206094:	078e                	slli	a5,a5,0x3
  206096:	97b6                	add	a5,a5,a3
  206098:	439c                	lw	a5,0(a5)
  20609a:	0047d79b          	srliw	a5,a5,0x4
  20609e:	8bbd                	andi	a5,a5,15
  2060a0:	0ff7f793          	andi	a5,a5,255
  2060a4:	2781                	sext.w	a5,a5
  2060a6:	fe842683          	lw	a3,-24(s0)
  2060aa:	8abd                	andi	a3,a3,15
  2060ac:	0ff6f613          	andi	a2,a3,255
  2060b0:	fec46683          	lwu	a3,-20(s0)
  2060b4:	068e                	slli	a3,a3,0x3
  2060b6:	97b6                	add	a5,a5,a3
  2060b8:	078a                	slli	a5,a5,0x2
  2060ba:	97ba                	add	a5,a5,a4
  2060bc:	8732                	mv	a4,a2
  2060be:	8b3d                	andi	a4,a4,15
  2060c0:	0107171b          	slliw	a4,a4,0x10
  2060c4:	4390                	lw	a2,0(a5)
  2060c6:	fff106b7          	lui	a3,0xfff10
  2060ca:	16fd                	addi	a3,a3,-1
  2060cc:	8ef1                	and	a3,a3,a2
  2060ce:	8f55                	or	a4,a4,a3
  2060d0:	c398                	sw	a4,0(a5)
  2060d2:	002107b7          	lui	a5,0x210
  2060d6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2060da:	fe842783          	lw	a5,-24(s0)
  2060de:	8bbd                	andi	a5,a5,15
  2060e0:	0ff7f693          	andi	a3,a5,255
  2060e4:	fec46783          	lwu	a5,-20(s0)
  2060e8:	078e                	slli	a5,a5,0x3
  2060ea:	97ba                	add	a5,a5,a4
  2060ec:	8736                	mv	a4,a3
  2060ee:	8b3d                	andi	a4,a4,15
  2060f0:	0047171b          	slliw	a4,a4,0x4
  2060f4:	4394                	lw	a3,0(a5)
  2060f6:	f0f6f693          	andi	a3,a3,-241
  2060fa:	8f55                	or	a4,a4,a3
  2060fc:	c398                	sw	a4,0(a5)
  2060fe:	a871                	j	20619a <PutToNandIdleList+0x1bc>
  206100:	002107b7          	lui	a5,0x210
  206104:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206108:	fe846783          	lwu	a5,-24(s0)
  20610c:	fec46683          	lwu	a3,-20(s0)
  206110:	068e                	slli	a3,a3,0x3
  206112:	97b6                	add	a5,a5,a3
  206114:	078a                	slli	a5,a5,0x2
  206116:	97ba                	add	a5,a5,a4
  206118:	4394                	lw	a3,0(a5)
  20611a:	673d                	lui	a4,0xf
  20611c:	8f55                	or	a4,a4,a3
  20611e:	c398                	sw	a4,0(a5)
  206120:	002107b7          	lui	a5,0x210
  206124:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206128:	fe846783          	lwu	a5,-24(s0)
  20612c:	fec46683          	lwu	a3,-20(s0)
  206130:	068e                	slli	a3,a3,0x3
  206132:	97b6                	add	a5,a5,a3
  206134:	078a                	slli	a5,a5,0x2
  206136:	97ba                	add	a5,a5,a4
  206138:	4394                	lw	a3,0(a5)
  20613a:	000f0737          	lui	a4,0xf0
  20613e:	8f55                	or	a4,a4,a3
  206140:	c398                	sw	a4,0(a5)
  206142:	002107b7          	lui	a5,0x210
  206146:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20614a:	fe842783          	lw	a5,-24(s0)
  20614e:	8bbd                	andi	a5,a5,15
  206150:	0ff7f693          	andi	a3,a5,255
  206154:	fec46783          	lwu	a5,-20(s0)
  206158:	078e                	slli	a5,a5,0x3
  20615a:	97ba                	add	a5,a5,a4
  20615c:	8736                	mv	a4,a3
  20615e:	00f77613          	andi	a2,a4,15
  206162:	4398                	lw	a4,0(a5)
  206164:	9b41                	andi	a4,a4,-16
  206166:	86ba                	mv	a3,a4
  206168:	8732                	mv	a4,a2
  20616a:	8f55                	or	a4,a4,a3
  20616c:	c398                	sw	a4,0(a5)
  20616e:	002107b7          	lui	a5,0x210
  206172:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206176:	fe842783          	lw	a5,-24(s0)
  20617a:	8bbd                	andi	a5,a5,15
  20617c:	0ff7f693          	andi	a3,a5,255
  206180:	fec46783          	lwu	a5,-20(s0)
  206184:	078e                	slli	a5,a5,0x3
  206186:	97ba                	add	a5,a5,a4
  206188:	8736                	mv	a4,a3
  20618a:	8b3d                	andi	a4,a4,15
  20618c:	0047171b          	slliw	a4,a4,0x4
  206190:	4394                	lw	a3,0(a5)
  206192:	f0f6f693          	andi	a3,a3,-241
  206196:	8f55                	or	a4,a4,a3
  206198:	c398                	sw	a4,0(a5)
  20619a:	0001                	nop
  20619c:	6462                	ld	s0,24(sp)
  20619e:	6105                	addi	sp,sp,32
  2061a0:	8082                	ret

00000000002061a2 <SelectivGetFromNandIdleList>:
  2061a2:	1101                	addi	sp,sp,-32
  2061a4:	ec22                	sd	s0,24(sp)
  2061a6:	1000                	addi	s0,sp,32
  2061a8:	87aa                	mv	a5,a0
  2061aa:	872e                	mv	a4,a1
  2061ac:	fef42623          	sw	a5,-20(s0)
  2061b0:	87ba                	mv	a5,a4
  2061b2:	fef42423          	sw	a5,-24(s0)
  2061b6:	002107b7          	lui	a5,0x210
  2061ba:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2061be:	fe846783          	lwu	a5,-24(s0)
  2061c2:	fec46683          	lwu	a3,-20(s0)
  2061c6:	068e                	slli	a3,a3,0x3
  2061c8:	97b6                	add	a5,a5,a3
  2061ca:	078a                	slli	a5,a5,0x2
  2061cc:	97ba                	add	a5,a5,a4
  2061ce:	439c                	lw	a5,0(a5)
  2061d0:	0107d79b          	srliw	a5,a5,0x10
  2061d4:	8bbd                	andi	a5,a5,15
  2061d6:	0ff7f793          	andi	a5,a5,255
  2061da:	873e                	mv	a4,a5
  2061dc:	47bd                	li	a5,15
  2061de:	10f70c63          	beq	a4,a5,2062f6 <SelectivGetFromNandIdleList+0x154>
  2061e2:	002107b7          	lui	a5,0x210
  2061e6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2061ea:	fe846783          	lwu	a5,-24(s0)
  2061ee:	fec46683          	lwu	a3,-20(s0)
  2061f2:	068e                	slli	a3,a3,0x3
  2061f4:	97b6                	add	a5,a5,a3
  2061f6:	078a                	slli	a5,a5,0x2
  2061f8:	97ba                	add	a5,a5,a4
  2061fa:	439c                	lw	a5,0(a5)
  2061fc:	00c7d79b          	srliw	a5,a5,0xc
  206200:	8bbd                	andi	a5,a5,15
  206202:	0ff7f793          	andi	a5,a5,255
  206206:	873e                	mv	a4,a5
  206208:	47bd                	li	a5,15
  20620a:	0ef70663          	beq	a4,a5,2062f6 <SelectivGetFromNandIdleList+0x154>
  20620e:	002107b7          	lui	a5,0x210
  206212:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  206216:	002107b7          	lui	a5,0x210
  20621a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20621e:	002107b7          	lui	a5,0x210
  206222:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206226:	fe846783          	lwu	a5,-24(s0)
  20622a:	fec46583          	lwu	a1,-20(s0)
  20622e:	058e                	slli	a1,a1,0x3
  206230:	97ae                	add	a5,a5,a1
  206232:	078a                	slli	a5,a5,0x2
  206234:	97b6                	add	a5,a5,a3
  206236:	439c                	lw	a5,0(a5)
  206238:	00c7d79b          	srliw	a5,a5,0xc
  20623c:	8bbd                	andi	a5,a5,15
  20623e:	0ff7f793          	andi	a5,a5,255
  206242:	2781                	sext.w	a5,a5
  206244:	fe846683          	lwu	a3,-24(s0)
  206248:	fec46583          	lwu	a1,-20(s0)
  20624c:	058e                	slli	a1,a1,0x3
  20624e:	96ae                	add	a3,a3,a1
  206250:	068a                	slli	a3,a3,0x2
  206252:	96b2                	add	a3,a3,a2
  206254:	4294                	lw	a3,0(a3)
  206256:	0106d69b          	srliw	a3,a3,0x10
  20625a:	8abd                	andi	a3,a3,15
  20625c:	0ff6f613          	andi	a2,a3,255
  206260:	fec46683          	lwu	a3,-20(s0)
  206264:	068e                	slli	a3,a3,0x3
  206266:	97b6                	add	a5,a5,a3
  206268:	078a                	slli	a5,a5,0x2
  20626a:	97ba                	add	a5,a5,a4
  20626c:	8732                	mv	a4,a2
  20626e:	8b3d                	andi	a4,a4,15
  206270:	0107171b          	slliw	a4,a4,0x10
  206274:	4390                	lw	a2,0(a5)
  206276:	fff106b7          	lui	a3,0xfff10
  20627a:	16fd                	addi	a3,a3,-1
  20627c:	8ef1                	and	a3,a3,a2
  20627e:	8f55                	or	a4,a4,a3
  206280:	c398                	sw	a4,0(a5)
  206282:	002107b7          	lui	a5,0x210
  206286:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  20628a:	002107b7          	lui	a5,0x210
  20628e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206292:	002107b7          	lui	a5,0x210
  206296:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20629a:	fe846783          	lwu	a5,-24(s0)
  20629e:	fec46583          	lwu	a1,-20(s0)
  2062a2:	058e                	slli	a1,a1,0x3
  2062a4:	97ae                	add	a5,a5,a1
  2062a6:	078a                	slli	a5,a5,0x2
  2062a8:	97b6                	add	a5,a5,a3
  2062aa:	439c                	lw	a5,0(a5)
  2062ac:	0107d79b          	srliw	a5,a5,0x10
  2062b0:	8bbd                	andi	a5,a5,15
  2062b2:	0ff7f793          	andi	a5,a5,255
  2062b6:	2781                	sext.w	a5,a5
  2062b8:	fe846683          	lwu	a3,-24(s0)
  2062bc:	fec46583          	lwu	a1,-20(s0)
  2062c0:	058e                	slli	a1,a1,0x3
  2062c2:	96ae                	add	a3,a3,a1
  2062c4:	068a                	slli	a3,a3,0x2
  2062c6:	96b2                	add	a3,a3,a2
  2062c8:	4294                	lw	a3,0(a3)
  2062ca:	00c6d69b          	srliw	a3,a3,0xc
  2062ce:	8abd                	andi	a3,a3,15
  2062d0:	0ff6f613          	andi	a2,a3,255
  2062d4:	fec46683          	lwu	a3,-20(s0)
  2062d8:	068e                	slli	a3,a3,0x3
  2062da:	97b6                	add	a5,a5,a3
  2062dc:	078a                	slli	a5,a5,0x2
  2062de:	97ba                	add	a5,a5,a4
  2062e0:	8732                	mv	a4,a2
  2062e2:	8b3d                	andi	a4,a4,15
  2062e4:	00c7171b          	slliw	a4,a4,0xc
  2062e8:	4390                	lw	a2,0(a5)
  2062ea:	76c5                	lui	a3,0xffff1
  2062ec:	16fd                	addi	a3,a3,-1
  2062ee:	8ef1                	and	a3,a3,a2
  2062f0:	8f55                	or	a4,a4,a3
  2062f2:	c398                	sw	a4,0(a5)
  2062f4:	aaed                	j	2064ee <SelectivGetFromNandIdleList+0x34c>
  2062f6:	002107b7          	lui	a5,0x210
  2062fa:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2062fe:	fe846783          	lwu	a5,-24(s0)
  206302:	fec46683          	lwu	a3,-20(s0)
  206306:	068e                	slli	a3,a3,0x3
  206308:	97b6                	add	a5,a5,a3
  20630a:	078a                	slli	a5,a5,0x2
  20630c:	97ba                	add	a5,a5,a4
  20630e:	439c                	lw	a5,0(a5)
  206310:	0107d79b          	srliw	a5,a5,0x10
  206314:	8bbd                	andi	a5,a5,15
  206316:	0ff7f793          	andi	a5,a5,255
  20631a:	873e                	mv	a4,a5
  20631c:	47bd                	li	a5,15
  20631e:	0af71e63          	bne	a4,a5,2063da <SelectivGetFromNandIdleList+0x238>
  206322:	002107b7          	lui	a5,0x210
  206326:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20632a:	fe846783          	lwu	a5,-24(s0)
  20632e:	fec46683          	lwu	a3,-20(s0)
  206332:	068e                	slli	a3,a3,0x3
  206334:	97b6                	add	a5,a5,a3
  206336:	078a                	slli	a5,a5,0x2
  206338:	97ba                	add	a5,a5,a4
  20633a:	439c                	lw	a5,0(a5)
  20633c:	00c7d79b          	srliw	a5,a5,0xc
  206340:	8bbd                	andi	a5,a5,15
  206342:	0ff7f793          	andi	a5,a5,255
  206346:	873e                	mv	a4,a5
  206348:	47bd                	li	a5,15
  20634a:	08f70863          	beq	a4,a5,2063da <SelectivGetFromNandIdleList+0x238>
  20634e:	002107b7          	lui	a5,0x210
  206352:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206356:	002107b7          	lui	a5,0x210
  20635a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20635e:	fe846783          	lwu	a5,-24(s0)
  206362:	fec46603          	lwu	a2,-20(s0)
  206366:	060e                	slli	a2,a2,0x3
  206368:	97b2                	add	a5,a5,a2
  20636a:	078a                	slli	a5,a5,0x2
  20636c:	97b6                	add	a5,a5,a3
  20636e:	439c                	lw	a5,0(a5)
  206370:	00c7d79b          	srliw	a5,a5,0xc
  206374:	8bbd                	andi	a5,a5,15
  206376:	0ff7f793          	andi	a5,a5,255
  20637a:	2781                	sext.w	a5,a5
  20637c:	fec46683          	lwu	a3,-20(s0)
  206380:	068e                	slli	a3,a3,0x3
  206382:	97b6                	add	a5,a5,a3
  206384:	078a                	slli	a5,a5,0x2
  206386:	97ba                	add	a5,a5,a4
  206388:	4394                	lw	a3,0(a5)
  20638a:	000f0737          	lui	a4,0xf0
  20638e:	8f55                	or	a4,a4,a3
  206390:	c398                	sw	a4,0(a5)
  206392:	002107b7          	lui	a5,0x210
  206396:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20639a:	002107b7          	lui	a5,0x210
  20639e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2063a2:	fe846783          	lwu	a5,-24(s0)
  2063a6:	fec46603          	lwu	a2,-20(s0)
  2063aa:	060e                	slli	a2,a2,0x3
  2063ac:	97b2                	add	a5,a5,a2
  2063ae:	078a                	slli	a5,a5,0x2
  2063b0:	97b6                	add	a5,a5,a3
  2063b2:	439c                	lw	a5,0(a5)
  2063b4:	00c7d79b          	srliw	a5,a5,0xc
  2063b8:	8bbd                	andi	a5,a5,15
  2063ba:	0ff7f693          	andi	a3,a5,255
  2063be:	fec46783          	lwu	a5,-20(s0)
  2063c2:	078e                	slli	a5,a5,0x3
  2063c4:	97ba                	add	a5,a5,a4
  2063c6:	8736                	mv	a4,a3
  2063c8:	8b3d                	andi	a4,a4,15
  2063ca:	0047171b          	slliw	a4,a4,0x4
  2063ce:	4394                	lw	a3,0(a5)
  2063d0:	f0f6f693          	andi	a3,a3,-241
  2063d4:	8f55                	or	a4,a4,a3
  2063d6:	c398                	sw	a4,0(a5)
  2063d8:	aa19                	j	2064ee <SelectivGetFromNandIdleList+0x34c>
  2063da:	002107b7          	lui	a5,0x210
  2063de:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2063e2:	fe846783          	lwu	a5,-24(s0)
  2063e6:	fec46683          	lwu	a3,-20(s0)
  2063ea:	068e                	slli	a3,a3,0x3
  2063ec:	97b6                	add	a5,a5,a3
  2063ee:	078a                	slli	a5,a5,0x2
  2063f0:	97ba                	add	a5,a5,a4
  2063f2:	439c                	lw	a5,0(a5)
  2063f4:	0107d79b          	srliw	a5,a5,0x10
  2063f8:	8bbd                	andi	a5,a5,15
  2063fa:	0ff7f793          	andi	a5,a5,255
  2063fe:	873e                	mv	a4,a5
  206400:	47bd                	li	a5,15
  206402:	0af70d63          	beq	a4,a5,2064bc <SelectivGetFromNandIdleList+0x31a>
  206406:	002107b7          	lui	a5,0x210
  20640a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20640e:	fe846783          	lwu	a5,-24(s0)
  206412:	fec46683          	lwu	a3,-20(s0)
  206416:	068e                	slli	a3,a3,0x3
  206418:	97b6                	add	a5,a5,a3
  20641a:	078a                	slli	a5,a5,0x2
  20641c:	97ba                	add	a5,a5,a4
  20641e:	439c                	lw	a5,0(a5)
  206420:	00c7d79b          	srliw	a5,a5,0xc
  206424:	8bbd                	andi	a5,a5,15
  206426:	0ff7f793          	andi	a5,a5,255
  20642a:	873e                	mv	a4,a5
  20642c:	47bd                	li	a5,15
  20642e:	08f71763          	bne	a4,a5,2064bc <SelectivGetFromNandIdleList+0x31a>
  206432:	002107b7          	lui	a5,0x210
  206436:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20643a:	002107b7          	lui	a5,0x210
  20643e:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206442:	fe846783          	lwu	a5,-24(s0)
  206446:	fec46603          	lwu	a2,-20(s0)
  20644a:	060e                	slli	a2,a2,0x3
  20644c:	97b2                	add	a5,a5,a2
  20644e:	078a                	slli	a5,a5,0x2
  206450:	97b6                	add	a5,a5,a3
  206452:	439c                	lw	a5,0(a5)
  206454:	0107d79b          	srliw	a5,a5,0x10
  206458:	8bbd                	andi	a5,a5,15
  20645a:	0ff7f793          	andi	a5,a5,255
  20645e:	2781                	sext.w	a5,a5
  206460:	fec46683          	lwu	a3,-20(s0)
  206464:	068e                	slli	a3,a3,0x3
  206466:	97b6                	add	a5,a5,a3
  206468:	078a                	slli	a5,a5,0x2
  20646a:	97ba                	add	a5,a5,a4
  20646c:	4394                	lw	a3,0(a5)
  20646e:	673d                	lui	a4,0xf
  206470:	8f55                	or	a4,a4,a3
  206472:	c398                	sw	a4,0(a5)
  206474:	002107b7          	lui	a5,0x210
  206478:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20647c:	002107b7          	lui	a5,0x210
  206480:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206484:	fe846783          	lwu	a5,-24(s0)
  206488:	fec46603          	lwu	a2,-20(s0)
  20648c:	060e                	slli	a2,a2,0x3
  20648e:	97b2                	add	a5,a5,a2
  206490:	078a                	slli	a5,a5,0x2
  206492:	97b6                	add	a5,a5,a3
  206494:	439c                	lw	a5,0(a5)
  206496:	0107d79b          	srliw	a5,a5,0x10
  20649a:	8bbd                	andi	a5,a5,15
  20649c:	0ff7f693          	andi	a3,a5,255
  2064a0:	fec46783          	lwu	a5,-20(s0)
  2064a4:	078e                	slli	a5,a5,0x3
  2064a6:	97ba                	add	a5,a5,a4
  2064a8:	8736                	mv	a4,a3
  2064aa:	00f77613          	andi	a2,a4,15
  2064ae:	4398                	lw	a4,0(a5)
  2064b0:	9b41                	andi	a4,a4,-16
  2064b2:	86ba                	mv	a3,a4
  2064b4:	8732                	mv	a4,a2
  2064b6:	8f55                	or	a4,a4,a3
  2064b8:	c398                	sw	a4,0(a5)
  2064ba:	a815                	j	2064ee <SelectivGetFromNandIdleList+0x34c>
  2064bc:	002107b7          	lui	a5,0x210
  2064c0:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2064c4:	fec46783          	lwu	a5,-20(s0)
  2064c8:	078e                	slli	a5,a5,0x3
  2064ca:	97ba                	add	a5,a5,a4
  2064cc:	4398                	lw	a4,0(a5)
  2064ce:	00f76713          	ori	a4,a4,15
  2064d2:	c398                	sw	a4,0(a5)
  2064d4:	002107b7          	lui	a5,0x210
  2064d8:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2064dc:	fec46783          	lwu	a5,-20(s0)
  2064e0:	078e                	slli	a5,a5,0x3
  2064e2:	97ba                	add	a5,a5,a4
  2064e4:	4398                	lw	a4,0(a5)
  2064e6:	0f076713          	ori	a4,a4,240
  2064ea:	c398                	sw	a4,0(a5)
  2064ec:	0001                	nop
  2064ee:	0001                	nop
  2064f0:	6462                	ld	s0,24(sp)
  2064f2:	6105                	addi	sp,sp,32
  2064f4:	8082                	ret

00000000002064f6 <PutToNandStatusReportList>:
  2064f6:	1101                	addi	sp,sp,-32
  2064f8:	ec22                	sd	s0,24(sp)
  2064fa:	1000                	addi	s0,sp,32
  2064fc:	87aa                	mv	a5,a0
  2064fe:	872e                	mv	a4,a1
  206500:	fef42623          	sw	a5,-20(s0)
  206504:	87ba                	mv	a5,a4
  206506:	fef42423          	sw	a5,-24(s0)
  20650a:	002107b7          	lui	a5,0x210
  20650e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206512:	fec46783          	lwu	a5,-20(s0)
  206516:	078e                	slli	a5,a5,0x3
  206518:	97ba                	add	a5,a5,a4
  20651a:	439c                	lw	a5,0(a5)
  20651c:	00c7d79b          	srliw	a5,a5,0xc
  206520:	8bbd                	andi	a5,a5,15
  206522:	0ff7f793          	andi	a5,a5,255
  206526:	873e                	mv	a4,a5
  206528:	47bd                	li	a5,15
  20652a:	0ef70863          	beq	a4,a5,20661a <PutToNandStatusReportList+0x124>
  20652e:	002107b7          	lui	a5,0x210
  206532:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206536:	002107b7          	lui	a5,0x210
  20653a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20653e:	fec46783          	lwu	a5,-20(s0)
  206542:	078e                	slli	a5,a5,0x3
  206544:	97b6                	add	a5,a5,a3
  206546:	439c                	lw	a5,0(a5)
  206548:	00c7d79b          	srliw	a5,a5,0xc
  20654c:	8bbd                	andi	a5,a5,15
  20654e:	0ff7f613          	andi	a2,a5,255
  206552:	fe846783          	lwu	a5,-24(s0)
  206556:	fec46683          	lwu	a3,-20(s0)
  20655a:	068e                	slli	a3,a3,0x3
  20655c:	97b6                	add	a5,a5,a3
  20655e:	078a                	slli	a5,a5,0x2
  206560:	97ba                	add	a5,a5,a4
  206562:	8732                	mv	a4,a2
  206564:	8b3d                	andi	a4,a4,15
  206566:	00c7171b          	slliw	a4,a4,0xc
  20656a:	4390                	lw	a2,0(a5)
  20656c:	76c5                	lui	a3,0xffff1
  20656e:	16fd                	addi	a3,a3,-1
  206570:	8ef1                	and	a3,a3,a2
  206572:	8f55                	or	a4,a4,a3
  206574:	c398                	sw	a4,0(a5)
  206576:	002107b7          	lui	a5,0x210
  20657a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20657e:	fe846783          	lwu	a5,-24(s0)
  206582:	fec46683          	lwu	a3,-20(s0)
  206586:	068e                	slli	a3,a3,0x3
  206588:	97b6                	add	a5,a5,a3
  20658a:	078a                	slli	a5,a5,0x2
  20658c:	97ba                	add	a5,a5,a4
  20658e:	4394                	lw	a3,0(a5)
  206590:	000f0737          	lui	a4,0xf0
  206594:	8f55                	or	a4,a4,a3
  206596:	c398                	sw	a4,0(a5)
  206598:	002107b7          	lui	a5,0x210
  20659c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2065a0:	002107b7          	lui	a5,0x210
  2065a4:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  2065a8:	fec46783          	lwu	a5,-20(s0)
  2065ac:	078e                	slli	a5,a5,0x3
  2065ae:	97b6                	add	a5,a5,a3
  2065b0:	439c                	lw	a5,0(a5)
  2065b2:	00c7d79b          	srliw	a5,a5,0xc
  2065b6:	8bbd                	andi	a5,a5,15
  2065b8:	0ff7f793          	andi	a5,a5,255
  2065bc:	2781                	sext.w	a5,a5
  2065be:	fe842683          	lw	a3,-24(s0)
  2065c2:	8abd                	andi	a3,a3,15
  2065c4:	0ff6f613          	andi	a2,a3,255
  2065c8:	fec46683          	lwu	a3,-20(s0)
  2065cc:	068e                	slli	a3,a3,0x3
  2065ce:	97b6                	add	a5,a5,a3
  2065d0:	078a                	slli	a5,a5,0x2
  2065d2:	97ba                	add	a5,a5,a4
  2065d4:	8732                	mv	a4,a2
  2065d6:	8b3d                	andi	a4,a4,15
  2065d8:	0107171b          	slliw	a4,a4,0x10
  2065dc:	4390                	lw	a2,0(a5)
  2065de:	fff106b7          	lui	a3,0xfff10
  2065e2:	16fd                	addi	a3,a3,-1
  2065e4:	8ef1                	and	a3,a3,a2
  2065e6:	8f55                	or	a4,a4,a3
  2065e8:	c398                	sw	a4,0(a5)
  2065ea:	002107b7          	lui	a5,0x210
  2065ee:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2065f2:	fe842783          	lw	a5,-24(s0)
  2065f6:	8bbd                	andi	a5,a5,15
  2065f8:	0ff7f693          	andi	a3,a5,255
  2065fc:	fec46783          	lwu	a5,-20(s0)
  206600:	078e                	slli	a5,a5,0x3
  206602:	97ba                	add	a5,a5,a4
  206604:	8736                	mv	a4,a3
  206606:	8b3d                	andi	a4,a4,15
  206608:	00c7171b          	slliw	a4,a4,0xc
  20660c:	4390                	lw	a2,0(a5)
  20660e:	76c5                	lui	a3,0xffff1
  206610:	16fd                	addi	a3,a3,-1
  206612:	8ef1                	and	a3,a3,a2
  206614:	8f55                	or	a4,a4,a3
  206616:	c398                	sw	a4,0(a5)
  206618:	a04d                	j	2066ba <PutToNandStatusReportList+0x1c4>
  20661a:	002107b7          	lui	a5,0x210
  20661e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206622:	fe846783          	lwu	a5,-24(s0)
  206626:	fec46683          	lwu	a3,-20(s0)
  20662a:	068e                	slli	a3,a3,0x3
  20662c:	97b6                	add	a5,a5,a3
  20662e:	078a                	slli	a5,a5,0x2
  206630:	97ba                	add	a5,a5,a4
  206632:	4394                	lw	a3,0(a5)
  206634:	673d                	lui	a4,0xf
  206636:	8f55                	or	a4,a4,a3
  206638:	c398                	sw	a4,0(a5)
  20663a:	002107b7          	lui	a5,0x210
  20663e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206642:	fe846783          	lwu	a5,-24(s0)
  206646:	fec46683          	lwu	a3,-20(s0)
  20664a:	068e                	slli	a3,a3,0x3
  20664c:	97b6                	add	a5,a5,a3
  20664e:	078a                	slli	a5,a5,0x2
  206650:	97ba                	add	a5,a5,a4
  206652:	4394                	lw	a3,0(a5)
  206654:	000f0737          	lui	a4,0xf0
  206658:	8f55                	or	a4,a4,a3
  20665a:	c398                	sw	a4,0(a5)
  20665c:	002107b7          	lui	a5,0x210
  206660:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206664:	fe842783          	lw	a5,-24(s0)
  206668:	8bbd                	andi	a5,a5,15
  20666a:	0ff7f693          	andi	a3,a5,255
  20666e:	fec46783          	lwu	a5,-20(s0)
  206672:	078e                	slli	a5,a5,0x3
  206674:	97ba                	add	a5,a5,a4
  206676:	8736                	mv	a4,a3
  206678:	8b3d                	andi	a4,a4,15
  20667a:	0087171b          	slliw	a4,a4,0x8
  20667e:	4390                	lw	a2,0(a5)
  206680:	76fd                	lui	a3,0xfffff
  206682:	0ff68693          	addi	a3,a3,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  206686:	8ef1                	and	a3,a3,a2
  206688:	8f55                	or	a4,a4,a3
  20668a:	c398                	sw	a4,0(a5)
  20668c:	002107b7          	lui	a5,0x210
  206690:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206694:	fe842783          	lw	a5,-24(s0)
  206698:	8bbd                	andi	a5,a5,15
  20669a:	0ff7f693          	andi	a3,a5,255
  20669e:	fec46783          	lwu	a5,-20(s0)
  2066a2:	078e                	slli	a5,a5,0x3
  2066a4:	97ba                	add	a5,a5,a4
  2066a6:	8736                	mv	a4,a3
  2066a8:	8b3d                	andi	a4,a4,15
  2066aa:	00c7171b          	slliw	a4,a4,0xc
  2066ae:	4390                	lw	a2,0(a5)
  2066b0:	76c5                	lui	a3,0xffff1
  2066b2:	16fd                	addi	a3,a3,-1
  2066b4:	8ef1                	and	a3,a3,a2
  2066b6:	8f55                	or	a4,a4,a3
  2066b8:	c398                	sw	a4,0(a5)
  2066ba:	0001                	nop
  2066bc:	6462                	ld	s0,24(sp)
  2066be:	6105                	addi	sp,sp,32
  2066c0:	8082                	ret

00000000002066c2 <SelectivGetFromNandStatusReportList>:
  2066c2:	1101                	addi	sp,sp,-32
  2066c4:	ec22                	sd	s0,24(sp)
  2066c6:	1000                	addi	s0,sp,32
  2066c8:	87aa                	mv	a5,a0
  2066ca:	872e                	mv	a4,a1
  2066cc:	fef42623          	sw	a5,-20(s0)
  2066d0:	87ba                	mv	a5,a4
  2066d2:	fef42423          	sw	a5,-24(s0)
  2066d6:	002107b7          	lui	a5,0x210
  2066da:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2066de:	fe846783          	lwu	a5,-24(s0)
  2066e2:	fec46683          	lwu	a3,-20(s0)
  2066e6:	068e                	slli	a3,a3,0x3
  2066e8:	97b6                	add	a5,a5,a3
  2066ea:	078a                	slli	a5,a5,0x2
  2066ec:	97ba                	add	a5,a5,a4
  2066ee:	439c                	lw	a5,0(a5)
  2066f0:	0107d79b          	srliw	a5,a5,0x10
  2066f4:	8bbd                	andi	a5,a5,15
  2066f6:	0ff7f793          	andi	a5,a5,255
  2066fa:	873e                	mv	a4,a5
  2066fc:	47bd                	li	a5,15
  2066fe:	10f70c63          	beq	a4,a5,206816 <SelectivGetFromNandStatusReportList+0x154>
  206702:	002107b7          	lui	a5,0x210
  206706:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20670a:	fe846783          	lwu	a5,-24(s0)
  20670e:	fec46683          	lwu	a3,-20(s0)
  206712:	068e                	slli	a3,a3,0x3
  206714:	97b6                	add	a5,a5,a3
  206716:	078a                	slli	a5,a5,0x2
  206718:	97ba                	add	a5,a5,a4
  20671a:	439c                	lw	a5,0(a5)
  20671c:	00c7d79b          	srliw	a5,a5,0xc
  206720:	8bbd                	andi	a5,a5,15
  206722:	0ff7f793          	andi	a5,a5,255
  206726:	873e                	mv	a4,a5
  206728:	47bd                	li	a5,15
  20672a:	0ef70663          	beq	a4,a5,206816 <SelectivGetFromNandStatusReportList+0x154>
  20672e:	002107b7          	lui	a5,0x210
  206732:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  206736:	002107b7          	lui	a5,0x210
  20673a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20673e:	002107b7          	lui	a5,0x210
  206742:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206746:	fe846783          	lwu	a5,-24(s0)
  20674a:	fec46583          	lwu	a1,-20(s0)
  20674e:	058e                	slli	a1,a1,0x3
  206750:	97ae                	add	a5,a5,a1
  206752:	078a                	slli	a5,a5,0x2
  206754:	97b6                	add	a5,a5,a3
  206756:	439c                	lw	a5,0(a5)
  206758:	00c7d79b          	srliw	a5,a5,0xc
  20675c:	8bbd                	andi	a5,a5,15
  20675e:	0ff7f793          	andi	a5,a5,255
  206762:	2781                	sext.w	a5,a5
  206764:	fe846683          	lwu	a3,-24(s0)
  206768:	fec46583          	lwu	a1,-20(s0)
  20676c:	058e                	slli	a1,a1,0x3
  20676e:	96ae                	add	a3,a3,a1
  206770:	068a                	slli	a3,a3,0x2
  206772:	96b2                	add	a3,a3,a2
  206774:	4294                	lw	a3,0(a3)
  206776:	0106d69b          	srliw	a3,a3,0x10
  20677a:	8abd                	andi	a3,a3,15
  20677c:	0ff6f613          	andi	a2,a3,255
  206780:	fec46683          	lwu	a3,-20(s0)
  206784:	068e                	slli	a3,a3,0x3
  206786:	97b6                	add	a5,a5,a3
  206788:	078a                	slli	a5,a5,0x2
  20678a:	97ba                	add	a5,a5,a4
  20678c:	8732                	mv	a4,a2
  20678e:	8b3d                	andi	a4,a4,15
  206790:	0107171b          	slliw	a4,a4,0x10
  206794:	4390                	lw	a2,0(a5)
  206796:	fff106b7          	lui	a3,0xfff10
  20679a:	16fd                	addi	a3,a3,-1
  20679c:	8ef1                	and	a3,a3,a2
  20679e:	8f55                	or	a4,a4,a3
  2067a0:	c398                	sw	a4,0(a5)
  2067a2:	002107b7          	lui	a5,0x210
  2067a6:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  2067aa:	002107b7          	lui	a5,0x210
  2067ae:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2067b2:	002107b7          	lui	a5,0x210
  2067b6:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2067ba:	fe846783          	lwu	a5,-24(s0)
  2067be:	fec46583          	lwu	a1,-20(s0)
  2067c2:	058e                	slli	a1,a1,0x3
  2067c4:	97ae                	add	a5,a5,a1
  2067c6:	078a                	slli	a5,a5,0x2
  2067c8:	97b6                	add	a5,a5,a3
  2067ca:	439c                	lw	a5,0(a5)
  2067cc:	0107d79b          	srliw	a5,a5,0x10
  2067d0:	8bbd                	andi	a5,a5,15
  2067d2:	0ff7f793          	andi	a5,a5,255
  2067d6:	2781                	sext.w	a5,a5
  2067d8:	fe846683          	lwu	a3,-24(s0)
  2067dc:	fec46583          	lwu	a1,-20(s0)
  2067e0:	058e                	slli	a1,a1,0x3
  2067e2:	96ae                	add	a3,a3,a1
  2067e4:	068a                	slli	a3,a3,0x2
  2067e6:	96b2                	add	a3,a3,a2
  2067e8:	4294                	lw	a3,0(a3)
  2067ea:	00c6d69b          	srliw	a3,a3,0xc
  2067ee:	8abd                	andi	a3,a3,15
  2067f0:	0ff6f613          	andi	a2,a3,255
  2067f4:	fec46683          	lwu	a3,-20(s0)
  2067f8:	068e                	slli	a3,a3,0x3
  2067fa:	97b6                	add	a5,a5,a3
  2067fc:	078a                	slli	a5,a5,0x2
  2067fe:	97ba                	add	a5,a5,a4
  206800:	8732                	mv	a4,a2
  206802:	8b3d                	andi	a4,a4,15
  206804:	00c7171b          	slliw	a4,a4,0xc
  206808:	4390                	lw	a2,0(a5)
  20680a:	76c5                	lui	a3,0xffff1
  20680c:	16fd                	addi	a3,a3,-1
  20680e:	8ef1                	and	a3,a3,a2
  206810:	8f55                	or	a4,a4,a3
  206812:	c398                	sw	a4,0(a5)
  206814:	a411                	j	206a18 <SelectivGetFromNandStatusReportList+0x356>
  206816:	002107b7          	lui	a5,0x210
  20681a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20681e:	fe846783          	lwu	a5,-24(s0)
  206822:	fec46683          	lwu	a3,-20(s0)
  206826:	068e                	slli	a3,a3,0x3
  206828:	97b6                	add	a5,a5,a3
  20682a:	078a                	slli	a5,a5,0x2
  20682c:	97ba                	add	a5,a5,a4
  20682e:	439c                	lw	a5,0(a5)
  206830:	0107d79b          	srliw	a5,a5,0x10
  206834:	8bbd                	andi	a5,a5,15
  206836:	0ff7f793          	andi	a5,a5,255
  20683a:	873e                	mv	a4,a5
  20683c:	47bd                	li	a5,15
  20683e:	0af71f63          	bne	a4,a5,2068fc <SelectivGetFromNandStatusReportList+0x23a>
  206842:	002107b7          	lui	a5,0x210
  206846:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20684a:	fe846783          	lwu	a5,-24(s0)
  20684e:	fec46683          	lwu	a3,-20(s0)
  206852:	068e                	slli	a3,a3,0x3
  206854:	97b6                	add	a5,a5,a3
  206856:	078a                	slli	a5,a5,0x2
  206858:	97ba                	add	a5,a5,a4
  20685a:	439c                	lw	a5,0(a5)
  20685c:	00c7d79b          	srliw	a5,a5,0xc
  206860:	8bbd                	andi	a5,a5,15
  206862:	0ff7f793          	andi	a5,a5,255
  206866:	873e                	mv	a4,a5
  206868:	47bd                	li	a5,15
  20686a:	08f70963          	beq	a4,a5,2068fc <SelectivGetFromNandStatusReportList+0x23a>
  20686e:	002107b7          	lui	a5,0x210
  206872:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206876:	002107b7          	lui	a5,0x210
  20687a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20687e:	fe846783          	lwu	a5,-24(s0)
  206882:	fec46603          	lwu	a2,-20(s0)
  206886:	060e                	slli	a2,a2,0x3
  206888:	97b2                	add	a5,a5,a2
  20688a:	078a                	slli	a5,a5,0x2
  20688c:	97b6                	add	a5,a5,a3
  20688e:	439c                	lw	a5,0(a5)
  206890:	00c7d79b          	srliw	a5,a5,0xc
  206894:	8bbd                	andi	a5,a5,15
  206896:	0ff7f793          	andi	a5,a5,255
  20689a:	2781                	sext.w	a5,a5
  20689c:	fec46683          	lwu	a3,-20(s0)
  2068a0:	068e                	slli	a3,a3,0x3
  2068a2:	97b6                	add	a5,a5,a3
  2068a4:	078a                	slli	a5,a5,0x2
  2068a6:	97ba                	add	a5,a5,a4
  2068a8:	4394                	lw	a3,0(a5)
  2068aa:	000f0737          	lui	a4,0xf0
  2068ae:	8f55                	or	a4,a4,a3
  2068b0:	c398                	sw	a4,0(a5)
  2068b2:	002107b7          	lui	a5,0x210
  2068b6:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2068ba:	002107b7          	lui	a5,0x210
  2068be:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2068c2:	fe846783          	lwu	a5,-24(s0)
  2068c6:	fec46603          	lwu	a2,-20(s0)
  2068ca:	060e                	slli	a2,a2,0x3
  2068cc:	97b2                	add	a5,a5,a2
  2068ce:	078a                	slli	a5,a5,0x2
  2068d0:	97b6                	add	a5,a5,a3
  2068d2:	439c                	lw	a5,0(a5)
  2068d4:	00c7d79b          	srliw	a5,a5,0xc
  2068d8:	8bbd                	andi	a5,a5,15
  2068da:	0ff7f693          	andi	a3,a5,255
  2068de:	fec46783          	lwu	a5,-20(s0)
  2068e2:	078e                	slli	a5,a5,0x3
  2068e4:	97ba                	add	a5,a5,a4
  2068e6:	8736                	mv	a4,a3
  2068e8:	8b3d                	andi	a4,a4,15
  2068ea:	00c7171b          	slliw	a4,a4,0xc
  2068ee:	4390                	lw	a2,0(a5)
  2068f0:	76c5                	lui	a3,0xffff1
  2068f2:	16fd                	addi	a3,a3,-1
  2068f4:	8ef1                	and	a3,a3,a2
  2068f6:	8f55                	or	a4,a4,a3
  2068f8:	c398                	sw	a4,0(a5)
  2068fa:	aa39                	j	206a18 <SelectivGetFromNandStatusReportList+0x356>
  2068fc:	002107b7          	lui	a5,0x210
  206900:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206904:	fe846783          	lwu	a5,-24(s0)
  206908:	fec46683          	lwu	a3,-20(s0)
  20690c:	068e                	slli	a3,a3,0x3
  20690e:	97b6                	add	a5,a5,a3
  206910:	078a                	slli	a5,a5,0x2
  206912:	97ba                	add	a5,a5,a4
  206914:	439c                	lw	a5,0(a5)
  206916:	0107d79b          	srliw	a5,a5,0x10
  20691a:	8bbd                	andi	a5,a5,15
  20691c:	0ff7f793          	andi	a5,a5,255
  206920:	873e                	mv	a4,a5
  206922:	47bd                	li	a5,15
  206924:	0af70f63          	beq	a4,a5,2069e2 <SelectivGetFromNandStatusReportList+0x320>
  206928:	002107b7          	lui	a5,0x210
  20692c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206930:	fe846783          	lwu	a5,-24(s0)
  206934:	fec46683          	lwu	a3,-20(s0)
  206938:	068e                	slli	a3,a3,0x3
  20693a:	97b6                	add	a5,a5,a3
  20693c:	078a                	slli	a5,a5,0x2
  20693e:	97ba                	add	a5,a5,a4
  206940:	439c                	lw	a5,0(a5)
  206942:	00c7d79b          	srliw	a5,a5,0xc
  206946:	8bbd                	andi	a5,a5,15
  206948:	0ff7f793          	andi	a5,a5,255
  20694c:	873e                	mv	a4,a5
  20694e:	47bd                	li	a5,15
  206950:	08f71963          	bne	a4,a5,2069e2 <SelectivGetFromNandStatusReportList+0x320>
  206954:	002107b7          	lui	a5,0x210
  206958:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20695c:	002107b7          	lui	a5,0x210
  206960:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206964:	fe846783          	lwu	a5,-24(s0)
  206968:	fec46603          	lwu	a2,-20(s0)
  20696c:	060e                	slli	a2,a2,0x3
  20696e:	97b2                	add	a5,a5,a2
  206970:	078a                	slli	a5,a5,0x2
  206972:	97b6                	add	a5,a5,a3
  206974:	439c                	lw	a5,0(a5)
  206976:	0107d79b          	srliw	a5,a5,0x10
  20697a:	8bbd                	andi	a5,a5,15
  20697c:	0ff7f793          	andi	a5,a5,255
  206980:	2781                	sext.w	a5,a5
  206982:	fec46683          	lwu	a3,-20(s0)
  206986:	068e                	slli	a3,a3,0x3
  206988:	97b6                	add	a5,a5,a3
  20698a:	078a                	slli	a5,a5,0x2
  20698c:	97ba                	add	a5,a5,a4
  20698e:	4394                	lw	a3,0(a5)
  206990:	673d                	lui	a4,0xf
  206992:	8f55                	or	a4,a4,a3
  206994:	c398                	sw	a4,0(a5)
  206996:	002107b7          	lui	a5,0x210
  20699a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20699e:	002107b7          	lui	a5,0x210
  2069a2:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2069a6:	fe846783          	lwu	a5,-24(s0)
  2069aa:	fec46603          	lwu	a2,-20(s0)
  2069ae:	060e                	slli	a2,a2,0x3
  2069b0:	97b2                	add	a5,a5,a2
  2069b2:	078a                	slli	a5,a5,0x2
  2069b4:	97b6                	add	a5,a5,a3
  2069b6:	439c                	lw	a5,0(a5)
  2069b8:	0107d79b          	srliw	a5,a5,0x10
  2069bc:	8bbd                	andi	a5,a5,15
  2069be:	0ff7f693          	andi	a3,a5,255
  2069c2:	fec46783          	lwu	a5,-20(s0)
  2069c6:	078e                	slli	a5,a5,0x3
  2069c8:	97ba                	add	a5,a5,a4
  2069ca:	8736                	mv	a4,a3
  2069cc:	8b3d                	andi	a4,a4,15
  2069ce:	0087171b          	slliw	a4,a4,0x8
  2069d2:	4390                	lw	a2,0(a5)
  2069d4:	76fd                	lui	a3,0xfffff
  2069d6:	0ff68693          	addi	a3,a3,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  2069da:	8ef1                	and	a3,a3,a2
  2069dc:	8f55                	or	a4,a4,a3
  2069de:	c398                	sw	a4,0(a5)
  2069e0:	a825                	j	206a18 <SelectivGetFromNandStatusReportList+0x356>
  2069e2:	002107b7          	lui	a5,0x210
  2069e6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2069ea:	fec46783          	lwu	a5,-20(s0)
  2069ee:	078e                	slli	a5,a5,0x3
  2069f0:	97ba                	add	a5,a5,a4
  2069f2:	4394                	lw	a3,0(a5)
  2069f4:	6705                	lui	a4,0x1
  2069f6:	f0070713          	addi	a4,a4,-256 # f00 <start-0x1ff100>
  2069fa:	8f55                	or	a4,a4,a3
  2069fc:	c398                	sw	a4,0(a5)
  2069fe:	002107b7          	lui	a5,0x210
  206a02:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206a06:	fec46783          	lwu	a5,-20(s0)
  206a0a:	078e                	slli	a5,a5,0x3
  206a0c:	97ba                	add	a5,a5,a4
  206a0e:	4394                	lw	a3,0(a5)
  206a10:	673d                	lui	a4,0xf
  206a12:	8f55                	or	a4,a4,a3
  206a14:	c398                	sw	a4,0(a5)
  206a16:	0001                	nop
  206a18:	0001                	nop
  206a1a:	6462                	ld	s0,24(sp)
  206a1c:	6105                	addi	sp,sp,32
  206a1e:	8082                	ret

0000000000206a20 <PutToNandReadTriggerList>:
  206a20:	1101                	addi	sp,sp,-32
  206a22:	ec22                	sd	s0,24(sp)
  206a24:	1000                	addi	s0,sp,32
  206a26:	87aa                	mv	a5,a0
  206a28:	872e                	mv	a4,a1
  206a2a:	fef42623          	sw	a5,-20(s0)
  206a2e:	87ba                	mv	a5,a4
  206a30:	fef42423          	sw	a5,-24(s0)
  206a34:	002107b7          	lui	a5,0x210
  206a38:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206a3c:	fec46783          	lwu	a5,-20(s0)
  206a40:	078e                	slli	a5,a5,0x3
  206a42:	97ba                	add	a5,a5,a4
  206a44:	439c                	lw	a5,0(a5)
  206a46:	0147d79b          	srliw	a5,a5,0x14
  206a4a:	8bbd                	andi	a5,a5,15
  206a4c:	0ff7f793          	andi	a5,a5,255
  206a50:	873e                	mv	a4,a5
  206a52:	47bd                	li	a5,15
  206a54:	0ef70963          	beq	a4,a5,206b46 <PutToNandReadTriggerList+0x126>
  206a58:	002107b7          	lui	a5,0x210
  206a5c:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206a60:	002107b7          	lui	a5,0x210
  206a64:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206a68:	fec46783          	lwu	a5,-20(s0)
  206a6c:	078e                	slli	a5,a5,0x3
  206a6e:	97b6                	add	a5,a5,a3
  206a70:	439c                	lw	a5,0(a5)
  206a72:	0147d79b          	srliw	a5,a5,0x14
  206a76:	8bbd                	andi	a5,a5,15
  206a78:	0ff7f613          	andi	a2,a5,255
  206a7c:	fe846783          	lwu	a5,-24(s0)
  206a80:	fec46683          	lwu	a3,-20(s0)
  206a84:	068e                	slli	a3,a3,0x3
  206a86:	97b6                	add	a5,a5,a3
  206a88:	078a                	slli	a5,a5,0x2
  206a8a:	97ba                	add	a5,a5,a4
  206a8c:	8732                	mv	a4,a2
  206a8e:	8b3d                	andi	a4,a4,15
  206a90:	00c7171b          	slliw	a4,a4,0xc
  206a94:	4390                	lw	a2,0(a5)
  206a96:	76c5                	lui	a3,0xffff1
  206a98:	16fd                	addi	a3,a3,-1
  206a9a:	8ef1                	and	a3,a3,a2
  206a9c:	8f55                	or	a4,a4,a3
  206a9e:	c398                	sw	a4,0(a5)
  206aa0:	002107b7          	lui	a5,0x210
  206aa4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206aa8:	fe846783          	lwu	a5,-24(s0)
  206aac:	fec46683          	lwu	a3,-20(s0)
  206ab0:	068e                	slli	a3,a3,0x3
  206ab2:	97b6                	add	a5,a5,a3
  206ab4:	078a                	slli	a5,a5,0x2
  206ab6:	97ba                	add	a5,a5,a4
  206ab8:	4394                	lw	a3,0(a5)
  206aba:	000f0737          	lui	a4,0xf0
  206abe:	8f55                	or	a4,a4,a3
  206ac0:	c398                	sw	a4,0(a5)
  206ac2:	002107b7          	lui	a5,0x210
  206ac6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206aca:	002107b7          	lui	a5,0x210
  206ace:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206ad2:	fec46783          	lwu	a5,-20(s0)
  206ad6:	078e                	slli	a5,a5,0x3
  206ad8:	97b6                	add	a5,a5,a3
  206ada:	439c                	lw	a5,0(a5)
  206adc:	0147d79b          	srliw	a5,a5,0x14
  206ae0:	8bbd                	andi	a5,a5,15
  206ae2:	0ff7f793          	andi	a5,a5,255
  206ae6:	2781                	sext.w	a5,a5
  206ae8:	fe842683          	lw	a3,-24(s0)
  206aec:	8abd                	andi	a3,a3,15
  206aee:	0ff6f613          	andi	a2,a3,255
  206af2:	fec46683          	lwu	a3,-20(s0)
  206af6:	068e                	slli	a3,a3,0x3
  206af8:	97b6                	add	a5,a5,a3
  206afa:	078a                	slli	a5,a5,0x2
  206afc:	97ba                	add	a5,a5,a4
  206afe:	8732                	mv	a4,a2
  206b00:	8b3d                	andi	a4,a4,15
  206b02:	0107171b          	slliw	a4,a4,0x10
  206b06:	4390                	lw	a2,0(a5)
  206b08:	fff106b7          	lui	a3,0xfff10
  206b0c:	16fd                	addi	a3,a3,-1
  206b0e:	8ef1                	and	a3,a3,a2
  206b10:	8f55                	or	a4,a4,a3
  206b12:	c398                	sw	a4,0(a5)
  206b14:	002107b7          	lui	a5,0x210
  206b18:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206b1c:	fe842783          	lw	a5,-24(s0)
  206b20:	8bbd                	andi	a5,a5,15
  206b22:	0ff7f693          	andi	a3,a5,255
  206b26:	fec46783          	lwu	a5,-20(s0)
  206b2a:	078e                	slli	a5,a5,0x3
  206b2c:	97ba                	add	a5,a5,a4
  206b2e:	8736                	mv	a4,a3
  206b30:	8b3d                	andi	a4,a4,15
  206b32:	0147171b          	slliw	a4,a4,0x14
  206b36:	4390                	lw	a2,0(a5)
  206b38:	ff1006b7          	lui	a3,0xff100
  206b3c:	16fd                	addi	a3,a3,-1
  206b3e:	8ef1                	and	a3,a3,a2
  206b40:	8f55                	or	a4,a4,a3
  206b42:	c398                	sw	a4,0(a5)
  206b44:	a055                	j	206be8 <PutToNandReadTriggerList+0x1c8>
  206b46:	002107b7          	lui	a5,0x210
  206b4a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206b4e:	fe846783          	lwu	a5,-24(s0)
  206b52:	fec46683          	lwu	a3,-20(s0)
  206b56:	068e                	slli	a3,a3,0x3
  206b58:	97b6                	add	a5,a5,a3
  206b5a:	078a                	slli	a5,a5,0x2
  206b5c:	97ba                	add	a5,a5,a4
  206b5e:	4394                	lw	a3,0(a5)
  206b60:	673d                	lui	a4,0xf
  206b62:	8f55                	or	a4,a4,a3
  206b64:	c398                	sw	a4,0(a5)
  206b66:	002107b7          	lui	a5,0x210
  206b6a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206b6e:	fe846783          	lwu	a5,-24(s0)
  206b72:	fec46683          	lwu	a3,-20(s0)
  206b76:	068e                	slli	a3,a3,0x3
  206b78:	97b6                	add	a5,a5,a3
  206b7a:	078a                	slli	a5,a5,0x2
  206b7c:	97ba                	add	a5,a5,a4
  206b7e:	4394                	lw	a3,0(a5)
  206b80:	000f0737          	lui	a4,0xf0
  206b84:	8f55                	or	a4,a4,a3
  206b86:	c398                	sw	a4,0(a5)
  206b88:	002107b7          	lui	a5,0x210
  206b8c:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206b90:	fe842783          	lw	a5,-24(s0)
  206b94:	8bbd                	andi	a5,a5,15
  206b96:	0ff7f693          	andi	a3,a5,255
  206b9a:	fec46783          	lwu	a5,-20(s0)
  206b9e:	078e                	slli	a5,a5,0x3
  206ba0:	97ba                	add	a5,a5,a4
  206ba2:	8736                	mv	a4,a3
  206ba4:	8b3d                	andi	a4,a4,15
  206ba6:	0107171b          	slliw	a4,a4,0x10
  206baa:	4390                	lw	a2,0(a5)
  206bac:	fff106b7          	lui	a3,0xfff10
  206bb0:	16fd                	addi	a3,a3,-1
  206bb2:	8ef1                	and	a3,a3,a2
  206bb4:	8f55                	or	a4,a4,a3
  206bb6:	c398                	sw	a4,0(a5)
  206bb8:	002107b7          	lui	a5,0x210
  206bbc:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206bc0:	fe842783          	lw	a5,-24(s0)
  206bc4:	8bbd                	andi	a5,a5,15
  206bc6:	0ff7f693          	andi	a3,a5,255
  206bca:	fec46783          	lwu	a5,-20(s0)
  206bce:	078e                	slli	a5,a5,0x3
  206bd0:	97ba                	add	a5,a5,a4
  206bd2:	8736                	mv	a4,a3
  206bd4:	8b3d                	andi	a4,a4,15
  206bd6:	0147171b          	slliw	a4,a4,0x14
  206bda:	4390                	lw	a2,0(a5)
  206bdc:	ff1006b7          	lui	a3,0xff100
  206be0:	16fd                	addi	a3,a3,-1
  206be2:	8ef1                	and	a3,a3,a2
  206be4:	8f55                	or	a4,a4,a3
  206be6:	c398                	sw	a4,0(a5)
  206be8:	0001                	nop
  206bea:	6462                	ld	s0,24(sp)
  206bec:	6105                	addi	sp,sp,32
  206bee:	8082                	ret

0000000000206bf0 <SelectiveGetFromNandReadTriggerList>:
  206bf0:	1101                	addi	sp,sp,-32
  206bf2:	ec22                	sd	s0,24(sp)
  206bf4:	1000                	addi	s0,sp,32
  206bf6:	87aa                	mv	a5,a0
  206bf8:	872e                	mv	a4,a1
  206bfa:	fef42623          	sw	a5,-20(s0)
  206bfe:	87ba                	mv	a5,a4
  206c00:	fef42423          	sw	a5,-24(s0)
  206c04:	002107b7          	lui	a5,0x210
  206c08:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206c0c:	fe846783          	lwu	a5,-24(s0)
  206c10:	fec46683          	lwu	a3,-20(s0)
  206c14:	068e                	slli	a3,a3,0x3
  206c16:	97b6                	add	a5,a5,a3
  206c18:	078a                	slli	a5,a5,0x2
  206c1a:	97ba                	add	a5,a5,a4
  206c1c:	439c                	lw	a5,0(a5)
  206c1e:	0107d79b          	srliw	a5,a5,0x10
  206c22:	8bbd                	andi	a5,a5,15
  206c24:	0ff7f793          	andi	a5,a5,255
  206c28:	873e                	mv	a4,a5
  206c2a:	47bd                	li	a5,15
  206c2c:	10f70c63          	beq	a4,a5,206d44 <SelectiveGetFromNandReadTriggerList+0x154>
  206c30:	002107b7          	lui	a5,0x210
  206c34:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206c38:	fe846783          	lwu	a5,-24(s0)
  206c3c:	fec46683          	lwu	a3,-20(s0)
  206c40:	068e                	slli	a3,a3,0x3
  206c42:	97b6                	add	a5,a5,a3
  206c44:	078a                	slli	a5,a5,0x2
  206c46:	97ba                	add	a5,a5,a4
  206c48:	439c                	lw	a5,0(a5)
  206c4a:	00c7d79b          	srliw	a5,a5,0xc
  206c4e:	8bbd                	andi	a5,a5,15
  206c50:	0ff7f793          	andi	a5,a5,255
  206c54:	873e                	mv	a4,a5
  206c56:	47bd                	li	a5,15
  206c58:	0ef70663          	beq	a4,a5,206d44 <SelectiveGetFromNandReadTriggerList+0x154>
  206c5c:	002107b7          	lui	a5,0x210
  206c60:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  206c64:	002107b7          	lui	a5,0x210
  206c68:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206c6c:	002107b7          	lui	a5,0x210
  206c70:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206c74:	fe846783          	lwu	a5,-24(s0)
  206c78:	fec46583          	lwu	a1,-20(s0)
  206c7c:	058e                	slli	a1,a1,0x3
  206c7e:	97ae                	add	a5,a5,a1
  206c80:	078a                	slli	a5,a5,0x2
  206c82:	97b6                	add	a5,a5,a3
  206c84:	439c                	lw	a5,0(a5)
  206c86:	00c7d79b          	srliw	a5,a5,0xc
  206c8a:	8bbd                	andi	a5,a5,15
  206c8c:	0ff7f793          	andi	a5,a5,255
  206c90:	2781                	sext.w	a5,a5
  206c92:	fe846683          	lwu	a3,-24(s0)
  206c96:	fec46583          	lwu	a1,-20(s0)
  206c9a:	058e                	slli	a1,a1,0x3
  206c9c:	96ae                	add	a3,a3,a1
  206c9e:	068a                	slli	a3,a3,0x2
  206ca0:	96b2                	add	a3,a3,a2
  206ca2:	4294                	lw	a3,0(a3)
  206ca4:	0106d69b          	srliw	a3,a3,0x10
  206ca8:	8abd                	andi	a3,a3,15
  206caa:	0ff6f613          	andi	a2,a3,255
  206cae:	fec46683          	lwu	a3,-20(s0)
  206cb2:	068e                	slli	a3,a3,0x3
  206cb4:	97b6                	add	a5,a5,a3
  206cb6:	078a                	slli	a5,a5,0x2
  206cb8:	97ba                	add	a5,a5,a4
  206cba:	8732                	mv	a4,a2
  206cbc:	8b3d                	andi	a4,a4,15
  206cbe:	0107171b          	slliw	a4,a4,0x10
  206cc2:	4390                	lw	a2,0(a5)
  206cc4:	fff106b7          	lui	a3,0xfff10
  206cc8:	16fd                	addi	a3,a3,-1
  206cca:	8ef1                	and	a3,a3,a2
  206ccc:	8f55                	or	a4,a4,a3
  206cce:	c398                	sw	a4,0(a5)
  206cd0:	002107b7          	lui	a5,0x210
  206cd4:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  206cd8:	002107b7          	lui	a5,0x210
  206cdc:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206ce0:	002107b7          	lui	a5,0x210
  206ce4:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206ce8:	fe846783          	lwu	a5,-24(s0)
  206cec:	fec46583          	lwu	a1,-20(s0)
  206cf0:	058e                	slli	a1,a1,0x3
  206cf2:	97ae                	add	a5,a5,a1
  206cf4:	078a                	slli	a5,a5,0x2
  206cf6:	97b6                	add	a5,a5,a3
  206cf8:	439c                	lw	a5,0(a5)
  206cfa:	0107d79b          	srliw	a5,a5,0x10
  206cfe:	8bbd                	andi	a5,a5,15
  206d00:	0ff7f793          	andi	a5,a5,255
  206d04:	2781                	sext.w	a5,a5
  206d06:	fe846683          	lwu	a3,-24(s0)
  206d0a:	fec46583          	lwu	a1,-20(s0)
  206d0e:	058e                	slli	a1,a1,0x3
  206d10:	96ae                	add	a3,a3,a1
  206d12:	068a                	slli	a3,a3,0x2
  206d14:	96b2                	add	a3,a3,a2
  206d16:	4294                	lw	a3,0(a3)
  206d18:	00c6d69b          	srliw	a3,a3,0xc
  206d1c:	8abd                	andi	a3,a3,15
  206d1e:	0ff6f613          	andi	a2,a3,255
  206d22:	fec46683          	lwu	a3,-20(s0)
  206d26:	068e                	slli	a3,a3,0x3
  206d28:	97b6                	add	a5,a5,a3
  206d2a:	078a                	slli	a5,a5,0x2
  206d2c:	97ba                	add	a5,a5,a4
  206d2e:	8732                	mv	a4,a2
  206d30:	8b3d                	andi	a4,a4,15
  206d32:	00c7171b          	slliw	a4,a4,0xc
  206d36:	4390                	lw	a2,0(a5)
  206d38:	76c5                	lui	a3,0xffff1
  206d3a:	16fd                	addi	a3,a3,-1
  206d3c:	8ef1                	and	a3,a3,a2
  206d3e:	8f55                	or	a4,a4,a3
  206d40:	c398                	sw	a4,0(a5)
  206d42:	a419                	j	206f48 <SelectiveGetFromNandReadTriggerList+0x358>
  206d44:	002107b7          	lui	a5,0x210
  206d48:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206d4c:	fe846783          	lwu	a5,-24(s0)
  206d50:	fec46683          	lwu	a3,-20(s0)
  206d54:	068e                	slli	a3,a3,0x3
  206d56:	97b6                	add	a5,a5,a3
  206d58:	078a                	slli	a5,a5,0x2
  206d5a:	97ba                	add	a5,a5,a4
  206d5c:	439c                	lw	a5,0(a5)
  206d5e:	0107d79b          	srliw	a5,a5,0x10
  206d62:	8bbd                	andi	a5,a5,15
  206d64:	0ff7f793          	andi	a5,a5,255
  206d68:	873e                	mv	a4,a5
  206d6a:	47bd                	li	a5,15
  206d6c:	0cf71063          	bne	a4,a5,206e2c <SelectiveGetFromNandReadTriggerList+0x23c>
  206d70:	002107b7          	lui	a5,0x210
  206d74:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206d78:	fe846783          	lwu	a5,-24(s0)
  206d7c:	fec46683          	lwu	a3,-20(s0)
  206d80:	068e                	slli	a3,a3,0x3
  206d82:	97b6                	add	a5,a5,a3
  206d84:	078a                	slli	a5,a5,0x2
  206d86:	97ba                	add	a5,a5,a4
  206d88:	439c                	lw	a5,0(a5)
  206d8a:	00c7d79b          	srliw	a5,a5,0xc
  206d8e:	8bbd                	andi	a5,a5,15
  206d90:	0ff7f793          	andi	a5,a5,255
  206d94:	873e                	mv	a4,a5
  206d96:	47bd                	li	a5,15
  206d98:	08f70a63          	beq	a4,a5,206e2c <SelectiveGetFromNandReadTriggerList+0x23c>
  206d9c:	002107b7          	lui	a5,0x210
  206da0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206da4:	002107b7          	lui	a5,0x210
  206da8:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206dac:	fe846783          	lwu	a5,-24(s0)
  206db0:	fec46603          	lwu	a2,-20(s0)
  206db4:	060e                	slli	a2,a2,0x3
  206db6:	97b2                	add	a5,a5,a2
  206db8:	078a                	slli	a5,a5,0x2
  206dba:	97b6                	add	a5,a5,a3
  206dbc:	439c                	lw	a5,0(a5)
  206dbe:	00c7d79b          	srliw	a5,a5,0xc
  206dc2:	8bbd                	andi	a5,a5,15
  206dc4:	0ff7f793          	andi	a5,a5,255
  206dc8:	2781                	sext.w	a5,a5
  206dca:	fec46683          	lwu	a3,-20(s0)
  206dce:	068e                	slli	a3,a3,0x3
  206dd0:	97b6                	add	a5,a5,a3
  206dd2:	078a                	slli	a5,a5,0x2
  206dd4:	97ba                	add	a5,a5,a4
  206dd6:	4394                	lw	a3,0(a5)
  206dd8:	000f0737          	lui	a4,0xf0
  206ddc:	8f55                	or	a4,a4,a3
  206dde:	c398                	sw	a4,0(a5)
  206de0:	002107b7          	lui	a5,0x210
  206de4:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206de8:	002107b7          	lui	a5,0x210
  206dec:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206df0:	fe846783          	lwu	a5,-24(s0)
  206df4:	fec46603          	lwu	a2,-20(s0)
  206df8:	060e                	slli	a2,a2,0x3
  206dfa:	97b2                	add	a5,a5,a2
  206dfc:	078a                	slli	a5,a5,0x2
  206dfe:	97b6                	add	a5,a5,a3
  206e00:	439c                	lw	a5,0(a5)
  206e02:	00c7d79b          	srliw	a5,a5,0xc
  206e06:	8bbd                	andi	a5,a5,15
  206e08:	0ff7f693          	andi	a3,a5,255
  206e0c:	fec46783          	lwu	a5,-20(s0)
  206e10:	078e                	slli	a5,a5,0x3
  206e12:	97ba                	add	a5,a5,a4
  206e14:	8736                	mv	a4,a3
  206e16:	8b3d                	andi	a4,a4,15
  206e18:	0147171b          	slliw	a4,a4,0x14
  206e1c:	4390                	lw	a2,0(a5)
  206e1e:	ff1006b7          	lui	a3,0xff100
  206e22:	16fd                	addi	a3,a3,-1
  206e24:	8ef1                	and	a3,a3,a2
  206e26:	8f55                	or	a4,a4,a3
  206e28:	c398                	sw	a4,0(a5)
  206e2a:	aa39                	j	206f48 <SelectiveGetFromNandReadTriggerList+0x358>
  206e2c:	002107b7          	lui	a5,0x210
  206e30:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206e34:	fe846783          	lwu	a5,-24(s0)
  206e38:	fec46683          	lwu	a3,-20(s0)
  206e3c:	068e                	slli	a3,a3,0x3
  206e3e:	97b6                	add	a5,a5,a3
  206e40:	078a                	slli	a5,a5,0x2
  206e42:	97ba                	add	a5,a5,a4
  206e44:	439c                	lw	a5,0(a5)
  206e46:	0107d79b          	srliw	a5,a5,0x10
  206e4a:	8bbd                	andi	a5,a5,15
  206e4c:	0ff7f793          	andi	a5,a5,255
  206e50:	873e                	mv	a4,a5
  206e52:	47bd                	li	a5,15
  206e54:	0af70f63          	beq	a4,a5,206f12 <SelectiveGetFromNandReadTriggerList+0x322>
  206e58:	002107b7          	lui	a5,0x210
  206e5c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206e60:	fe846783          	lwu	a5,-24(s0)
  206e64:	fec46683          	lwu	a3,-20(s0)
  206e68:	068e                	slli	a3,a3,0x3
  206e6a:	97b6                	add	a5,a5,a3
  206e6c:	078a                	slli	a5,a5,0x2
  206e6e:	97ba                	add	a5,a5,a4
  206e70:	439c                	lw	a5,0(a5)
  206e72:	00c7d79b          	srliw	a5,a5,0xc
  206e76:	8bbd                	andi	a5,a5,15
  206e78:	0ff7f793          	andi	a5,a5,255
  206e7c:	873e                	mv	a4,a5
  206e7e:	47bd                	li	a5,15
  206e80:	08f71963          	bne	a4,a5,206f12 <SelectiveGetFromNandReadTriggerList+0x322>
  206e84:	002107b7          	lui	a5,0x210
  206e88:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206e8c:	002107b7          	lui	a5,0x210
  206e90:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206e94:	fe846783          	lwu	a5,-24(s0)
  206e98:	fec46603          	lwu	a2,-20(s0)
  206e9c:	060e                	slli	a2,a2,0x3
  206e9e:	97b2                	add	a5,a5,a2
  206ea0:	078a                	slli	a5,a5,0x2
  206ea2:	97b6                	add	a5,a5,a3
  206ea4:	439c                	lw	a5,0(a5)
  206ea6:	0107d79b          	srliw	a5,a5,0x10
  206eaa:	8bbd                	andi	a5,a5,15
  206eac:	0ff7f793          	andi	a5,a5,255
  206eb0:	2781                	sext.w	a5,a5
  206eb2:	fec46683          	lwu	a3,-20(s0)
  206eb6:	068e                	slli	a3,a3,0x3
  206eb8:	97b6                	add	a5,a5,a3
  206eba:	078a                	slli	a5,a5,0x2
  206ebc:	97ba                	add	a5,a5,a4
  206ebe:	4394                	lw	a3,0(a5)
  206ec0:	673d                	lui	a4,0xf
  206ec2:	8f55                	or	a4,a4,a3
  206ec4:	c398                	sw	a4,0(a5)
  206ec6:	002107b7          	lui	a5,0x210
  206eca:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  206ece:	002107b7          	lui	a5,0x210
  206ed2:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206ed6:	fe846783          	lwu	a5,-24(s0)
  206eda:	fec46603          	lwu	a2,-20(s0)
  206ede:	060e                	slli	a2,a2,0x3
  206ee0:	97b2                	add	a5,a5,a2
  206ee2:	078a                	slli	a5,a5,0x2
  206ee4:	97b6                	add	a5,a5,a3
  206ee6:	439c                	lw	a5,0(a5)
  206ee8:	0107d79b          	srliw	a5,a5,0x10
  206eec:	8bbd                	andi	a5,a5,15
  206eee:	0ff7f693          	andi	a3,a5,255
  206ef2:	fec46783          	lwu	a5,-20(s0)
  206ef6:	078e                	slli	a5,a5,0x3
  206ef8:	97ba                	add	a5,a5,a4
  206efa:	8736                	mv	a4,a3
  206efc:	8b3d                	andi	a4,a4,15
  206efe:	0107171b          	slliw	a4,a4,0x10
  206f02:	4390                	lw	a2,0(a5)
  206f04:	fff106b7          	lui	a3,0xfff10
  206f08:	16fd                	addi	a3,a3,-1
  206f0a:	8ef1                	and	a3,a3,a2
  206f0c:	8f55                	or	a4,a4,a3
  206f0e:	c398                	sw	a4,0(a5)
  206f10:	a825                	j	206f48 <SelectiveGetFromNandReadTriggerList+0x358>
  206f12:	002107b7          	lui	a5,0x210
  206f16:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206f1a:	fec46783          	lwu	a5,-20(s0)
  206f1e:	078e                	slli	a5,a5,0x3
  206f20:	97ba                	add	a5,a5,a4
  206f22:	4394                	lw	a3,0(a5)
  206f24:	000f0737          	lui	a4,0xf0
  206f28:	8f55                	or	a4,a4,a3
  206f2a:	c398                	sw	a4,0(a5)
  206f2c:	002107b7          	lui	a5,0x210
  206f30:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206f34:	fec46783          	lwu	a5,-20(s0)
  206f38:	078e                	slli	a5,a5,0x3
  206f3a:	97ba                	add	a5,a5,a4
  206f3c:	4394                	lw	a3,0(a5)
  206f3e:	00f00737          	lui	a4,0xf00
  206f42:	8f55                	or	a4,a4,a3
  206f44:	c398                	sw	a4,0(a5)
  206f46:	0001                	nop
  206f48:	0001                	nop
  206f4a:	6462                	ld	s0,24(sp)
  206f4c:	6105                	addi	sp,sp,32
  206f4e:	8082                	ret

0000000000206f50 <PutToNandWriteList>:
  206f50:	1101                	addi	sp,sp,-32
  206f52:	ec22                	sd	s0,24(sp)
  206f54:	1000                	addi	s0,sp,32
  206f56:	87aa                	mv	a5,a0
  206f58:	872e                	mv	a4,a1
  206f5a:	fef42623          	sw	a5,-20(s0)
  206f5e:	87ba                	mv	a5,a4
  206f60:	fef42423          	sw	a5,-24(s0)
  206f64:	002107b7          	lui	a5,0x210
  206f68:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  206f6c:	fec46783          	lwu	a5,-20(s0)
  206f70:	078e                	slli	a5,a5,0x3
  206f72:	97ba                	add	a5,a5,a4
  206f74:	439c                	lw	a5,0(a5)
  206f76:	01c7d79b          	srliw	a5,a5,0x1c
  206f7a:	0ff7f793          	andi	a5,a5,255
  206f7e:	873e                	mv	a4,a5
  206f80:	47bd                	li	a5,15
  206f82:	0ef70563          	beq	a4,a5,20706c <PutToNandWriteList+0x11c>
  206f86:	002107b7          	lui	a5,0x210
  206f8a:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206f8e:	002107b7          	lui	a5,0x210
  206f92:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206f96:	fec46783          	lwu	a5,-20(s0)
  206f9a:	078e                	slli	a5,a5,0x3
  206f9c:	97b6                	add	a5,a5,a3
  206f9e:	439c                	lw	a5,0(a5)
  206fa0:	01c7d79b          	srliw	a5,a5,0x1c
  206fa4:	0ff7f613          	andi	a2,a5,255
  206fa8:	fe846783          	lwu	a5,-24(s0)
  206fac:	fec46683          	lwu	a3,-20(s0)
  206fb0:	068e                	slli	a3,a3,0x3
  206fb2:	97b6                	add	a5,a5,a3
  206fb4:	078a                	slli	a5,a5,0x2
  206fb6:	97ba                	add	a5,a5,a4
  206fb8:	8732                	mv	a4,a2
  206fba:	8b3d                	andi	a4,a4,15
  206fbc:	00c7171b          	slliw	a4,a4,0xc
  206fc0:	4390                	lw	a2,0(a5)
  206fc2:	76c5                	lui	a3,0xffff1
  206fc4:	16fd                	addi	a3,a3,-1
  206fc6:	8ef1                	and	a3,a3,a2
  206fc8:	8f55                	or	a4,a4,a3
  206fca:	c398                	sw	a4,0(a5)
  206fcc:	002107b7          	lui	a5,0x210
  206fd0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206fd4:	fe846783          	lwu	a5,-24(s0)
  206fd8:	fec46683          	lwu	a3,-20(s0)
  206fdc:	068e                	slli	a3,a3,0x3
  206fde:	97b6                	add	a5,a5,a3
  206fe0:	078a                	slli	a5,a5,0x2
  206fe2:	97ba                	add	a5,a5,a4
  206fe4:	4394                	lw	a3,0(a5)
  206fe6:	000f0737          	lui	a4,0xf0
  206fea:	8f55                	or	a4,a4,a3
  206fec:	c398                	sw	a4,0(a5)
  206fee:	002107b7          	lui	a5,0x210
  206ff2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  206ff6:	002107b7          	lui	a5,0x210
  206ffa:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  206ffe:	fec46783          	lwu	a5,-20(s0)
  207002:	078e                	slli	a5,a5,0x3
  207004:	97b6                	add	a5,a5,a3
  207006:	439c                	lw	a5,0(a5)
  207008:	01c7d79b          	srliw	a5,a5,0x1c
  20700c:	0ff7f793          	andi	a5,a5,255
  207010:	2781                	sext.w	a5,a5
  207012:	fe842683          	lw	a3,-24(s0)
  207016:	8abd                	andi	a3,a3,15
  207018:	0ff6f613          	andi	a2,a3,255
  20701c:	fec46683          	lwu	a3,-20(s0)
  207020:	068e                	slli	a3,a3,0x3
  207022:	97b6                	add	a5,a5,a3
  207024:	078a                	slli	a5,a5,0x2
  207026:	97ba                	add	a5,a5,a4
  207028:	8732                	mv	a4,a2
  20702a:	8b3d                	andi	a4,a4,15
  20702c:	0107171b          	slliw	a4,a4,0x10
  207030:	4390                	lw	a2,0(a5)
  207032:	fff106b7          	lui	a3,0xfff10
  207036:	16fd                	addi	a3,a3,-1
  207038:	8ef1                	and	a3,a3,a2
  20703a:	8f55                	or	a4,a4,a3
  20703c:	c398                	sw	a4,0(a5)
  20703e:	002107b7          	lui	a5,0x210
  207042:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207046:	fe842783          	lw	a5,-24(s0)
  20704a:	8bbd                	andi	a5,a5,15
  20704c:	0ff7f713          	andi	a4,a5,255
  207050:	fec46783          	lwu	a5,-20(s0)
  207054:	078e                	slli	a5,a5,0x3
  207056:	97b6                	add	a5,a5,a3
  207058:	01c7171b          	slliw	a4,a4,0x1c
  20705c:	4390                	lw	a2,0(a5)
  20705e:	100006b7          	lui	a3,0x10000
  207062:	16fd                	addi	a3,a3,-1
  207064:	8ef1                	and	a3,a3,a2
  207066:	8f55                	or	a4,a4,a3
  207068:	c398                	sw	a4,0(a5)
  20706a:	a045                	j	20710a <PutToNandWriteList+0x1ba>
  20706c:	002107b7          	lui	a5,0x210
  207070:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207074:	fe846783          	lwu	a5,-24(s0)
  207078:	fec46683          	lwu	a3,-20(s0)
  20707c:	068e                	slli	a3,a3,0x3
  20707e:	97b6                	add	a5,a5,a3
  207080:	078a                	slli	a5,a5,0x2
  207082:	97ba                	add	a5,a5,a4
  207084:	4394                	lw	a3,0(a5)
  207086:	673d                	lui	a4,0xf
  207088:	8f55                	or	a4,a4,a3
  20708a:	c398                	sw	a4,0(a5)
  20708c:	002107b7          	lui	a5,0x210
  207090:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207094:	fe846783          	lwu	a5,-24(s0)
  207098:	fec46683          	lwu	a3,-20(s0)
  20709c:	068e                	slli	a3,a3,0x3
  20709e:	97b6                	add	a5,a5,a3
  2070a0:	078a                	slli	a5,a5,0x2
  2070a2:	97ba                	add	a5,a5,a4
  2070a4:	4394                	lw	a3,0(a5)
  2070a6:	000f0737          	lui	a4,0xf0
  2070aa:	8f55                	or	a4,a4,a3
  2070ac:	c398                	sw	a4,0(a5)
  2070ae:	002107b7          	lui	a5,0x210
  2070b2:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2070b6:	fe842783          	lw	a5,-24(s0)
  2070ba:	8bbd                	andi	a5,a5,15
  2070bc:	0ff7f693          	andi	a3,a5,255
  2070c0:	fec46783          	lwu	a5,-20(s0)
  2070c4:	078e                	slli	a5,a5,0x3
  2070c6:	97ba                	add	a5,a5,a4
  2070c8:	8736                	mv	a4,a3
  2070ca:	8b3d                	andi	a4,a4,15
  2070cc:	0187171b          	slliw	a4,a4,0x18
  2070d0:	4390                	lw	a2,0(a5)
  2070d2:	f10006b7          	lui	a3,0xf1000
  2070d6:	16fd                	addi	a3,a3,-1
  2070d8:	8ef1                	and	a3,a3,a2
  2070da:	8f55                	or	a4,a4,a3
  2070dc:	c398                	sw	a4,0(a5)
  2070de:	002107b7          	lui	a5,0x210
  2070e2:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  2070e6:	fe842783          	lw	a5,-24(s0)
  2070ea:	8bbd                	andi	a5,a5,15
  2070ec:	0ff7f713          	andi	a4,a5,255
  2070f0:	fec46783          	lwu	a5,-20(s0)
  2070f4:	078e                	slli	a5,a5,0x3
  2070f6:	97b6                	add	a5,a5,a3
  2070f8:	01c7171b          	slliw	a4,a4,0x1c
  2070fc:	4390                	lw	a2,0(a5)
  2070fe:	100006b7          	lui	a3,0x10000
  207102:	16fd                	addi	a3,a3,-1
  207104:	8ef1                	and	a3,a3,a2
  207106:	8f55                	or	a4,a4,a3
  207108:	c398                	sw	a4,0(a5)
  20710a:	0001                	nop
  20710c:	6462                	ld	s0,24(sp)
  20710e:	6105                	addi	sp,sp,32
  207110:	8082                	ret

0000000000207112 <SelectiveGetFromNandWriteList>:
  207112:	1101                	addi	sp,sp,-32
  207114:	ec22                	sd	s0,24(sp)
  207116:	1000                	addi	s0,sp,32
  207118:	87aa                	mv	a5,a0
  20711a:	872e                	mv	a4,a1
  20711c:	fef42623          	sw	a5,-20(s0)
  207120:	87ba                	mv	a5,a4
  207122:	fef42423          	sw	a5,-24(s0)
  207126:	002107b7          	lui	a5,0x210
  20712a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20712e:	fe846783          	lwu	a5,-24(s0)
  207132:	fec46683          	lwu	a3,-20(s0)
  207136:	068e                	slli	a3,a3,0x3
  207138:	97b6                	add	a5,a5,a3
  20713a:	078a                	slli	a5,a5,0x2
  20713c:	97ba                	add	a5,a5,a4
  20713e:	439c                	lw	a5,0(a5)
  207140:	0107d79b          	srliw	a5,a5,0x10
  207144:	8bbd                	andi	a5,a5,15
  207146:	0ff7f793          	andi	a5,a5,255
  20714a:	873e                	mv	a4,a5
  20714c:	47bd                	li	a5,15
  20714e:	10f70c63          	beq	a4,a5,207266 <SelectiveGetFromNandWriteList+0x154>
  207152:	002107b7          	lui	a5,0x210
  207156:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20715a:	fe846783          	lwu	a5,-24(s0)
  20715e:	fec46683          	lwu	a3,-20(s0)
  207162:	068e                	slli	a3,a3,0x3
  207164:	97b6                	add	a5,a5,a3
  207166:	078a                	slli	a5,a5,0x2
  207168:	97ba                	add	a5,a5,a4
  20716a:	439c                	lw	a5,0(a5)
  20716c:	00c7d79b          	srliw	a5,a5,0xc
  207170:	8bbd                	andi	a5,a5,15
  207172:	0ff7f793          	andi	a5,a5,255
  207176:	873e                	mv	a4,a5
  207178:	47bd                	li	a5,15
  20717a:	0ef70663          	beq	a4,a5,207266 <SelectiveGetFromNandWriteList+0x154>
  20717e:	002107b7          	lui	a5,0x210
  207182:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  207186:	002107b7          	lui	a5,0x210
  20718a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20718e:	002107b7          	lui	a5,0x210
  207192:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207196:	fe846783          	lwu	a5,-24(s0)
  20719a:	fec46583          	lwu	a1,-20(s0)
  20719e:	058e                	slli	a1,a1,0x3
  2071a0:	97ae                	add	a5,a5,a1
  2071a2:	078a                	slli	a5,a5,0x2
  2071a4:	97b6                	add	a5,a5,a3
  2071a6:	439c                	lw	a5,0(a5)
  2071a8:	00c7d79b          	srliw	a5,a5,0xc
  2071ac:	8bbd                	andi	a5,a5,15
  2071ae:	0ff7f793          	andi	a5,a5,255
  2071b2:	2781                	sext.w	a5,a5
  2071b4:	fe846683          	lwu	a3,-24(s0)
  2071b8:	fec46583          	lwu	a1,-20(s0)
  2071bc:	058e                	slli	a1,a1,0x3
  2071be:	96ae                	add	a3,a3,a1
  2071c0:	068a                	slli	a3,a3,0x2
  2071c2:	96b2                	add	a3,a3,a2
  2071c4:	4294                	lw	a3,0(a3)
  2071c6:	0106d69b          	srliw	a3,a3,0x10
  2071ca:	8abd                	andi	a3,a3,15
  2071cc:	0ff6f613          	andi	a2,a3,255
  2071d0:	fec46683          	lwu	a3,-20(s0)
  2071d4:	068e                	slli	a3,a3,0x3
  2071d6:	97b6                	add	a5,a5,a3
  2071d8:	078a                	slli	a5,a5,0x2
  2071da:	97ba                	add	a5,a5,a4
  2071dc:	8732                	mv	a4,a2
  2071de:	8b3d                	andi	a4,a4,15
  2071e0:	0107171b          	slliw	a4,a4,0x10
  2071e4:	4390                	lw	a2,0(a5)
  2071e6:	fff106b7          	lui	a3,0xfff10
  2071ea:	16fd                	addi	a3,a3,-1
  2071ec:	8ef1                	and	a3,a3,a2
  2071ee:	8f55                	or	a4,a4,a3
  2071f0:	c398                	sw	a4,0(a5)
  2071f2:	002107b7          	lui	a5,0x210
  2071f6:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  2071fa:	002107b7          	lui	a5,0x210
  2071fe:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207202:	002107b7          	lui	a5,0x210
  207206:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20720a:	fe846783          	lwu	a5,-24(s0)
  20720e:	fec46583          	lwu	a1,-20(s0)
  207212:	058e                	slli	a1,a1,0x3
  207214:	97ae                	add	a5,a5,a1
  207216:	078a                	slli	a5,a5,0x2
  207218:	97b6                	add	a5,a5,a3
  20721a:	439c                	lw	a5,0(a5)
  20721c:	0107d79b          	srliw	a5,a5,0x10
  207220:	8bbd                	andi	a5,a5,15
  207222:	0ff7f793          	andi	a5,a5,255
  207226:	2781                	sext.w	a5,a5
  207228:	fe846683          	lwu	a3,-24(s0)
  20722c:	fec46583          	lwu	a1,-20(s0)
  207230:	058e                	slli	a1,a1,0x3
  207232:	96ae                	add	a3,a3,a1
  207234:	068a                	slli	a3,a3,0x2
  207236:	96b2                	add	a3,a3,a2
  207238:	4294                	lw	a3,0(a3)
  20723a:	00c6d69b          	srliw	a3,a3,0xc
  20723e:	8abd                	andi	a3,a3,15
  207240:	0ff6f613          	andi	a2,a3,255
  207244:	fec46683          	lwu	a3,-20(s0)
  207248:	068e                	slli	a3,a3,0x3
  20724a:	97b6                	add	a5,a5,a3
  20724c:	078a                	slli	a5,a5,0x2
  20724e:	97ba                	add	a5,a5,a4
  207250:	8732                	mv	a4,a2
  207252:	8b3d                	andi	a4,a4,15
  207254:	00c7171b          	slliw	a4,a4,0xc
  207258:	4390                	lw	a2,0(a5)
  20725a:	76c5                	lui	a3,0xffff1
  20725c:	16fd                	addi	a3,a3,-1
  20725e:	8ef1                	and	a3,a3,a2
  207260:	8f55                	or	a4,a4,a3
  207262:	c398                	sw	a4,0(a5)
  207264:	a409                	j	207466 <SelectiveGetFromNandWriteList+0x354>
  207266:	002107b7          	lui	a5,0x210
  20726a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20726e:	fe846783          	lwu	a5,-24(s0)
  207272:	fec46683          	lwu	a3,-20(s0)
  207276:	068e                	slli	a3,a3,0x3
  207278:	97b6                	add	a5,a5,a3
  20727a:	078a                	slli	a5,a5,0x2
  20727c:	97ba                	add	a5,a5,a4
  20727e:	439c                	lw	a5,0(a5)
  207280:	0107d79b          	srliw	a5,a5,0x10
  207284:	8bbd                	andi	a5,a5,15
  207286:	0ff7f793          	andi	a5,a5,255
  20728a:	873e                	mv	a4,a5
  20728c:	47bd                	li	a5,15
  20728e:	0af71e63          	bne	a4,a5,20734a <SelectiveGetFromNandWriteList+0x238>
  207292:	002107b7          	lui	a5,0x210
  207296:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20729a:	fe846783          	lwu	a5,-24(s0)
  20729e:	fec46683          	lwu	a3,-20(s0)
  2072a2:	068e                	slli	a3,a3,0x3
  2072a4:	97b6                	add	a5,a5,a3
  2072a6:	078a                	slli	a5,a5,0x2
  2072a8:	97ba                	add	a5,a5,a4
  2072aa:	439c                	lw	a5,0(a5)
  2072ac:	00c7d79b          	srliw	a5,a5,0xc
  2072b0:	8bbd                	andi	a5,a5,15
  2072b2:	0ff7f793          	andi	a5,a5,255
  2072b6:	873e                	mv	a4,a5
  2072b8:	47bd                	li	a5,15
  2072ba:	08f70863          	beq	a4,a5,20734a <SelectiveGetFromNandWriteList+0x238>
  2072be:	002107b7          	lui	a5,0x210
  2072c2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2072c6:	002107b7          	lui	a5,0x210
  2072ca:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2072ce:	fe846783          	lwu	a5,-24(s0)
  2072d2:	fec46603          	lwu	a2,-20(s0)
  2072d6:	060e                	slli	a2,a2,0x3
  2072d8:	97b2                	add	a5,a5,a2
  2072da:	078a                	slli	a5,a5,0x2
  2072dc:	97b6                	add	a5,a5,a3
  2072de:	439c                	lw	a5,0(a5)
  2072e0:	00c7d79b          	srliw	a5,a5,0xc
  2072e4:	8bbd                	andi	a5,a5,15
  2072e6:	0ff7f793          	andi	a5,a5,255
  2072ea:	2781                	sext.w	a5,a5
  2072ec:	fec46683          	lwu	a3,-20(s0)
  2072f0:	068e                	slli	a3,a3,0x3
  2072f2:	97b6                	add	a5,a5,a3
  2072f4:	078a                	slli	a5,a5,0x2
  2072f6:	97ba                	add	a5,a5,a4
  2072f8:	4394                	lw	a3,0(a5)
  2072fa:	000f0737          	lui	a4,0xf0
  2072fe:	8f55                	or	a4,a4,a3
  207300:	c398                	sw	a4,0(a5)
  207302:	002107b7          	lui	a5,0x210
  207306:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20730a:	002107b7          	lui	a5,0x210
  20730e:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207312:	fe846783          	lwu	a5,-24(s0)
  207316:	fec46603          	lwu	a2,-20(s0)
  20731a:	060e                	slli	a2,a2,0x3
  20731c:	97b2                	add	a5,a5,a2
  20731e:	078a                	slli	a5,a5,0x2
  207320:	97ba                	add	a5,a5,a4
  207322:	439c                	lw	a5,0(a5)
  207324:	00c7d79b          	srliw	a5,a5,0xc
  207328:	8bbd                	andi	a5,a5,15
  20732a:	0ff7f713          	andi	a4,a5,255
  20732e:	fec46783          	lwu	a5,-20(s0)
  207332:	078e                	slli	a5,a5,0x3
  207334:	97b6                	add	a5,a5,a3
  207336:	01c7171b          	slliw	a4,a4,0x1c
  20733a:	4390                	lw	a2,0(a5)
  20733c:	100006b7          	lui	a3,0x10000
  207340:	16fd                	addi	a3,a3,-1
  207342:	8ef1                	and	a3,a3,a2
  207344:	8f55                	or	a4,a4,a3
  207346:	c398                	sw	a4,0(a5)
  207348:	aa39                	j	207466 <SelectiveGetFromNandWriteList+0x354>
  20734a:	002107b7          	lui	a5,0x210
  20734e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207352:	fe846783          	lwu	a5,-24(s0)
  207356:	fec46683          	lwu	a3,-20(s0)
  20735a:	068e                	slli	a3,a3,0x3
  20735c:	97b6                	add	a5,a5,a3
  20735e:	078a                	slli	a5,a5,0x2
  207360:	97ba                	add	a5,a5,a4
  207362:	439c                	lw	a5,0(a5)
  207364:	0107d79b          	srliw	a5,a5,0x10
  207368:	8bbd                	andi	a5,a5,15
  20736a:	0ff7f793          	andi	a5,a5,255
  20736e:	873e                	mv	a4,a5
  207370:	47bd                	li	a5,15
  207372:	0af70f63          	beq	a4,a5,207430 <SelectiveGetFromNandWriteList+0x31e>
  207376:	002107b7          	lui	a5,0x210
  20737a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20737e:	fe846783          	lwu	a5,-24(s0)
  207382:	fec46683          	lwu	a3,-20(s0)
  207386:	068e                	slli	a3,a3,0x3
  207388:	97b6                	add	a5,a5,a3
  20738a:	078a                	slli	a5,a5,0x2
  20738c:	97ba                	add	a5,a5,a4
  20738e:	439c                	lw	a5,0(a5)
  207390:	00c7d79b          	srliw	a5,a5,0xc
  207394:	8bbd                	andi	a5,a5,15
  207396:	0ff7f793          	andi	a5,a5,255
  20739a:	873e                	mv	a4,a5
  20739c:	47bd                	li	a5,15
  20739e:	08f71963          	bne	a4,a5,207430 <SelectiveGetFromNandWriteList+0x31e>
  2073a2:	002107b7          	lui	a5,0x210
  2073a6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2073aa:	002107b7          	lui	a5,0x210
  2073ae:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2073b2:	fe846783          	lwu	a5,-24(s0)
  2073b6:	fec46603          	lwu	a2,-20(s0)
  2073ba:	060e                	slli	a2,a2,0x3
  2073bc:	97b2                	add	a5,a5,a2
  2073be:	078a                	slli	a5,a5,0x2
  2073c0:	97b6                	add	a5,a5,a3
  2073c2:	439c                	lw	a5,0(a5)
  2073c4:	0107d79b          	srliw	a5,a5,0x10
  2073c8:	8bbd                	andi	a5,a5,15
  2073ca:	0ff7f793          	andi	a5,a5,255
  2073ce:	2781                	sext.w	a5,a5
  2073d0:	fec46683          	lwu	a3,-20(s0)
  2073d4:	068e                	slli	a3,a3,0x3
  2073d6:	97b6                	add	a5,a5,a3
  2073d8:	078a                	slli	a5,a5,0x2
  2073da:	97ba                	add	a5,a5,a4
  2073dc:	4394                	lw	a3,0(a5)
  2073de:	673d                	lui	a4,0xf
  2073e0:	8f55                	or	a4,a4,a3
  2073e2:	c398                	sw	a4,0(a5)
  2073e4:	002107b7          	lui	a5,0x210
  2073e8:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2073ec:	002107b7          	lui	a5,0x210
  2073f0:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2073f4:	fe846783          	lwu	a5,-24(s0)
  2073f8:	fec46603          	lwu	a2,-20(s0)
  2073fc:	060e                	slli	a2,a2,0x3
  2073fe:	97b2                	add	a5,a5,a2
  207400:	078a                	slli	a5,a5,0x2
  207402:	97b6                	add	a5,a5,a3
  207404:	439c                	lw	a5,0(a5)
  207406:	0107d79b          	srliw	a5,a5,0x10
  20740a:	8bbd                	andi	a5,a5,15
  20740c:	0ff7f693          	andi	a3,a5,255
  207410:	fec46783          	lwu	a5,-20(s0)
  207414:	078e                	slli	a5,a5,0x3
  207416:	97ba                	add	a5,a5,a4
  207418:	8736                	mv	a4,a3
  20741a:	8b3d                	andi	a4,a4,15
  20741c:	0187171b          	slliw	a4,a4,0x18
  207420:	4390                	lw	a2,0(a5)
  207422:	f10006b7          	lui	a3,0xf1000
  207426:	16fd                	addi	a3,a3,-1
  207428:	8ef1                	and	a3,a3,a2
  20742a:	8f55                	or	a4,a4,a3
  20742c:	c398                	sw	a4,0(a5)
  20742e:	a825                	j	207466 <SelectiveGetFromNandWriteList+0x354>
  207430:	002107b7          	lui	a5,0x210
  207434:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207438:	fec46783          	lwu	a5,-20(s0)
  20743c:	078e                	slli	a5,a5,0x3
  20743e:	97ba                	add	a5,a5,a4
  207440:	4394                	lw	a3,0(a5)
  207442:	0f000737          	lui	a4,0xf000
  207446:	8f55                	or	a4,a4,a3
  207448:	c398                	sw	a4,0(a5)
  20744a:	002107b7          	lui	a5,0x210
  20744e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207452:	fec46783          	lwu	a5,-20(s0)
  207456:	078e                	slli	a5,a5,0x3
  207458:	97ba                	add	a5,a5,a4
  20745a:	4394                	lw	a3,0(a5)
  20745c:	f0000737          	lui	a4,0xf0000
  207460:	8f55                	or	a4,a4,a3
  207462:	c398                	sw	a4,0(a5)
  207464:	0001                	nop
  207466:	0001                	nop
  207468:	6462                	ld	s0,24(sp)
  20746a:	6105                	addi	sp,sp,32
  20746c:	8082                	ret

000000000020746e <PutToNandReadTransferList>:
  20746e:	1101                	addi	sp,sp,-32
  207470:	ec22                	sd	s0,24(sp)
  207472:	1000                	addi	s0,sp,32
  207474:	87aa                	mv	a5,a0
  207476:	872e                	mv	a4,a1
  207478:	fef42623          	sw	a5,-20(s0)
  20747c:	87ba                	mv	a5,a4
  20747e:	fef42423          	sw	a5,-24(s0)
  207482:	002107b7          	lui	a5,0x210
  207486:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20748a:	fec46783          	lwu	a5,-20(s0)
  20748e:	078e                	slli	a5,a5,0x3
  207490:	97ba                	add	a5,a5,a4
  207492:	43dc                	lw	a5,4(a5)
  207494:	0047d79b          	srliw	a5,a5,0x4
  207498:	8bbd                	andi	a5,a5,15
  20749a:	0ff7f793          	andi	a5,a5,255
  20749e:	873e                	mv	a4,a5
  2074a0:	47bd                	li	a5,15
  2074a2:	0ef70763          	beq	a4,a5,207590 <PutToNandReadTransferList+0x122>
  2074a6:	002107b7          	lui	a5,0x210
  2074aa:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  2074ae:	002107b7          	lui	a5,0x210
  2074b2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2074b6:	fec46783          	lwu	a5,-20(s0)
  2074ba:	078e                	slli	a5,a5,0x3
  2074bc:	97b6                	add	a5,a5,a3
  2074be:	43dc                	lw	a5,4(a5)
  2074c0:	0047d79b          	srliw	a5,a5,0x4
  2074c4:	8bbd                	andi	a5,a5,15
  2074c6:	0ff7f613          	andi	a2,a5,255
  2074ca:	fe846783          	lwu	a5,-24(s0)
  2074ce:	fec46683          	lwu	a3,-20(s0)
  2074d2:	068e                	slli	a3,a3,0x3
  2074d4:	97b6                	add	a5,a5,a3
  2074d6:	078a                	slli	a5,a5,0x2
  2074d8:	97ba                	add	a5,a5,a4
  2074da:	8732                	mv	a4,a2
  2074dc:	8b3d                	andi	a4,a4,15
  2074de:	00c7171b          	slliw	a4,a4,0xc
  2074e2:	4390                	lw	a2,0(a5)
  2074e4:	76c5                	lui	a3,0xffff1
  2074e6:	16fd                	addi	a3,a3,-1
  2074e8:	8ef1                	and	a3,a3,a2
  2074ea:	8f55                	or	a4,a4,a3
  2074ec:	c398                	sw	a4,0(a5)
  2074ee:	002107b7          	lui	a5,0x210
  2074f2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2074f6:	fe846783          	lwu	a5,-24(s0)
  2074fa:	fec46683          	lwu	a3,-20(s0)
  2074fe:	068e                	slli	a3,a3,0x3
  207500:	97b6                	add	a5,a5,a3
  207502:	078a                	slli	a5,a5,0x2
  207504:	97ba                	add	a5,a5,a4
  207506:	4394                	lw	a3,0(a5)
  207508:	000f0737          	lui	a4,0xf0
  20750c:	8f55                	or	a4,a4,a3
  20750e:	c398                	sw	a4,0(a5)
  207510:	002107b7          	lui	a5,0x210
  207514:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207518:	002107b7          	lui	a5,0x210
  20751c:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207520:	fec46783          	lwu	a5,-20(s0)
  207524:	078e                	slli	a5,a5,0x3
  207526:	97b6                	add	a5,a5,a3
  207528:	43dc                	lw	a5,4(a5)
  20752a:	0047d79b          	srliw	a5,a5,0x4
  20752e:	8bbd                	andi	a5,a5,15
  207530:	0ff7f793          	andi	a5,a5,255
  207534:	2781                	sext.w	a5,a5
  207536:	fe842683          	lw	a3,-24(s0)
  20753a:	8abd                	andi	a3,a3,15
  20753c:	0ff6f613          	andi	a2,a3,255
  207540:	fec46683          	lwu	a3,-20(s0)
  207544:	068e                	slli	a3,a3,0x3
  207546:	97b6                	add	a5,a5,a3
  207548:	078a                	slli	a5,a5,0x2
  20754a:	97ba                	add	a5,a5,a4
  20754c:	8732                	mv	a4,a2
  20754e:	8b3d                	andi	a4,a4,15
  207550:	0107171b          	slliw	a4,a4,0x10
  207554:	4390                	lw	a2,0(a5)
  207556:	fff106b7          	lui	a3,0xfff10
  20755a:	16fd                	addi	a3,a3,-1
  20755c:	8ef1                	and	a3,a3,a2
  20755e:	8f55                	or	a4,a4,a3
  207560:	c398                	sw	a4,0(a5)
  207562:	002107b7          	lui	a5,0x210
  207566:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20756a:	fe842783          	lw	a5,-24(s0)
  20756e:	8bbd                	andi	a5,a5,15
  207570:	0ff7f693          	andi	a3,a5,255
  207574:	fec46783          	lwu	a5,-20(s0)
  207578:	078e                	slli	a5,a5,0x3
  20757a:	97ba                	add	a5,a5,a4
  20757c:	8736                	mv	a4,a3
  20757e:	8b3d                	andi	a4,a4,15
  207580:	0047171b          	slliw	a4,a4,0x4
  207584:	43d4                	lw	a3,4(a5)
  207586:	f0f6f693          	andi	a3,a3,-241
  20758a:	8f55                	or	a4,a4,a3
  20758c:	c3d8                	sw	a4,4(a5)
  20758e:	a871                	j	20762a <PutToNandReadTransferList+0x1bc>
  207590:	002107b7          	lui	a5,0x210
  207594:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207598:	fe846783          	lwu	a5,-24(s0)
  20759c:	fec46683          	lwu	a3,-20(s0)
  2075a0:	068e                	slli	a3,a3,0x3
  2075a2:	97b6                	add	a5,a5,a3
  2075a4:	078a                	slli	a5,a5,0x2
  2075a6:	97ba                	add	a5,a5,a4
  2075a8:	4394                	lw	a3,0(a5)
  2075aa:	673d                	lui	a4,0xf
  2075ac:	8f55                	or	a4,a4,a3
  2075ae:	c398                	sw	a4,0(a5)
  2075b0:	002107b7          	lui	a5,0x210
  2075b4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2075b8:	fe846783          	lwu	a5,-24(s0)
  2075bc:	fec46683          	lwu	a3,-20(s0)
  2075c0:	068e                	slli	a3,a3,0x3
  2075c2:	97b6                	add	a5,a5,a3
  2075c4:	078a                	slli	a5,a5,0x2
  2075c6:	97ba                	add	a5,a5,a4
  2075c8:	4394                	lw	a3,0(a5)
  2075ca:	000f0737          	lui	a4,0xf0
  2075ce:	8f55                	or	a4,a4,a3
  2075d0:	c398                	sw	a4,0(a5)
  2075d2:	002107b7          	lui	a5,0x210
  2075d6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2075da:	fe842783          	lw	a5,-24(s0)
  2075de:	8bbd                	andi	a5,a5,15
  2075e0:	0ff7f693          	andi	a3,a5,255
  2075e4:	fec46783          	lwu	a5,-20(s0)
  2075e8:	078e                	slli	a5,a5,0x3
  2075ea:	97ba                	add	a5,a5,a4
  2075ec:	8736                	mv	a4,a3
  2075ee:	00f77613          	andi	a2,a4,15
  2075f2:	43d8                	lw	a4,4(a5)
  2075f4:	9b41                	andi	a4,a4,-16
  2075f6:	86ba                	mv	a3,a4
  2075f8:	8732                	mv	a4,a2
  2075fa:	8f55                	or	a4,a4,a3
  2075fc:	c3d8                	sw	a4,4(a5)
  2075fe:	002107b7          	lui	a5,0x210
  207602:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207606:	fe842783          	lw	a5,-24(s0)
  20760a:	8bbd                	andi	a5,a5,15
  20760c:	0ff7f693          	andi	a3,a5,255
  207610:	fec46783          	lwu	a5,-20(s0)
  207614:	078e                	slli	a5,a5,0x3
  207616:	97ba                	add	a5,a5,a4
  207618:	8736                	mv	a4,a3
  20761a:	8b3d                	andi	a4,a4,15
  20761c:	0047171b          	slliw	a4,a4,0x4
  207620:	43d4                	lw	a3,4(a5)
  207622:	f0f6f693          	andi	a3,a3,-241
  207626:	8f55                	or	a4,a4,a3
  207628:	c3d8                	sw	a4,4(a5)
  20762a:	0001                	nop
  20762c:	6462                	ld	s0,24(sp)
  20762e:	6105                	addi	sp,sp,32
  207630:	8082                	ret

0000000000207632 <SelectiveGetFromNandReadTransferList>:
  207632:	1101                	addi	sp,sp,-32
  207634:	ec22                	sd	s0,24(sp)
  207636:	1000                	addi	s0,sp,32
  207638:	87aa                	mv	a5,a0
  20763a:	872e                	mv	a4,a1
  20763c:	fef42623          	sw	a5,-20(s0)
  207640:	87ba                	mv	a5,a4
  207642:	fef42423          	sw	a5,-24(s0)
  207646:	002107b7          	lui	a5,0x210
  20764a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20764e:	fe846783          	lwu	a5,-24(s0)
  207652:	fec46683          	lwu	a3,-20(s0)
  207656:	068e                	slli	a3,a3,0x3
  207658:	97b6                	add	a5,a5,a3
  20765a:	078a                	slli	a5,a5,0x2
  20765c:	97ba                	add	a5,a5,a4
  20765e:	439c                	lw	a5,0(a5)
  207660:	0107d79b          	srliw	a5,a5,0x10
  207664:	8bbd                	andi	a5,a5,15
  207666:	0ff7f793          	andi	a5,a5,255
  20766a:	873e                	mv	a4,a5
  20766c:	47bd                	li	a5,15
  20766e:	10f70c63          	beq	a4,a5,207786 <SelectiveGetFromNandReadTransferList+0x154>
  207672:	002107b7          	lui	a5,0x210
  207676:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20767a:	fe846783          	lwu	a5,-24(s0)
  20767e:	fec46683          	lwu	a3,-20(s0)
  207682:	068e                	slli	a3,a3,0x3
  207684:	97b6                	add	a5,a5,a3
  207686:	078a                	slli	a5,a5,0x2
  207688:	97ba                	add	a5,a5,a4
  20768a:	439c                	lw	a5,0(a5)
  20768c:	00c7d79b          	srliw	a5,a5,0xc
  207690:	8bbd                	andi	a5,a5,15
  207692:	0ff7f793          	andi	a5,a5,255
  207696:	873e                	mv	a4,a5
  207698:	47bd                	li	a5,15
  20769a:	0ef70663          	beq	a4,a5,207786 <SelectiveGetFromNandReadTransferList+0x154>
  20769e:	002107b7          	lui	a5,0x210
  2076a2:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  2076a6:	002107b7          	lui	a5,0x210
  2076aa:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2076ae:	002107b7          	lui	a5,0x210
  2076b2:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2076b6:	fe846783          	lwu	a5,-24(s0)
  2076ba:	fec46583          	lwu	a1,-20(s0)
  2076be:	058e                	slli	a1,a1,0x3
  2076c0:	97ae                	add	a5,a5,a1
  2076c2:	078a                	slli	a5,a5,0x2
  2076c4:	97b6                	add	a5,a5,a3
  2076c6:	439c                	lw	a5,0(a5)
  2076c8:	00c7d79b          	srliw	a5,a5,0xc
  2076cc:	8bbd                	andi	a5,a5,15
  2076ce:	0ff7f793          	andi	a5,a5,255
  2076d2:	2781                	sext.w	a5,a5
  2076d4:	fe846683          	lwu	a3,-24(s0)
  2076d8:	fec46583          	lwu	a1,-20(s0)
  2076dc:	058e                	slli	a1,a1,0x3
  2076de:	96ae                	add	a3,a3,a1
  2076e0:	068a                	slli	a3,a3,0x2
  2076e2:	96b2                	add	a3,a3,a2
  2076e4:	4294                	lw	a3,0(a3)
  2076e6:	0106d69b          	srliw	a3,a3,0x10
  2076ea:	8abd                	andi	a3,a3,15
  2076ec:	0ff6f613          	andi	a2,a3,255
  2076f0:	fec46683          	lwu	a3,-20(s0)
  2076f4:	068e                	slli	a3,a3,0x3
  2076f6:	97b6                	add	a5,a5,a3
  2076f8:	078a                	slli	a5,a5,0x2
  2076fa:	97ba                	add	a5,a5,a4
  2076fc:	8732                	mv	a4,a2
  2076fe:	8b3d                	andi	a4,a4,15
  207700:	0107171b          	slliw	a4,a4,0x10
  207704:	4390                	lw	a2,0(a5)
  207706:	fff106b7          	lui	a3,0xfff10
  20770a:	16fd                	addi	a3,a3,-1
  20770c:	8ef1                	and	a3,a3,a2
  20770e:	8f55                	or	a4,a4,a3
  207710:	c398                	sw	a4,0(a5)
  207712:	002107b7          	lui	a5,0x210
  207716:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  20771a:	002107b7          	lui	a5,0x210
  20771e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207722:	002107b7          	lui	a5,0x210
  207726:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20772a:	fe846783          	lwu	a5,-24(s0)
  20772e:	fec46583          	lwu	a1,-20(s0)
  207732:	058e                	slli	a1,a1,0x3
  207734:	97ae                	add	a5,a5,a1
  207736:	078a                	slli	a5,a5,0x2
  207738:	97b6                	add	a5,a5,a3
  20773a:	439c                	lw	a5,0(a5)
  20773c:	0107d79b          	srliw	a5,a5,0x10
  207740:	8bbd                	andi	a5,a5,15
  207742:	0ff7f793          	andi	a5,a5,255
  207746:	2781                	sext.w	a5,a5
  207748:	fe846683          	lwu	a3,-24(s0)
  20774c:	fec46583          	lwu	a1,-20(s0)
  207750:	058e                	slli	a1,a1,0x3
  207752:	96ae                	add	a3,a3,a1
  207754:	068a                	slli	a3,a3,0x2
  207756:	96b2                	add	a3,a3,a2
  207758:	4294                	lw	a3,0(a3)
  20775a:	00c6d69b          	srliw	a3,a3,0xc
  20775e:	8abd                	andi	a3,a3,15
  207760:	0ff6f613          	andi	a2,a3,255
  207764:	fec46683          	lwu	a3,-20(s0)
  207768:	068e                	slli	a3,a3,0x3
  20776a:	97b6                	add	a5,a5,a3
  20776c:	078a                	slli	a5,a5,0x2
  20776e:	97ba                	add	a5,a5,a4
  207770:	8732                	mv	a4,a2
  207772:	8b3d                	andi	a4,a4,15
  207774:	00c7171b          	slliw	a4,a4,0xc
  207778:	4390                	lw	a2,0(a5)
  20777a:	76c5                	lui	a3,0xffff1
  20777c:	16fd                	addi	a3,a3,-1
  20777e:	8ef1                	and	a3,a3,a2
  207780:	8f55                	or	a4,a4,a3
  207782:	c398                	sw	a4,0(a5)
  207784:	aaed                	j	20797e <SelectiveGetFromNandReadTransferList+0x34c>
  207786:	002107b7          	lui	a5,0x210
  20778a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20778e:	fe846783          	lwu	a5,-24(s0)
  207792:	fec46683          	lwu	a3,-20(s0)
  207796:	068e                	slli	a3,a3,0x3
  207798:	97b6                	add	a5,a5,a3
  20779a:	078a                	slli	a5,a5,0x2
  20779c:	97ba                	add	a5,a5,a4
  20779e:	439c                	lw	a5,0(a5)
  2077a0:	0107d79b          	srliw	a5,a5,0x10
  2077a4:	8bbd                	andi	a5,a5,15
  2077a6:	0ff7f793          	andi	a5,a5,255
  2077aa:	873e                	mv	a4,a5
  2077ac:	47bd                	li	a5,15
  2077ae:	0af71e63          	bne	a4,a5,20786a <SelectiveGetFromNandReadTransferList+0x238>
  2077b2:	002107b7          	lui	a5,0x210
  2077b6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2077ba:	fe846783          	lwu	a5,-24(s0)
  2077be:	fec46683          	lwu	a3,-20(s0)
  2077c2:	068e                	slli	a3,a3,0x3
  2077c4:	97b6                	add	a5,a5,a3
  2077c6:	078a                	slli	a5,a5,0x2
  2077c8:	97ba                	add	a5,a5,a4
  2077ca:	439c                	lw	a5,0(a5)
  2077cc:	00c7d79b          	srliw	a5,a5,0xc
  2077d0:	8bbd                	andi	a5,a5,15
  2077d2:	0ff7f793          	andi	a5,a5,255
  2077d6:	873e                	mv	a4,a5
  2077d8:	47bd                	li	a5,15
  2077da:	08f70863          	beq	a4,a5,20786a <SelectiveGetFromNandReadTransferList+0x238>
  2077de:	002107b7          	lui	a5,0x210
  2077e2:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2077e6:	002107b7          	lui	a5,0x210
  2077ea:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2077ee:	fe846783          	lwu	a5,-24(s0)
  2077f2:	fec46603          	lwu	a2,-20(s0)
  2077f6:	060e                	slli	a2,a2,0x3
  2077f8:	97b2                	add	a5,a5,a2
  2077fa:	078a                	slli	a5,a5,0x2
  2077fc:	97b6                	add	a5,a5,a3
  2077fe:	439c                	lw	a5,0(a5)
  207800:	00c7d79b          	srliw	a5,a5,0xc
  207804:	8bbd                	andi	a5,a5,15
  207806:	0ff7f793          	andi	a5,a5,255
  20780a:	2781                	sext.w	a5,a5
  20780c:	fec46683          	lwu	a3,-20(s0)
  207810:	068e                	slli	a3,a3,0x3
  207812:	97b6                	add	a5,a5,a3
  207814:	078a                	slli	a5,a5,0x2
  207816:	97ba                	add	a5,a5,a4
  207818:	4394                	lw	a3,0(a5)
  20781a:	000f0737          	lui	a4,0xf0
  20781e:	8f55                	or	a4,a4,a3
  207820:	c398                	sw	a4,0(a5)
  207822:	002107b7          	lui	a5,0x210
  207826:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20782a:	002107b7          	lui	a5,0x210
  20782e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207832:	fe846783          	lwu	a5,-24(s0)
  207836:	fec46603          	lwu	a2,-20(s0)
  20783a:	060e                	slli	a2,a2,0x3
  20783c:	97b2                	add	a5,a5,a2
  20783e:	078a                	slli	a5,a5,0x2
  207840:	97b6                	add	a5,a5,a3
  207842:	439c                	lw	a5,0(a5)
  207844:	00c7d79b          	srliw	a5,a5,0xc
  207848:	8bbd                	andi	a5,a5,15
  20784a:	0ff7f693          	andi	a3,a5,255
  20784e:	fec46783          	lwu	a5,-20(s0)
  207852:	078e                	slli	a5,a5,0x3
  207854:	97ba                	add	a5,a5,a4
  207856:	8736                	mv	a4,a3
  207858:	8b3d                	andi	a4,a4,15
  20785a:	0047171b          	slliw	a4,a4,0x4
  20785e:	43d4                	lw	a3,4(a5)
  207860:	f0f6f693          	andi	a3,a3,-241
  207864:	8f55                	or	a4,a4,a3
  207866:	c3d8                	sw	a4,4(a5)
  207868:	aa19                	j	20797e <SelectiveGetFromNandReadTransferList+0x34c>
  20786a:	002107b7          	lui	a5,0x210
  20786e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207872:	fe846783          	lwu	a5,-24(s0)
  207876:	fec46683          	lwu	a3,-20(s0)
  20787a:	068e                	slli	a3,a3,0x3
  20787c:	97b6                	add	a5,a5,a3
  20787e:	078a                	slli	a5,a5,0x2
  207880:	97ba                	add	a5,a5,a4
  207882:	439c                	lw	a5,0(a5)
  207884:	0107d79b          	srliw	a5,a5,0x10
  207888:	8bbd                	andi	a5,a5,15
  20788a:	0ff7f793          	andi	a5,a5,255
  20788e:	873e                	mv	a4,a5
  207890:	47bd                	li	a5,15
  207892:	0af70d63          	beq	a4,a5,20794c <SelectiveGetFromNandReadTransferList+0x31a>
  207896:	002107b7          	lui	a5,0x210
  20789a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20789e:	fe846783          	lwu	a5,-24(s0)
  2078a2:	fec46683          	lwu	a3,-20(s0)
  2078a6:	068e                	slli	a3,a3,0x3
  2078a8:	97b6                	add	a5,a5,a3
  2078aa:	078a                	slli	a5,a5,0x2
  2078ac:	97ba                	add	a5,a5,a4
  2078ae:	439c                	lw	a5,0(a5)
  2078b0:	00c7d79b          	srliw	a5,a5,0xc
  2078b4:	8bbd                	andi	a5,a5,15
  2078b6:	0ff7f793          	andi	a5,a5,255
  2078ba:	873e                	mv	a4,a5
  2078bc:	47bd                	li	a5,15
  2078be:	08f71763          	bne	a4,a5,20794c <SelectiveGetFromNandReadTransferList+0x31a>
  2078c2:	002107b7          	lui	a5,0x210
  2078c6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2078ca:	002107b7          	lui	a5,0x210
  2078ce:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  2078d2:	fe846783          	lwu	a5,-24(s0)
  2078d6:	fec46603          	lwu	a2,-20(s0)
  2078da:	060e                	slli	a2,a2,0x3
  2078dc:	97b2                	add	a5,a5,a2
  2078de:	078a                	slli	a5,a5,0x2
  2078e0:	97b6                	add	a5,a5,a3
  2078e2:	439c                	lw	a5,0(a5)
  2078e4:	0107d79b          	srliw	a5,a5,0x10
  2078e8:	8bbd                	andi	a5,a5,15
  2078ea:	0ff7f793          	andi	a5,a5,255
  2078ee:	2781                	sext.w	a5,a5
  2078f0:	fec46683          	lwu	a3,-20(s0)
  2078f4:	068e                	slli	a3,a3,0x3
  2078f6:	97b6                	add	a5,a5,a3
  2078f8:	078a                	slli	a5,a5,0x2
  2078fa:	97ba                	add	a5,a5,a4
  2078fc:	4394                	lw	a3,0(a5)
  2078fe:	673d                	lui	a4,0xf
  207900:	8f55                	or	a4,a4,a3
  207902:	c398                	sw	a4,0(a5)
  207904:	002107b7          	lui	a5,0x210
  207908:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20790c:	002107b7          	lui	a5,0x210
  207910:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207914:	fe846783          	lwu	a5,-24(s0)
  207918:	fec46603          	lwu	a2,-20(s0)
  20791c:	060e                	slli	a2,a2,0x3
  20791e:	97b2                	add	a5,a5,a2
  207920:	078a                	slli	a5,a5,0x2
  207922:	97b6                	add	a5,a5,a3
  207924:	439c                	lw	a5,0(a5)
  207926:	0107d79b          	srliw	a5,a5,0x10
  20792a:	8bbd                	andi	a5,a5,15
  20792c:	0ff7f693          	andi	a3,a5,255
  207930:	fec46783          	lwu	a5,-20(s0)
  207934:	078e                	slli	a5,a5,0x3
  207936:	97ba                	add	a5,a5,a4
  207938:	8736                	mv	a4,a3
  20793a:	00f77613          	andi	a2,a4,15
  20793e:	43d8                	lw	a4,4(a5)
  207940:	9b41                	andi	a4,a4,-16
  207942:	86ba                	mv	a3,a4
  207944:	8732                	mv	a4,a2
  207946:	8f55                	or	a4,a4,a3
  207948:	c3d8                	sw	a4,4(a5)
  20794a:	a815                	j	20797e <SelectiveGetFromNandReadTransferList+0x34c>
  20794c:	002107b7          	lui	a5,0x210
  207950:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207954:	fec46783          	lwu	a5,-20(s0)
  207958:	078e                	slli	a5,a5,0x3
  20795a:	97ba                	add	a5,a5,a4
  20795c:	43d8                	lw	a4,4(a5)
  20795e:	00f76713          	ori	a4,a4,15
  207962:	c3d8                	sw	a4,4(a5)
  207964:	002107b7          	lui	a5,0x210
  207968:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  20796c:	fec46783          	lwu	a5,-20(s0)
  207970:	078e                	slli	a5,a5,0x3
  207972:	97ba                	add	a5,a5,a4
  207974:	43d8                	lw	a4,4(a5)
  207976:	0f076713          	ori	a4,a4,240
  20797a:	c3d8                	sw	a4,4(a5)
  20797c:	0001                	nop
  20797e:	0001                	nop
  207980:	6462                	ld	s0,24(sp)
  207982:	6105                	addi	sp,sp,32
  207984:	8082                	ret

0000000000207986 <PutToNandEraseList>:
  207986:	1101                	addi	sp,sp,-32
  207988:	ec22                	sd	s0,24(sp)
  20798a:	1000                	addi	s0,sp,32
  20798c:	87aa                	mv	a5,a0
  20798e:	872e                	mv	a4,a1
  207990:	fef42623          	sw	a5,-20(s0)
  207994:	87ba                	mv	a5,a4
  207996:	fef42423          	sw	a5,-24(s0)
  20799a:	002107b7          	lui	a5,0x210
  20799e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2079a2:	fec46783          	lwu	a5,-20(s0)
  2079a6:	078e                	slli	a5,a5,0x3
  2079a8:	97ba                	add	a5,a5,a4
  2079aa:	43dc                	lw	a5,4(a5)
  2079ac:	00c7d79b          	srliw	a5,a5,0xc
  2079b0:	8bbd                	andi	a5,a5,15
  2079b2:	0ff7f793          	andi	a5,a5,255
  2079b6:	873e                	mv	a4,a5
  2079b8:	47bd                	li	a5,15
  2079ba:	0ef70863          	beq	a4,a5,207aaa <PutToNandEraseList+0x124>
  2079be:	002107b7          	lui	a5,0x210
  2079c2:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  2079c6:	002107b7          	lui	a5,0x210
  2079ca:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2079ce:	fec46783          	lwu	a5,-20(s0)
  2079d2:	078e                	slli	a5,a5,0x3
  2079d4:	97b6                	add	a5,a5,a3
  2079d6:	43dc                	lw	a5,4(a5)
  2079d8:	00c7d79b          	srliw	a5,a5,0xc
  2079dc:	8bbd                	andi	a5,a5,15
  2079de:	0ff7f613          	andi	a2,a5,255
  2079e2:	fe846783          	lwu	a5,-24(s0)
  2079e6:	fec46683          	lwu	a3,-20(s0)
  2079ea:	068e                	slli	a3,a3,0x3
  2079ec:	97b6                	add	a5,a5,a3
  2079ee:	078a                	slli	a5,a5,0x2
  2079f0:	97ba                	add	a5,a5,a4
  2079f2:	8732                	mv	a4,a2
  2079f4:	8b3d                	andi	a4,a4,15
  2079f6:	00c7171b          	slliw	a4,a4,0xc
  2079fa:	4390                	lw	a2,0(a5)
  2079fc:	76c5                	lui	a3,0xffff1
  2079fe:	16fd                	addi	a3,a3,-1
  207a00:	8ef1                	and	a3,a3,a2
  207a02:	8f55                	or	a4,a4,a3
  207a04:	c398                	sw	a4,0(a5)
  207a06:	002107b7          	lui	a5,0x210
  207a0a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207a0e:	fe846783          	lwu	a5,-24(s0)
  207a12:	fec46683          	lwu	a3,-20(s0)
  207a16:	068e                	slli	a3,a3,0x3
  207a18:	97b6                	add	a5,a5,a3
  207a1a:	078a                	slli	a5,a5,0x2
  207a1c:	97ba                	add	a5,a5,a4
  207a1e:	4394                	lw	a3,0(a5)
  207a20:	000f0737          	lui	a4,0xf0
  207a24:	8f55                	or	a4,a4,a3
  207a26:	c398                	sw	a4,0(a5)
  207a28:	002107b7          	lui	a5,0x210
  207a2c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207a30:	002107b7          	lui	a5,0x210
  207a34:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207a38:	fec46783          	lwu	a5,-20(s0)
  207a3c:	078e                	slli	a5,a5,0x3
  207a3e:	97b6                	add	a5,a5,a3
  207a40:	43dc                	lw	a5,4(a5)
  207a42:	00c7d79b          	srliw	a5,a5,0xc
  207a46:	8bbd                	andi	a5,a5,15
  207a48:	0ff7f793          	andi	a5,a5,255
  207a4c:	2781                	sext.w	a5,a5
  207a4e:	fe842683          	lw	a3,-24(s0)
  207a52:	8abd                	andi	a3,a3,15
  207a54:	0ff6f613          	andi	a2,a3,255
  207a58:	fec46683          	lwu	a3,-20(s0)
  207a5c:	068e                	slli	a3,a3,0x3
  207a5e:	97b6                	add	a5,a5,a3
  207a60:	078a                	slli	a5,a5,0x2
  207a62:	97ba                	add	a5,a5,a4
  207a64:	8732                	mv	a4,a2
  207a66:	8b3d                	andi	a4,a4,15
  207a68:	0107171b          	slliw	a4,a4,0x10
  207a6c:	4390                	lw	a2,0(a5)
  207a6e:	fff106b7          	lui	a3,0xfff10
  207a72:	16fd                	addi	a3,a3,-1
  207a74:	8ef1                	and	a3,a3,a2
  207a76:	8f55                	or	a4,a4,a3
  207a78:	c398                	sw	a4,0(a5)
  207a7a:	002107b7          	lui	a5,0x210
  207a7e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207a82:	fe842783          	lw	a5,-24(s0)
  207a86:	8bbd                	andi	a5,a5,15
  207a88:	0ff7f693          	andi	a3,a5,255
  207a8c:	fec46783          	lwu	a5,-20(s0)
  207a90:	078e                	slli	a5,a5,0x3
  207a92:	97ba                	add	a5,a5,a4
  207a94:	8736                	mv	a4,a3
  207a96:	8b3d                	andi	a4,a4,15
  207a98:	00c7171b          	slliw	a4,a4,0xc
  207a9c:	43d0                	lw	a2,4(a5)
  207a9e:	76c5                	lui	a3,0xffff1
  207aa0:	16fd                	addi	a3,a3,-1
  207aa2:	8ef1                	and	a3,a3,a2
  207aa4:	8f55                	or	a4,a4,a3
  207aa6:	c3d8                	sw	a4,4(a5)
  207aa8:	a04d                	j	207b4a <PutToNandEraseList+0x1c4>
  207aaa:	002107b7          	lui	a5,0x210
  207aae:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207ab2:	fe846783          	lwu	a5,-24(s0)
  207ab6:	fec46683          	lwu	a3,-20(s0)
  207aba:	068e                	slli	a3,a3,0x3
  207abc:	97b6                	add	a5,a5,a3
  207abe:	078a                	slli	a5,a5,0x2
  207ac0:	97ba                	add	a5,a5,a4
  207ac2:	4394                	lw	a3,0(a5)
  207ac4:	673d                	lui	a4,0xf
  207ac6:	8f55                	or	a4,a4,a3
  207ac8:	c398                	sw	a4,0(a5)
  207aca:	002107b7          	lui	a5,0x210
  207ace:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207ad2:	fe846783          	lwu	a5,-24(s0)
  207ad6:	fec46683          	lwu	a3,-20(s0)
  207ada:	068e                	slli	a3,a3,0x3
  207adc:	97b6                	add	a5,a5,a3
  207ade:	078a                	slli	a5,a5,0x2
  207ae0:	97ba                	add	a5,a5,a4
  207ae2:	4394                	lw	a3,0(a5)
  207ae4:	000f0737          	lui	a4,0xf0
  207ae8:	8f55                	or	a4,a4,a3
  207aea:	c398                	sw	a4,0(a5)
  207aec:	002107b7          	lui	a5,0x210
  207af0:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207af4:	fe842783          	lw	a5,-24(s0)
  207af8:	8bbd                	andi	a5,a5,15
  207afa:	0ff7f693          	andi	a3,a5,255
  207afe:	fec46783          	lwu	a5,-20(s0)
  207b02:	078e                	slli	a5,a5,0x3
  207b04:	97ba                	add	a5,a5,a4
  207b06:	8736                	mv	a4,a3
  207b08:	8b3d                	andi	a4,a4,15
  207b0a:	0087171b          	slliw	a4,a4,0x8
  207b0e:	43d0                	lw	a2,4(a5)
  207b10:	76fd                	lui	a3,0xfffff
  207b12:	0ff68693          	addi	a3,a3,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  207b16:	8ef1                	and	a3,a3,a2
  207b18:	8f55                	or	a4,a4,a3
  207b1a:	c3d8                	sw	a4,4(a5)
  207b1c:	002107b7          	lui	a5,0x210
  207b20:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207b24:	fe842783          	lw	a5,-24(s0)
  207b28:	8bbd                	andi	a5,a5,15
  207b2a:	0ff7f693          	andi	a3,a5,255
  207b2e:	fec46783          	lwu	a5,-20(s0)
  207b32:	078e                	slli	a5,a5,0x3
  207b34:	97ba                	add	a5,a5,a4
  207b36:	8736                	mv	a4,a3
  207b38:	8b3d                	andi	a4,a4,15
  207b3a:	00c7171b          	slliw	a4,a4,0xc
  207b3e:	43d0                	lw	a2,4(a5)
  207b40:	76c5                	lui	a3,0xffff1
  207b42:	16fd                	addi	a3,a3,-1
  207b44:	8ef1                	and	a3,a3,a2
  207b46:	8f55                	or	a4,a4,a3
  207b48:	c3d8                	sw	a4,4(a5)
  207b4a:	0001                	nop
  207b4c:	6462                	ld	s0,24(sp)
  207b4e:	6105                	addi	sp,sp,32
  207b50:	8082                	ret

0000000000207b52 <SelectiveGetFromNandEraseList>:
  207b52:	1101                	addi	sp,sp,-32
  207b54:	ec22                	sd	s0,24(sp)
  207b56:	1000                	addi	s0,sp,32
  207b58:	87aa                	mv	a5,a0
  207b5a:	872e                	mv	a4,a1
  207b5c:	fef42623          	sw	a5,-20(s0)
  207b60:	87ba                	mv	a5,a4
  207b62:	fef42423          	sw	a5,-24(s0)
  207b66:	002107b7          	lui	a5,0x210
  207b6a:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207b6e:	fe846783          	lwu	a5,-24(s0)
  207b72:	fec46683          	lwu	a3,-20(s0)
  207b76:	068e                	slli	a3,a3,0x3
  207b78:	97b6                	add	a5,a5,a3
  207b7a:	078a                	slli	a5,a5,0x2
  207b7c:	97ba                	add	a5,a5,a4
  207b7e:	439c                	lw	a5,0(a5)
  207b80:	0107d79b          	srliw	a5,a5,0x10
  207b84:	8bbd                	andi	a5,a5,15
  207b86:	0ff7f793          	andi	a5,a5,255
  207b8a:	873e                	mv	a4,a5
  207b8c:	47bd                	li	a5,15
  207b8e:	10f70c63          	beq	a4,a5,207ca6 <SelectiveGetFromNandEraseList+0x154>
  207b92:	002107b7          	lui	a5,0x210
  207b96:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207b9a:	fe846783          	lwu	a5,-24(s0)
  207b9e:	fec46683          	lwu	a3,-20(s0)
  207ba2:	068e                	slli	a3,a3,0x3
  207ba4:	97b6                	add	a5,a5,a3
  207ba6:	078a                	slli	a5,a5,0x2
  207ba8:	97ba                	add	a5,a5,a4
  207baa:	439c                	lw	a5,0(a5)
  207bac:	00c7d79b          	srliw	a5,a5,0xc
  207bb0:	8bbd                	andi	a5,a5,15
  207bb2:	0ff7f793          	andi	a5,a5,255
  207bb6:	873e                	mv	a4,a5
  207bb8:	47bd                	li	a5,15
  207bba:	0ef70663          	beq	a4,a5,207ca6 <SelectiveGetFromNandEraseList+0x154>
  207bbe:	002107b7          	lui	a5,0x210
  207bc2:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  207bc6:	002107b7          	lui	a5,0x210
  207bca:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207bce:	002107b7          	lui	a5,0x210
  207bd2:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207bd6:	fe846783          	lwu	a5,-24(s0)
  207bda:	fec46583          	lwu	a1,-20(s0)
  207bde:	058e                	slli	a1,a1,0x3
  207be0:	97ae                	add	a5,a5,a1
  207be2:	078a                	slli	a5,a5,0x2
  207be4:	97b6                	add	a5,a5,a3
  207be6:	439c                	lw	a5,0(a5)
  207be8:	00c7d79b          	srliw	a5,a5,0xc
  207bec:	8bbd                	andi	a5,a5,15
  207bee:	0ff7f793          	andi	a5,a5,255
  207bf2:	2781                	sext.w	a5,a5
  207bf4:	fe846683          	lwu	a3,-24(s0)
  207bf8:	fec46583          	lwu	a1,-20(s0)
  207bfc:	058e                	slli	a1,a1,0x3
  207bfe:	96ae                	add	a3,a3,a1
  207c00:	068a                	slli	a3,a3,0x2
  207c02:	96b2                	add	a3,a3,a2
  207c04:	4294                	lw	a3,0(a3)
  207c06:	0106d69b          	srliw	a3,a3,0x10
  207c0a:	8abd                	andi	a3,a3,15
  207c0c:	0ff6f613          	andi	a2,a3,255
  207c10:	fec46683          	lwu	a3,-20(s0)
  207c14:	068e                	slli	a3,a3,0x3
  207c16:	97b6                	add	a5,a5,a3
  207c18:	078a                	slli	a5,a5,0x2
  207c1a:	97ba                	add	a5,a5,a4
  207c1c:	8732                	mv	a4,a2
  207c1e:	8b3d                	andi	a4,a4,15
  207c20:	0107171b          	slliw	a4,a4,0x10
  207c24:	4390                	lw	a2,0(a5)
  207c26:	fff106b7          	lui	a3,0xfff10
  207c2a:	16fd                	addi	a3,a3,-1
  207c2c:	8ef1                	and	a3,a3,a2
  207c2e:	8f55                	or	a4,a4,a3
  207c30:	c398                	sw	a4,0(a5)
  207c32:	002107b7          	lui	a5,0x210
  207c36:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  207c3a:	002107b7          	lui	a5,0x210
  207c3e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207c42:	002107b7          	lui	a5,0x210
  207c46:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207c4a:	fe846783          	lwu	a5,-24(s0)
  207c4e:	fec46583          	lwu	a1,-20(s0)
  207c52:	058e                	slli	a1,a1,0x3
  207c54:	97ae                	add	a5,a5,a1
  207c56:	078a                	slli	a5,a5,0x2
  207c58:	97b6                	add	a5,a5,a3
  207c5a:	439c                	lw	a5,0(a5)
  207c5c:	0107d79b          	srliw	a5,a5,0x10
  207c60:	8bbd                	andi	a5,a5,15
  207c62:	0ff7f793          	andi	a5,a5,255
  207c66:	2781                	sext.w	a5,a5
  207c68:	fe846683          	lwu	a3,-24(s0)
  207c6c:	fec46583          	lwu	a1,-20(s0)
  207c70:	058e                	slli	a1,a1,0x3
  207c72:	96ae                	add	a3,a3,a1
  207c74:	068a                	slli	a3,a3,0x2
  207c76:	96b2                	add	a3,a3,a2
  207c78:	4294                	lw	a3,0(a3)
  207c7a:	00c6d69b          	srliw	a3,a3,0xc
  207c7e:	8abd                	andi	a3,a3,15
  207c80:	0ff6f613          	andi	a2,a3,255
  207c84:	fec46683          	lwu	a3,-20(s0)
  207c88:	068e                	slli	a3,a3,0x3
  207c8a:	97b6                	add	a5,a5,a3
  207c8c:	078a                	slli	a5,a5,0x2
  207c8e:	97ba                	add	a5,a5,a4
  207c90:	8732                	mv	a4,a2
  207c92:	8b3d                	andi	a4,a4,15
  207c94:	00c7171b          	slliw	a4,a4,0xc
  207c98:	4390                	lw	a2,0(a5)
  207c9a:	76c5                	lui	a3,0xffff1
  207c9c:	16fd                	addi	a3,a3,-1
  207c9e:	8ef1                	and	a3,a3,a2
  207ca0:	8f55                	or	a4,a4,a3
  207ca2:	c398                	sw	a4,0(a5)
  207ca4:	a411                	j	207ea8 <SelectiveGetFromNandEraseList+0x356>
  207ca6:	002107b7          	lui	a5,0x210
  207caa:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207cae:	fe846783          	lwu	a5,-24(s0)
  207cb2:	fec46683          	lwu	a3,-20(s0)
  207cb6:	068e                	slli	a3,a3,0x3
  207cb8:	97b6                	add	a5,a5,a3
  207cba:	078a                	slli	a5,a5,0x2
  207cbc:	97ba                	add	a5,a5,a4
  207cbe:	439c                	lw	a5,0(a5)
  207cc0:	0107d79b          	srliw	a5,a5,0x10
  207cc4:	8bbd                	andi	a5,a5,15
  207cc6:	0ff7f793          	andi	a5,a5,255
  207cca:	873e                	mv	a4,a5
  207ccc:	47bd                	li	a5,15
  207cce:	0af71f63          	bne	a4,a5,207d8c <SelectiveGetFromNandEraseList+0x23a>
  207cd2:	002107b7          	lui	a5,0x210
  207cd6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207cda:	fe846783          	lwu	a5,-24(s0)
  207cde:	fec46683          	lwu	a3,-20(s0)
  207ce2:	068e                	slli	a3,a3,0x3
  207ce4:	97b6                	add	a5,a5,a3
  207ce6:	078a                	slli	a5,a5,0x2
  207ce8:	97ba                	add	a5,a5,a4
  207cea:	439c                	lw	a5,0(a5)
  207cec:	00c7d79b          	srliw	a5,a5,0xc
  207cf0:	8bbd                	andi	a5,a5,15
  207cf2:	0ff7f793          	andi	a5,a5,255
  207cf6:	873e                	mv	a4,a5
  207cf8:	47bd                	li	a5,15
  207cfa:	08f70963          	beq	a4,a5,207d8c <SelectiveGetFromNandEraseList+0x23a>
  207cfe:	002107b7          	lui	a5,0x210
  207d02:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207d06:	002107b7          	lui	a5,0x210
  207d0a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207d0e:	fe846783          	lwu	a5,-24(s0)
  207d12:	fec46603          	lwu	a2,-20(s0)
  207d16:	060e                	slli	a2,a2,0x3
  207d18:	97b2                	add	a5,a5,a2
  207d1a:	078a                	slli	a5,a5,0x2
  207d1c:	97b6                	add	a5,a5,a3
  207d1e:	439c                	lw	a5,0(a5)
  207d20:	00c7d79b          	srliw	a5,a5,0xc
  207d24:	8bbd                	andi	a5,a5,15
  207d26:	0ff7f793          	andi	a5,a5,255
  207d2a:	2781                	sext.w	a5,a5
  207d2c:	fec46683          	lwu	a3,-20(s0)
  207d30:	068e                	slli	a3,a3,0x3
  207d32:	97b6                	add	a5,a5,a3
  207d34:	078a                	slli	a5,a5,0x2
  207d36:	97ba                	add	a5,a5,a4
  207d38:	4394                	lw	a3,0(a5)
  207d3a:	000f0737          	lui	a4,0xf0
  207d3e:	8f55                	or	a4,a4,a3
  207d40:	c398                	sw	a4,0(a5)
  207d42:	002107b7          	lui	a5,0x210
  207d46:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207d4a:	002107b7          	lui	a5,0x210
  207d4e:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207d52:	fe846783          	lwu	a5,-24(s0)
  207d56:	fec46603          	lwu	a2,-20(s0)
  207d5a:	060e                	slli	a2,a2,0x3
  207d5c:	97b2                	add	a5,a5,a2
  207d5e:	078a                	slli	a5,a5,0x2
  207d60:	97b6                	add	a5,a5,a3
  207d62:	439c                	lw	a5,0(a5)
  207d64:	00c7d79b          	srliw	a5,a5,0xc
  207d68:	8bbd                	andi	a5,a5,15
  207d6a:	0ff7f693          	andi	a3,a5,255
  207d6e:	fec46783          	lwu	a5,-20(s0)
  207d72:	078e                	slli	a5,a5,0x3
  207d74:	97ba                	add	a5,a5,a4
  207d76:	8736                	mv	a4,a3
  207d78:	8b3d                	andi	a4,a4,15
  207d7a:	00c7171b          	slliw	a4,a4,0xc
  207d7e:	43d0                	lw	a2,4(a5)
  207d80:	76c5                	lui	a3,0xffff1
  207d82:	16fd                	addi	a3,a3,-1
  207d84:	8ef1                	and	a3,a3,a2
  207d86:	8f55                	or	a4,a4,a3
  207d88:	c3d8                	sw	a4,4(a5)
  207d8a:	aa39                	j	207ea8 <SelectiveGetFromNandEraseList+0x356>
  207d8c:	002107b7          	lui	a5,0x210
  207d90:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207d94:	fe846783          	lwu	a5,-24(s0)
  207d98:	fec46683          	lwu	a3,-20(s0)
  207d9c:	068e                	slli	a3,a3,0x3
  207d9e:	97b6                	add	a5,a5,a3
  207da0:	078a                	slli	a5,a5,0x2
  207da2:	97ba                	add	a5,a5,a4
  207da4:	439c                	lw	a5,0(a5)
  207da6:	0107d79b          	srliw	a5,a5,0x10
  207daa:	8bbd                	andi	a5,a5,15
  207dac:	0ff7f793          	andi	a5,a5,255
  207db0:	873e                	mv	a4,a5
  207db2:	47bd                	li	a5,15
  207db4:	0af70f63          	beq	a4,a5,207e72 <SelectiveGetFromNandEraseList+0x320>
  207db8:	002107b7          	lui	a5,0x210
  207dbc:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207dc0:	fe846783          	lwu	a5,-24(s0)
  207dc4:	fec46683          	lwu	a3,-20(s0)
  207dc8:	068e                	slli	a3,a3,0x3
  207dca:	97b6                	add	a5,a5,a3
  207dcc:	078a                	slli	a5,a5,0x2
  207dce:	97ba                	add	a5,a5,a4
  207dd0:	439c                	lw	a5,0(a5)
  207dd2:	00c7d79b          	srliw	a5,a5,0xc
  207dd6:	8bbd                	andi	a5,a5,15
  207dd8:	0ff7f793          	andi	a5,a5,255
  207ddc:	873e                	mv	a4,a5
  207dde:	47bd                	li	a5,15
  207de0:	08f71963          	bne	a4,a5,207e72 <SelectiveGetFromNandEraseList+0x320>
  207de4:	002107b7          	lui	a5,0x210
  207de8:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207dec:	002107b7          	lui	a5,0x210
  207df0:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207df4:	fe846783          	lwu	a5,-24(s0)
  207df8:	fec46603          	lwu	a2,-20(s0)
  207dfc:	060e                	slli	a2,a2,0x3
  207dfe:	97b2                	add	a5,a5,a2
  207e00:	078a                	slli	a5,a5,0x2
  207e02:	97b6                	add	a5,a5,a3
  207e04:	439c                	lw	a5,0(a5)
  207e06:	0107d79b          	srliw	a5,a5,0x10
  207e0a:	8bbd                	andi	a5,a5,15
  207e0c:	0ff7f793          	andi	a5,a5,255
  207e10:	2781                	sext.w	a5,a5
  207e12:	fec46683          	lwu	a3,-20(s0)
  207e16:	068e                	slli	a3,a3,0x3
  207e18:	97b6                	add	a5,a5,a3
  207e1a:	078a                	slli	a5,a5,0x2
  207e1c:	97ba                	add	a5,a5,a4
  207e1e:	4394                	lw	a3,0(a5)
  207e20:	673d                	lui	a4,0xf
  207e22:	8f55                	or	a4,a4,a3
  207e24:	c398                	sw	a4,0(a5)
  207e26:	002107b7          	lui	a5,0x210
  207e2a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  207e2e:	002107b7          	lui	a5,0x210
  207e32:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207e36:	fe846783          	lwu	a5,-24(s0)
  207e3a:	fec46603          	lwu	a2,-20(s0)
  207e3e:	060e                	slli	a2,a2,0x3
  207e40:	97b2                	add	a5,a5,a2
  207e42:	078a                	slli	a5,a5,0x2
  207e44:	97b6                	add	a5,a5,a3
  207e46:	439c                	lw	a5,0(a5)
  207e48:	0107d79b          	srliw	a5,a5,0x10
  207e4c:	8bbd                	andi	a5,a5,15
  207e4e:	0ff7f693          	andi	a3,a5,255
  207e52:	fec46783          	lwu	a5,-20(s0)
  207e56:	078e                	slli	a5,a5,0x3
  207e58:	97ba                	add	a5,a5,a4
  207e5a:	8736                	mv	a4,a3
  207e5c:	8b3d                	andi	a4,a4,15
  207e5e:	0087171b          	slliw	a4,a4,0x8
  207e62:	43d0                	lw	a2,4(a5)
  207e64:	76fd                	lui	a3,0xfffff
  207e66:	0ff68693          	addi	a3,a3,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  207e6a:	8ef1                	and	a3,a3,a2
  207e6c:	8f55                	or	a4,a4,a3
  207e6e:	c3d8                	sw	a4,4(a5)
  207e70:	a825                	j	207ea8 <SelectiveGetFromNandEraseList+0x356>
  207e72:	002107b7          	lui	a5,0x210
  207e76:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207e7a:	fec46783          	lwu	a5,-20(s0)
  207e7e:	078e                	slli	a5,a5,0x3
  207e80:	97ba                	add	a5,a5,a4
  207e82:	43d4                	lw	a3,4(a5)
  207e84:	6705                	lui	a4,0x1
  207e86:	f0070713          	addi	a4,a4,-256 # f00 <start-0x1ff100>
  207e8a:	8f55                	or	a4,a4,a3
  207e8c:	c3d8                	sw	a4,4(a5)
  207e8e:	002107b7          	lui	a5,0x210
  207e92:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207e96:	fec46783          	lwu	a5,-20(s0)
  207e9a:	078e                	slli	a5,a5,0x3
  207e9c:	97ba                	add	a5,a5,a4
  207e9e:	43d4                	lw	a3,4(a5)
  207ea0:	673d                	lui	a4,0xf
  207ea2:	8f55                	or	a4,a4,a3
  207ea4:	c3d8                	sw	a4,4(a5)
  207ea6:	0001                	nop
  207ea8:	0001                	nop
  207eaa:	6462                	ld	s0,24(sp)
  207eac:	6105                	addi	sp,sp,32
  207eae:	8082                	ret

0000000000207eb0 <PutToNandStatusCheckList>:
  207eb0:	1101                	addi	sp,sp,-32
  207eb2:	ec22                	sd	s0,24(sp)
  207eb4:	1000                	addi	s0,sp,32
  207eb6:	87aa                	mv	a5,a0
  207eb8:	872e                	mv	a4,a1
  207eba:	fef42623          	sw	a5,-20(s0)
  207ebe:	87ba                	mv	a5,a4
  207ec0:	fef42423          	sw	a5,-24(s0)
  207ec4:	002107b7          	lui	a5,0x210
  207ec8:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207ecc:	fec46783          	lwu	a5,-20(s0)
  207ed0:	078e                	slli	a5,a5,0x3
  207ed2:	97ba                	add	a5,a5,a4
  207ed4:	43dc                	lw	a5,4(a5)
  207ed6:	0147d79b          	srliw	a5,a5,0x14
  207eda:	8bbd                	andi	a5,a5,15
  207edc:	0ff7f793          	andi	a5,a5,255
  207ee0:	873e                	mv	a4,a5
  207ee2:	47bd                	li	a5,15
  207ee4:	0ef70963          	beq	a4,a5,207fd6 <PutToNandStatusCheckList+0x126>
  207ee8:	002107b7          	lui	a5,0x210
  207eec:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207ef0:	002107b7          	lui	a5,0x210
  207ef4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207ef8:	fec46783          	lwu	a5,-20(s0)
  207efc:	078e                	slli	a5,a5,0x3
  207efe:	97b6                	add	a5,a5,a3
  207f00:	43dc                	lw	a5,4(a5)
  207f02:	0147d79b          	srliw	a5,a5,0x14
  207f06:	8bbd                	andi	a5,a5,15
  207f08:	0ff7f613          	andi	a2,a5,255
  207f0c:	fe846783          	lwu	a5,-24(s0)
  207f10:	fec46683          	lwu	a3,-20(s0)
  207f14:	068e                	slli	a3,a3,0x3
  207f16:	97b6                	add	a5,a5,a3
  207f18:	078a                	slli	a5,a5,0x2
  207f1a:	97ba                	add	a5,a5,a4
  207f1c:	8732                	mv	a4,a2
  207f1e:	8b3d                	andi	a4,a4,15
  207f20:	00c7171b          	slliw	a4,a4,0xc
  207f24:	4390                	lw	a2,0(a5)
  207f26:	76c5                	lui	a3,0xffff1
  207f28:	16fd                	addi	a3,a3,-1
  207f2a:	8ef1                	and	a3,a3,a2
  207f2c:	8f55                	or	a4,a4,a3
  207f2e:	c398                	sw	a4,0(a5)
  207f30:	002107b7          	lui	a5,0x210
  207f34:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207f38:	fe846783          	lwu	a5,-24(s0)
  207f3c:	fec46683          	lwu	a3,-20(s0)
  207f40:	068e                	slli	a3,a3,0x3
  207f42:	97b6                	add	a5,a5,a3
  207f44:	078a                	slli	a5,a5,0x2
  207f46:	97ba                	add	a5,a5,a4
  207f48:	4394                	lw	a3,0(a5)
  207f4a:	000f0737          	lui	a4,0xf0
  207f4e:	8f55                	or	a4,a4,a3
  207f50:	c398                	sw	a4,0(a5)
  207f52:	002107b7          	lui	a5,0x210
  207f56:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207f5a:	002107b7          	lui	a5,0x210
  207f5e:	3c87b683          	ld	a3,968(a5) # 2103c8 <wayPriorityTablePtr>
  207f62:	fec46783          	lwu	a5,-20(s0)
  207f66:	078e                	slli	a5,a5,0x3
  207f68:	97b6                	add	a5,a5,a3
  207f6a:	43dc                	lw	a5,4(a5)
  207f6c:	0147d79b          	srliw	a5,a5,0x14
  207f70:	8bbd                	andi	a5,a5,15
  207f72:	0ff7f793          	andi	a5,a5,255
  207f76:	2781                	sext.w	a5,a5
  207f78:	fe842683          	lw	a3,-24(s0)
  207f7c:	8abd                	andi	a3,a3,15
  207f7e:	0ff6f613          	andi	a2,a3,255
  207f82:	fec46683          	lwu	a3,-20(s0)
  207f86:	068e                	slli	a3,a3,0x3
  207f88:	97b6                	add	a5,a5,a3
  207f8a:	078a                	slli	a5,a5,0x2
  207f8c:	97ba                	add	a5,a5,a4
  207f8e:	8732                	mv	a4,a2
  207f90:	8b3d                	andi	a4,a4,15
  207f92:	0107171b          	slliw	a4,a4,0x10
  207f96:	4390                	lw	a2,0(a5)
  207f98:	fff106b7          	lui	a3,0xfff10
  207f9c:	16fd                	addi	a3,a3,-1
  207f9e:	8ef1                	and	a3,a3,a2
  207fa0:	8f55                	or	a4,a4,a3
  207fa2:	c398                	sw	a4,0(a5)
  207fa4:	002107b7          	lui	a5,0x210
  207fa8:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  207fac:	fe842783          	lw	a5,-24(s0)
  207fb0:	8bbd                	andi	a5,a5,15
  207fb2:	0ff7f693          	andi	a3,a5,255
  207fb6:	fec46783          	lwu	a5,-20(s0)
  207fba:	078e                	slli	a5,a5,0x3
  207fbc:	97ba                	add	a5,a5,a4
  207fbe:	8736                	mv	a4,a3
  207fc0:	8b3d                	andi	a4,a4,15
  207fc2:	0147171b          	slliw	a4,a4,0x14
  207fc6:	43d0                	lw	a2,4(a5)
  207fc8:	ff1006b7          	lui	a3,0xff100
  207fcc:	16fd                	addi	a3,a3,-1
  207fce:	8ef1                	and	a3,a3,a2
  207fd0:	8f55                	or	a4,a4,a3
  207fd2:	c3d8                	sw	a4,4(a5)
  207fd4:	a055                	j	208078 <PutToNandStatusCheckList+0x1c8>
  207fd6:	002107b7          	lui	a5,0x210
  207fda:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207fde:	fe846783          	lwu	a5,-24(s0)
  207fe2:	fec46683          	lwu	a3,-20(s0)
  207fe6:	068e                	slli	a3,a3,0x3
  207fe8:	97b6                	add	a5,a5,a3
  207fea:	078a                	slli	a5,a5,0x2
  207fec:	97ba                	add	a5,a5,a4
  207fee:	4394                	lw	a3,0(a5)
  207ff0:	673d                	lui	a4,0xf
  207ff2:	8f55                	or	a4,a4,a3
  207ff4:	c398                	sw	a4,0(a5)
  207ff6:	002107b7          	lui	a5,0x210
  207ffa:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  207ffe:	fe846783          	lwu	a5,-24(s0)
  208002:	fec46683          	lwu	a3,-20(s0)
  208006:	068e                	slli	a3,a3,0x3
  208008:	97b6                	add	a5,a5,a3
  20800a:	078a                	slli	a5,a5,0x2
  20800c:	97ba                	add	a5,a5,a4
  20800e:	4394                	lw	a3,0(a5)
  208010:	000f0737          	lui	a4,0xf0
  208014:	8f55                	or	a4,a4,a3
  208016:	c398                	sw	a4,0(a5)
  208018:	002107b7          	lui	a5,0x210
  20801c:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  208020:	fe842783          	lw	a5,-24(s0)
  208024:	8bbd                	andi	a5,a5,15
  208026:	0ff7f693          	andi	a3,a5,255
  20802a:	fec46783          	lwu	a5,-20(s0)
  20802e:	078e                	slli	a5,a5,0x3
  208030:	97ba                	add	a5,a5,a4
  208032:	8736                	mv	a4,a3
  208034:	8b3d                	andi	a4,a4,15
  208036:	0107171b          	slliw	a4,a4,0x10
  20803a:	43d0                	lw	a2,4(a5)
  20803c:	fff106b7          	lui	a3,0xfff10
  208040:	16fd                	addi	a3,a3,-1
  208042:	8ef1                	and	a3,a3,a2
  208044:	8f55                	or	a4,a4,a3
  208046:	c3d8                	sw	a4,4(a5)
  208048:	002107b7          	lui	a5,0x210
  20804c:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  208050:	fe842783          	lw	a5,-24(s0)
  208054:	8bbd                	andi	a5,a5,15
  208056:	0ff7f693          	andi	a3,a5,255
  20805a:	fec46783          	lwu	a5,-20(s0)
  20805e:	078e                	slli	a5,a5,0x3
  208060:	97ba                	add	a5,a5,a4
  208062:	8736                	mv	a4,a3
  208064:	8b3d                	andi	a4,a4,15
  208066:	0147171b          	slliw	a4,a4,0x14
  20806a:	43d0                	lw	a2,4(a5)
  20806c:	ff1006b7          	lui	a3,0xff100
  208070:	16fd                	addi	a3,a3,-1
  208072:	8ef1                	and	a3,a3,a2
  208074:	8f55                	or	a4,a4,a3
  208076:	c3d8                	sw	a4,4(a5)
  208078:	0001                	nop
  20807a:	6462                	ld	s0,24(sp)
  20807c:	6105                	addi	sp,sp,32
  20807e:	8082                	ret

0000000000208080 <SelectiveGetFromNandStatusCheckList>:
  208080:	1101                	addi	sp,sp,-32
  208082:	ec22                	sd	s0,24(sp)
  208084:	1000                	addi	s0,sp,32
  208086:	87aa                	mv	a5,a0
  208088:	872e                	mv	a4,a1
  20808a:	fef42623          	sw	a5,-20(s0)
  20808e:	87ba                	mv	a5,a4
  208090:	fef42423          	sw	a5,-24(s0)
  208094:	002107b7          	lui	a5,0x210
  208098:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20809c:	fe846783          	lwu	a5,-24(s0)
  2080a0:	fec46683          	lwu	a3,-20(s0)
  2080a4:	068e                	slli	a3,a3,0x3
  2080a6:	97b6                	add	a5,a5,a3
  2080a8:	078a                	slli	a5,a5,0x2
  2080aa:	97ba                	add	a5,a5,a4
  2080ac:	439c                	lw	a5,0(a5)
  2080ae:	0107d79b          	srliw	a5,a5,0x10
  2080b2:	8bbd                	andi	a5,a5,15
  2080b4:	0ff7f793          	andi	a5,a5,255
  2080b8:	873e                	mv	a4,a5
  2080ba:	47bd                	li	a5,15
  2080bc:	10f70c63          	beq	a4,a5,2081d4 <SelectiveGetFromNandStatusCheckList+0x154>
  2080c0:	002107b7          	lui	a5,0x210
  2080c4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2080c8:	fe846783          	lwu	a5,-24(s0)
  2080cc:	fec46683          	lwu	a3,-20(s0)
  2080d0:	068e                	slli	a3,a3,0x3
  2080d2:	97b6                	add	a5,a5,a3
  2080d4:	078a                	slli	a5,a5,0x2
  2080d6:	97ba                	add	a5,a5,a4
  2080d8:	439c                	lw	a5,0(a5)
  2080da:	00c7d79b          	srliw	a5,a5,0xc
  2080de:	8bbd                	andi	a5,a5,15
  2080e0:	0ff7f793          	andi	a5,a5,255
  2080e4:	873e                	mv	a4,a5
  2080e6:	47bd                	li	a5,15
  2080e8:	0ef70663          	beq	a4,a5,2081d4 <SelectiveGetFromNandStatusCheckList+0x154>
  2080ec:	002107b7          	lui	a5,0x210
  2080f0:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  2080f4:	002107b7          	lui	a5,0x210
  2080f8:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2080fc:	002107b7          	lui	a5,0x210
  208100:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  208104:	fe846783          	lwu	a5,-24(s0)
  208108:	fec46583          	lwu	a1,-20(s0)
  20810c:	058e                	slli	a1,a1,0x3
  20810e:	97ae                	add	a5,a5,a1
  208110:	078a                	slli	a5,a5,0x2
  208112:	97b6                	add	a5,a5,a3
  208114:	439c                	lw	a5,0(a5)
  208116:	00c7d79b          	srliw	a5,a5,0xc
  20811a:	8bbd                	andi	a5,a5,15
  20811c:	0ff7f793          	andi	a5,a5,255
  208120:	2781                	sext.w	a5,a5
  208122:	fe846683          	lwu	a3,-24(s0)
  208126:	fec46583          	lwu	a1,-20(s0)
  20812a:	058e                	slli	a1,a1,0x3
  20812c:	96ae                	add	a3,a3,a1
  20812e:	068a                	slli	a3,a3,0x2
  208130:	96b2                	add	a3,a3,a2
  208132:	4294                	lw	a3,0(a3)
  208134:	0106d69b          	srliw	a3,a3,0x10
  208138:	8abd                	andi	a3,a3,15
  20813a:	0ff6f613          	andi	a2,a3,255
  20813e:	fec46683          	lwu	a3,-20(s0)
  208142:	068e                	slli	a3,a3,0x3
  208144:	97b6                	add	a5,a5,a3
  208146:	078a                	slli	a5,a5,0x2
  208148:	97ba                	add	a5,a5,a4
  20814a:	8732                	mv	a4,a2
  20814c:	8b3d                	andi	a4,a4,15
  20814e:	0107171b          	slliw	a4,a4,0x10
  208152:	4390                	lw	a2,0(a5)
  208154:	fff106b7          	lui	a3,0xfff10
  208158:	16fd                	addi	a3,a3,-1
  20815a:	8ef1                	and	a3,a3,a2
  20815c:	8f55                	or	a4,a4,a3
  20815e:	c398                	sw	a4,0(a5)
  208160:	002107b7          	lui	a5,0x210
  208164:	3e07b603          	ld	a2,992(a5) # 2103e0 <dieStateTablePtr>
  208168:	002107b7          	lui	a5,0x210
  20816c:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208170:	002107b7          	lui	a5,0x210
  208174:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  208178:	fe846783          	lwu	a5,-24(s0)
  20817c:	fec46583          	lwu	a1,-20(s0)
  208180:	058e                	slli	a1,a1,0x3
  208182:	97ae                	add	a5,a5,a1
  208184:	078a                	slli	a5,a5,0x2
  208186:	97b6                	add	a5,a5,a3
  208188:	439c                	lw	a5,0(a5)
  20818a:	0107d79b          	srliw	a5,a5,0x10
  20818e:	8bbd                	andi	a5,a5,15
  208190:	0ff7f793          	andi	a5,a5,255
  208194:	2781                	sext.w	a5,a5
  208196:	fe846683          	lwu	a3,-24(s0)
  20819a:	fec46583          	lwu	a1,-20(s0)
  20819e:	058e                	slli	a1,a1,0x3
  2081a0:	96ae                	add	a3,a3,a1
  2081a2:	068a                	slli	a3,a3,0x2
  2081a4:	96b2                	add	a3,a3,a2
  2081a6:	4294                	lw	a3,0(a3)
  2081a8:	00c6d69b          	srliw	a3,a3,0xc
  2081ac:	8abd                	andi	a3,a3,15
  2081ae:	0ff6f613          	andi	a2,a3,255
  2081b2:	fec46683          	lwu	a3,-20(s0)
  2081b6:	068e                	slli	a3,a3,0x3
  2081b8:	97b6                	add	a5,a5,a3
  2081ba:	078a                	slli	a5,a5,0x2
  2081bc:	97ba                	add	a5,a5,a4
  2081be:	8732                	mv	a4,a2
  2081c0:	8b3d                	andi	a4,a4,15
  2081c2:	00c7171b          	slliw	a4,a4,0xc
  2081c6:	4390                	lw	a2,0(a5)
  2081c8:	76c5                	lui	a3,0xffff1
  2081ca:	16fd                	addi	a3,a3,-1
  2081cc:	8ef1                	and	a3,a3,a2
  2081ce:	8f55                	or	a4,a4,a3
  2081d0:	c398                	sw	a4,0(a5)
  2081d2:	a419                	j	2083d8 <SelectiveGetFromNandStatusCheckList+0x358>
  2081d4:	002107b7          	lui	a5,0x210
  2081d8:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2081dc:	fe846783          	lwu	a5,-24(s0)
  2081e0:	fec46683          	lwu	a3,-20(s0)
  2081e4:	068e                	slli	a3,a3,0x3
  2081e6:	97b6                	add	a5,a5,a3
  2081e8:	078a                	slli	a5,a5,0x2
  2081ea:	97ba                	add	a5,a5,a4
  2081ec:	439c                	lw	a5,0(a5)
  2081ee:	0107d79b          	srliw	a5,a5,0x10
  2081f2:	8bbd                	andi	a5,a5,15
  2081f4:	0ff7f793          	andi	a5,a5,255
  2081f8:	873e                	mv	a4,a5
  2081fa:	47bd                	li	a5,15
  2081fc:	0cf71063          	bne	a4,a5,2082bc <SelectiveGetFromNandStatusCheckList+0x23c>
  208200:	002107b7          	lui	a5,0x210
  208204:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208208:	fe846783          	lwu	a5,-24(s0)
  20820c:	fec46683          	lwu	a3,-20(s0)
  208210:	068e                	slli	a3,a3,0x3
  208212:	97b6                	add	a5,a5,a3
  208214:	078a                	slli	a5,a5,0x2
  208216:	97ba                	add	a5,a5,a4
  208218:	439c                	lw	a5,0(a5)
  20821a:	00c7d79b          	srliw	a5,a5,0xc
  20821e:	8bbd                	andi	a5,a5,15
  208220:	0ff7f793          	andi	a5,a5,255
  208224:	873e                	mv	a4,a5
  208226:	47bd                	li	a5,15
  208228:	08f70a63          	beq	a4,a5,2082bc <SelectiveGetFromNandStatusCheckList+0x23c>
  20822c:	002107b7          	lui	a5,0x210
  208230:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208234:	002107b7          	lui	a5,0x210
  208238:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20823c:	fe846783          	lwu	a5,-24(s0)
  208240:	fec46603          	lwu	a2,-20(s0)
  208244:	060e                	slli	a2,a2,0x3
  208246:	97b2                	add	a5,a5,a2
  208248:	078a                	slli	a5,a5,0x2
  20824a:	97b6                	add	a5,a5,a3
  20824c:	439c                	lw	a5,0(a5)
  20824e:	00c7d79b          	srliw	a5,a5,0xc
  208252:	8bbd                	andi	a5,a5,15
  208254:	0ff7f793          	andi	a5,a5,255
  208258:	2781                	sext.w	a5,a5
  20825a:	fec46683          	lwu	a3,-20(s0)
  20825e:	068e                	slli	a3,a3,0x3
  208260:	97b6                	add	a5,a5,a3
  208262:	078a                	slli	a5,a5,0x2
  208264:	97ba                	add	a5,a5,a4
  208266:	4394                	lw	a3,0(a5)
  208268:	000f0737          	lui	a4,0xf0
  20826c:	8f55                	or	a4,a4,a3
  20826e:	c398                	sw	a4,0(a5)
  208270:	002107b7          	lui	a5,0x210
  208274:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  208278:	002107b7          	lui	a5,0x210
  20827c:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  208280:	fe846783          	lwu	a5,-24(s0)
  208284:	fec46603          	lwu	a2,-20(s0)
  208288:	060e                	slli	a2,a2,0x3
  20828a:	97b2                	add	a5,a5,a2
  20828c:	078a                	slli	a5,a5,0x2
  20828e:	97b6                	add	a5,a5,a3
  208290:	439c                	lw	a5,0(a5)
  208292:	00c7d79b          	srliw	a5,a5,0xc
  208296:	8bbd                	andi	a5,a5,15
  208298:	0ff7f693          	andi	a3,a5,255
  20829c:	fec46783          	lwu	a5,-20(s0)
  2082a0:	078e                	slli	a5,a5,0x3
  2082a2:	97ba                	add	a5,a5,a4
  2082a4:	8736                	mv	a4,a3
  2082a6:	8b3d                	andi	a4,a4,15
  2082a8:	0147171b          	slliw	a4,a4,0x14
  2082ac:	43d0                	lw	a2,4(a5)
  2082ae:	ff1006b7          	lui	a3,0xff100
  2082b2:	16fd                	addi	a3,a3,-1
  2082b4:	8ef1                	and	a3,a3,a2
  2082b6:	8f55                	or	a4,a4,a3
  2082b8:	c3d8                	sw	a4,4(a5)
  2082ba:	aa39                	j	2083d8 <SelectiveGetFromNandStatusCheckList+0x358>
  2082bc:	002107b7          	lui	a5,0x210
  2082c0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2082c4:	fe846783          	lwu	a5,-24(s0)
  2082c8:	fec46683          	lwu	a3,-20(s0)
  2082cc:	068e                	slli	a3,a3,0x3
  2082ce:	97b6                	add	a5,a5,a3
  2082d0:	078a                	slli	a5,a5,0x2
  2082d2:	97ba                	add	a5,a5,a4
  2082d4:	439c                	lw	a5,0(a5)
  2082d6:	0107d79b          	srliw	a5,a5,0x10
  2082da:	8bbd                	andi	a5,a5,15
  2082dc:	0ff7f793          	andi	a5,a5,255
  2082e0:	873e                	mv	a4,a5
  2082e2:	47bd                	li	a5,15
  2082e4:	0af70f63          	beq	a4,a5,2083a2 <SelectiveGetFromNandStatusCheckList+0x322>
  2082e8:	002107b7          	lui	a5,0x210
  2082ec:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2082f0:	fe846783          	lwu	a5,-24(s0)
  2082f4:	fec46683          	lwu	a3,-20(s0)
  2082f8:	068e                	slli	a3,a3,0x3
  2082fa:	97b6                	add	a5,a5,a3
  2082fc:	078a                	slli	a5,a5,0x2
  2082fe:	97ba                	add	a5,a5,a4
  208300:	439c                	lw	a5,0(a5)
  208302:	00c7d79b          	srliw	a5,a5,0xc
  208306:	8bbd                	andi	a5,a5,15
  208308:	0ff7f793          	andi	a5,a5,255
  20830c:	873e                	mv	a4,a5
  20830e:	47bd                	li	a5,15
  208310:	08f71963          	bne	a4,a5,2083a2 <SelectiveGetFromNandStatusCheckList+0x322>
  208314:	002107b7          	lui	a5,0x210
  208318:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20831c:	002107b7          	lui	a5,0x210
  208320:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  208324:	fe846783          	lwu	a5,-24(s0)
  208328:	fec46603          	lwu	a2,-20(s0)
  20832c:	060e                	slli	a2,a2,0x3
  20832e:	97b2                	add	a5,a5,a2
  208330:	078a                	slli	a5,a5,0x2
  208332:	97b6                	add	a5,a5,a3
  208334:	439c                	lw	a5,0(a5)
  208336:	0107d79b          	srliw	a5,a5,0x10
  20833a:	8bbd                	andi	a5,a5,15
  20833c:	0ff7f793          	andi	a5,a5,255
  208340:	2781                	sext.w	a5,a5
  208342:	fec46683          	lwu	a3,-20(s0)
  208346:	068e                	slli	a3,a3,0x3
  208348:	97b6                	add	a5,a5,a3
  20834a:	078a                	slli	a5,a5,0x2
  20834c:	97ba                	add	a5,a5,a4
  20834e:	4394                	lw	a3,0(a5)
  208350:	673d                	lui	a4,0xf
  208352:	8f55                	or	a4,a4,a3
  208354:	c398                	sw	a4,0(a5)
  208356:	002107b7          	lui	a5,0x210
  20835a:	3e07b683          	ld	a3,992(a5) # 2103e0 <dieStateTablePtr>
  20835e:	002107b7          	lui	a5,0x210
  208362:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  208366:	fe846783          	lwu	a5,-24(s0)
  20836a:	fec46603          	lwu	a2,-20(s0)
  20836e:	060e                	slli	a2,a2,0x3
  208370:	97b2                	add	a5,a5,a2
  208372:	078a                	slli	a5,a5,0x2
  208374:	97b6                	add	a5,a5,a3
  208376:	439c                	lw	a5,0(a5)
  208378:	0107d79b          	srliw	a5,a5,0x10
  20837c:	8bbd                	andi	a5,a5,15
  20837e:	0ff7f693          	andi	a3,a5,255
  208382:	fec46783          	lwu	a5,-20(s0)
  208386:	078e                	slli	a5,a5,0x3
  208388:	97ba                	add	a5,a5,a4
  20838a:	8736                	mv	a4,a3
  20838c:	8b3d                	andi	a4,a4,15
  20838e:	0107171b          	slliw	a4,a4,0x10
  208392:	43d0                	lw	a2,4(a5)
  208394:	fff106b7          	lui	a3,0xfff10
  208398:	16fd                	addi	a3,a3,-1
  20839a:	8ef1                	and	a3,a3,a2
  20839c:	8f55                	or	a4,a4,a3
  20839e:	c3d8                	sw	a4,4(a5)
  2083a0:	a825                	j	2083d8 <SelectiveGetFromNandStatusCheckList+0x358>
  2083a2:	002107b7          	lui	a5,0x210
  2083a6:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2083aa:	fec46783          	lwu	a5,-20(s0)
  2083ae:	078e                	slli	a5,a5,0x3
  2083b0:	97ba                	add	a5,a5,a4
  2083b2:	43d4                	lw	a3,4(a5)
  2083b4:	000f0737          	lui	a4,0xf0
  2083b8:	8f55                	or	a4,a4,a3
  2083ba:	c3d8                	sw	a4,4(a5)
  2083bc:	002107b7          	lui	a5,0x210
  2083c0:	3c87b703          	ld	a4,968(a5) # 2103c8 <wayPriorityTablePtr>
  2083c4:	fec46783          	lwu	a5,-20(s0)
  2083c8:	078e                	slli	a5,a5,0x3
  2083ca:	97ba                	add	a5,a5,a4
  2083cc:	43d4                	lw	a3,4(a5)
  2083ce:	00f00737          	lui	a4,0xf00
  2083d2:	8f55                	or	a4,a4,a3
  2083d4:	c3d8                	sw	a4,4(a5)
  2083d6:	0001                	nop
  2083d8:	0001                	nop
  2083da:	6462                	ld	s0,24(sp)
  2083dc:	6105                	addi	sp,sp,32
  2083de:	8082                	ret

00000000002083e0 <IssueNandReq>:
  2083e0:	715d                	addi	sp,sp,-80
  2083e2:	e486                	sd	ra,72(sp)
  2083e4:	e0a2                	sd	s0,64(sp)
  2083e6:	0880                	addi	s0,sp,80
  2083e8:	87aa                	mv	a5,a0
  2083ea:	872e                	mv	a4,a1
  2083ec:	faf42e23          	sw	a5,-68(s0)
  2083f0:	87ba                	mv	a5,a4
  2083f2:	faf42c23          	sw	a5,-72(s0)
  2083f6:	002107b7          	lui	a5,0x210
  2083fa:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2083fe:	fb846783          	lwu	a5,-72(s0)
  208402:	fbc46683          	lwu	a3,-68(s0)
  208406:	068e                	slli	a3,a3,0x3
  208408:	97b6                	add	a5,a5,a3
  20840a:	078e                	slli	a5,a5,0x3
  20840c:	97ba                	add	a5,a5,a4
  20840e:	0007d783          	lhu	a5,0(a5)
  208412:	fef42623          	sw	a5,-20(s0)
  208416:	fec42783          	lw	a5,-20(s0)
  20841a:	853e                	mv	a0,a5
  20841c:	384000ef          	jal	ra,2087a0 <GenerateNandRowAddr>
  208420:	87aa                	mv	a5,a0
  208422:	fef42423          	sw	a5,-24(s0)
  208426:	fec42783          	lw	a5,-20(s0)
  20842a:	853e                	mv	a0,a5
  20842c:	71a000ef          	jal	ra,208b46 <GenerateDataBufAddr>
  208430:	87aa                	mv	a5,a0
  208432:	2781                	sext.w	a5,a5
  208434:	1782                	slli	a5,a5,0x20
  208436:	9381                	srli	a5,a5,0x20
  208438:	fef43023          	sd	a5,-32(s0)
  20843c:	fec42783          	lw	a5,-20(s0)
  208440:	853e                	mv	a0,a5
  208442:	0cf000ef          	jal	ra,208d10 <GenerateSpareDataBufAddr>
  208446:	87aa                	mv	a5,a0
  208448:	2781                	sext.w	a5,a5
  20844a:	1782                	slli	a5,a5,0x20
  20844c:	9381                	srli	a5,a5,0x20
  20844e:	fcf43c23          	sd	a5,-40(s0)
  208452:	002107b7          	lui	a5,0x210
  208456:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20845a:	fec46683          	lwu	a3,-20(s0)
  20845e:	03400793          	li	a5,52
  208462:	02f687b3          	mul	a5,a3,a5
  208466:	97ba                	add	a5,a5,a4
  208468:	0017c783          	lbu	a5,1(a5)
  20846c:	873e                	mv	a4,a5
  20846e:	47a1                	li	a5,8
  208470:	04f71963          	bne	a4,a5,2084c2 <IssueNandReq+0xe2>
  208474:	002107b7          	lui	a5,0x210
  208478:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20847c:	fb846783          	lwu	a5,-72(s0)
  208480:	fbc46683          	lwu	a3,-68(s0)
  208484:	068e                	slli	a3,a3,0x3
  208486:	97b6                	add	a5,a5,a3
  208488:	078a                	slli	a5,a5,0x2
  20848a:	97ba                	add	a5,a5,a4
  20848c:	4394                	lw	a3,0(a5)
  20848e:	777d                	lui	a4,0xfffff
  208490:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  208494:	8f75                	and	a4,a4,a3
  208496:	10076713          	ori	a4,a4,256
  20849a:	c398                	sw	a4,0(a5)
  20849c:	002107b7          	lui	a5,0x210
  2084a0:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  2084a4:	fbc46783          	lwu	a5,-68(s0)
  2084a8:	078e                	slli	a5,a5,0x3
  2084aa:	97ba                	add	a5,a5,a4
  2084ac:	639c                	ld	a5,0(a5)
  2084ae:	fb842703          	lw	a4,-72(s0)
  2084b2:	fe842683          	lw	a3,-24(s0)
  2084b6:	8636                	mv	a2,a3
  2084b8:	85ba                	mv	a1,a4
  2084ba:	853e                	mv	a0,a5
  2084bc:	4b0010ef          	jal	ra,20996c <V2FReadPageTriggerAsync>
  2084c0:	acd9                	j	208796 <IssueNandReq+0x3b6>
  2084c2:	002107b7          	lui	a5,0x210
  2084c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2084ca:	fec46683          	lwu	a3,-20(s0)
  2084ce:	03400793          	li	a5,52
  2084d2:	02f687b3          	mul	a5,a3,a5
  2084d6:	97ba                	add	a5,a5,a4
  2084d8:	0017c783          	lbu	a5,1(a5)
  2084dc:	873e                	mv	a4,a5
  2084de:	47a5                	li	a5,9
  2084e0:	0ef71a63          	bne	a4,a5,2085d4 <IssueNandReq+0x1f4>
  2084e4:	002107b7          	lui	a5,0x210
  2084e8:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2084ec:	fb846783          	lwu	a5,-72(s0)
  2084f0:	fbc46683          	lwu	a3,-68(s0)
  2084f4:	068e                	slli	a3,a3,0x3
  2084f6:	97b6                	add	a5,a5,a3
  2084f8:	078a                	slli	a5,a5,0x2
  2084fa:	97ba                	add	a5,a5,a4
  2084fc:	4394                	lw	a3,0(a5)
  2084fe:	777d                	lui	a4,0xfffff
  208500:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  208504:	8f75                	and	a4,a4,a3
  208506:	30076713          	ori	a4,a4,768
  20850a:	c398                	sw	a4,0(a5)
  20850c:	002107b7          	lui	a5,0x210
  208510:	3d07b703          	ld	a4,976(a5) # 2103d0 <eccErrorInfoTablePtr>
  208514:	fb846683          	lwu	a3,-72(s0)
  208518:	02c00793          	li	a5,44
  20851c:	02f686b3          	mul	a3,a3,a5
  208520:	fbc46603          	lwu	a2,-68(s0)
  208524:	16000793          	li	a5,352
  208528:	02f607b3          	mul	a5,a2,a5
  20852c:	97b6                	add	a5,a5,a3
  20852e:	97ba                	add	a5,a5,a4
  208530:	fcf43823          	sd	a5,-48(s0)
  208534:	002107b7          	lui	a5,0x210
  208538:	3d87b703          	ld	a4,984(a5) # 2103d8 <completeFlagTablePtr>
  20853c:	fb846683          	lwu	a3,-72(s0)
  208540:	fbc46783          	lwu	a5,-68(s0)
  208544:	078e                	slli	a5,a5,0x3
  208546:	97b6                	add	a5,a5,a3
  208548:	078a                	slli	a5,a5,0x2
  20854a:	97ba                	add	a5,a5,a4
  20854c:	fcf43423          	sd	a5,-56(s0)
  208550:	002107b7          	lui	a5,0x210
  208554:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208558:	fec46683          	lwu	a3,-20(s0)
  20855c:	03400793          	li	a5,52
  208560:	02f687b3          	mul	a5,a3,a5
  208564:	97ba                	add	a5,a5,a4
  208566:	4b9c                	lw	a5,16(a5)
  208568:	0047d79b          	srliw	a5,a5,0x4
  20856c:	8b85                	andi	a5,a5,1
  20856e:	0ff7f793          	andi	a5,a5,255
  208572:	873e                	mv	a4,a5
  208574:	4785                	li	a5,1
  208576:	02f71b63          	bne	a4,a5,2085ac <IssueNandReq+0x1cc>
  20857a:	002107b7          	lui	a5,0x210
  20857e:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208582:	fbc46783          	lwu	a5,-68(s0)
  208586:	078e                	slli	a5,a5,0x3
  208588:	97ba                	add	a5,a5,a4
  20858a:	6388                	ld	a0,0(a5)
  20858c:	fb842583          	lw	a1,-72(s0)
  208590:	fe842783          	lw	a5,-24(s0)
  208594:	883e                	mv	a6,a5
  208596:	fc843783          	ld	a5,-56(s0)
  20859a:	fd043703          	ld	a4,-48(s0)
  20859e:	fd843683          	ld	a3,-40(s0)
  2085a2:	fe043603          	ld	a2,-32(s0)
  2085a6:	406010ef          	jal	ra,2099ac <V2FReadPageTransferAsync>
  2085aa:	a2f5                	j	208796 <IssueNandReq+0x3b6>
  2085ac:	002107b7          	lui	a5,0x210
  2085b0:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  2085b4:	fbc46783          	lwu	a5,-68(s0)
  2085b8:	078e                	slli	a5,a5,0x3
  2085ba:	97ba                	add	a5,a5,a4
  2085bc:	639c                	ld	a5,0(a5)
  2085be:	fb842703          	lw	a4,-72(s0)
  2085c2:	fc843683          	ld	a3,-56(s0)
  2085c6:	fe043603          	ld	a2,-32(s0)
  2085ca:	85ba                	mv	a1,a4
  2085cc:	853e                	mv	a0,a5
  2085ce:	46e010ef          	jal	ra,209a3c <V2FReadPageTransferRawAsync>
  2085d2:	a2d1                	j	208796 <IssueNandReq+0x3b6>
  2085d4:	002107b7          	lui	a5,0x210
  2085d8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2085dc:	fec46683          	lwu	a3,-20(s0)
  2085e0:	03400793          	li	a5,52
  2085e4:	02f687b3          	mul	a5,a3,a5
  2085e8:	97ba                	add	a5,a5,a4
  2085ea:	0017c783          	lbu	a5,1(a5)
  2085ee:	ebb1                	bnez	a5,208642 <IssueNandReq+0x262>
  2085f0:	002107b7          	lui	a5,0x210
  2085f4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2085f8:	fb846783          	lwu	a5,-72(s0)
  2085fc:	fbc46683          	lwu	a3,-68(s0)
  208600:	068e                	slli	a3,a3,0x3
  208602:	97b6                	add	a5,a5,a3
  208604:	078a                	slli	a5,a5,0x2
  208606:	97ba                	add	a5,a5,a4
  208608:	4394                	lw	a3,0(a5)
  20860a:	777d                	lui	a4,0xfffff
  20860c:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  208610:	8f75                	and	a4,a4,a3
  208612:	10076713          	ori	a4,a4,256
  208616:	c398                	sw	a4,0(a5)
  208618:	002107b7          	lui	a5,0x210
  20861c:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208620:	fbc46783          	lwu	a5,-68(s0)
  208624:	078e                	slli	a5,a5,0x3
  208626:	97ba                	add	a5,a5,a4
  208628:	639c                	ld	a5,0(a5)
  20862a:	fb842583          	lw	a1,-72(s0)
  20862e:	fe842603          	lw	a2,-24(s0)
  208632:	fd843703          	ld	a4,-40(s0)
  208636:	fe043683          	ld	a3,-32(s0)
  20863a:	853e                	mv	a0,a5
  20863c:	45a010ef          	jal	ra,209a96 <V2FProgramPageAsync>
  208640:	aa99                	j	208796 <IssueNandReq+0x3b6>
  208642:	002107b7          	lui	a5,0x210
  208646:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20864a:	fec46683          	lwu	a3,-20(s0)
  20864e:	03400793          	li	a5,52
  208652:	02f687b3          	mul	a5,a3,a5
  208656:	97ba                	add	a5,a5,a4
  208658:	0017c783          	lbu	a5,1(a5)
  20865c:	873e                	mv	a4,a5
  20865e:	47b1                	li	a5,12
  208660:	04f71963          	bne	a4,a5,2086b2 <IssueNandReq+0x2d2>
  208664:	002107b7          	lui	a5,0x210
  208668:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20866c:	fb846783          	lwu	a5,-72(s0)
  208670:	fbc46683          	lwu	a3,-68(s0)
  208674:	068e                	slli	a3,a3,0x3
  208676:	97b6                	add	a5,a5,a3
  208678:	078a                	slli	a5,a5,0x2
  20867a:	97ba                	add	a5,a5,a4
  20867c:	4394                	lw	a3,0(a5)
  20867e:	777d                	lui	a4,0xfffff
  208680:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  208684:	8f75                	and	a4,a4,a3
  208686:	10076713          	ori	a4,a4,256
  20868a:	c398                	sw	a4,0(a5)
  20868c:	002107b7          	lui	a5,0x210
  208690:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208694:	fbc46783          	lwu	a5,-68(s0)
  208698:	078e                	slli	a5,a5,0x3
  20869a:	97ba                	add	a5,a5,a4
  20869c:	639c                	ld	a5,0(a5)
  20869e:	fb842703          	lw	a4,-72(s0)
  2086a2:	fe842683          	lw	a3,-24(s0)
  2086a6:	8636                	mv	a2,a3
  2086a8:	85ba                	mv	a1,a4
  2086aa:	853e                	mv	a0,a5
  2086ac:	44c010ef          	jal	ra,209af8 <V2FEraseBlockAsync>
  2086b0:	a0dd                	j	208796 <IssueNandReq+0x3b6>
  2086b2:	002107b7          	lui	a5,0x210
  2086b6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2086ba:	fec46683          	lwu	a3,-20(s0)
  2086be:	03400793          	li	a5,52
  2086c2:	02f687b3          	mul	a5,a3,a5
  2086c6:	97ba                	add	a5,a5,a4
  2086c8:	0017c783          	lbu	a5,1(a5)
  2086cc:	873e                	mv	a4,a5
  2086ce:	47b5                	li	a5,13
  2086d0:	04f71463          	bne	a4,a5,208718 <IssueNandReq+0x338>
  2086d4:	002107b7          	lui	a5,0x210
  2086d8:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2086dc:	fb846783          	lwu	a5,-72(s0)
  2086e0:	fbc46683          	lwu	a3,-68(s0)
  2086e4:	068e                	slli	a3,a3,0x3
  2086e6:	97b6                	add	a5,a5,a3
  2086e8:	078a                	slli	a5,a5,0x2
  2086ea:	97ba                	add	a5,a5,a4
  2086ec:	4394                	lw	a3,0(a5)
  2086ee:	777d                	lui	a4,0xfffff
  2086f0:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  2086f4:	8f75                	and	a4,a4,a3
  2086f6:	c398                	sw	a4,0(a5)
  2086f8:	002107b7          	lui	a5,0x210
  2086fc:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208700:	fbc46783          	lwu	a5,-68(s0)
  208704:	078e                	slli	a5,a5,0x3
  208706:	97ba                	add	a5,a5,a4
  208708:	639c                	ld	a5,0(a5)
  20870a:	fb842703          	lw	a4,-72(s0)
  20870e:	85ba                	mv	a1,a4
  208710:	853e                	mv	a0,a5
  208712:	0bc010ef          	jal	ra,2097ce <V2FResetSync>
  208716:	a041                	j	208796 <IssueNandReq+0x3b6>
  208718:	002107b7          	lui	a5,0x210
  20871c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208720:	fec46683          	lwu	a3,-20(s0)
  208724:	03400793          	li	a5,52
  208728:	02f687b3          	mul	a5,a3,a5
  20872c:	97ba                	add	a5,a5,a4
  20872e:	0017c783          	lbu	a5,1(a5)
  208732:	873e                	mv	a4,a5
  208734:	47b9                	li	a5,14
  208736:	04f71a63          	bne	a4,a5,20878a <IssueNandReq+0x3aa>
  20873a:	002107b7          	lui	a5,0x210
  20873e:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208742:	fb846783          	lwu	a5,-72(s0)
  208746:	fbc46683          	lwu	a3,-68(s0)
  20874a:	068e                	slli	a3,a3,0x3
  20874c:	97b6                	add	a5,a5,a3
  20874e:	078a                	slli	a5,a5,0x2
  208750:	97ba                	add	a5,a5,a4
  208752:	4394                	lw	a3,0(a5)
  208754:	777d                	lui	a4,0xfffff
  208756:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  20875a:	8f75                	and	a4,a4,a3
  20875c:	c398                	sw	a4,0(a5)
  20875e:	002107b7          	lui	a5,0x210
  208762:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208766:	fbc46783          	lwu	a5,-68(s0)
  20876a:	078e                	slli	a5,a5,0x3
  20876c:	97ba                	add	a5,a5,a4
  20876e:	6388                	ld	a0,0(a5)
  208770:	fb842583          	lw	a1,-72(s0)
  208774:	170017b7          	lui	a5,0x17001
  208778:	d0078793          	addi	a5,a5,-768 # 17000d00 <g_nvmeTask+0x16df0898>
  20877c:	02000713          	li	a4,32
  208780:	46a1                	li	a3,8
  208782:	4619                	li	a2,6
  208784:	08c010ef          	jal	ra,209810 <V2FSetFeaturesSync>
  208788:	a039                	j	208796 <IssueNandReq+0x3b6>
  20878a:	0020f7b7          	lui	a5,0x20f
  20878e:	1e078513          	addi	a0,a5,480 # 20f1e0 <nvme_main+0x72a>
  208792:	e27fb0ef          	jal	ra,2045b8 <cpl_print>
  208796:	0001                	nop
  208798:	60a6                	ld	ra,72(sp)
  20879a:	6406                	ld	s0,64(sp)
  20879c:	6161                	addi	sp,sp,80
  20879e:	8082                	ret

00000000002087a0 <GenerateNandRowAddr>:
  2087a0:	7139                	addi	sp,sp,-64
  2087a2:	fc06                	sd	ra,56(sp)
  2087a4:	f822                	sd	s0,48(sp)
  2087a6:	0080                	addi	s0,sp,64
  2087a8:	87aa                	mv	a5,a0
  2087aa:	fcf42623          	sw	a5,-52(s0)
  2087ae:	002107b7          	lui	a5,0x210
  2087b2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2087b6:	fcc46683          	lwu	a3,-52(s0)
  2087ba:	03400793          	li	a5,52
  2087be:	02f687b3          	mul	a5,a3,a5
  2087c2:	97ba                	add	a5,a5,a4
  2087c4:	4b9c                	lw	a5,16(a5)
  2087c6:	0027d79b          	srliw	a5,a5,0x2
  2087ca:	8b8d                	andi	a5,a5,3
  2087cc:	0ff7f793          	andi	a5,a5,255
  2087d0:	10079063          	bnez	a5,2088d0 <GenerateNandRowAddr+0x130>
  2087d4:	002107b7          	lui	a5,0x210
  2087d8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2087dc:	fcc46683          	lwu	a3,-52(s0)
  2087e0:	03400793          	li	a5,52
  2087e4:	02f687b3          	mul	a5,a3,a5
  2087e8:	97ba                	add	a5,a5,a4
  2087ea:	53dc                	lw	a5,36(a5)
  2087ec:	03f7f793          	andi	a5,a5,63
  2087f0:	fcf42e23          	sw	a5,-36(s0)
  2087f4:	002107b7          	lui	a5,0x210
  2087f8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2087fc:	fcc46683          	lwu	a3,-52(s0)
  208800:	03400793          	li	a5,52
  208804:	02f687b3          	mul	a5,a3,a5
  208808:	97ba                	add	a5,a5,a4
  20880a:	53dc                	lw	a5,36(a5)
  20880c:	00d7d79b          	srliw	a5,a5,0xd
  208810:	fcf42c23          	sw	a5,-40(s0)
  208814:	fd842783          	lw	a5,-40(s0)
  208818:	00c7d79b          	srliw	a5,a5,0xc
  20881c:	0007871b          	sext.w	a4,a5
  208820:	6785                	lui	a5,0x1
  208822:	0587879b          	addiw	a5,a5,88
  208826:	02f707bb          	mulw	a5,a4,a5
  20882a:	0007871b          	sext.w	a4,a5
  20882e:	fd842683          	lw	a3,-40(s0)
  208832:	6785                	lui	a5,0x1
  208834:	17fd                	addi	a5,a5,-1
  208836:	8ff5                	and	a5,a5,a3
  208838:	2781                	sext.w	a5,a5
  20883a:	9fb9                	addw	a5,a5,a4
  20883c:	fcf42a23          	sw	a5,-44(s0)
  208840:	fd442703          	lw	a4,-44(s0)
  208844:	6785                	lui	a5,0x1
  208846:	0587879b          	addiw	a5,a5,88
  20884a:	02f757bb          	divuw	a5,a4,a5
  20884e:	fef42423          	sw	a5,-24(s0)
  208852:	002107b7          	lui	a5,0x210
  208856:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  20885a:	fd446783          	lwu	a5,-44(s0)
  20885e:	fdc46603          	lwu	a2,-36(s0)
  208862:	6689                	lui	a3,0x2
  208864:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  208868:	02d606b3          	mul	a3,a2,a3
  20886c:	97b6                	add	a5,a5,a3
  20886e:	078a                	slli	a5,a5,0x2
  208870:	97ba                	add	a5,a5,a4
  208872:	0007d783          	lhu	a5,0(a5)
  208876:	873e                	mv	a4,a5
  208878:	6785                	lui	a5,0x1
  20887a:	0587879b          	addiw	a5,a5,88
  20887e:	02f777bb          	remuw	a5,a4,a5
  208882:	17c2                	slli	a5,a5,0x30
  208884:	93c1                	srli	a5,a5,0x30
  208886:	fef42223          	sw	a5,-28(s0)
  20888a:	002107b7          	lui	a5,0x210
  20888e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208892:	fcc46683          	lwu	a3,-52(s0)
  208896:	03400793          	li	a5,52
  20889a:	02f687b3          	mul	a5,a3,a5
  20889e:	97ba                	add	a5,a5,a4
  2088a0:	53dc                	lw	a5,36(a5)
  2088a2:	0067d79b          	srliw	a5,a5,0x6
  2088a6:	2781                	sext.w	a5,a5
  2088a8:	07f7f793          	andi	a5,a5,127
  2088ac:	fef42023          	sw	a5,-32(s0)
  2088b0:	fe042783          	lw	a5,-32(s0)
  2088b4:	2781                	sext.w	a5,a5
  2088b6:	cb89                	beqz	a5,2088c8 <GenerateNandRowAddr+0x128>
  2088b8:	fe042783          	lw	a5,-32(s0)
  2088bc:	0017979b          	slliw	a5,a5,0x1
  2088c0:	2781                	sext.w	a5,a5
  2088c2:	37fd                	addiw	a5,a5,-1
  2088c4:	2781                	sext.w	a5,a5
  2088c6:	a011                	j	2088ca <GenerateNandRowAddr+0x12a>
  2088c8:	4781                	li	a5,0
  2088ca:	fef42023          	sw	a5,-32(s0)
  2088ce:	ac0d                	j	208b00 <GenerateNandRowAddr+0x360>
  2088d0:	002107b7          	lui	a5,0x210
  2088d4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2088d8:	fcc46683          	lwu	a3,-52(s0)
  2088dc:	03400793          	li	a5,52
  2088e0:	02f687b3          	mul	a5,a3,a5
  2088e4:	97ba                	add	a5,a5,a4
  2088e6:	4b9c                	lw	a5,16(a5)
  2088e8:	0027d79b          	srliw	a5,a5,0x2
  2088ec:	8b8d                	andi	a5,a5,3
  2088ee:	0ff7f793          	andi	a5,a5,255
  2088f2:	873e                	mv	a4,a5
  2088f4:	4785                	li	a5,1
  2088f6:	1ef71f63          	bne	a4,a5,208af4 <GenerateNandRowAddr+0x354>
  2088fa:	002107b7          	lui	a5,0x210
  2088fe:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208902:	fcc46683          	lwu	a3,-52(s0)
  208906:	03400793          	li	a5,52
  20890a:	02f687b3          	mul	a5,a3,a5
  20890e:	97ba                	add	a5,a5,a4
  208910:	53dc                	lw	a5,36(a5)
  208912:	8bbd                	andi	a5,a5,15
  208914:	0ff7f793          	andi	a5,a5,255
  208918:	0007871b          	sext.w	a4,a5
  20891c:	002107b7          	lui	a5,0x210
  208920:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  208924:	fcc46603          	lwu	a2,-52(s0)
  208928:	03400793          	li	a5,52
  20892c:	02f607b3          	mul	a5,a2,a5
  208930:	97b6                	add	a5,a5,a3
  208932:	53dc                	lw	a5,36(a5)
  208934:	0047d79b          	srliw	a5,a5,0x4
  208938:	8bbd                	andi	a5,a5,15
  20893a:	0ff7f793          	andi	a5,a5,255
  20893e:	2781                	sext.w	a5,a5
  208940:	0037979b          	slliw	a5,a5,0x3
  208944:	2781                	sext.w	a5,a5
  208946:	9fb9                	addw	a5,a5,a4
  208948:	2781                	sext.w	a5,a5
  20894a:	fcf42e23          	sw	a5,-36(s0)
  20894e:	002107b7          	lui	a5,0x210
  208952:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208956:	fcc46683          	lwu	a3,-52(s0)
  20895a:	03400793          	li	a5,52
  20895e:	02f687b3          	mul	a5,a3,a5
  208962:	97ba                	add	a5,a5,a4
  208964:	4b9c                	lw	a5,16(a5)
  208966:	0077d79b          	srliw	a5,a5,0x7
  20896a:	8b85                	andi	a5,a5,1
  20896c:	0ff7f793          	andi	a5,a5,255
  208970:	873e                	mv	a4,a5
  208972:	4785                	li	a5,1
  208974:	08f71863          	bne	a4,a5,208a04 <GenerateNandRowAddr+0x264>
  208978:	002107b7          	lui	a5,0x210
  20897c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208980:	fcc46683          	lwu	a3,-52(s0)
  208984:	03400793          	li	a5,52
  208988:	02f687b3          	mul	a5,a3,a5
  20898c:	97ba                	add	a5,a5,a4
  20898e:	53dc                	lw	a5,36(a5)
  208990:	0087d79b          	srliw	a5,a5,0x8
  208994:	9bfd                	andi	a5,a5,-1
  208996:	17c2                	slli	a5,a5,0x30
  208998:	93c1                	srli	a5,a5,0x30
  20899a:	873e                	mv	a4,a5
  20899c:	6785                	lui	a5,0x1
  20899e:	0587879b          	addiw	a5,a5,88
  2089a2:	02f757bb          	divuw	a5,a4,a5
  2089a6:	17c2                	slli	a5,a5,0x30
  2089a8:	93c1                	srli	a5,a5,0x30
  2089aa:	fef42423          	sw	a5,-24(s0)
  2089ae:	002107b7          	lui	a5,0x210
  2089b2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2089b6:	fcc46683          	lwu	a3,-52(s0)
  2089ba:	03400793          	li	a5,52
  2089be:	02f687b3          	mul	a5,a3,a5
  2089c2:	97ba                	add	a5,a5,a4
  2089c4:	53dc                	lw	a5,36(a5)
  2089c6:	0087d79b          	srliw	a5,a5,0x8
  2089ca:	9bfd                	andi	a5,a5,-1
  2089cc:	17c2                	slli	a5,a5,0x30
  2089ce:	93c1                	srli	a5,a5,0x30
  2089d0:	873e                	mv	a4,a5
  2089d2:	6785                	lui	a5,0x1
  2089d4:	0587879b          	addiw	a5,a5,88
  2089d8:	02f777bb          	remuw	a5,a4,a5
  2089dc:	17c2                	slli	a5,a5,0x30
  2089de:	93c1                	srli	a5,a5,0x30
  2089e0:	fef42223          	sw	a5,-28(s0)
  2089e4:	002107b7          	lui	a5,0x210
  2089e8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2089ec:	fcc46683          	lwu	a3,-52(s0)
  2089f0:	03400793          	li	a5,52
  2089f4:	02f687b3          	mul	a5,a3,a5
  2089f8:	97ba                	add	a5,a5,a4
  2089fa:	0287d783          	lhu	a5,40(a5)
  2089fe:	fef42023          	sw	a5,-32(s0)
  208a02:	a8fd                	j	208b00 <GenerateNandRowAddr+0x360>
  208a04:	002107b7          	lui	a5,0x210
  208a08:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208a0c:	fcc46683          	lwu	a3,-52(s0)
  208a10:	03400793          	li	a5,52
  208a14:	02f687b3          	mul	a5,a3,a5
  208a18:	97ba                	add	a5,a5,a4
  208a1a:	4b9c                	lw	a5,16(a5)
  208a1c:	0077d79b          	srliw	a5,a5,0x7
  208a20:	8b85                	andi	a5,a5,1
  208a22:	0ff7f793          	andi	a5,a5,255
  208a26:	efe9                	bnez	a5,208b00 <GenerateNandRowAddr+0x360>
  208a28:	002107b7          	lui	a5,0x210
  208a2c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208a30:	fcc46683          	lwu	a3,-52(s0)
  208a34:	03400793          	li	a5,52
  208a38:	02f687b3          	mul	a5,a3,a5
  208a3c:	97ba                	add	a5,a5,a4
  208a3e:	53dc                	lw	a5,36(a5)
  208a40:	0087d79b          	srliw	a5,a5,0x8
  208a44:	9bfd                	andi	a5,a5,-1
  208a46:	17c2                	slli	a5,a5,0x30
  208a48:	93c1                	srli	a5,a5,0x30
  208a4a:	00c7d79b          	srliw	a5,a5,0xc
  208a4e:	17c2                	slli	a5,a5,0x30
  208a50:	93c1                	srli	a5,a5,0x30
  208a52:	fef42423          	sw	a5,-24(s0)
  208a56:	002107b7          	lui	a5,0x210
  208a5a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208a5e:	fcc46683          	lwu	a3,-52(s0)
  208a62:	03400793          	li	a5,52
  208a66:	02f687b3          	mul	a5,a3,a5
  208a6a:	97ba                	add	a5,a5,a4
  208a6c:	53dc                	lw	a5,36(a5)
  208a6e:	0087d79b          	srliw	a5,a5,0x8
  208a72:	9bfd                	andi	a5,a5,-1
  208a74:	17c2                	slli	a5,a5,0x30
  208a76:	93c1                	srli	a5,a5,0x30
  208a78:	2781                	sext.w	a5,a5
  208a7a:	873e                	mv	a4,a5
  208a7c:	6785                	lui	a5,0x1
  208a7e:	17fd                	addi	a5,a5,-1
  208a80:	8ff9                	and	a5,a5,a4
  208a82:	0007871b          	sext.w	a4,a5
  208a86:	fe842683          	lw	a3,-24(s0)
  208a8a:	6785                	lui	a5,0x1
  208a8c:	0587879b          	addiw	a5,a5,88
  208a90:	02f687bb          	mulw	a5,a3,a5
  208a94:	2781                	sext.w	a5,a5
  208a96:	9fb9                	addw	a5,a5,a4
  208a98:	fef42223          	sw	a5,-28(s0)
  208a9c:	002107b7          	lui	a5,0x210
  208aa0:	f607b703          	ld	a4,-160(a5) # 20ff60 <phyBlockMapPtr>
  208aa4:	fe446783          	lwu	a5,-28(s0)
  208aa8:	fdc46603          	lwu	a2,-36(s0)
  208aac:	6689                	lui	a3,0x2
  208aae:	0b068693          	addi	a3,a3,176 # 20b0 <start-0x1fdf50>
  208ab2:	02d606b3          	mul	a3,a2,a3
  208ab6:	97b6                	add	a5,a5,a3
  208ab8:	078a                	slli	a5,a5,0x2
  208aba:	97ba                	add	a5,a5,a4
  208abc:	0007d783          	lhu	a5,0(a5)
  208ac0:	873e                	mv	a4,a5
  208ac2:	6785                	lui	a5,0x1
  208ac4:	0587879b          	addiw	a5,a5,88
  208ac8:	02f777bb          	remuw	a5,a4,a5
  208acc:	17c2                	slli	a5,a5,0x30
  208ace:	93c1                	srli	a5,a5,0x30
  208ad0:	fef42223          	sw	a5,-28(s0)
  208ad4:	002107b7          	lui	a5,0x210
  208ad8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208adc:	fcc46683          	lwu	a3,-52(s0)
  208ae0:	03400793          	li	a5,52
  208ae4:	02f687b3          	mul	a5,a3,a5
  208ae8:	97ba                	add	a5,a5,a4
  208aea:	0287d783          	lhu	a5,40(a5)
  208aee:	fef42023          	sw	a5,-32(s0)
  208af2:	a039                	j	208b00 <GenerateNandRowAddr+0x360>
  208af4:	0020f7b7          	lui	a5,0x20f
  208af8:	21078513          	addi	a0,a5,528 # 20f210 <nvme_main+0x75a>
  208afc:	abdfb0ef          	jal	ra,2045b8 <cpl_print>
  208b00:	fe842783          	lw	a5,-24(s0)
  208b04:	2781                	sext.w	a5,a5
  208b06:	ef81                	bnez	a5,208b1e <GenerateNandRowAddr+0x37e>
  208b08:	fe442783          	lw	a5,-28(s0)
  208b0c:	0087979b          	slliw	a5,a5,0x8
  208b10:	2781                	sext.w	a5,a5
  208b12:	fe042703          	lw	a4,-32(s0)
  208b16:	9fb9                	addw	a5,a5,a4
  208b18:	fef42623          	sw	a5,-20(s0)
  208b1c:	a831                	j	208b38 <GenerateNandRowAddr+0x398>
  208b1e:	fe442703          	lw	a4,-28(s0)
  208b22:	6789                	lui	a5,0x2
  208b24:	9fb9                	addw	a5,a5,a4
  208b26:	2781                	sext.w	a5,a5
  208b28:	0087979b          	slliw	a5,a5,0x8
  208b2c:	2781                	sext.w	a5,a5
  208b2e:	fe042703          	lw	a4,-32(s0)
  208b32:	9fb9                	addw	a5,a5,a4
  208b34:	fef42623          	sw	a5,-20(s0)
  208b38:	fec42783          	lw	a5,-20(s0)
  208b3c:	853e                	mv	a0,a5
  208b3e:	70e2                	ld	ra,56(sp)
  208b40:	7442                	ld	s0,48(sp)
  208b42:	6121                	addi	sp,sp,64
  208b44:	8082                	ret

0000000000208b46 <GenerateDataBufAddr>:
  208b46:	1101                	addi	sp,sp,-32
  208b48:	ec06                	sd	ra,24(sp)
  208b4a:	e822                	sd	s0,16(sp)
  208b4c:	1000                	addi	s0,sp,32
  208b4e:	87aa                	mv	a5,a0
  208b50:	fef42623          	sw	a5,-20(s0)
  208b54:	002107b7          	lui	a5,0x210
  208b58:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208b5c:	fec46683          	lwu	a3,-20(s0)
  208b60:	03400793          	li	a5,52
  208b64:	02f687b3          	mul	a5,a3,a5
  208b68:	97ba                	add	a5,a5,a4
  208b6a:	439c                	lw	a5,0(a5)
  208b6c:	8bbd                	andi	a5,a5,15
  208b6e:	0ff7f793          	andi	a5,a5,255
  208b72:	873e                	mv	a4,a5
  208b74:	4785                	li	a5,1
  208b76:	0ef71063          	bne	a4,a5,208c56 <GenerateDataBufAddr+0x110>
  208b7a:	002107b7          	lui	a5,0x210
  208b7e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208b82:	fec46683          	lwu	a3,-20(s0)
  208b86:	03400793          	li	a5,52
  208b8a:	02f687b3          	mul	a5,a3,a5
  208b8e:	97ba                	add	a5,a5,a4
  208b90:	4b9c                	lw	a5,16(a5)
  208b92:	8b8d                	andi	a5,a5,3
  208b94:	0ff7f793          	andi	a5,a5,255
  208b98:	e785                	bnez	a5,208bc0 <GenerateDataBufAddr+0x7a>
  208b9a:	002107b7          	lui	a5,0x210
  208b9e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208ba2:	fec46683          	lwu	a3,-20(s0)
  208ba6:	03400793          	li	a5,52
  208baa:	02f687b3          	mul	a5,a3,a5
  208bae:	97ba                	add	a5,a5,a4
  208bb0:	4bd8                	lw	a4,20(a5)
  208bb2:	6791                	lui	a5,0x4
  208bb4:	9fb9                	addw	a5,a5,a4
  208bb6:	2781                	sext.w	a5,a5
  208bb8:	00e7979b          	slliw	a5,a5,0xe
  208bbc:	2781                	sext.w	a5,a5
  208bbe:	a2a1                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208bc0:	002107b7          	lui	a5,0x210
  208bc4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208bc8:	fec46683          	lwu	a3,-20(s0)
  208bcc:	03400793          	li	a5,52
  208bd0:	02f687b3          	mul	a5,a3,a5
  208bd4:	97ba                	add	a5,a5,a4
  208bd6:	4b9c                	lw	a5,16(a5)
  208bd8:	8b8d                	andi	a5,a5,3
  208bda:	0ff7f793          	andi	a5,a5,255
  208bde:	873e                	mv	a4,a5
  208be0:	4785                	li	a5,1
  208be2:	02f71763          	bne	a4,a5,208c10 <GenerateDataBufAddr+0xca>
  208be6:	002107b7          	lui	a5,0x210
  208bea:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208bee:	fec46683          	lwu	a3,-20(s0)
  208bf2:	03400793          	li	a5,52
  208bf6:	02f687b3          	mul	a5,a3,a5
  208bfa:	97ba                	add	a5,a5,a4
  208bfc:	4bd8                	lw	a4,20(a5)
  208bfe:	6791                	lui	a5,0x4
  208c00:	4007879b          	addiw	a5,a5,1024
  208c04:	9fb9                	addw	a5,a5,a4
  208c06:	2781                	sext.w	a5,a5
  208c08:	00e7979b          	slliw	a5,a5,0xe
  208c0c:	2781                	sext.w	a5,a5
  208c0e:	a8e5                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208c10:	002107b7          	lui	a5,0x210
  208c14:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208c18:	fec46683          	lwu	a3,-20(s0)
  208c1c:	03400793          	li	a5,52
  208c20:	02f687b3          	mul	a5,a3,a5
  208c24:	97ba                	add	a5,a5,a4
  208c26:	4b9c                	lw	a5,16(a5)
  208c28:	8b8d                	andi	a5,a5,3
  208c2a:	0ff7f793          	andi	a5,a5,255
  208c2e:	873e                	mv	a4,a5
  208c30:	4789                	li	a5,2
  208c32:	00f71f63          	bne	a4,a5,208c50 <GenerateDataBufAddr+0x10a>
  208c36:	002107b7          	lui	a5,0x210
  208c3a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208c3e:	fec46683          	lwu	a3,-20(s0)
  208c42:	03400793          	li	a5,52
  208c46:	02f687b3          	mul	a5,a3,a5
  208c4a:	97ba                	add	a5,a5,a4
  208c4c:	4bdc                	lw	a5,20(a5)
  208c4e:	a865                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208c50:	111447b7          	lui	a5,0x11144
  208c54:	a84d                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208c56:	002107b7          	lui	a5,0x210
  208c5a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208c5e:	fec46683          	lwu	a3,-20(s0)
  208c62:	03400793          	li	a5,52
  208c66:	02f687b3          	mul	a5,a3,a5
  208c6a:	97ba                	add	a5,a5,a4
  208c6c:	439c                	lw	a5,0(a5)
  208c6e:	8bbd                	andi	a5,a5,15
  208c70:	0ff7f793          	andi	a5,a5,255
  208c74:	873e                	mv	a4,a5
  208c76:	4789                	li	a5,2
  208c78:	08f71163          	bne	a4,a5,208cfa <GenerateDataBufAddr+0x1b4>
  208c7c:	002107b7          	lui	a5,0x210
  208c80:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208c84:	fec46683          	lwu	a3,-20(s0)
  208c88:	03400793          	li	a5,52
  208c8c:	02f687b3          	mul	a5,a3,a5
  208c90:	97ba                	add	a5,a5,a4
  208c92:	4b9c                	lw	a5,16(a5)
  208c94:	8b8d                	andi	a5,a5,3
  208c96:	0ff7f793          	andi	a5,a5,255
  208c9a:	eba9                	bnez	a5,208cec <GenerateDataBufAddr+0x1a6>
  208c9c:	002107b7          	lui	a5,0x210
  208ca0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208ca4:	fec46683          	lwu	a3,-20(s0)
  208ca8:	03400793          	li	a5,52
  208cac:	02f687b3          	mul	a5,a3,a5
  208cb0:	97ba                	add	a5,a5,a4
  208cb2:	4bd8                	lw	a4,20(a5)
  208cb4:	6791                	lui	a5,0x4
  208cb6:	9fb9                	addw	a5,a5,a4
  208cb8:	2781                	sext.w	a5,a5
  208cba:	00e7979b          	slliw	a5,a5,0xe
  208cbe:	0007871b          	sext.w	a4,a5
  208cc2:	002107b7          	lui	a5,0x210
  208cc6:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  208cca:	fec46603          	lwu	a2,-20(s0)
  208cce:	03400793          	li	a5,52
  208cd2:	02f607b3          	mul	a5,a2,a5
  208cd6:	97b6                	add	a5,a5,a3
  208cd8:	01a7d783          	lhu	a5,26(a5)
  208cdc:	2781                	sext.w	a5,a5
  208cde:	00c7979b          	slliw	a5,a5,0xc
  208ce2:	2781                	sext.w	a5,a5
  208ce4:	2781                	sext.w	a5,a5
  208ce6:	9fb9                	addw	a5,a5,a4
  208ce8:	2781                	sext.w	a5,a5
  208cea:	a831                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208cec:	0020f7b7          	lui	a5,0x20f
  208cf0:	24078513          	addi	a0,a5,576 # 20f240 <nvme_main+0x78a>
  208cf4:	8c5fb0ef          	jal	ra,2045b8 <cpl_print>
  208cf8:	a039                	j	208d06 <GenerateDataBufAddr+0x1c0>
  208cfa:	0020f7b7          	lui	a5,0x20f
  208cfe:	27078513          	addi	a0,a5,624 # 20f270 <nvme_main+0x7ba>
  208d02:	8b7fb0ef          	jal	ra,2045b8 <cpl_print>
  208d06:	853e                	mv	a0,a5
  208d08:	60e2                	ld	ra,24(sp)
  208d0a:	6442                	ld	s0,16(sp)
  208d0c:	6105                	addi	sp,sp,32
  208d0e:	8082                	ret

0000000000208d10 <GenerateSpareDataBufAddr>:
  208d10:	1101                	addi	sp,sp,-32
  208d12:	ec06                	sd	ra,24(sp)
  208d14:	e822                	sd	s0,16(sp)
  208d16:	1000                	addi	s0,sp,32
  208d18:	87aa                	mv	a5,a0
  208d1a:	fef42623          	sw	a5,-20(s0)
  208d1e:	002107b7          	lui	a5,0x210
  208d22:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208d26:	fec46683          	lwu	a3,-20(s0)
  208d2a:	03400793          	li	a5,52
  208d2e:	02f687b3          	mul	a5,a3,a5
  208d32:	97ba                	add	a5,a5,a4
  208d34:	439c                	lw	a5,0(a5)
  208d36:	8bbd                	andi	a5,a5,15
  208d38:	0ff7f793          	andi	a5,a5,255
  208d3c:	873e                	mv	a4,a5
  208d3e:	4785                	li	a5,1
  208d40:	0ef71563          	bne	a4,a5,208e2a <GenerateSpareDataBufAddr+0x11a>
  208d44:	002107b7          	lui	a5,0x210
  208d48:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208d4c:	fec46683          	lwu	a3,-20(s0)
  208d50:	03400793          	li	a5,52
  208d54:	02f687b3          	mul	a5,a3,a5
  208d58:	97ba                	add	a5,a5,a4
  208d5a:	4b9c                	lw	a5,16(a5)
  208d5c:	8b8d                	andi	a5,a5,3
  208d5e:	0ff7f793          	andi	a5,a5,255
  208d62:	e78d                	bnez	a5,208d8c <GenerateSpareDataBufAddr+0x7c>
  208d64:	002107b7          	lui	a5,0x210
  208d68:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208d6c:	fec46683          	lwu	a3,-20(s0)
  208d70:	03400793          	li	a5,52
  208d74:	02f687b3          	mul	a5,a3,a5
  208d78:	97ba                	add	a5,a5,a4
  208d7a:	4bd8                	lw	a4,20(a5)
  208d7c:	001117b7          	lui	a5,0x111
  208d80:	9fb9                	addw	a5,a5,a4
  208d82:	2781                	sext.w	a5,a5
  208d84:	0087979b          	slliw	a5,a5,0x8
  208d88:	2781                	sext.w	a5,a5
  208d8a:	a225                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208d8c:	002107b7          	lui	a5,0x210
  208d90:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208d94:	fec46683          	lwu	a3,-20(s0)
  208d98:	03400793          	li	a5,52
  208d9c:	02f687b3          	mul	a5,a3,a5
  208da0:	97ba                	add	a5,a5,a4
  208da2:	4b9c                	lw	a5,16(a5)
  208da4:	8b8d                	andi	a5,a5,3
  208da6:	0ff7f793          	andi	a5,a5,255
  208daa:	873e                	mv	a4,a5
  208dac:	4785                	li	a5,1
  208dae:	02f71863          	bne	a4,a5,208dde <GenerateSpareDataBufAddr+0xce>
  208db2:	002107b7          	lui	a5,0x210
  208db6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208dba:	fec46683          	lwu	a3,-20(s0)
  208dbe:	03400793          	li	a5,52
  208dc2:	02f687b3          	mul	a5,a3,a5
  208dc6:	97ba                	add	a5,a5,a4
  208dc8:	4bd8                	lw	a4,20(a5)
  208dca:	001117b7          	lui	a5,0x111
  208dce:	4007879b          	addiw	a5,a5,1024
  208dd2:	9fb9                	addw	a5,a5,a4
  208dd4:	2781                	sext.w	a5,a5
  208dd6:	0087979b          	slliw	a5,a5,0x8
  208dda:	2781                	sext.w	a5,a5
  208ddc:	a8d9                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208dde:	002107b7          	lui	a5,0x210
  208de2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208de6:	fec46683          	lwu	a3,-20(s0)
  208dea:	03400793          	li	a5,52
  208dee:	02f687b3          	mul	a5,a3,a5
  208df2:	97ba                	add	a5,a5,a4
  208df4:	4b9c                	lw	a5,16(a5)
  208df6:	8b8d                	andi	a5,a5,3
  208df8:	0ff7f793          	andi	a5,a5,255
  208dfc:	873e                	mv	a4,a5
  208dfe:	4789                	li	a5,2
  208e00:	02f71263          	bne	a4,a5,208e24 <GenerateSpareDataBufAddr+0x114>
  208e04:	002107b7          	lui	a5,0x210
  208e08:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208e0c:	fec46683          	lwu	a3,-20(s0)
  208e10:	03400793          	li	a5,52
  208e14:	02f687b3          	mul	a5,a3,a5
  208e18:	97ba                	add	a5,a5,a4
  208e1a:	4bd8                	lw	a4,20(a5)
  208e1c:	6791                	lui	a5,0x4
  208e1e:	9fb9                	addw	a5,a5,a4
  208e20:	2781                	sext.w	a5,a5
  208e22:	a841                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208e24:	111487b7          	lui	a5,0x11148
  208e28:	a069                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208e2a:	002107b7          	lui	a5,0x210
  208e2e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208e32:	fec46683          	lwu	a3,-20(s0)
  208e36:	03400793          	li	a5,52
  208e3a:	02f687b3          	mul	a5,a3,a5
  208e3e:	97ba                	add	a5,a5,a4
  208e40:	439c                	lw	a5,0(a5)
  208e42:	8bbd                	andi	a5,a5,15
  208e44:	0ff7f793          	andi	a5,a5,255
  208e48:	873e                	mv	a4,a5
  208e4a:	4789                	li	a5,2
  208e4c:	04f71d63          	bne	a4,a5,208ea6 <GenerateSpareDataBufAddr+0x196>
  208e50:	002107b7          	lui	a5,0x210
  208e54:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208e58:	fec46683          	lwu	a3,-20(s0)
  208e5c:	03400793          	li	a5,52
  208e60:	02f687b3          	mul	a5,a3,a5
  208e64:	97ba                	add	a5,a5,a4
  208e66:	4b9c                	lw	a5,16(a5)
  208e68:	8b8d                	andi	a5,a5,3
  208e6a:	0ff7f793          	andi	a5,a5,255
  208e6e:	e78d                	bnez	a5,208e98 <GenerateSpareDataBufAddr+0x188>
  208e70:	002107b7          	lui	a5,0x210
  208e74:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208e78:	fec46683          	lwu	a3,-20(s0)
  208e7c:	03400793          	li	a5,52
  208e80:	02f687b3          	mul	a5,a3,a5
  208e84:	97ba                	add	a5,a5,a4
  208e86:	4bd8                	lw	a4,20(a5)
  208e88:	001117b7          	lui	a5,0x111
  208e8c:	9fb9                	addw	a5,a5,a4
  208e8e:	2781                	sext.w	a5,a5
  208e90:	0087979b          	slliw	a5,a5,0x8
  208e94:	2781                	sext.w	a5,a5
  208e96:	a831                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208e98:	0020f7b7          	lui	a5,0x20f
  208e9c:	24078513          	addi	a0,a5,576 # 20f240 <nvme_main+0x78a>
  208ea0:	f18fb0ef          	jal	ra,2045b8 <cpl_print>
  208ea4:	a039                	j	208eb2 <GenerateSpareDataBufAddr+0x1a2>
  208ea6:	0020f7b7          	lui	a5,0x20f
  208eaa:	27078513          	addi	a0,a5,624 # 20f270 <nvme_main+0x7ba>
  208eae:	f0afb0ef          	jal	ra,2045b8 <cpl_print>
  208eb2:	853e                	mv	a0,a5
  208eb4:	60e2                	ld	ra,24(sp)
  208eb6:	6442                	ld	s0,16(sp)
  208eb8:	6105                	addi	sp,sp,32
  208eba:	8082                	ret

0000000000208ebc <CheckReqStatus>:
  208ebc:	7139                	addi	sp,sp,-64
  208ebe:	fc06                	sd	ra,56(sp)
  208ec0:	f822                	sd	s0,48(sp)
  208ec2:	0080                	addi	s0,sp,64
  208ec4:	87aa                	mv	a5,a0
  208ec6:	872e                	mv	a4,a1
  208ec8:	fcf42623          	sw	a5,-52(s0)
  208ecc:	87ba                	mv	a5,a4
  208ece:	fcf42423          	sw	a5,-56(s0)
  208ed2:	002107b7          	lui	a5,0x210
  208ed6:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  208eda:	fc846783          	lwu	a5,-56(s0)
  208ede:	fcc46683          	lwu	a3,-52(s0)
  208ee2:	068e                	slli	a3,a3,0x3
  208ee4:	97b6                	add	a5,a5,a3
  208ee6:	078e                	slli	a5,a5,0x3
  208ee8:	97ba                	add	a5,a5,a4
  208eea:	0007d783          	lhu	a5,0(a5)
  208eee:	fef42623          	sw	a5,-20(s0)
  208ef2:	002107b7          	lui	a5,0x210
  208ef6:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208efa:	fc846783          	lwu	a5,-56(s0)
  208efe:	fcc46683          	lwu	a3,-52(s0)
  208f02:	068e                	slli	a3,a3,0x3
  208f04:	97b6                	add	a5,a5,a3
  208f06:	078a                	slli	a5,a5,0x2
  208f08:	97ba                	add	a5,a5,a4
  208f0a:	439c                	lw	a5,0(a5)
  208f0c:	0087d79b          	srliw	a5,a5,0x8
  208f10:	8bbd                	andi	a5,a5,15
  208f12:	0ff7f793          	andi	a5,a5,255
  208f16:	873e                	mv	a4,a5
  208f18:	478d                	li	a5,3
  208f1a:	08f71863          	bne	a4,a5,208faa <CheckReqStatus+0xee>
  208f1e:	002107b7          	lui	a5,0x210
  208f22:	3d87b703          	ld	a4,984(a5) # 2103d8 <completeFlagTablePtr>
  208f26:	fc846783          	lwu	a5,-56(s0)
  208f2a:	fcc46683          	lwu	a3,-52(s0)
  208f2e:	068e                	slli	a3,a3,0x3
  208f30:	97b6                	add	a5,a5,a3
  208f32:	078a                	slli	a5,a5,0x2
  208f34:	97ba                	add	a5,a5,a4
  208f36:	439c                	lw	a5,0(a5)
  208f38:	fcf42a23          	sw	a5,-44(s0)
  208f3c:	fd442783          	lw	a5,-44(s0)
  208f40:	8b85                	andi	a5,a5,1
  208f42:	2781                	sext.w	a5,a5
  208f44:	22078b63          	beqz	a5,20917a <CheckReqStatus+0x2be>
  208f48:	002107b7          	lui	a5,0x210
  208f4c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  208f50:	fec46683          	lwu	a3,-20(s0)
  208f54:	03400793          	li	a5,52
  208f58:	02f687b3          	mul	a5,a3,a5
  208f5c:	97ba                	add	a5,a5,a4
  208f5e:	4b9c                	lw	a5,16(a5)
  208f60:	0047d79b          	srliw	a5,a5,0x4
  208f64:	8b85                	andi	a5,a5,1
  208f66:	0ff7f793          	andi	a5,a5,255
  208f6a:	873e                	mv	a4,a5
  208f6c:	4785                	li	a5,1
  208f6e:	02f71c63          	bne	a4,a5,208fa6 <CheckReqStatus+0xea>
  208f72:	fc842703          	lw	a4,-56(s0)
  208f76:	fcc42783          	lw	a5,-52(s0)
  208f7a:	85ba                	mv	a1,a4
  208f7c:	853e                	mv	a0,a5
  208f7e:	208000ef          	jal	ra,209186 <CheckEccErrorInfo>
  208f82:	87aa                	mv	a5,a0
  208f84:	fcf42823          	sw	a5,-48(s0)
  208f88:	fd042783          	lw	a5,-48(s0)
  208f8c:	0007871b          	sext.w	a4,a5
  208f90:	4789                	li	a5,2
  208f92:	00f71463          	bne	a4,a5,208f9a <CheckReqStatus+0xde>
  208f96:	478d                	li	a5,3
  208f98:	a2d5                	j	20917c <CheckReqStatus+0x2c0>
  208f9a:	fd042783          	lw	a5,-48(s0)
  208f9e:	2781                	sext.w	a5,a5
  208fa0:	e399                	bnez	a5,208fa6 <CheckReqStatus+0xea>
  208fa2:	4789                	li	a5,2
  208fa4:	aae1                	j	20917c <CheckReqStatus+0x2c0>
  208fa6:	4785                	li	a5,1
  208fa8:	aad1                	j	20917c <CheckReqStatus+0x2c0>
  208faa:	002107b7          	lui	a5,0x210
  208fae:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  208fb2:	fc846783          	lwu	a5,-56(s0)
  208fb6:	fcc46683          	lwu	a3,-52(s0)
  208fba:	068e                	slli	a3,a3,0x3
  208fbc:	97b6                	add	a5,a5,a3
  208fbe:	078a                	slli	a5,a5,0x2
  208fc0:	97ba                	add	a5,a5,a4
  208fc2:	439c                	lw	a5,0(a5)
  208fc4:	0087d79b          	srliw	a5,a5,0x8
  208fc8:	8bbd                	andi	a5,a5,15
  208fca:	0ff7f793          	andi	a5,a5,255
  208fce:	873e                	mv	a4,a5
  208fd0:	4785                	li	a5,1
  208fd2:	06f71663          	bne	a4,a5,20903e <CheckReqStatus+0x182>
  208fd6:	002107b7          	lui	a5,0x210
  208fda:	3c07b703          	ld	a4,960(a5) # 2103c0 <statusReportTablePtr>
  208fde:	fc846683          	lwu	a3,-56(s0)
  208fe2:	fcc46783          	lwu	a5,-52(s0)
  208fe6:	078e                	slli	a5,a5,0x3
  208fe8:	97b6                	add	a5,a5,a3
  208fea:	078a                	slli	a5,a5,0x2
  208fec:	97ba                	add	a5,a5,a4
  208fee:	fcf43c23          	sd	a5,-40(s0)
  208ff2:	002107b7          	lui	a5,0x210
  208ff6:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  208ffa:	fcc46783          	lwu	a5,-52(s0)
  208ffe:	078e                	slli	a5,a5,0x3
  209000:	97ba                	add	a5,a5,a4
  209002:	639c                	ld	a5,0(a5)
  209004:	fc842703          	lw	a4,-56(s0)
  209008:	fd843603          	ld	a2,-40(s0)
  20900c:	85ba                	mv	a1,a4
  20900e:	853e                	mv	a0,a5
  209010:	32b000ef          	jal	ra,209b3a <V2FStatusCheckAsync>
  209014:	002107b7          	lui	a5,0x210
  209018:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20901c:	fc846783          	lwu	a5,-56(s0)
  209020:	fcc46683          	lwu	a3,-52(s0)
  209024:	068e                	slli	a3,a3,0x3
  209026:	97b6                	add	a5,a5,a3
  209028:	078a                	slli	a5,a5,0x2
  20902a:	97ba                	add	a5,a5,a4
  20902c:	4394                	lw	a3,0(a5)
  20902e:	777d                	lui	a4,0xfffff
  209030:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  209034:	8f75                	and	a4,a4,a3
  209036:	20076713          	ori	a4,a4,512
  20903a:	c398                	sw	a4,0(a5)
  20903c:	aa3d                	j	20917a <CheckReqStatus+0x2be>
  20903e:	002107b7          	lui	a5,0x210
  209042:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  209046:	fc846783          	lwu	a5,-56(s0)
  20904a:	fcc46683          	lwu	a3,-52(s0)
  20904e:	068e                	slli	a3,a3,0x3
  209050:	97b6                	add	a5,a5,a3
  209052:	078a                	slli	a5,a5,0x2
  209054:	97ba                	add	a5,a5,a4
  209056:	439c                	lw	a5,0(a5)
  209058:	0087d79b          	srliw	a5,a5,0x8
  20905c:	8bbd                	andi	a5,a5,15
  20905e:	0ff7f793          	andi	a5,a5,255
  209062:	873e                	mv	a4,a5
  209064:	4789                	li	a5,2
  209066:	0af71663          	bne	a4,a5,209112 <CheckReqStatus+0x256>
  20906a:	002107b7          	lui	a5,0x210
  20906e:	3c07b703          	ld	a4,960(a5) # 2103c0 <statusReportTablePtr>
  209072:	fc846783          	lwu	a5,-56(s0)
  209076:	fcc46683          	lwu	a3,-52(s0)
  20907a:	068e                	slli	a3,a3,0x3
  20907c:	97b6                	add	a5,a5,a3
  20907e:	078a                	slli	a5,a5,0x2
  209080:	97ba                	add	a5,a5,a4
  209082:	439c                	lw	a5,0(a5)
  209084:	fef42223          	sw	a5,-28(s0)
  209088:	fe442783          	lw	a5,-28(s0)
  20908c:	8b85                	andi	a5,a5,1
  20908e:	2781                	sext.w	a5,a5
  209090:	c7ed                	beqz	a5,20917a <CheckReqStatus+0x2be>
  209092:	fe442783          	lw	a5,-28(s0)
  209096:	0017d79b          	srliw	a5,a5,0x1
  20909a:	fef42023          	sw	a5,-32(s0)
  20909e:	fe042783          	lw	a5,-32(s0)
  2090a2:	0607f793          	andi	a5,a5,96
  2090a6:	2781                	sext.w	a5,a5
  2090a8:	873e                	mv	a4,a5
  2090aa:	06000793          	li	a5,96
  2090ae:	02f71d63          	bne	a4,a5,2090e8 <CheckReqStatus+0x22c>
  2090b2:	fe042783          	lw	a5,-32(s0)
  2090b6:	8b8d                	andi	a5,a5,3
  2090b8:	2781                	sext.w	a5,a5
  2090ba:	c399                	beqz	a5,2090c0 <CheckReqStatus+0x204>
  2090bc:	4789                	li	a5,2
  2090be:	a87d                	j	20917c <CheckReqStatus+0x2c0>
  2090c0:	002107b7          	lui	a5,0x210
  2090c4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2090c8:	fc846783          	lwu	a5,-56(s0)
  2090cc:	fcc46683          	lwu	a3,-52(s0)
  2090d0:	068e                	slli	a3,a3,0x3
  2090d2:	97b6                	add	a5,a5,a3
  2090d4:	078a                	slli	a5,a5,0x2
  2090d6:	97ba                	add	a5,a5,a4
  2090d8:	4394                	lw	a3,0(a5)
  2090da:	777d                	lui	a4,0xfffff
  2090dc:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  2090e0:	8f75                	and	a4,a4,a3
  2090e2:	c398                	sw	a4,0(a5)
  2090e4:	4785                	li	a5,1
  2090e6:	a859                	j	20917c <CheckReqStatus+0x2c0>
  2090e8:	002107b7          	lui	a5,0x210
  2090ec:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2090f0:	fc846783          	lwu	a5,-56(s0)
  2090f4:	fcc46683          	lwu	a3,-52(s0)
  2090f8:	068e                	slli	a3,a3,0x3
  2090fa:	97b6                	add	a5,a5,a3
  2090fc:	078a                	slli	a5,a5,0x2
  2090fe:	97ba                	add	a5,a5,a4
  209100:	4394                	lw	a3,0(a5)
  209102:	777d                	lui	a4,0xfffff
  209104:	0ff70713          	addi	a4,a4,255 # fffffffffffff0ff <g_nvmeTask+0xffffffffffdeec97>
  209108:	8f75                	and	a4,a4,a3
  20910a:	10076713          	ori	a4,a4,256
  20910e:	c398                	sw	a4,0(a5)
  209110:	a0ad                	j	20917a <CheckReqStatus+0x2be>
  209112:	002107b7          	lui	a5,0x210
  209116:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20911a:	fc846783          	lwu	a5,-56(s0)
  20911e:	fcc46683          	lwu	a3,-52(s0)
  209122:	068e                	slli	a3,a3,0x3
  209124:	97b6                	add	a5,a5,a3
  209126:	078a                	slli	a5,a5,0x2
  209128:	97ba                	add	a5,a5,a4
  20912a:	439c                	lw	a5,0(a5)
  20912c:	0087d79b          	srliw	a5,a5,0x8
  209130:	8bbd                	andi	a5,a5,15
  209132:	0ff7f793          	andi	a5,a5,255
  209136:	ef85                	bnez	a5,20916e <CheckReqStatus+0x2b2>
  209138:	002107b7          	lui	a5,0x210
  20913c:	3f878713          	addi	a4,a5,1016 # 2103f8 <chCtlReg>
  209140:	fcc46783          	lwu	a5,-52(s0)
  209144:	078e                	slli	a5,a5,0x3
  209146:	97ba                	add	a5,a5,a4
  209148:	639c                	ld	a5,0(a5)
  20914a:	853e                	mv	a0,a5
  20914c:	281000ef          	jal	ra,209bcc <V2FReadyBusyAsync>
  209150:	87aa                	mv	a5,a0
  209152:	fef42423          	sw	a5,-24(s0)
  209156:	fc842783          	lw	a5,-56(s0)
  20915a:	fe842703          	lw	a4,-24(s0)
  20915e:	00f757bb          	srlw	a5,a4,a5
  209162:	2781                	sext.w	a5,a5
  209164:	8b85                	andi	a5,a5,1
  209166:	2781                	sext.w	a5,a5
  209168:	cb89                	beqz	a5,20917a <CheckReqStatus+0x2be>
  20916a:	4785                	li	a5,1
  20916c:	a801                	j	20917c <CheckReqStatus+0x2c0>
  20916e:	0020f7b7          	lui	a5,0x20f
  209172:	29878513          	addi	a0,a5,664 # 20f298 <nvme_main+0x7e2>
  209176:	c42fb0ef          	jal	ra,2045b8 <cpl_print>
  20917a:	4781                	li	a5,0
  20917c:	853e                	mv	a0,a5
  20917e:	70e2                	ld	ra,56(sp)
  209180:	7442                	ld	s0,48(sp)
  209182:	6121                	addi	sp,sp,64
  209184:	8082                	ret

0000000000209186 <CheckEccErrorInfo>:
  209186:	7179                	addi	sp,sp,-48
  209188:	f422                	sd	s0,40(sp)
  20918a:	1800                	addi	s0,sp,48
  20918c:	87aa                	mv	a5,a0
  20918e:	872e                	mv	a4,a1
  209190:	fcf42e23          	sw	a5,-36(s0)
  209194:	87ba                	mv	a5,a4
  209196:	fcf42c23          	sw	a5,-40(s0)
  20919a:	002107b7          	lui	a5,0x210
  20919e:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2091a2:	fd846783          	lwu	a5,-40(s0)
  2091a6:	fdc46683          	lwu	a3,-36(s0)
  2091aa:	068e                	slli	a3,a3,0x3
  2091ac:	97b6                	add	a5,a5,a3
  2091ae:	078e                	slli	a5,a5,0x3
  2091b0:	97ba                	add	a5,a5,a4
  2091b2:	0007d783          	lhu	a5,0(a5)
  2091b6:	fef42623          	sw	a5,-20(s0)
  2091ba:	002107b7          	lui	a5,0x210
  2091be:	3d07b703          	ld	a4,976(a5) # 2103d0 <eccErrorInfoTablePtr>
  2091c2:	fd846683          	lwu	a3,-40(s0)
  2091c6:	fdc46603          	lwu	a2,-36(s0)
  2091ca:	02c00793          	li	a5,44
  2091ce:	02f686b3          	mul	a3,a3,a5
  2091d2:	16000793          	li	a5,352
  2091d6:	02f607b3          	mul	a5,a2,a5
  2091da:	97b6                	add	a5,a5,a3
  2091dc:	97ba                	add	a5,a5,a4
  2091de:	439c                	lw	a5,0(a5)
  2091e0:	fef42423          	sw	a5,-24(s0)
  2091e4:	002107b7          	lui	a5,0x210
  2091e8:	3d07b703          	ld	a4,976(a5) # 2103d0 <eccErrorInfoTablePtr>
  2091ec:	fd846683          	lwu	a3,-40(s0)
  2091f0:	fdc46603          	lwu	a2,-36(s0)
  2091f4:	02c00793          	li	a5,44
  2091f8:	02f686b3          	mul	a3,a3,a5
  2091fc:	16000793          	li	a5,352
  209200:	02f607b3          	mul	a5,a2,a5
  209204:	97b6                	add	a5,a5,a3
  209206:	97ba                	add	a5,a5,a4
  209208:	43dc                	lw	a5,4(a5)
  20920a:	fef42223          	sw	a5,-28(s0)
  20920e:	fe842703          	lw	a4,-24(s0)
  209212:	100007b7          	lui	a5,0x10000
  209216:	8ff9                	and	a5,a5,a4
  209218:	2781                	sext.w	a5,a5
  20921a:	c7a5                	beqz	a5,209282 <CheckEccErrorInfo+0xfc>
  20921c:	fe842703          	lw	a4,-24(s0)
  209220:	010007b7          	lui	a5,0x1000
  209224:	8ff9                	and	a5,a5,a4
  209226:	2781                	sext.w	a5,a5
  209228:	cfa9                	beqz	a5,209282 <CheckEccErrorInfo+0xfc>
  20922a:	fe442783          	lw	a5,-28(s0)
  20922e:	0007871b          	sext.w	a4,a5
  209232:	57fd                	li	a5,-1
  209234:	04f71763          	bne	a4,a5,209282 <CheckEccErrorInfo+0xfc>
  209238:	002107b7          	lui	a5,0x210
  20923c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209240:	fec46683          	lwu	a3,-20(s0)
  209244:	03400793          	li	a5,52
  209248:	02f687b3          	mul	a5,a3,a5
  20924c:	97ba                	add	a5,a5,a4
  20924e:	4b9c                	lw	a5,16(a5)
  209250:	0057d79b          	srliw	a5,a5,0x5
  209254:	8b85                	andi	a5,a5,1
  209256:	0ff7f793          	andi	a5,a5,255
  20925a:	873e                	mv	a4,a5
  20925c:	4785                	li	a5,1
  20925e:	02f71063          	bne	a4,a5,20927e <CheckEccErrorInfo+0xf8>
  209262:	fe842783          	lw	a5,-24(s0)
  209266:	0107d79b          	srliw	a5,a5,0x10
  20926a:	2781                	sext.w	a5,a5
  20926c:	0ff7f793          	andi	a5,a5,255
  209270:	2781                	sext.w	a5,a5
  209272:	873e                	mv	a4,a5
  209274:	47d1                	li	a5,20
  209276:	00e7f463          	bgeu	a5,a4,20927e <CheckEccErrorInfo+0xf8>
  20927a:	4789                	li	a5,2
  20927c:	a021                	j	209284 <CheckEccErrorInfo+0xfe>
  20927e:	4785                	li	a5,1
  209280:	a011                	j	209284 <CheckEccErrorInfo+0xfe>
  209282:	4781                	li	a5,0
  209284:	853e                	mv	a0,a5
  209286:	7422                	ld	s0,40(sp)
  209288:	6145                	addi	sp,sp,48
  20928a:	8082                	ret

000000000020928c <ExecuteNandReq>:
  20928c:	7139                	addi	sp,sp,-64
  20928e:	fc06                	sd	ra,56(sp)
  209290:	f822                	sd	s0,48(sp)
  209292:	0080                	addi	s0,sp,64
  209294:	87aa                	mv	a5,a0
  209296:	86ae                	mv	a3,a1
  209298:	8732                	mv	a4,a2
  20929a:	fcf42623          	sw	a5,-52(s0)
  20929e:	87b6                	mv	a5,a3
  2092a0:	fcf42423          	sw	a5,-56(s0)
  2092a4:	87ba                	mv	a5,a4
  2092a6:	fcf42223          	sw	a5,-60(s0)
  2092aa:	002107b7          	lui	a5,0x210
  2092ae:	19878713          	addi	a4,a5,408 # 210198 <nandReqQ>
  2092b2:	fc846783          	lwu	a5,-56(s0)
  2092b6:	fcc46683          	lwu	a3,-52(s0)
  2092ba:	068e                	slli	a3,a3,0x3
  2092bc:	97b6                	add	a5,a5,a3
  2092be:	078e                	slli	a5,a5,0x3
  2092c0:	97ba                	add	a5,a5,a4
  2092c2:	0007d783          	lhu	a5,0(a5)
  2092c6:	fef42623          	sw	a5,-20(s0)
  2092ca:	002107b7          	lui	a5,0x210
  2092ce:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2092d2:	fc846783          	lwu	a5,-56(s0)
  2092d6:	fcc46683          	lwu	a3,-52(s0)
  2092da:	068e                	slli	a3,a3,0x3
  2092dc:	97b6                	add	a5,a5,a3
  2092de:	078a                	slli	a5,a5,0x2
  2092e0:	97ba                	add	a5,a5,a4
  2092e2:	0007c783          	lbu	a5,0(a5)
  2092e6:	2781                	sext.w	a5,a5
  2092e8:	c791                	beqz	a5,2092f4 <ExecuteNandReq+0x68>
  2092ea:	873e                	mv	a4,a5
  2092ec:	4785                	li	a5,1
  2092ee:	02f70b63          	beq	a4,a5,209324 <ExecuteNandReq+0x98>
  2092f2:	a945                	j	2097a2 <ExecuteNandReq+0x516>
  2092f4:	fc842703          	lw	a4,-56(s0)
  2092f8:	fcc42783          	lw	a5,-52(s0)
  2092fc:	85ba                	mv	a1,a4
  2092fe:	853e                	mv	a0,a5
  209300:	8e0ff0ef          	jal	ra,2083e0 <IssueNandReq>
  209304:	002107b7          	lui	a5,0x210
  209308:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20930c:	fc846783          	lwu	a5,-56(s0)
  209310:	fcc46683          	lwu	a3,-52(s0)
  209314:	068e                	slli	a3,a3,0x3
  209316:	97b6                	add	a5,a5,a3
  209318:	078a                	slli	a5,a5,0x2
  20931a:	97ba                	add	a5,a5,a4
  20931c:	4705                	li	a4,1
  20931e:	00e78023          	sb	a4,0(a5)
  209322:	a141                	j	2097a2 <ExecuteNandReq+0x516>
  209324:	fc442783          	lw	a5,-60(s0)
  209328:	0007871b          	sext.w	a4,a5
  20932c:	4785                	li	a5,1
  20932e:	0af71863          	bne	a4,a5,2093de <ExecuteNandReq+0x152>
  209332:	002107b7          	lui	a5,0x210
  209336:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20933a:	fec46683          	lwu	a3,-20(s0)
  20933e:	03400793          	li	a5,52
  209342:	02f687b3          	mul	a5,a3,a5
  209346:	97ba                	add	a5,a5,a4
  209348:	0017c783          	lbu	a5,1(a5)
  20934c:	873e                	mv	a4,a5
  20934e:	47a1                	li	a5,8
  209350:	02f71163          	bne	a4,a5,209372 <ExecuteNandReq+0xe6>
  209354:	002107b7          	lui	a5,0x210
  209358:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20935c:	fec46683          	lwu	a3,-20(s0)
  209360:	03400793          	li	a5,52
  209364:	02f687b3          	mul	a5,a3,a5
  209368:	97ba                	add	a5,a5,a4
  20936a:	4725                	li	a4,9
  20936c:	00e780a3          	sb	a4,1(a5)
  209370:	a881                	j	2093c0 <ExecuteNandReq+0x134>
  209372:	002107b7          	lui	a5,0x210
  209376:	3e87b703          	ld	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  20937a:	fc846783          	lwu	a5,-56(s0)
  20937e:	fcc46683          	lwu	a3,-52(s0)
  209382:	068e                	slli	a3,a3,0x3
  209384:	97b6                	add	a5,a5,a3
  209386:	078a                	slli	a5,a5,0x2
  209388:	97ba                	add	a5,a5,a4
  20938a:	4715                	li	a4,5
  20938c:	c398                	sw	a4,0(a5)
  20938e:	002107b7          	lui	a5,0x210
  209392:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209396:	fec46683          	lwu	a3,-20(s0)
  20939a:	03400793          	li	a5,52
  20939e:	02f687b3          	mul	a5,a3,a5
  2093a2:	97ba                	add	a5,a5,a4
  2093a4:	0017c783          	lbu	a5,1(a5)
  2093a8:	0007869b          	sext.w	a3,a5
  2093ac:	fc442603          	lw	a2,-60(s0)
  2093b0:	fc842703          	lw	a4,-56(s0)
  2093b4:	fcc42783          	lw	a5,-52(s0)
  2093b8:	85ba                	mv	a1,a4
  2093ba:	853e                	mv	a0,a5
  2093bc:	800fb0ef          	jal	ra,2043bc <GetFromNandReqQ>
  2093c0:	002107b7          	lui	a5,0x210
  2093c4:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2093c8:	fc846783          	lwu	a5,-56(s0)
  2093cc:	fcc46683          	lwu	a3,-52(s0)
  2093d0:	068e                	slli	a3,a3,0x3
  2093d2:	97b6                	add	a5,a5,a3
  2093d4:	078a                	slli	a5,a5,0x2
  2093d6:	97ba                	add	a5,a5,a4
  2093d8:	00078023          	sb	zero,0(a5)
  2093dc:	a6d9                	j	2097a2 <ExecuteNandReq+0x516>
  2093de:	fc442783          	lw	a5,-60(s0)
  2093e2:	0007871b          	sext.w	a4,a5
  2093e6:	4789                	li	a5,2
  2093e8:	2af71d63          	bne	a4,a5,2096a2 <ExecuteNandReq+0x416>
  2093ec:	002107b7          	lui	a5,0x210
  2093f0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2093f4:	fec46683          	lwu	a3,-20(s0)
  2093f8:	03400793          	li	a5,52
  2093fc:	02f687b3          	mul	a5,a3,a5
  209400:	97ba                	add	a5,a5,a4
  209402:	0017c783          	lbu	a5,1(a5)
  209406:	873e                	mv	a4,a5
  209408:	47a1                	li	a5,8
  20940a:	02f70363          	beq	a4,a5,209430 <ExecuteNandReq+0x1a4>
  20940e:	002107b7          	lui	a5,0x210
  209412:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209416:	fec46683          	lwu	a3,-20(s0)
  20941a:	03400793          	li	a5,52
  20941e:	02f687b3          	mul	a5,a3,a5
  209422:	97ba                	add	a5,a5,a4
  209424:	0017c783          	lbu	a5,1(a5)
  209428:	873e                	mv	a4,a5
  20942a:	47a5                	li	a5,9
  20942c:	0af71763          	bne	a4,a5,2094da <ExecuteNandReq+0x24e>
  209430:	002107b7          	lui	a5,0x210
  209434:	3e87b703          	ld	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  209438:	fc846783          	lwu	a5,-56(s0)
  20943c:	fcc46683          	lwu	a3,-52(s0)
  209440:	068e                	slli	a3,a3,0x3
  209442:	97b6                	add	a5,a5,a3
  209444:	078a                	slli	a5,a5,0x2
  209446:	97ba                	add	a5,a5,a4
  209448:	439c                	lw	a5,0(a5)
  20944a:	08f05863          	blez	a5,2094da <ExecuteNandReq+0x24e>
  20944e:	002107b7          	lui	a5,0x210
  209452:	3e87b783          	ld	a5,1000(a5) # 2103e8 <retryLimitTablePtr>
  209456:	fc846703          	lwu	a4,-56(s0)
  20945a:	fcc46683          	lwu	a3,-52(s0)
  20945e:	068e                	slli	a3,a3,0x3
  209460:	9736                	add	a4,a4,a3
  209462:	070a                	slli	a4,a4,0x2
  209464:	973e                	add	a4,a4,a5
  209466:	4318                	lw	a4,0(a4)
  209468:	377d                	addiw	a4,a4,-1
  20946a:	2701                	sext.w	a4,a4
  20946c:	fc846683          	lwu	a3,-56(s0)
  209470:	fcc46603          	lwu	a2,-52(s0)
  209474:	060e                	slli	a2,a2,0x3
  209476:	96b2                	add	a3,a3,a2
  209478:	068a                	slli	a3,a3,0x2
  20947a:	97b6                	add	a5,a5,a3
  20947c:	c398                	sw	a4,0(a5)
  20947e:	002107b7          	lui	a5,0x210
  209482:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209486:	fec46683          	lwu	a3,-20(s0)
  20948a:	03400793          	li	a5,52
  20948e:	02f687b3          	mul	a5,a3,a5
  209492:	97ba                	add	a5,a5,a4
  209494:	0017c783          	lbu	a5,1(a5)
  209498:	873e                	mv	a4,a5
  20949a:	47a5                	li	a5,9
  20949c:	02f71063          	bne	a4,a5,2094bc <ExecuteNandReq+0x230>
  2094a0:	002107b7          	lui	a5,0x210
  2094a4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2094a8:	fec46683          	lwu	a3,-20(s0)
  2094ac:	03400793          	li	a5,52
  2094b0:	02f687b3          	mul	a5,a3,a5
  2094b4:	97ba                	add	a5,a5,a4
  2094b6:	4721                	li	a4,8
  2094b8:	00e780a3          	sb	a4,1(a5)
  2094bc:	002107b7          	lui	a5,0x210
  2094c0:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  2094c4:	fc846783          	lwu	a5,-56(s0)
  2094c8:	fcc46683          	lwu	a3,-52(s0)
  2094cc:	068e                	slli	a3,a3,0x3
  2094ce:	97b6                	add	a5,a5,a3
  2094d0:	078a                	slli	a5,a5,0x2
  2094d2:	97ba                	add	a5,a5,a4
  2094d4:	00078023          	sb	zero,0(a5)
  2094d8:	a4e9                	j	2097a2 <ExecuteNandReq+0x516>
  2094da:	002107b7          	lui	a5,0x210
  2094de:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2094e2:	fec46683          	lwu	a3,-20(s0)
  2094e6:	03400793          	li	a5,52
  2094ea:	02f687b3          	mul	a5,a3,a5
  2094ee:	97ba                	add	a5,a5,a4
  2094f0:	0017c783          	lbu	a5,1(a5)
  2094f4:	873e                	mv	a4,a5
  2094f6:	47a1                	li	a5,8
  2094f8:	00f71963          	bne	a4,a5,20950a <ExecuteNandReq+0x27e>
  2094fc:	0020f7b7          	lui	a5,0x20f
  209500:	2d078513          	addi	a0,a5,720 # 20f2d0 <nvme_main+0x81a>
  209504:	8b4fb0ef          	jal	ra,2045b8 <cpl_print>
  209508:	a8a9                	j	209562 <ExecuteNandReq+0x2d6>
  20950a:	002107b7          	lui	a5,0x210
  20950e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209512:	fec46683          	lwu	a3,-20(s0)
  209516:	03400793          	li	a5,52
  20951a:	02f687b3          	mul	a5,a3,a5
  20951e:	97ba                	add	a5,a5,a4
  209520:	0017c783          	lbu	a5,1(a5)
  209524:	873e                	mv	a4,a5
  209526:	47a5                	li	a5,9
  209528:	00f71963          	bne	a4,a5,20953a <ExecuteNandReq+0x2ae>
  20952c:	0020f7b7          	lui	a5,0x20f
  209530:	2f078513          	addi	a0,a5,752 # 20f2f0 <nvme_main+0x83a>
  209534:	884fb0ef          	jal	ra,2045b8 <cpl_print>
  209538:	a02d                	j	209562 <ExecuteNandReq+0x2d6>
  20953a:	002107b7          	lui	a5,0x210
  20953e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209542:	fec46683          	lwu	a3,-20(s0)
  209546:	03400793          	li	a5,52
  20954a:	02f687b3          	mul	a5,a3,a5
  20954e:	97ba                	add	a5,a5,a4
  209550:	0017c783          	lbu	a5,1(a5)
  209554:	e799                	bnez	a5,209562 <ExecuteNandReq+0x2d6>
  209556:	0020f7b7          	lui	a5,0x20f
  20955a:	31078513          	addi	a0,a5,784 # 20f310 <nvme_main+0x85a>
  20955e:	85afb0ef          	jal	ra,2045b8 <cpl_print>
  209562:	fec42783          	lw	a5,-20(s0)
  209566:	853e                	mv	a0,a5
  209568:	a38ff0ef          	jal	ra,2087a0 <GenerateNandRowAddr>
  20956c:	87aa                	mv	a5,a0
  20956e:	fef42423          	sw	a5,-24(s0)
  209572:	002107b7          	lui	a5,0x210
  209576:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20957a:	fec46683          	lwu	a3,-20(s0)
  20957e:	03400793          	li	a5,52
  209582:	02f687b3          	mul	a5,a3,a5
  209586:	97ba                	add	a5,a5,a4
  209588:	4b9c                	lw	a5,16(a5)
  20958a:	0047d79b          	srliw	a5,a5,0x4
  20958e:	8b85                	andi	a5,a5,1
  209590:	0ff7f793          	andi	a5,a5,255
  209594:	eba1                	bnez	a5,2095e4 <ExecuteNandReq+0x358>
  209596:	002107b7          	lui	a5,0x210
  20959a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20959e:	fec46683          	lwu	a3,-20(s0)
  2095a2:	03400793          	li	a5,52
  2095a6:	02f687b3          	mul	a5,a3,a5
  2095aa:	97ba                	add	a5,a5,a4
  2095ac:	4b9c                	lw	a5,16(a5)
  2095ae:	8b8d                	andi	a5,a5,3
  2095b0:	0ff7f793          	andi	a5,a5,255
  2095b4:	873e                	mv	a4,a5
  2095b6:	4789                	li	a5,2
  2095b8:	02f71663          	bne	a4,a5,2095e4 <ExecuteNandReq+0x358>
  2095bc:	002107b7          	lui	a5,0x210
  2095c0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  2095c4:	fec46683          	lwu	a3,-20(s0)
  2095c8:	03400793          	li	a5,52
  2095cc:	02f687b3          	mul	a5,a3,a5
  2095d0:	97ba                	add	a5,a5,a4
  2095d2:	4bdc                	lw	a5,20(a5)
  2095d4:	1782                	slli	a5,a5,0x20
  2095d6:	9381                	srli	a5,a5,0x20
  2095d8:	fcf43c23          	sd	a5,-40(s0)
  2095dc:	fd843783          	ld	a5,-40(s0)
  2095e0:	00078023          	sb	zero,0(a5)
  2095e4:	fe842703          	lw	a4,-24(s0)
  2095e8:	002007b7          	lui	a5,0x200
  2095ec:	17fd                	addi	a5,a5,-1
  2095ee:	8ff9                	and	a5,a5,a4
  2095f0:	2781                	sext.w	a5,a5
  2095f2:	0087d79b          	srliw	a5,a5,0x8
  2095f6:	0007871b          	sext.w	a4,a5
  2095fa:	fe842783          	lw	a5,-24(s0)
  2095fe:	0157d79b          	srliw	a5,a5,0x15
  209602:	0007869b          	sext.w	a3,a5
  209606:	6785                	lui	a5,0x1
  209608:	0587879b          	addiw	a5,a5,88
  20960c:	02f687bb          	mulw	a5,a3,a5
  209610:	2781                	sext.w	a5,a5
  209612:	9fb9                	addw	a5,a5,a4
  209614:	fef42223          	sw	a5,-28(s0)
  209618:	fc842783          	lw	a5,-56(s0)
  20961c:	0037979b          	slliw	a5,a5,0x3
  209620:	2781                	sext.w	a5,a5
  209622:	fcc42703          	lw	a4,-52(s0)
  209626:	9fb9                	addw	a5,a5,a4
  209628:	2781                	sext.w	a5,a5
  20962a:	fe442703          	lw	a4,-28(s0)
  20962e:	85ba                	mv	a1,a4
  209630:	853e                	mv	a0,a5
  209632:	f4ef90ef          	jal	ra,202d80 <UpdatePhyBlockMapForGrownBadBlock>
  209636:	002107b7          	lui	a5,0x210
  20963a:	3e87b703          	ld	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  20963e:	fc846783          	lwu	a5,-56(s0)
  209642:	fcc46683          	lwu	a3,-52(s0)
  209646:	068e                	slli	a3,a3,0x3
  209648:	97b6                	add	a5,a5,a3
  20964a:	078a                	slli	a5,a5,0x2
  20964c:	97ba                	add	a5,a5,a4
  20964e:	4715                	li	a4,5
  209650:	c398                	sw	a4,0(a5)
  209652:	002107b7          	lui	a5,0x210
  209656:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20965a:	fec46683          	lwu	a3,-20(s0)
  20965e:	03400793          	li	a5,52
  209662:	02f687b3          	mul	a5,a3,a5
  209666:	97ba                	add	a5,a5,a4
  209668:	0017c783          	lbu	a5,1(a5)
  20966c:	0007869b          	sext.w	a3,a5
  209670:	fc442603          	lw	a2,-60(s0)
  209674:	fc842703          	lw	a4,-56(s0)
  209678:	fcc42783          	lw	a5,-52(s0)
  20967c:	85ba                	mv	a1,a4
  20967e:	853e                	mv	a0,a5
  209680:	d3dfa0ef          	jal	ra,2043bc <GetFromNandReqQ>
  209684:	002107b7          	lui	a5,0x210
  209688:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  20968c:	fc846783          	lwu	a5,-56(s0)
  209690:	fcc46683          	lwu	a3,-52(s0)
  209694:	068e                	slli	a3,a3,0x3
  209696:	97b6                	add	a5,a5,a3
  209698:	078a                	slli	a5,a5,0x2
  20969a:	97ba                	add	a5,a5,a4
  20969c:	00078023          	sb	zero,0(a5)
  2096a0:	a209                	j	2097a2 <ExecuteNandReq+0x516>
  2096a2:	fc442783          	lw	a5,-60(s0)
  2096a6:	0007871b          	sext.w	a4,a5
  2096aa:	478d                	li	a5,3
  2096ac:	0cf71f63          	bne	a4,a5,20978a <ExecuteNandReq+0x4fe>
  2096b0:	fec42783          	lw	a5,-20(s0)
  2096b4:	853e                	mv	a0,a5
  2096b6:	8eaff0ef          	jal	ra,2087a0 <GenerateNandRowAddr>
  2096ba:	87aa                	mv	a5,a0
  2096bc:	fef42423          	sw	a5,-24(s0)
  2096c0:	0020f7b7          	lui	a5,0x20f
  2096c4:	33078513          	addi	a0,a5,816 # 20f330 <nvme_main+0x87a>
  2096c8:	ef1fa0ef          	jal	ra,2045b8 <cpl_print>
  2096cc:	fe842703          	lw	a4,-24(s0)
  2096d0:	002007b7          	lui	a5,0x200
  2096d4:	17fd                	addi	a5,a5,-1
  2096d6:	8ff9                	and	a5,a5,a4
  2096d8:	2781                	sext.w	a5,a5
  2096da:	0087d79b          	srliw	a5,a5,0x8
  2096de:	0007871b          	sext.w	a4,a5
  2096e2:	fe842783          	lw	a5,-24(s0)
  2096e6:	0157d79b          	srliw	a5,a5,0x15
  2096ea:	0007869b          	sext.w	a3,a5
  2096ee:	6785                	lui	a5,0x1
  2096f0:	0587879b          	addiw	a5,a5,88
  2096f4:	02f687bb          	mulw	a5,a3,a5
  2096f8:	2781                	sext.w	a5,a5
  2096fa:	9fb9                	addw	a5,a5,a4
  2096fc:	fef42223          	sw	a5,-28(s0)
  209700:	fc842783          	lw	a5,-56(s0)
  209704:	0037979b          	slliw	a5,a5,0x3
  209708:	2781                	sext.w	a5,a5
  20970a:	fcc42703          	lw	a4,-52(s0)
  20970e:	9fb9                	addw	a5,a5,a4
  209710:	2781                	sext.w	a5,a5
  209712:	fe442703          	lw	a4,-28(s0)
  209716:	85ba                	mv	a1,a4
  209718:	853e                	mv	a0,a5
  20971a:	e66f90ef          	jal	ra,202d80 <UpdatePhyBlockMapForGrownBadBlock>
  20971e:	002107b7          	lui	a5,0x210
  209722:	3e87b703          	ld	a4,1000(a5) # 2103e8 <retryLimitTablePtr>
  209726:	fc846783          	lwu	a5,-56(s0)
  20972a:	fcc46683          	lwu	a3,-52(s0)
  20972e:	068e                	slli	a3,a3,0x3
  209730:	97b6                	add	a5,a5,a3
  209732:	078a                	slli	a5,a5,0x2
  209734:	97ba                	add	a5,a5,a4
  209736:	4715                	li	a4,5
  209738:	c398                	sw	a4,0(a5)
  20973a:	002107b7          	lui	a5,0x210
  20973e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209742:	fec46683          	lwu	a3,-20(s0)
  209746:	03400793          	li	a5,52
  20974a:	02f687b3          	mul	a5,a3,a5
  20974e:	97ba                	add	a5,a5,a4
  209750:	0017c783          	lbu	a5,1(a5)
  209754:	0007869b          	sext.w	a3,a5
  209758:	fc442603          	lw	a2,-60(s0)
  20975c:	fc842703          	lw	a4,-56(s0)
  209760:	fcc42783          	lw	a5,-52(s0)
  209764:	85ba                	mv	a1,a4
  209766:	853e                	mv	a0,a5
  209768:	c55fa0ef          	jal	ra,2043bc <GetFromNandReqQ>
  20976c:	002107b7          	lui	a5,0x210
  209770:	3e07b703          	ld	a4,992(a5) # 2103e0 <dieStateTablePtr>
  209774:	fc846783          	lwu	a5,-56(s0)
  209778:	fcc46683          	lwu	a3,-52(s0)
  20977c:	068e                	slli	a3,a3,0x3
  20977e:	97b6                	add	a5,a5,a3
  209780:	078a                	slli	a5,a5,0x2
  209782:	97ba                	add	a5,a5,a4
  209784:	00078023          	sb	zero,0(a5)
  209788:	a829                	j	2097a2 <ExecuteNandReq+0x516>
  20978a:	fc442783          	lw	a5,-60(s0)
  20978e:	2781                	sext.w	a5,a5
  209790:	cb81                	beqz	a5,2097a0 <ExecuteNandReq+0x514>
  209792:	0020f7b7          	lui	a5,0x20f
  209796:	38878513          	addi	a0,a5,904 # 20f388 <nvme_main+0x8d2>
  20979a:	e1ffa0ef          	jal	ra,2045b8 <cpl_print>
  20979e:	a011                	j	2097a2 <ExecuteNandReq+0x516>
  2097a0:	0001                	nop
  2097a2:	70e2                	ld	ra,56(sp)
  2097a4:	7442                	ld	s0,48(sp)
  2097a6:	6121                	addi	sp,sp,64
  2097a8:	8082                	ret

00000000002097aa <V2FIsControllerBusy>:
  2097aa:	7179                	addi	sp,sp,-48
  2097ac:	f422                	sd	s0,40(sp)
  2097ae:	1800                	addi	s0,sp,48
  2097b0:	fca43c23          	sd	a0,-40(s0)
  2097b4:	fd843783          	ld	a5,-40(s0)
  2097b8:	539c                	lw	a5,32(a5)
  2097ba:	2781                	sext.w	a5,a5
  2097bc:	fef42623          	sw	a5,-20(s0)
  2097c0:	fec42783          	lw	a5,-20(s0)
  2097c4:	2781                	sext.w	a5,a5
  2097c6:	853e                	mv	a0,a5
  2097c8:	7422                	ld	s0,40(sp)
  2097ca:	6145                	addi	sp,sp,48
  2097cc:	8082                	ret

00000000002097ce <V2FResetSync>:
  2097ce:	1101                	addi	sp,sp,-32
  2097d0:	ec06                	sd	ra,24(sp)
  2097d2:	e822                	sd	s0,16(sp)
  2097d4:	1000                	addi	s0,sp,32
  2097d6:	fea43423          	sd	a0,-24(s0)
  2097da:	87ae                	mv	a5,a1
  2097dc:	fef42223          	sw	a5,-28(s0)
  2097e0:	fe843783          	ld	a5,-24(s0)
  2097e4:	07f1                	addi	a5,a5,28
  2097e6:	fe442703          	lw	a4,-28(s0)
  2097ea:	c398                	sw	a4,0(a5)
  2097ec:	fe843783          	ld	a5,-24(s0)
  2097f0:	4705                	li	a4,1
  2097f2:	c398                	sw	a4,0(a5)
  2097f4:	0001                	nop
  2097f6:	fe843503          	ld	a0,-24(s0)
  2097fa:	fb1ff0ef          	jal	ra,2097aa <V2FIsControllerBusy>
  2097fe:	87aa                	mv	a5,a0
  209800:	2781                	sext.w	a5,a5
  209802:	fbf5                	bnez	a5,2097f6 <V2FResetSync+0x28>
  209804:	0001                	nop
  209806:	0001                	nop
  209808:	60e2                	ld	ra,24(sp)
  20980a:	6442                	ld	s0,16(sp)
  20980c:	6105                	addi	sp,sp,32
  20980e:	8082                	ret

0000000000209810 <V2FSetFeaturesSync>:
  209810:	7139                	addi	sp,sp,-64
  209812:	fc06                	sd	ra,56(sp)
  209814:	f822                	sd	s0,48(sp)
  209816:	0080                	addi	s0,sp,64
  209818:	fca43c23          	sd	a0,-40(s0)
  20981c:	852e                	mv	a0,a1
  20981e:	85b2                	mv	a1,a2
  209820:	8636                	mv	a2,a3
  209822:	86ba                	mv	a3,a4
  209824:	873e                	mv	a4,a5
  209826:	87aa                	mv	a5,a0
  209828:	fcf42a23          	sw	a5,-44(s0)
  20982c:	87ae                	mv	a5,a1
  20982e:	fcf42823          	sw	a5,-48(s0)
  209832:	87b2                	mv	a5,a2
  209834:	fcf42623          	sw	a5,-52(s0)
  209838:	87b6                	mv	a5,a3
  20983a:	fcf42423          	sw	a5,-56(s0)
  20983e:	87ba                	mv	a5,a4
  209840:	fcf42223          	sw	a5,-60(s0)
  209844:	fc446783          	lwu	a5,-60(s0)
  209848:	fef43423          	sd	a5,-24(s0)
  20984c:	fe843783          	ld	a5,-24(s0)
  209850:	fd042703          	lw	a4,-48(s0)
  209854:	c398                	sw	a4,0(a5)
  209856:	fe843783          	ld	a5,-24(s0)
  20985a:	0791                	addi	a5,a5,4
  20985c:	fcc42703          	lw	a4,-52(s0)
  209860:	c398                	sw	a4,0(a5)
  209862:	fe843783          	ld	a5,-24(s0)
  209866:	07a1                	addi	a5,a5,8
  209868:	fc842703          	lw	a4,-56(s0)
  20986c:	c398                	sw	a4,0(a5)
  20986e:	fd843783          	ld	a5,-40(s0)
  209872:	07f1                	addi	a5,a5,28
  209874:	fd442703          	lw	a4,-44(s0)
  209878:	c398                	sw	a4,0(a5)
  20987a:	fe843703          	ld	a4,-24(s0)
  20987e:	fd843783          	ld	a5,-40(s0)
  209882:	07a1                	addi	a5,a5,8
  209884:	2701                	sext.w	a4,a4
  209886:	c398                	sw	a4,0(a5)
  209888:	fd843783          	ld	a5,-40(s0)
  20988c:	4719                	li	a4,6
  20988e:	c398                	sw	a4,0(a5)
  209890:	0001                	nop
  209892:	fd843503          	ld	a0,-40(s0)
  209896:	f15ff0ef          	jal	ra,2097aa <V2FIsControllerBusy>
  20989a:	87aa                	mv	a5,a0
  20989c:	2781                	sext.w	a5,a5
  20989e:	fbf5                	bnez	a5,209892 <V2FSetFeaturesSync+0x82>
  2098a0:	0001                	nop
  2098a2:	0001                	nop
  2098a4:	70e2                	ld	ra,56(sp)
  2098a6:	7442                	ld	s0,48(sp)
  2098a8:	6121                	addi	sp,sp,64
  2098aa:	8082                	ret

00000000002098ac <V2FGetFeaturesSync>:
  2098ac:	711d                	addi	sp,sp,-96
  2098ae:	ec86                	sd	ra,88(sp)
  2098b0:	e8a2                	sd	s0,80(sp)
  2098b2:	1080                	addi	s0,sp,96
  2098b4:	fca43423          	sd	a0,-56(s0)
  2098b8:	fac43c23          	sd	a2,-72(s0)
  2098bc:	fad43823          	sd	a3,-80(s0)
  2098c0:	fae43423          	sd	a4,-88(s0)
  2098c4:	faf43023          	sd	a5,-96(s0)
  2098c8:	87ae                	mv	a5,a1
  2098ca:	fcf42223          	sw	a5,-60(s0)
  2098ce:	fe043023          	sd	zero,-32(s0)
  2098d2:	fe043423          	sd	zero,-24(s0)
  2098d6:	fc042e23          	sw	zero,-36(s0)
  2098da:	fc843783          	ld	a5,-56(s0)
  2098de:	07f1                	addi	a5,a5,28
  2098e0:	fc442703          	lw	a4,-60(s0)
  2098e4:	c398                	sw	a4,0(a5)
  2098e6:	fe040713          	addi	a4,s0,-32
  2098ea:	fc843783          	ld	a5,-56(s0)
  2098ee:	07a1                	addi	a5,a5,8
  2098f0:	2701                	sext.w	a4,a4
  2098f2:	c398                	sw	a4,0(a5)
  2098f4:	fdc40713          	addi	a4,s0,-36
  2098f8:	fc843783          	ld	a5,-56(s0)
  2098fc:	07e1                	addi	a5,a5,24
  2098fe:	2701                	sext.w	a4,a4
  209900:	c398                	sw	a4,0(a5)
  209902:	fc843783          	ld	a5,-56(s0)
  209906:	02e00713          	li	a4,46
  20990a:	c398                	sw	a4,0(a5)
  20990c:	0001                	nop
  20990e:	fc843503          	ld	a0,-56(s0)
  209912:	e99ff0ef          	jal	ra,2097aa <V2FIsControllerBusy>
  209916:	87aa                	mv	a5,a0
  209918:	2781                	sext.w	a5,a5
  20991a:	fbf5                	bnez	a5,20990e <V2FGetFeaturesSync+0x62>
  20991c:	0001                	nop
  20991e:	fdc42783          	lw	a5,-36(s0)
  209922:	2781                	sext.w	a5,a5
  209924:	8b85                	andi	a5,a5,1
  209926:	2781                	sext.w	a5,a5
  209928:	dbfd                	beqz	a5,20991e <V2FGetFeaturesSync+0x72>
  20992a:	fe042783          	lw	a5,-32(s0)
  20992e:	0007871b          	sext.w	a4,a5
  209932:	fb843783          	ld	a5,-72(s0)
  209936:	c398                	sw	a4,0(a5)
  209938:	fe442783          	lw	a5,-28(s0)
  20993c:	0007871b          	sext.w	a4,a5
  209940:	fb043783          	ld	a5,-80(s0)
  209944:	c398                	sw	a4,0(a5)
  209946:	fe842783          	lw	a5,-24(s0)
  20994a:	0007871b          	sext.w	a4,a5
  20994e:	fa843783          	ld	a5,-88(s0)
  209952:	c398                	sw	a4,0(a5)
  209954:	fec42783          	lw	a5,-20(s0)
  209958:	0007871b          	sext.w	a4,a5
  20995c:	fa043783          	ld	a5,-96(s0)
  209960:	c398                	sw	a4,0(a5)
  209962:	0001                	nop
  209964:	60e6                	ld	ra,88(sp)
  209966:	6446                	ld	s0,80(sp)
  209968:	6125                	addi	sp,sp,96
  20996a:	8082                	ret

000000000020996c <V2FReadPageTriggerAsync>:
  20996c:	1101                	addi	sp,sp,-32
  20996e:	ec22                	sd	s0,24(sp)
  209970:	1000                	addi	s0,sp,32
  209972:	fea43423          	sd	a0,-24(s0)
  209976:	87ae                	mv	a5,a1
  209978:	8732                	mv	a4,a2
  20997a:	fef42223          	sw	a5,-28(s0)
  20997e:	87ba                	mv	a5,a4
  209980:	fef42023          	sw	a5,-32(s0)
  209984:	fe843783          	ld	a5,-24(s0)
  209988:	07f1                	addi	a5,a5,28
  20998a:	fe442703          	lw	a4,-28(s0)
  20998e:	c398                	sw	a4,0(a5)
  209990:	fe843783          	ld	a5,-24(s0)
  209994:	0791                	addi	a5,a5,4
  209996:	fe042703          	lw	a4,-32(s0)
  20999a:	c398                	sw	a4,0(a5)
  20999c:	fe843783          	ld	a5,-24(s0)
  2099a0:	4735                	li	a4,13
  2099a2:	c398                	sw	a4,0(a5)
  2099a4:	0001                	nop
  2099a6:	6462                	ld	s0,24(sp)
  2099a8:	6105                	addi	sp,sp,32
  2099aa:	8082                	ret

00000000002099ac <V2FReadPageTransferAsync>:
  2099ac:	7139                	addi	sp,sp,-64
  2099ae:	fc22                	sd	s0,56(sp)
  2099b0:	0080                	addi	s0,sp,64
  2099b2:	fea43423          	sd	a0,-24(s0)
  2099b6:	fcc43c23          	sd	a2,-40(s0)
  2099ba:	fcd43823          	sd	a3,-48(s0)
  2099be:	fce43423          	sd	a4,-56(s0)
  2099c2:	fcf43023          	sd	a5,-64(s0)
  2099c6:	8742                	mv	a4,a6
  2099c8:	87ae                	mv	a5,a1
  2099ca:	fef42223          	sw	a5,-28(s0)
  2099ce:	87ba                	mv	a5,a4
  2099d0:	fef42023          	sw	a5,-32(s0)
  2099d4:	fe843783          	ld	a5,-24(s0)
  2099d8:	07f1                	addi	a5,a5,28
  2099da:	fe442703          	lw	a4,-28(s0)
  2099de:	c398                	sw	a4,0(a5)
  2099e0:	fd843703          	ld	a4,-40(s0)
  2099e4:	fe843783          	ld	a5,-24(s0)
  2099e8:	07b1                	addi	a5,a5,12
  2099ea:	2701                	sext.w	a4,a4
  2099ec:	c398                	sw	a4,0(a5)
  2099ee:	fd043703          	ld	a4,-48(s0)
  2099f2:	fe843783          	ld	a5,-24(s0)
  2099f6:	07c1                	addi	a5,a5,16
  2099f8:	2701                	sext.w	a4,a4
  2099fa:	c398                	sw	a4,0(a5)
  2099fc:	fc843703          	ld	a4,-56(s0)
  209a00:	fe843783          	ld	a5,-24(s0)
  209a04:	07d1                	addi	a5,a5,20
  209a06:	2701                	sext.w	a4,a4
  209a08:	c398                	sw	a4,0(a5)
  209a0a:	fc043703          	ld	a4,-64(s0)
  209a0e:	fe843783          	ld	a5,-24(s0)
  209a12:	07e1                	addi	a5,a5,24
  209a14:	2701                	sext.w	a4,a4
  209a16:	c398                	sw	a4,0(a5)
  209a18:	fe843783          	ld	a5,-24(s0)
  209a1c:	0791                	addi	a5,a5,4
  209a1e:	fe042703          	lw	a4,-32(s0)
  209a22:	c398                	sw	a4,0(a5)
  209a24:	fc043783          	ld	a5,-64(s0)
  209a28:	0007a023          	sw	zero,0(a5)
  209a2c:	fe843783          	ld	a5,-24(s0)
  209a30:	4749                	li	a4,18
  209a32:	c398                	sw	a4,0(a5)
  209a34:	0001                	nop
  209a36:	7462                	ld	s0,56(sp)
  209a38:	6121                	addi	sp,sp,64
  209a3a:	8082                	ret

0000000000209a3c <V2FReadPageTransferRawAsync>:
  209a3c:	7179                	addi	sp,sp,-48
  209a3e:	f422                	sd	s0,40(sp)
  209a40:	1800                	addi	s0,sp,48
  209a42:	fea43423          	sd	a0,-24(s0)
  209a46:	87ae                	mv	a5,a1
  209a48:	fcc43c23          	sd	a2,-40(s0)
  209a4c:	fcd43823          	sd	a3,-48(s0)
  209a50:	fef42223          	sw	a5,-28(s0)
  209a54:	fe843783          	ld	a5,-24(s0)
  209a58:	07f1                	addi	a5,a5,28
  209a5a:	fe442703          	lw	a4,-28(s0)
  209a5e:	c398                	sw	a4,0(a5)
  209a60:	fd843703          	ld	a4,-40(s0)
  209a64:	fe843783          	ld	a5,-24(s0)
  209a68:	07b1                	addi	a5,a5,12
  209a6a:	2701                	sext.w	a4,a4
  209a6c:	c398                	sw	a4,0(a5)
  209a6e:	fd043703          	ld	a4,-48(s0)
  209a72:	fe843783          	ld	a5,-24(s0)
  209a76:	07e1                	addi	a5,a5,24
  209a78:	2701                	sext.w	a4,a4
  209a7a:	c398                	sw	a4,0(a5)
  209a7c:	fd043783          	ld	a5,-48(s0)
  209a80:	0007a023          	sw	zero,0(a5)
  209a84:	fe843783          	ld	a5,-24(s0)
  209a88:	03700713          	li	a4,55
  209a8c:	c398                	sw	a4,0(a5)
  209a8e:	0001                	nop
  209a90:	7422                	ld	s0,40(sp)
  209a92:	6145                	addi	sp,sp,48
  209a94:	8082                	ret

0000000000209a96 <V2FProgramPageAsync>:
  209a96:	7179                	addi	sp,sp,-48
  209a98:	f422                	sd	s0,40(sp)
  209a9a:	1800                	addi	s0,sp,48
  209a9c:	fea43423          	sd	a0,-24(s0)
  209aa0:	87ae                	mv	a5,a1
  209aa2:	fcd43c23          	sd	a3,-40(s0)
  209aa6:	fce43823          	sd	a4,-48(s0)
  209aaa:	fef42223          	sw	a5,-28(s0)
  209aae:	87b2                	mv	a5,a2
  209ab0:	fef42023          	sw	a5,-32(s0)
  209ab4:	fe843783          	ld	a5,-24(s0)
  209ab8:	07f1                	addi	a5,a5,28
  209aba:	fe442703          	lw	a4,-28(s0)
  209abe:	c398                	sw	a4,0(a5)
  209ac0:	fe843783          	ld	a5,-24(s0)
  209ac4:	0791                	addi	a5,a5,4
  209ac6:	fe042703          	lw	a4,-32(s0)
  209aca:	c398                	sw	a4,0(a5)
  209acc:	fd843703          	ld	a4,-40(s0)
  209ad0:	fe843783          	ld	a5,-24(s0)
  209ad4:	07b1                	addi	a5,a5,12
  209ad6:	2701                	sext.w	a4,a4
  209ad8:	c398                	sw	a4,0(a5)
  209ada:	fd043703          	ld	a4,-48(s0)
  209ade:	fe843783          	ld	a5,-24(s0)
  209ae2:	07c1                	addi	a5,a5,16
  209ae4:	2701                	sext.w	a4,a4
  209ae6:	c398                	sw	a4,0(a5)
  209ae8:	fe843783          	ld	a5,-24(s0)
  209aec:	4771                	li	a4,28
  209aee:	c398                	sw	a4,0(a5)
  209af0:	0001                	nop
  209af2:	7422                	ld	s0,40(sp)
  209af4:	6145                	addi	sp,sp,48
  209af6:	8082                	ret

0000000000209af8 <V2FEraseBlockAsync>:
  209af8:	1101                	addi	sp,sp,-32
  209afa:	ec22                	sd	s0,24(sp)
  209afc:	1000                	addi	s0,sp,32
  209afe:	fea43423          	sd	a0,-24(s0)
  209b02:	87ae                	mv	a5,a1
  209b04:	8732                	mv	a4,a2
  209b06:	fef42223          	sw	a5,-28(s0)
  209b0a:	87ba                	mv	a5,a4
  209b0c:	fef42023          	sw	a5,-32(s0)
  209b10:	fe843783          	ld	a5,-24(s0)
  209b14:	07f1                	addi	a5,a5,28
  209b16:	fe442703          	lw	a4,-28(s0)
  209b1a:	c398                	sw	a4,0(a5)
  209b1c:	fe843783          	ld	a5,-24(s0)
  209b20:	0791                	addi	a5,a5,4
  209b22:	fe042703          	lw	a4,-32(s0)
  209b26:	c398                	sw	a4,0(a5)
  209b28:	fe843783          	ld	a5,-24(s0)
  209b2c:	02500713          	li	a4,37
  209b30:	c398                	sw	a4,0(a5)
  209b32:	0001                	nop
  209b34:	6462                	ld	s0,24(sp)
  209b36:	6105                	addi	sp,sp,32
  209b38:	8082                	ret

0000000000209b3a <V2FStatusCheckAsync>:
  209b3a:	7179                	addi	sp,sp,-48
  209b3c:	f422                	sd	s0,40(sp)
  209b3e:	1800                	addi	s0,sp,48
  209b40:	fea43423          	sd	a0,-24(s0)
  209b44:	87ae                	mv	a5,a1
  209b46:	fcc43c23          	sd	a2,-40(s0)
  209b4a:	fef42223          	sw	a5,-28(s0)
  209b4e:	fe843783          	ld	a5,-24(s0)
  209b52:	07f1                	addi	a5,a5,28
  209b54:	fe442703          	lw	a4,-28(s0)
  209b58:	c398                	sw	a4,0(a5)
  209b5a:	fd843703          	ld	a4,-40(s0)
  209b5e:	fe843783          	ld	a5,-24(s0)
  209b62:	07e1                	addi	a5,a5,24
  209b64:	2701                	sext.w	a4,a4
  209b66:	c398                	sw	a4,0(a5)
  209b68:	fd843783          	ld	a5,-40(s0)
  209b6c:	0007a023          	sw	zero,0(a5)
  209b70:	fe843783          	ld	a5,-24(s0)
  209b74:	02900713          	li	a4,41
  209b78:	c398                	sw	a4,0(a5)
  209b7a:	0001                	nop
  209b7c:	7422                	ld	s0,40(sp)
  209b7e:	6145                	addi	sp,sp,48
  209b80:	8082                	ret

0000000000209b82 <V2FStatusCheckSync>:
  209b82:	7179                	addi	sp,sp,-48
  209b84:	f406                	sd	ra,40(sp)
  209b86:	f022                	sd	s0,32(sp)
  209b88:	1800                	addi	s0,sp,48
  209b8a:	fca43c23          	sd	a0,-40(s0)
  209b8e:	87ae                	mv	a5,a1
  209b90:	fcf42a23          	sw	a5,-44(s0)
  209b94:	fec40713          	addi	a4,s0,-20
  209b98:	fd442783          	lw	a5,-44(s0)
  209b9c:	863a                	mv	a2,a4
  209b9e:	85be                	mv	a1,a5
  209ba0:	fd843503          	ld	a0,-40(s0)
  209ba4:	f97ff0ef          	jal	ra,209b3a <V2FStatusCheckAsync>
  209ba8:	0001                	nop
  209baa:	fec42783          	lw	a5,-20(s0)
  209bae:	2781                	sext.w	a5,a5
  209bb0:	8b85                	andi	a5,a5,1
  209bb2:	2781                	sext.w	a5,a5
  209bb4:	dbfd                	beqz	a5,209baa <V2FStatusCheckSync+0x28>
  209bb6:	fec42783          	lw	a5,-20(s0)
  209bba:	2781                	sext.w	a5,a5
  209bbc:	0017d79b          	srliw	a5,a5,0x1
  209bc0:	2781                	sext.w	a5,a5
  209bc2:	853e                	mv	a0,a5
  209bc4:	70a2                	ld	ra,40(sp)
  209bc6:	7402                	ld	s0,32(sp)
  209bc8:	6145                	addi	sp,sp,48
  209bca:	8082                	ret

0000000000209bcc <V2FReadyBusyAsync>:
  209bcc:	7179                	addi	sp,sp,-48
  209bce:	f422                	sd	s0,40(sp)
  209bd0:	1800                	addi	s0,sp,48
  209bd2:	fca43c23          	sd	a0,-40(s0)
  209bd6:	fd843783          	ld	a5,-40(s0)
  209bda:	53dc                	lw	a5,36(a5)
  209bdc:	fef42623          	sw	a5,-20(s0)
  209be0:	fec42783          	lw	a5,-20(s0)
  209be4:	2781                	sext.w	a5,a5
  209be6:	853e                	mv	a0,a5
  209be8:	7422                	ld	s0,40(sp)
  209bea:	6145                	addi	sp,sp,48
  209bec:	8082                	ret

0000000000209bee <InitFTL>:
  209bee:	1141                	addi	sp,sp,-16
  209bf0:	e406                	sd	ra,8(sp)
  209bf2:	e022                	sd	s0,0(sp)
  209bf4:	0800                	addi	s0,sp,16
  209bf6:	45c000ef          	jal	ra,20a052 <CheckConfigRestriction>
  209bfa:	068000ef          	jal	ra,209c62 <InitChCtlReg>
  209bfe:	b70f90ef          	jal	ra,202f6e <InitReqPool>
  209c02:	45e000ef          	jal	ra,20a060 <InitDependencyTable>
  209c06:	da6fb0ef          	jal	ra,2051ac <InitReqScheduler>
  209c0a:	0d6000ef          	jal	ra,209ce0 <InitNandArray>
  209c0e:	c8af60ef          	jal	ra,200098 <InitAddressMap>
  209c12:	a97fa0ef          	jal	ra,2046a8 <InitDataBuf>
  209c16:	368020ef          	jal	ra,20bf7e <InitGcVictimMap>
  209c1a:	002107b7          	lui	a5,0x210
  209c1e:	f347a783          	lw	a5,-204(a5) # 20ff34 <mbPerbadBlockSpace>
  209c22:	000e6737          	lui	a4,0xe6
  209c26:	5e87071b          	addiw	a4,a4,1512
  209c2a:	40f707bb          	subw	a5,a4,a5
  209c2e:	2781                	sext.w	a5,a5
  209c30:	0087979b          	slliw	a5,a5,0x8
  209c34:	0007871b          	sext.w	a4,a5
  209c38:	002107b7          	lui	a5,0x210
  209c3c:	3ee7a823          	sw	a4,1008(a5) # 2103f0 <storageCapacity_L>
  209c40:	0020f7b7          	lui	a5,0x20f
  209c44:	3b078513          	addi	a0,a5,944 # 20f3b0 <nvme_main+0x8fa>
  209c48:	971fa0ef          	jal	ra,2045b8 <cpl_print>
  209c4c:	0020f7b7          	lui	a5,0x20f
  209c50:	3d078513          	addi	a0,a5,976 # 20f3d0 <nvme_main+0x91a>
  209c54:	965fa0ef          	jal	ra,2045b8 <cpl_print>
  209c58:	0001                	nop
  209c5a:	60a2                	ld	ra,8(sp)
  209c5c:	6402                	ld	s0,0(sp)
  209c5e:	0141                	addi	sp,sp,16
  209c60:	8082                	ret

0000000000209c62 <InitChCtlReg>:
  209c62:	1141                	addi	sp,sp,-16
  209c64:	e422                	sd	s0,8(sp)
  209c66:	0800                	addi	s0,sp,16
  209c68:	002107b7          	lui	a5,0x210
  209c6c:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209c70:	43c00737          	lui	a4,0x43c00
  209c74:	e398                	sd	a4,0(a5)
  209c76:	002107b7          	lui	a5,0x210
  209c7a:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209c7e:	43c10737          	lui	a4,0x43c10
  209c82:	e798                	sd	a4,8(a5)
  209c84:	002107b7          	lui	a5,0x210
  209c88:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209c8c:	43c20737          	lui	a4,0x43c20
  209c90:	eb98                	sd	a4,16(a5)
  209c92:	002107b7          	lui	a5,0x210
  209c96:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209c9a:	43c30737          	lui	a4,0x43c30
  209c9e:	ef98                	sd	a4,24(a5)
  209ca0:	002107b7          	lui	a5,0x210
  209ca4:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209ca8:	43c40737          	lui	a4,0x43c40
  209cac:	f398                	sd	a4,32(a5)
  209cae:	002107b7          	lui	a5,0x210
  209cb2:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209cb6:	43c50737          	lui	a4,0x43c50
  209cba:	f798                	sd	a4,40(a5)
  209cbc:	002107b7          	lui	a5,0x210
  209cc0:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209cc4:	43c60737          	lui	a4,0x43c60
  209cc8:	fb98                	sd	a4,48(a5)
  209cca:	002107b7          	lui	a5,0x210
  209cce:	3f878793          	addi	a5,a5,1016 # 2103f8 <chCtlReg>
  209cd2:	43c70737          	lui	a4,0x43c70
  209cd6:	ff98                	sd	a4,56(a5)
  209cd8:	0001                	nop
  209cda:	6422                	ld	s0,8(sp)
  209cdc:	0141                	addi	sp,sp,16
  209cde:	8082                	ret

0000000000209ce0 <InitNandArray>:
  209ce0:	1101                	addi	sp,sp,-32
  209ce2:	ec06                	sd	ra,24(sp)
  209ce4:	e822                	sd	s0,16(sp)
  209ce6:	1000                	addi	s0,sp,32
  209ce8:	fe042623          	sw	zero,-20(s0)
  209cec:	ae3d                	j	20a02a <InitNandArray+0x34a>
  209cee:	fe042423          	sw	zero,-24(s0)
  209cf2:	a605                	j	20a012 <InitNandArray+0x332>
  209cf4:	e6cf90ef          	jal	ra,203360 <GetFromFreeReqQ>
  209cf8:	87aa                	mv	a5,a0
  209cfa:	fef42223          	sw	a5,-28(s0)
  209cfe:	002107b7          	lui	a5,0x210
  209d02:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d06:	fe446683          	lwu	a3,-28(s0)
  209d0a:	03400793          	li	a5,52
  209d0e:	02f687b3          	mul	a5,a3,a5
  209d12:	97ba                	add	a5,a5,a4
  209d14:	4398                	lw	a4,0(a5)
  209d16:	9b41                	andi	a4,a4,-16
  209d18:	00176713          	ori	a4,a4,1
  209d1c:	c398                	sw	a4,0(a5)
  209d1e:	002107b7          	lui	a5,0x210
  209d22:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d26:	fe446683          	lwu	a3,-28(s0)
  209d2a:	03400793          	li	a5,52
  209d2e:	02f687b3          	mul	a5,a3,a5
  209d32:	97ba                	add	a5,a5,a4
  209d34:	4735                	li	a4,13
  209d36:	00e780a3          	sb	a4,1(a5)
  209d3a:	002107b7          	lui	a5,0x210
  209d3e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d42:	fe446683          	lwu	a3,-28(s0)
  209d46:	03400793          	li	a5,52
  209d4a:	02f687b3          	mul	a5,a3,a5
  209d4e:	97ba                	add	a5,a5,a4
  209d50:	4b98                	lw	a4,16(a5)
  209d52:	9b4d                	andi	a4,a4,-13
  209d54:	00476713          	ori	a4,a4,4
  209d58:	cb98                	sw	a4,16(a5)
  209d5a:	002107b7          	lui	a5,0x210
  209d5e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d62:	fe446683          	lwu	a3,-28(s0)
  209d66:	03400793          	li	a5,52
  209d6a:	02f687b3          	mul	a5,a3,a5
  209d6e:	97ba                	add	a5,a5,a4
  209d70:	4b98                	lw	a4,16(a5)
  209d72:	00376713          	ori	a4,a4,3
  209d76:	cb98                	sw	a4,16(a5)
  209d78:	002107b7          	lui	a5,0x210
  209d7c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d80:	fe446683          	lwu	a3,-28(s0)
  209d84:	03400793          	li	a5,52
  209d88:	02f687b3          	mul	a5,a3,a5
  209d8c:	97ba                	add	a5,a5,a4
  209d8e:	4b98                	lw	a4,16(a5)
  209d90:	fbf77713          	andi	a4,a4,-65
  209d94:	cb98                	sw	a4,16(a5)
  209d96:	002107b7          	lui	a5,0x210
  209d9a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209d9e:	fe446683          	lwu	a3,-28(s0)
  209da2:	03400793          	li	a5,52
  209da6:	02f687b3          	mul	a5,a3,a5
  209daa:	97ba                	add	a5,a5,a4
  209dac:	4b98                	lw	a4,16(a5)
  209dae:	08076713          	ori	a4,a4,128
  209db2:	cb98                	sw	a4,16(a5)
  209db4:	002107b7          	lui	a5,0x210
  209db8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209dbc:	fec42783          	lw	a5,-20(s0)
  209dc0:	8bbd                	andi	a5,a5,15
  209dc2:	0ff7f613          	andi	a2,a5,255
  209dc6:	fe446683          	lwu	a3,-28(s0)
  209dca:	03400793          	li	a5,52
  209dce:	02f687b3          	mul	a5,a3,a5
  209dd2:	97ba                	add	a5,a5,a4
  209dd4:	8732                	mv	a4,a2
  209dd6:	00f77613          	andi	a2,a4,15
  209dda:	53d8                	lw	a4,36(a5)
  209ddc:	9b41                	andi	a4,a4,-16
  209dde:	86ba                	mv	a3,a4
  209de0:	8732                	mv	a4,a2
  209de2:	8f55                	or	a4,a4,a3
  209de4:	d3d8                	sw	a4,36(a5)
  209de6:	002107b7          	lui	a5,0x210
  209dea:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209dee:	fe842783          	lw	a5,-24(s0)
  209df2:	8bbd                	andi	a5,a5,15
  209df4:	0ff7f613          	andi	a2,a5,255
  209df8:	fe446683          	lwu	a3,-28(s0)
  209dfc:	03400793          	li	a5,52
  209e00:	02f687b3          	mul	a5,a3,a5
  209e04:	97ba                	add	a5,a5,a4
  209e06:	8732                	mv	a4,a2
  209e08:	8b3d                	andi	a4,a4,15
  209e0a:	0047171b          	slliw	a4,a4,0x4
  209e0e:	53d4                	lw	a3,36(a5)
  209e10:	f0f6f693          	andi	a3,a3,-241
  209e14:	8f55                	or	a4,a4,a3
  209e16:	d3d8                	sw	a4,36(a5)
  209e18:	002107b7          	lui	a5,0x210
  209e1c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209e20:	fe446683          	lwu	a3,-28(s0)
  209e24:	03400793          	li	a5,52
  209e28:	02f687b3          	mul	a5,a3,a5
  209e2c:	97ba                	add	a5,a5,a4
  209e2e:	53d4                	lw	a3,36(a5)
  209e30:	ff000737          	lui	a4,0xff000
  209e34:	0ff70713          	addi	a4,a4,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  209e38:	8f75                	and	a4,a4,a3
  209e3a:	d3d8                	sw	a4,36(a5)
  209e3c:	002107b7          	lui	a5,0x210
  209e40:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209e44:	fe446683          	lwu	a3,-28(s0)
  209e48:	03400793          	li	a5,52
  209e4c:	02f687b3          	mul	a5,a3,a5
  209e50:	97ba                	add	a5,a5,a4
  209e52:	02079423          	sh	zero,40(a5)
  209e56:	002107b7          	lui	a5,0x210
  209e5a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209e5e:	fe446683          	lwu	a3,-28(s0)
  209e62:	03400793          	li	a5,52
  209e66:	02f687b3          	mul	a5,a3,a5
  209e6a:	97ba                	add	a5,a5,a4
  209e6c:	577d                	li	a4,-1
  209e6e:	02e79823          	sh	a4,48(a5)
  209e72:	fe442783          	lw	a5,-28(s0)
  209e76:	4581                	li	a1,0
  209e78:	853e                	mv	a0,a5
  209e7a:	5cc010ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  209e7e:	ce2f90ef          	jal	ra,203360 <GetFromFreeReqQ>
  209e82:	87aa                	mv	a5,a0
  209e84:	fef42223          	sw	a5,-28(s0)
  209e88:	002107b7          	lui	a5,0x210
  209e8c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209e90:	fe446683          	lwu	a3,-28(s0)
  209e94:	03400793          	li	a5,52
  209e98:	02f687b3          	mul	a5,a3,a5
  209e9c:	97ba                	add	a5,a5,a4
  209e9e:	4398                	lw	a4,0(a5)
  209ea0:	9b41                	andi	a4,a4,-16
  209ea2:	00176713          	ori	a4,a4,1
  209ea6:	c398                	sw	a4,0(a5)
  209ea8:	002107b7          	lui	a5,0x210
  209eac:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209eb0:	fe446683          	lwu	a3,-28(s0)
  209eb4:	03400793          	li	a5,52
  209eb8:	02f687b3          	mul	a5,a3,a5
  209ebc:	97ba                	add	a5,a5,a4
  209ebe:	4739                	li	a4,14
  209ec0:	00e780a3          	sb	a4,1(a5)
  209ec4:	002107b7          	lui	a5,0x210
  209ec8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209ecc:	fe446683          	lwu	a3,-28(s0)
  209ed0:	03400793          	li	a5,52
  209ed4:	02f687b3          	mul	a5,a3,a5
  209ed8:	97ba                	add	a5,a5,a4
  209eda:	4b98                	lw	a4,16(a5)
  209edc:	9b4d                	andi	a4,a4,-13
  209ede:	00476713          	ori	a4,a4,4
  209ee2:	cb98                	sw	a4,16(a5)
  209ee4:	002107b7          	lui	a5,0x210
  209ee8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209eec:	fe446683          	lwu	a3,-28(s0)
  209ef0:	03400793          	li	a5,52
  209ef4:	02f687b3          	mul	a5,a3,a5
  209ef8:	97ba                	add	a5,a5,a4
  209efa:	4b98                	lw	a4,16(a5)
  209efc:	00376713          	ori	a4,a4,3
  209f00:	cb98                	sw	a4,16(a5)
  209f02:	002107b7          	lui	a5,0x210
  209f06:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209f0a:	fe446683          	lwu	a3,-28(s0)
  209f0e:	03400793          	li	a5,52
  209f12:	02f687b3          	mul	a5,a3,a5
  209f16:	97ba                	add	a5,a5,a4
  209f18:	4b98                	lw	a4,16(a5)
  209f1a:	fbf77713          	andi	a4,a4,-65
  209f1e:	cb98                	sw	a4,16(a5)
  209f20:	002107b7          	lui	a5,0x210
  209f24:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209f28:	fe446683          	lwu	a3,-28(s0)
  209f2c:	03400793          	li	a5,52
  209f30:	02f687b3          	mul	a5,a3,a5
  209f34:	97ba                	add	a5,a5,a4
  209f36:	4b98                	lw	a4,16(a5)
  209f38:	08076713          	ori	a4,a4,128
  209f3c:	cb98                	sw	a4,16(a5)
  209f3e:	002107b7          	lui	a5,0x210
  209f42:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209f46:	fec42783          	lw	a5,-20(s0)
  209f4a:	8bbd                	andi	a5,a5,15
  209f4c:	0ff7f613          	andi	a2,a5,255
  209f50:	fe446683          	lwu	a3,-28(s0)
  209f54:	03400793          	li	a5,52
  209f58:	02f687b3          	mul	a5,a3,a5
  209f5c:	97ba                	add	a5,a5,a4
  209f5e:	8732                	mv	a4,a2
  209f60:	00f77613          	andi	a2,a4,15
  209f64:	53d8                	lw	a4,36(a5)
  209f66:	9b41                	andi	a4,a4,-16
  209f68:	86ba                	mv	a3,a4
  209f6a:	8732                	mv	a4,a2
  209f6c:	8f55                	or	a4,a4,a3
  209f6e:	d3d8                	sw	a4,36(a5)
  209f70:	002107b7          	lui	a5,0x210
  209f74:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209f78:	fe842783          	lw	a5,-24(s0)
  209f7c:	8bbd                	andi	a5,a5,15
  209f7e:	0ff7f613          	andi	a2,a5,255
  209f82:	fe446683          	lwu	a3,-28(s0)
  209f86:	03400793          	li	a5,52
  209f8a:	02f687b3          	mul	a5,a3,a5
  209f8e:	97ba                	add	a5,a5,a4
  209f90:	8732                	mv	a4,a2
  209f92:	8b3d                	andi	a4,a4,15
  209f94:	0047171b          	slliw	a4,a4,0x4
  209f98:	53d4                	lw	a3,36(a5)
  209f9a:	f0f6f693          	andi	a3,a3,-241
  209f9e:	8f55                	or	a4,a4,a3
  209fa0:	d3d8                	sw	a4,36(a5)
  209fa2:	002107b7          	lui	a5,0x210
  209fa6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209faa:	fe446683          	lwu	a3,-28(s0)
  209fae:	03400793          	li	a5,52
  209fb2:	02f687b3          	mul	a5,a3,a5
  209fb6:	97ba                	add	a5,a5,a4
  209fb8:	53d4                	lw	a3,36(a5)
  209fba:	ff000737          	lui	a4,0xff000
  209fbe:	0ff70713          	addi	a4,a4,255 # ffffffffff0000ff <g_nvmeTask+0xfffffffffedefc97>
  209fc2:	8f75                	and	a4,a4,a3
  209fc4:	d3d8                	sw	a4,36(a5)
  209fc6:	002107b7          	lui	a5,0x210
  209fca:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209fce:	fe446683          	lwu	a3,-28(s0)
  209fd2:	03400793          	li	a5,52
  209fd6:	02f687b3          	mul	a5,a3,a5
  209fda:	97ba                	add	a5,a5,a4
  209fdc:	02079423          	sh	zero,40(a5)
  209fe0:	002107b7          	lui	a5,0x210
  209fe4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  209fe8:	fe446683          	lwu	a3,-28(s0)
  209fec:	03400793          	li	a5,52
  209ff0:	02f687b3          	mul	a5,a3,a5
  209ff4:	97ba                	add	a5,a5,a4
  209ff6:	577d                	li	a4,-1
  209ff8:	02e79823          	sh	a4,48(a5)
  209ffc:	fe442783          	lw	a5,-28(s0)
  20a000:	4581                	li	a1,0
  20a002:	853e                	mv	a0,a5
  20a004:	442010ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20a008:	fe842783          	lw	a5,-24(s0)
  20a00c:	2785                	addiw	a5,a5,1
  20a00e:	fef42423          	sw	a5,-24(s0)
  20a012:	fe842783          	lw	a5,-24(s0)
  20a016:	0007871b          	sext.w	a4,a5
  20a01a:	479d                	li	a5,7
  20a01c:	cce7fce3          	bgeu	a5,a4,209cf4 <InitNandArray+0x14>
  20a020:	fec42783          	lw	a5,-20(s0)
  20a024:	2785                	addiw	a5,a5,1
  20a026:	fef42623          	sw	a5,-20(s0)
  20a02a:	fec42783          	lw	a5,-20(s0)
  20a02e:	0007871b          	sext.w	a4,a5
  20a032:	479d                	li	a5,7
  20a034:	cae7fde3          	bgeu	a5,a4,209cee <InitNandArray+0xe>
  20a038:	ccefb0ef          	jal	ra,205506 <SyncAllLowLevelReqDone>
  20a03c:	0020f7b7          	lui	a5,0x20f
  20a040:	3f878513          	addi	a0,a5,1016 # 20f3f8 <nvme_main+0x942>
  20a044:	d74fa0ef          	jal	ra,2045b8 <cpl_print>
  20a048:	0001                	nop
  20a04a:	60e2                	ld	ra,24(sp)
  20a04c:	6442                	ld	s0,16(sp)
  20a04e:	6105                	addi	sp,sp,32
  20a050:	8082                	ret

000000000020a052 <CheckConfigRestriction>:
  20a052:	1141                	addi	sp,sp,-16
  20a054:	e422                	sd	s0,8(sp)
  20a056:	0800                	addi	s0,sp,16
  20a058:	0001                	nop
  20a05a:	6422                	ld	s0,8(sp)
  20a05c:	0141                	addi	sp,sp,16
  20a05e:	8082                	ret

000000000020a060 <InitDependencyTable>:
  20a060:	1101                	addi	sp,sp,-32
  20a062:	ec22                	sd	s0,24(sp)
  20a064:	1000                	addi	s0,sp,32
  20a066:	002107b7          	lui	a5,0x210
  20a06a:	38880737          	lui	a4,0x38880
  20a06e:	60070713          	addi	a4,a4,1536 # 38880600 <g_nvmeTask+0x38670198>
  20a072:	42e7bc23          	sd	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20a076:	fe042623          	sw	zero,-20(s0)
  20a07a:	a0e1                	j	20a142 <InitDependencyTable+0xe2>
  20a07c:	fe042423          	sw	zero,-24(s0)
  20a080:	a06d                	j	20a12a <InitDependencyTable+0xca>
  20a082:	fe042223          	sw	zero,-28(s0)
  20a086:	a071                	j	20a112 <InitDependencyTable+0xb2>
  20a088:	002107b7          	lui	a5,0x210
  20a08c:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20a090:	fec46783          	lwu	a5,-20(s0)
  20a094:	fe446603          	lwu	a2,-28(s0)
  20a098:	fe846683          	lwu	a3,-24(s0)
  20a09c:	060e                	slli	a2,a2,0x3
  20a09e:	96b2                	add	a3,a3,a2
  20a0a0:	06b6                	slli	a3,a3,0xd
  20a0a2:	97b6                	add	a5,a5,a3
  20a0a4:	078a                	slli	a5,a5,0x2
  20a0a6:	97ba                	add	a5,a5,a4
  20a0a8:	4394                	lw	a3,0(a5)
  20a0aa:	777d                	lui	a4,0xfffff
  20a0ac:	8f75                	and	a4,a4,a3
  20a0ae:	c398                	sw	a4,0(a5)
  20a0b0:	002107b7          	lui	a5,0x210
  20a0b4:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20a0b8:	fec46783          	lwu	a5,-20(s0)
  20a0bc:	fe446603          	lwu	a2,-28(s0)
  20a0c0:	fe846683          	lwu	a3,-24(s0)
  20a0c4:	060e                	slli	a2,a2,0x3
  20a0c6:	96b2                	add	a3,a3,a2
  20a0c8:	06b6                	slli	a3,a3,0xd
  20a0ca:	97b6                	add	a5,a5,a3
  20a0cc:	078a                	slli	a5,a5,0x2
  20a0ce:	97ba                	add	a5,a5,a4
  20a0d0:	4394                	lw	a3,0(a5)
  20a0d2:	f0001737          	lui	a4,0xf0001
  20a0d6:	177d                	addi	a4,a4,-1
  20a0d8:	8f75                	and	a4,a4,a3
  20a0da:	c398                	sw	a4,0(a5)
  20a0dc:	002107b7          	lui	a5,0x210
  20a0e0:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20a0e4:	fec46783          	lwu	a5,-20(s0)
  20a0e8:	fe446603          	lwu	a2,-28(s0)
  20a0ec:	fe846683          	lwu	a3,-24(s0)
  20a0f0:	060e                	slli	a2,a2,0x3
  20a0f2:	96b2                	add	a3,a3,a2
  20a0f4:	06b6                	slli	a3,a3,0xd
  20a0f6:	97b6                	add	a5,a5,a3
  20a0f8:	078a                	slli	a5,a5,0x2
  20a0fa:	97ba                	add	a5,a5,a4
  20a0fc:	4394                	lw	a3,0(a5)
  20a0fe:	f0000737          	lui	a4,0xf0000
  20a102:	177d                	addi	a4,a4,-1
  20a104:	8f75                	and	a4,a4,a3
  20a106:	c398                	sw	a4,0(a5)
  20a108:	fe442783          	lw	a5,-28(s0)
  20a10c:	2785                	addiw	a5,a5,1
  20a10e:	fef42223          	sw	a5,-28(s0)
  20a112:	fe442783          	lw	a5,-28(s0)
  20a116:	0007871b          	sext.w	a4,a5
  20a11a:	479d                	li	a5,7
  20a11c:	f6e7f6e3          	bgeu	a5,a4,20a088 <InitDependencyTable+0x28>
  20a120:	fe842783          	lw	a5,-24(s0)
  20a124:	2785                	addiw	a5,a5,1
  20a126:	fef42423          	sw	a5,-24(s0)
  20a12a:	fe842783          	lw	a5,-24(s0)
  20a12e:	0007871b          	sext.w	a4,a5
  20a132:	479d                	li	a5,7
  20a134:	f4e7f7e3          	bgeu	a5,a4,20a082 <InitDependencyTable+0x22>
  20a138:	fec42783          	lw	a5,-20(s0)
  20a13c:	2785                	addiw	a5,a5,1
  20a13e:	fef42623          	sw	a5,-20(s0)
  20a142:	fec42783          	lw	a5,-20(s0)
  20a146:	0007871b          	sext.w	a4,a5
  20a14a:	6789                	lui	a5,0x2
  20a14c:	f2f768e3          	bltu	a4,a5,20a07c <InitDependencyTable+0x1c>
  20a150:	0001                	nop
  20a152:	0001                	nop
  20a154:	6462                	ld	s0,24(sp)
  20a156:	6105                	addi	sp,sp,32
  20a158:	8082                	ret

000000000020a15a <ReqTransNvmeToSlice>:
  20a15a:	715d                	addi	sp,sp,-80
  20a15c:	e486                	sd	ra,72(sp)
  20a15e:	e0a2                	sd	s0,64(sp)
  20a160:	0880                	addi	s0,sp,80
  20a162:	87aa                	mv	a5,a0
  20a164:	8736                	mv	a4,a3
  20a166:	faf42e23          	sw	a5,-68(s0)
  20a16a:	87ae                	mv	a5,a1
  20a16c:	faf42c23          	sw	a5,-72(s0)
  20a170:	87b2                	mv	a5,a2
  20a172:	faf42a23          	sw	a5,-76(s0)
  20a176:	87ba                	mv	a5,a4
  20a178:	faf42823          	sw	a5,-80(s0)
  20a17c:	fb442783          	lw	a5,-76(s0)
  20a180:	2785                	addiw	a5,a5,1
  20a182:	fcf42c23          	sw	a5,-40(s0)
  20a186:	fe042423          	sw	zero,-24(s0)
  20a18a:	fe042023          	sw	zero,-32(s0)
  20a18e:	fb842783          	lw	a5,-72(s0)
  20a192:	0027d79b          	srliw	a5,a5,0x2
  20a196:	fef42223          	sw	a5,-28(s0)
  20a19a:	fb842783          	lw	a5,-72(s0)
  20a19e:	8b8d                	andi	a5,a5,3
  20a1a0:	2781                	sext.w	a5,a5
  20a1a2:	fd842703          	lw	a4,-40(s0)
  20a1a6:	9fb9                	addw	a5,a5,a4
  20a1a8:	2781                	sext.w	a5,a5
  20a1aa:	0027d79b          	srliw	a5,a5,0x2
  20a1ae:	fcf42a23          	sw	a5,-44(s0)
  20a1b2:	fb042783          	lw	a5,-80(s0)
  20a1b6:	0007871b          	sext.w	a4,a5
  20a1ba:	4785                	li	a5,1
  20a1bc:	00f71563          	bne	a4,a5,20a1c6 <ReqTransNvmeToSlice+0x6c>
  20a1c0:	fc042e23          	sw	zero,-36(s0)
  20a1c4:	a015                	j	20a1e8 <ReqTransNvmeToSlice+0x8e>
  20a1c6:	fb042783          	lw	a5,-80(s0)
  20a1ca:	0007871b          	sext.w	a4,a5
  20a1ce:	4789                	li	a5,2
  20a1d0:	00f71663          	bne	a4,a5,20a1dc <ReqTransNvmeToSlice+0x82>
  20a1d4:	47a1                	li	a5,8
  20a1d6:	fcf42e23          	sw	a5,-36(s0)
  20a1da:	a039                	j	20a1e8 <ReqTransNvmeToSlice+0x8e>
  20a1dc:	0020f7b7          	lui	a5,0x20f
  20a1e0:	42078513          	addi	a0,a5,1056 # 20f420 <nvme_main+0x96a>
  20a1e4:	bd4fa0ef          	jal	ra,2045b8 <cpl_print>
  20a1e8:	fb842783          	lw	a5,-72(s0)
  20a1ec:	8b8d                	andi	a5,a5,3
  20a1ee:	fcf42823          	sw	a5,-48(s0)
  20a1f2:	fd442783          	lw	a5,-44(s0)
  20a1f6:	2781                	sext.w	a5,a5
  20a1f8:	cb89                	beqz	a5,20a20a <ReqTransNvmeToSlice+0xb0>
  20a1fa:	4711                	li	a4,4
  20a1fc:	fd042783          	lw	a5,-48(s0)
  20a200:	40f707bb          	subw	a5,a4,a5
  20a204:	fef42623          	sw	a5,-20(s0)
  20a208:	a029                	j	20a212 <ReqTransNvmeToSlice+0xb8>
  20a20a:	fd842783          	lw	a5,-40(s0)
  20a20e:	fef42623          	sw	a5,-20(s0)
  20a212:	0020f7b7          	lui	a5,0x20f
  20a216:	45078513          	addi	a0,a5,1104 # 20f450 <nvme_main+0x99a>
  20a21a:	b9efa0ef          	jal	ra,2045b8 <cpl_print>
  20a21e:	942f90ef          	jal	ra,203360 <GetFromFreeReqQ>
  20a222:	87aa                	mv	a5,a0
  20a224:	fcf42623          	sw	a5,-52(s0)
  20a228:	002107b7          	lui	a5,0x210
  20a22c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a230:	fcc46683          	lwu	a3,-52(s0)
  20a234:	03400793          	li	a5,52
  20a238:	02f687b3          	mul	a5,a3,a5
  20a23c:	97ba                	add	a5,a5,a4
  20a23e:	4398                	lw	a4,0(a5)
  20a240:	9b41                	andi	a4,a4,-16
  20a242:	c398                	sw	a4,0(a5)
  20a244:	002107b7          	lui	a5,0x210
  20a248:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a24c:	fdc42783          	lw	a5,-36(s0)
  20a250:	0ff7f713          	andi	a4,a5,255
  20a254:	fcc46603          	lwu	a2,-52(s0)
  20a258:	03400793          	li	a5,52
  20a25c:	02f607b3          	mul	a5,a2,a5
  20a260:	97b6                	add	a5,a5,a3
  20a262:	00e780a3          	sb	a4,1(a5)
  20a266:	002107b7          	lui	a5,0x210
  20a26a:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a26e:	fbc42783          	lw	a5,-68(s0)
  20a272:	03079713          	slli	a4,a5,0x30
  20a276:	9341                	srli	a4,a4,0x30
  20a278:	fcc46603          	lwu	a2,-52(s0)
  20a27c:	03400793          	li	a5,52
  20a280:	02f607b3          	mul	a5,a2,a5
  20a284:	97b6                	add	a5,a5,a3
  20a286:	00e79123          	sh	a4,2(a5)
  20a28a:	002107b7          	lui	a5,0x210
  20a28e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a292:	fcc46683          	lwu	a3,-52(s0)
  20a296:	03400793          	li	a5,52
  20a29a:	02f687b3          	mul	a5,a3,a5
  20a29e:	97ba                	add	a5,a5,a4
  20a2a0:	fe442703          	lw	a4,-28(s0)
  20a2a4:	c7d8                	sw	a4,12(a5)
  20a2a6:	002107b7          	lui	a5,0x210
  20a2aa:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a2ae:	fe042783          	lw	a5,-32(s0)
  20a2b2:	03079713          	slli	a4,a5,0x30
  20a2b6:	9341                	srli	a4,a4,0x30
  20a2b8:	fcc46603          	lwu	a2,-52(s0)
  20a2bc:	03400793          	li	a5,52
  20a2c0:	02f607b3          	mul	a5,a2,a5
  20a2c4:	97b6                	add	a5,a5,a3
  20a2c6:	00e79c23          	sh	a4,24(a5)
  20a2ca:	002107b7          	lui	a5,0x210
  20a2ce:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a2d2:	fd042783          	lw	a5,-48(s0)
  20a2d6:	03079713          	slli	a4,a5,0x30
  20a2da:	9341                	srli	a4,a4,0x30
  20a2dc:	fcc46603          	lwu	a2,-52(s0)
  20a2e0:	03400793          	li	a5,52
  20a2e4:	02f607b3          	mul	a5,a2,a5
  20a2e8:	97b6                	add	a5,a5,a3
  20a2ea:	00e79d23          	sh	a4,26(a5)
  20a2ee:	002107b7          	lui	a5,0x210
  20a2f2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a2f6:	fec42783          	lw	a5,-20(s0)
  20a2fa:	03079713          	slli	a4,a5,0x30
  20a2fe:	9341                	srli	a4,a4,0x30
  20a300:	fcc46603          	lwu	a2,-52(s0)
  20a304:	03400793          	li	a5,52
  20a308:	02f607b3          	mul	a5,a2,a5
  20a30c:	97b6                	add	a5,a5,a3
  20a30e:	00e79e23          	sh	a4,28(a5)
  20a312:	0020f7b7          	lui	a5,0x20f
  20a316:	45878513          	addi	a0,a5,1112 # 20f458 <nvme_main+0x9a2>
  20a31a:	a9efa0ef          	jal	ra,2045b8 <cpl_print>
  20a31e:	fcc42783          	lw	a5,-52(s0)
  20a322:	853e                	mv	a0,a5
  20a324:	954f90ef          	jal	ra,203478 <PutToSliceReqQ>
  20a328:	fe442783          	lw	a5,-28(s0)
  20a32c:	2785                	addiw	a5,a5,1
  20a32e:	fef42223          	sw	a5,-28(s0)
  20a332:	fe842783          	lw	a5,-24(s0)
  20a336:	2785                	addiw	a5,a5,1
  20a338:	fef42423          	sw	a5,-24(s0)
  20a33c:	fe042703          	lw	a4,-32(s0)
  20a340:	fec42783          	lw	a5,-20(s0)
  20a344:	9fb9                	addw	a5,a5,a4
  20a346:	fef42023          	sw	a5,-32(s0)
  20a34a:	a235                	j	20a476 <ReqTransNvmeToSlice+0x31c>
  20a34c:	fc042823          	sw	zero,-48(s0)
  20a350:	4791                	li	a5,4
  20a352:	fef42623          	sw	a5,-20(s0)
  20a356:	80af90ef          	jal	ra,203360 <GetFromFreeReqQ>
  20a35a:	87aa                	mv	a5,a0
  20a35c:	fcf42623          	sw	a5,-52(s0)
  20a360:	002107b7          	lui	a5,0x210
  20a364:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a368:	fcc46683          	lwu	a3,-52(s0)
  20a36c:	03400793          	li	a5,52
  20a370:	02f687b3          	mul	a5,a3,a5
  20a374:	97ba                	add	a5,a5,a4
  20a376:	4398                	lw	a4,0(a5)
  20a378:	9b41                	andi	a4,a4,-16
  20a37a:	c398                	sw	a4,0(a5)
  20a37c:	002107b7          	lui	a5,0x210
  20a380:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a384:	fdc42783          	lw	a5,-36(s0)
  20a388:	0ff7f713          	andi	a4,a5,255
  20a38c:	fcc46603          	lwu	a2,-52(s0)
  20a390:	03400793          	li	a5,52
  20a394:	02f607b3          	mul	a5,a2,a5
  20a398:	97b6                	add	a5,a5,a3
  20a39a:	00e780a3          	sb	a4,1(a5)
  20a39e:	002107b7          	lui	a5,0x210
  20a3a2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a3a6:	fbc42783          	lw	a5,-68(s0)
  20a3aa:	03079713          	slli	a4,a5,0x30
  20a3ae:	9341                	srli	a4,a4,0x30
  20a3b0:	fcc46603          	lwu	a2,-52(s0)
  20a3b4:	03400793          	li	a5,52
  20a3b8:	02f607b3          	mul	a5,a2,a5
  20a3bc:	97b6                	add	a5,a5,a3
  20a3be:	00e79123          	sh	a4,2(a5)
  20a3c2:	002107b7          	lui	a5,0x210
  20a3c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a3ca:	fcc46683          	lwu	a3,-52(s0)
  20a3ce:	03400793          	li	a5,52
  20a3d2:	02f687b3          	mul	a5,a3,a5
  20a3d6:	97ba                	add	a5,a5,a4
  20a3d8:	fe442703          	lw	a4,-28(s0)
  20a3dc:	c7d8                	sw	a4,12(a5)
  20a3de:	002107b7          	lui	a5,0x210
  20a3e2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a3e6:	fe042783          	lw	a5,-32(s0)
  20a3ea:	03079713          	slli	a4,a5,0x30
  20a3ee:	9341                	srli	a4,a4,0x30
  20a3f0:	fcc46603          	lwu	a2,-52(s0)
  20a3f4:	03400793          	li	a5,52
  20a3f8:	02f607b3          	mul	a5,a2,a5
  20a3fc:	97b6                	add	a5,a5,a3
  20a3fe:	00e79c23          	sh	a4,24(a5)
  20a402:	002107b7          	lui	a5,0x210
  20a406:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a40a:	fd042783          	lw	a5,-48(s0)
  20a40e:	03079713          	slli	a4,a5,0x30
  20a412:	9341                	srli	a4,a4,0x30
  20a414:	fcc46603          	lwu	a2,-52(s0)
  20a418:	03400793          	li	a5,52
  20a41c:	02f607b3          	mul	a5,a2,a5
  20a420:	97b6                	add	a5,a5,a3
  20a422:	00e79d23          	sh	a4,26(a5)
  20a426:	002107b7          	lui	a5,0x210
  20a42a:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a42e:	fec42783          	lw	a5,-20(s0)
  20a432:	03079713          	slli	a4,a5,0x30
  20a436:	9341                	srli	a4,a4,0x30
  20a438:	fcc46603          	lwu	a2,-52(s0)
  20a43c:	03400793          	li	a5,52
  20a440:	02f607b3          	mul	a5,a2,a5
  20a444:	97b6                	add	a5,a5,a3
  20a446:	00e79e23          	sh	a4,28(a5)
  20a44a:	fcc42783          	lw	a5,-52(s0)
  20a44e:	853e                	mv	a0,a5
  20a450:	828f90ef          	jal	ra,203478 <PutToSliceReqQ>
  20a454:	fe442783          	lw	a5,-28(s0)
  20a458:	2785                	addiw	a5,a5,1
  20a45a:	fef42223          	sw	a5,-28(s0)
  20a45e:	fe842783          	lw	a5,-24(s0)
  20a462:	2785                	addiw	a5,a5,1
  20a464:	fef42423          	sw	a5,-24(s0)
  20a468:	fe042703          	lw	a4,-32(s0)
  20a46c:	fec42783          	lw	a5,-20(s0)
  20a470:	9fb9                	addw	a5,a5,a4
  20a472:	fef42023          	sw	a5,-32(s0)
  20a476:	fe842703          	lw	a4,-24(s0)
  20a47a:	fd442783          	lw	a5,-44(s0)
  20a47e:	2701                	sext.w	a4,a4
  20a480:	2781                	sext.w	a5,a5
  20a482:	ecf765e3          	bltu	a4,a5,20a34c <ReqTransNvmeToSlice+0x1f2>
  20a486:	fc042823          	sw	zero,-48(s0)
  20a48a:	fb842703          	lw	a4,-72(s0)
  20a48e:	fd842783          	lw	a5,-40(s0)
  20a492:	9fb9                	addw	a5,a5,a4
  20a494:	2781                	sext.w	a5,a5
  20a496:	8b8d                	andi	a5,a5,3
  20a498:	fef42623          	sw	a5,-20(s0)
  20a49c:	fec42783          	lw	a5,-20(s0)
  20a4a0:	2781                	sext.w	a5,a5
  20a4a2:	12078363          	beqz	a5,20a5c8 <ReqTransNvmeToSlice+0x46e>
  20a4a6:	fd442783          	lw	a5,-44(s0)
  20a4aa:	2781                	sext.w	a5,a5
  20a4ac:	10078e63          	beqz	a5,20a5c8 <ReqTransNvmeToSlice+0x46e>
  20a4b0:	eb1f80ef          	jal	ra,203360 <GetFromFreeReqQ>
  20a4b4:	87aa                	mv	a5,a0
  20a4b6:	fcf42623          	sw	a5,-52(s0)
  20a4ba:	0020f7b7          	lui	a5,0x20f
  20a4be:	46078513          	addi	a0,a5,1120 # 20f460 <nvme_main+0x9aa>
  20a4c2:	8f6fa0ef          	jal	ra,2045b8 <cpl_print>
  20a4c6:	002107b7          	lui	a5,0x210
  20a4ca:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a4ce:	fcc46683          	lwu	a3,-52(s0)
  20a4d2:	03400793          	li	a5,52
  20a4d6:	02f687b3          	mul	a5,a3,a5
  20a4da:	97ba                	add	a5,a5,a4
  20a4dc:	4398                	lw	a4,0(a5)
  20a4de:	9b41                	andi	a4,a4,-16
  20a4e0:	c398                	sw	a4,0(a5)
  20a4e2:	002107b7          	lui	a5,0x210
  20a4e6:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a4ea:	fdc42783          	lw	a5,-36(s0)
  20a4ee:	0ff7f713          	andi	a4,a5,255
  20a4f2:	fcc46603          	lwu	a2,-52(s0)
  20a4f6:	03400793          	li	a5,52
  20a4fa:	02f607b3          	mul	a5,a2,a5
  20a4fe:	97b6                	add	a5,a5,a3
  20a500:	00e780a3          	sb	a4,1(a5)
  20a504:	002107b7          	lui	a5,0x210
  20a508:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a50c:	fbc42783          	lw	a5,-68(s0)
  20a510:	03079713          	slli	a4,a5,0x30
  20a514:	9341                	srli	a4,a4,0x30
  20a516:	fcc46603          	lwu	a2,-52(s0)
  20a51a:	03400793          	li	a5,52
  20a51e:	02f607b3          	mul	a5,a2,a5
  20a522:	97b6                	add	a5,a5,a3
  20a524:	00e79123          	sh	a4,2(a5)
  20a528:	002107b7          	lui	a5,0x210
  20a52c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a530:	fcc46683          	lwu	a3,-52(s0)
  20a534:	03400793          	li	a5,52
  20a538:	02f687b3          	mul	a5,a3,a5
  20a53c:	97ba                	add	a5,a5,a4
  20a53e:	fe442703          	lw	a4,-28(s0)
  20a542:	c7d8                	sw	a4,12(a5)
  20a544:	002107b7          	lui	a5,0x210
  20a548:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a54c:	fe042783          	lw	a5,-32(s0)
  20a550:	03079713          	slli	a4,a5,0x30
  20a554:	9341                	srli	a4,a4,0x30
  20a556:	fcc46603          	lwu	a2,-52(s0)
  20a55a:	03400793          	li	a5,52
  20a55e:	02f607b3          	mul	a5,a2,a5
  20a562:	97b6                	add	a5,a5,a3
  20a564:	00e79c23          	sh	a4,24(a5)
  20a568:	002107b7          	lui	a5,0x210
  20a56c:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a570:	fd042783          	lw	a5,-48(s0)
  20a574:	03079713          	slli	a4,a5,0x30
  20a578:	9341                	srli	a4,a4,0x30
  20a57a:	fcc46603          	lwu	a2,-52(s0)
  20a57e:	03400793          	li	a5,52
  20a582:	02f607b3          	mul	a5,a2,a5
  20a586:	97b6                	add	a5,a5,a3
  20a588:	00e79d23          	sh	a4,26(a5)
  20a58c:	002107b7          	lui	a5,0x210
  20a590:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a594:	fec42783          	lw	a5,-20(s0)
  20a598:	03079713          	slli	a4,a5,0x30
  20a59c:	9341                	srli	a4,a4,0x30
  20a59e:	fcc46603          	lwu	a2,-52(s0)
  20a5a2:	03400793          	li	a5,52
  20a5a6:	02f607b3          	mul	a5,a2,a5
  20a5aa:	97b6                	add	a5,a5,a3
  20a5ac:	00e79e23          	sh	a4,28(a5)
  20a5b0:	fcc42783          	lw	a5,-52(s0)
  20a5b4:	853e                	mv	a0,a5
  20a5b6:	ec3f80ef          	jal	ra,203478 <PutToSliceReqQ>
  20a5ba:	0020f7b7          	lui	a5,0x20f
  20a5be:	46878513          	addi	a0,a5,1128 # 20f468 <nvme_main+0x9b2>
  20a5c2:	ff7f90ef          	jal	ra,2045b8 <cpl_print>
  20a5c6:	a011                	j	20a5ca <ReqTransNvmeToSlice+0x470>
  20a5c8:	0001                	nop
  20a5ca:	60a6                	ld	ra,72(sp)
  20a5cc:	6406                	ld	s0,64(sp)
  20a5ce:	6161                	addi	sp,sp,80
  20a5d0:	8082                	ret

000000000020a5d2 <EvictDataBufEntry>:
  20a5d2:	7179                	addi	sp,sp,-48
  20a5d4:	f406                	sd	ra,40(sp)
  20a5d6:	f022                	sd	s0,32(sp)
  20a5d8:	1800                	addi	s0,sp,48
  20a5da:	87aa                	mv	a5,a0
  20a5dc:	fcf42e23          	sw	a5,-36(s0)
  20a5e0:	002107b7          	lui	a5,0x210
  20a5e4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a5e8:	fdc46683          	lwu	a3,-36(s0)
  20a5ec:	03400793          	li	a5,52
  20a5f0:	02f687b3          	mul	a5,a3,a5
  20a5f4:	97ba                	add	a5,a5,a4
  20a5f6:	4bdc                	lw	a5,20(a5)
  20a5f8:	fef42623          	sw	a5,-20(s0)
  20a5fc:	002107b7          	lui	a5,0x210
  20a600:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20a604:	fec46783          	lwu	a5,-20(s0)
  20a608:	0792                	slli	a5,a5,0x4
  20a60a:	97ba                	add	a5,a5,a4
  20a60c:	47dc                	lw	a5,12(a5)
  20a60e:	0107d79b          	srliw	a5,a5,0x10
  20a612:	8b85                	andi	a5,a5,1
  20a614:	0ff7f793          	andi	a5,a5,255
  20a618:	873e                	mv	a4,a5
  20a61a:	4785                	li	a5,1
  20a61c:	1ef71163          	bne	a4,a5,20a7fe <EvictDataBufEntry+0x22c>
  20a620:	d41f80ef          	jal	ra,203360 <GetFromFreeReqQ>
  20a624:	87aa                	mv	a5,a0
  20a626:	fef42423          	sw	a5,-24(s0)
  20a62a:	002107b7          	lui	a5,0x210
  20a62e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20a632:	fec46783          	lwu	a5,-20(s0)
  20a636:	0792                	slli	a5,a5,0x4
  20a638:	97ba                	add	a5,a5,a4
  20a63a:	439c                	lw	a5,0(a5)
  20a63c:	853e                	mv	a0,a5
  20a63e:	8b3f70ef          	jal	ra,201ef0 <AddrTransWrite>
  20a642:	87aa                	mv	a5,a0
  20a644:	fef42223          	sw	a5,-28(s0)
  20a648:	002107b7          	lui	a5,0x210
  20a64c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a650:	fe846683          	lwu	a3,-24(s0)
  20a654:	03400793          	li	a5,52
  20a658:	02f687b3          	mul	a5,a3,a5
  20a65c:	97ba                	add	a5,a5,a4
  20a65e:	4398                	lw	a4,0(a5)
  20a660:	9b41                	andi	a4,a4,-16
  20a662:	00176713          	ori	a4,a4,1
  20a666:	c398                	sw	a4,0(a5)
  20a668:	002107b7          	lui	a5,0x210
  20a66c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a670:	fe846683          	lwu	a3,-24(s0)
  20a674:	03400793          	li	a5,52
  20a678:	02f687b3          	mul	a5,a3,a5
  20a67c:	97ba                	add	a5,a5,a4
  20a67e:	000780a3          	sb	zero,1(a5)
  20a682:	002107b7          	lui	a5,0x210
  20a686:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a68a:	002107b7          	lui	a5,0x210
  20a68e:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a692:	fdc46603          	lwu	a2,-36(s0)
  20a696:	03400793          	li	a5,52
  20a69a:	02f607b3          	mul	a5,a2,a5
  20a69e:	97ba                	add	a5,a5,a4
  20a6a0:	0027d703          	lhu	a4,2(a5)
  20a6a4:	fe846603          	lwu	a2,-24(s0)
  20a6a8:	03400793          	li	a5,52
  20a6ac:	02f607b3          	mul	a5,a2,a5
  20a6b0:	97b6                	add	a5,a5,a3
  20a6b2:	00e79123          	sh	a4,2(a5)
  20a6b6:	002107b7          	lui	a5,0x210
  20a6ba:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20a6be:	002107b7          	lui	a5,0x210
  20a6c2:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a6c6:	fec46783          	lwu	a5,-20(s0)
  20a6ca:	0792                	slli	a5,a5,0x4
  20a6cc:	97ba                	add	a5,a5,a4
  20a6ce:	4398                	lw	a4,0(a5)
  20a6d0:	fe846603          	lwu	a2,-24(s0)
  20a6d4:	03400793          	li	a5,52
  20a6d8:	02f607b3          	mul	a5,a2,a5
  20a6dc:	97b6                	add	a5,a5,a3
  20a6de:	c7d8                	sw	a4,12(a5)
  20a6e0:	002107b7          	lui	a5,0x210
  20a6e4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a6e8:	fe846683          	lwu	a3,-24(s0)
  20a6ec:	03400793          	li	a5,52
  20a6f0:	02f687b3          	mul	a5,a3,a5
  20a6f4:	97ba                	add	a5,a5,a4
  20a6f6:	4b98                	lw	a4,16(a5)
  20a6f8:	9b71                	andi	a4,a4,-4
  20a6fa:	cb98                	sw	a4,16(a5)
  20a6fc:	002107b7          	lui	a5,0x210
  20a700:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a704:	fe846683          	lwu	a3,-24(s0)
  20a708:	03400793          	li	a5,52
  20a70c:	02f687b3          	mul	a5,a3,a5
  20a710:	97ba                	add	a5,a5,a4
  20a712:	4b98                	lw	a4,16(a5)
  20a714:	9b4d                	andi	a4,a4,-13
  20a716:	cb98                	sw	a4,16(a5)
  20a718:	002107b7          	lui	a5,0x210
  20a71c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a720:	fe846683          	lwu	a3,-24(s0)
  20a724:	03400793          	li	a5,52
  20a728:	02f687b3          	mul	a5,a3,a5
  20a72c:	97ba                	add	a5,a5,a4
  20a72e:	4b98                	lw	a4,16(a5)
  20a730:	01076713          	ori	a4,a4,16
  20a734:	cb98                	sw	a4,16(a5)
  20a736:	002107b7          	lui	a5,0x210
  20a73a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a73e:	fe846683          	lwu	a3,-24(s0)
  20a742:	03400793          	li	a5,52
  20a746:	02f687b3          	mul	a5,a3,a5
  20a74a:	97ba                	add	a5,a5,a4
  20a74c:	4b98                	lw	a4,16(a5)
  20a74e:	02076713          	ori	a4,a4,32
  20a752:	cb98                	sw	a4,16(a5)
  20a754:	002107b7          	lui	a5,0x210
  20a758:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a75c:	fe846683          	lwu	a3,-24(s0)
  20a760:	03400793          	li	a5,52
  20a764:	02f687b3          	mul	a5,a3,a5
  20a768:	97ba                	add	a5,a5,a4
  20a76a:	4b98                	lw	a4,16(a5)
  20a76c:	04076713          	ori	a4,a4,64
  20a770:	cb98                	sw	a4,16(a5)
  20a772:	002107b7          	lui	a5,0x210
  20a776:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a77a:	fe846683          	lwu	a3,-24(s0)
  20a77e:	03400793          	li	a5,52
  20a782:	02f687b3          	mul	a5,a3,a5
  20a786:	97ba                	add	a5,a5,a4
  20a788:	4b98                	lw	a4,16(a5)
  20a78a:	f7f77713          	andi	a4,a4,-129
  20a78e:	cb98                	sw	a4,16(a5)
  20a790:	002107b7          	lui	a5,0x210
  20a794:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a798:	fe846683          	lwu	a3,-24(s0)
  20a79c:	03400793          	li	a5,52
  20a7a0:	02f687b3          	mul	a5,a3,a5
  20a7a4:	97ba                	add	a5,a5,a4
  20a7a6:	fec42703          	lw	a4,-20(s0)
  20a7aa:	cbd8                	sw	a4,20(a5)
  20a7ac:	fe842703          	lw	a4,-24(s0)
  20a7b0:	fec42783          	lw	a5,-20(s0)
  20a7b4:	85ba                	mv	a1,a4
  20a7b6:	853e                	mv	a0,a5
  20a7b8:	d5efa0ef          	jal	ra,204d16 <UpdateDataBufEntryInfoBlockingReq>
  20a7bc:	002107b7          	lui	a5,0x210
  20a7c0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a7c4:	fe846683          	lwu	a3,-24(s0)
  20a7c8:	03400793          	li	a5,52
  20a7cc:	02f687b3          	mul	a5,a3,a5
  20a7d0:	97ba                	add	a5,a5,a4
  20a7d2:	fe442703          	lw	a4,-28(s0)
  20a7d6:	d3d8                	sw	a4,36(a5)
  20a7d8:	fe842783          	lw	a5,-24(s0)
  20a7dc:	4581                	li	a1,0
  20a7de:	853e                	mv	a0,a5
  20a7e0:	467000ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20a7e4:	002107b7          	lui	a5,0x210
  20a7e8:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20a7ec:	fec46783          	lwu	a5,-20(s0)
  20a7f0:	0792                	slli	a5,a5,0x4
  20a7f2:	97ba                	add	a5,a5,a4
  20a7f4:	47d4                	lw	a3,12(a5)
  20a7f6:	7741                	lui	a4,0xffff0
  20a7f8:	177d                	addi	a4,a4,-1
  20a7fa:	8f75                	and	a4,a4,a3
  20a7fc:	c7d8                	sw	a4,12(a5)
  20a7fe:	0001                	nop
  20a800:	70a2                	ld	ra,40(sp)
  20a802:	7402                	ld	s0,32(sp)
  20a804:	6145                	addi	sp,sp,48
  20a806:	8082                	ret

000000000020a808 <DataReadFromNand>:
  20a808:	7179                	addi	sp,sp,-48
  20a80a:	f406                	sd	ra,40(sp)
  20a80c:	f022                	sd	s0,32(sp)
  20a80e:	1800                	addi	s0,sp,48
  20a810:	87aa                	mv	a5,a0
  20a812:	fcf42e23          	sw	a5,-36(s0)
  20a816:	002107b7          	lui	a5,0x210
  20a81a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a81e:	fdc46683          	lwu	a3,-36(s0)
  20a822:	03400793          	li	a5,52
  20a826:	02f687b3          	mul	a5,a3,a5
  20a82a:	97ba                	add	a5,a5,a4
  20a82c:	47dc                	lw	a5,12(a5)
  20a82e:	853e                	mv	a0,a5
  20a830:	e5ef70ef          	jal	ra,201e8e <AddrTransRead>
  20a834:	87aa                	mv	a5,a0
  20a836:	fef42623          	sw	a5,-20(s0)
  20a83a:	fec42783          	lw	a5,-20(s0)
  20a83e:	0007871b          	sext.w	a4,a5
  20a842:	57fd                	li	a5,-1
  20a844:	1cf70d63          	beq	a4,a5,20aa1e <DataReadFromNand+0x216>
  20a848:	b19f80ef          	jal	ra,203360 <GetFromFreeReqQ>
  20a84c:	87aa                	mv	a5,a0
  20a84e:	fef42423          	sw	a5,-24(s0)
  20a852:	002107b7          	lui	a5,0x210
  20a856:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a85a:	fe846683          	lwu	a3,-24(s0)
  20a85e:	03400793          	li	a5,52
  20a862:	02f687b3          	mul	a5,a3,a5
  20a866:	97ba                	add	a5,a5,a4
  20a868:	4398                	lw	a4,0(a5)
  20a86a:	9b41                	andi	a4,a4,-16
  20a86c:	00176713          	ori	a4,a4,1
  20a870:	c398                	sw	a4,0(a5)
  20a872:	002107b7          	lui	a5,0x210
  20a876:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a87a:	fe846683          	lwu	a3,-24(s0)
  20a87e:	03400793          	li	a5,52
  20a882:	02f687b3          	mul	a5,a3,a5
  20a886:	97ba                	add	a5,a5,a4
  20a888:	4721                	li	a4,8
  20a88a:	00e780a3          	sb	a4,1(a5)
  20a88e:	002107b7          	lui	a5,0x210
  20a892:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a896:	002107b7          	lui	a5,0x210
  20a89a:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a89e:	fdc46603          	lwu	a2,-36(s0)
  20a8a2:	03400793          	li	a5,52
  20a8a6:	02f607b3          	mul	a5,a2,a5
  20a8aa:	97ba                	add	a5,a5,a4
  20a8ac:	0027d703          	lhu	a4,2(a5)
  20a8b0:	fe846603          	lwu	a2,-24(s0)
  20a8b4:	03400793          	li	a5,52
  20a8b8:	02f607b3          	mul	a5,a2,a5
  20a8bc:	97b6                	add	a5,a5,a3
  20a8be:	00e79123          	sh	a4,2(a5)
  20a8c2:	002107b7          	lui	a5,0x210
  20a8c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a8ca:	002107b7          	lui	a5,0x210
  20a8ce:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a8d2:	fdc46603          	lwu	a2,-36(s0)
  20a8d6:	03400793          	li	a5,52
  20a8da:	02f607b3          	mul	a5,a2,a5
  20a8de:	97ba                	add	a5,a5,a4
  20a8e0:	47d8                	lw	a4,12(a5)
  20a8e2:	fe846603          	lwu	a2,-24(s0)
  20a8e6:	03400793          	li	a5,52
  20a8ea:	02f607b3          	mul	a5,a2,a5
  20a8ee:	97b6                	add	a5,a5,a3
  20a8f0:	c7d8                	sw	a4,12(a5)
  20a8f2:	002107b7          	lui	a5,0x210
  20a8f6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a8fa:	fe846683          	lwu	a3,-24(s0)
  20a8fe:	03400793          	li	a5,52
  20a902:	02f687b3          	mul	a5,a3,a5
  20a906:	97ba                	add	a5,a5,a4
  20a908:	4b98                	lw	a4,16(a5)
  20a90a:	9b71                	andi	a4,a4,-4
  20a90c:	cb98                	sw	a4,16(a5)
  20a90e:	002107b7          	lui	a5,0x210
  20a912:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a916:	fe846683          	lwu	a3,-24(s0)
  20a91a:	03400793          	li	a5,52
  20a91e:	02f687b3          	mul	a5,a3,a5
  20a922:	97ba                	add	a5,a5,a4
  20a924:	4b98                	lw	a4,16(a5)
  20a926:	9b4d                	andi	a4,a4,-13
  20a928:	cb98                	sw	a4,16(a5)
  20a92a:	002107b7          	lui	a5,0x210
  20a92e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a932:	fe846683          	lwu	a3,-24(s0)
  20a936:	03400793          	li	a5,52
  20a93a:	02f687b3          	mul	a5,a3,a5
  20a93e:	97ba                	add	a5,a5,a4
  20a940:	4b98                	lw	a4,16(a5)
  20a942:	01076713          	ori	a4,a4,16
  20a946:	cb98                	sw	a4,16(a5)
  20a948:	002107b7          	lui	a5,0x210
  20a94c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a950:	fe846683          	lwu	a3,-24(s0)
  20a954:	03400793          	li	a5,52
  20a958:	02f687b3          	mul	a5,a3,a5
  20a95c:	97ba                	add	a5,a5,a4
  20a95e:	4b98                	lw	a4,16(a5)
  20a960:	02076713          	ori	a4,a4,32
  20a964:	cb98                	sw	a4,16(a5)
  20a966:	002107b7          	lui	a5,0x210
  20a96a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a96e:	fe846683          	lwu	a3,-24(s0)
  20a972:	03400793          	li	a5,52
  20a976:	02f687b3          	mul	a5,a3,a5
  20a97a:	97ba                	add	a5,a5,a4
  20a97c:	4b98                	lw	a4,16(a5)
  20a97e:	04076713          	ori	a4,a4,64
  20a982:	cb98                	sw	a4,16(a5)
  20a984:	002107b7          	lui	a5,0x210
  20a988:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a98c:	fe846683          	lwu	a3,-24(s0)
  20a990:	03400793          	li	a5,52
  20a994:	02f687b3          	mul	a5,a3,a5
  20a998:	97ba                	add	a5,a5,a4
  20a99a:	4b98                	lw	a4,16(a5)
  20a99c:	f7f77713          	andi	a4,a4,-129
  20a9a0:	cb98                	sw	a4,16(a5)
  20a9a2:	002107b7          	lui	a5,0x210
  20a9a6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a9aa:	002107b7          	lui	a5,0x210
  20a9ae:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20a9b2:	fdc46603          	lwu	a2,-36(s0)
  20a9b6:	03400793          	li	a5,52
  20a9ba:	02f607b3          	mul	a5,a2,a5
  20a9be:	97ba                	add	a5,a5,a4
  20a9c0:	4bd8                	lw	a4,20(a5)
  20a9c2:	fe846603          	lwu	a2,-24(s0)
  20a9c6:	03400793          	li	a5,52
  20a9ca:	02f607b3          	mul	a5,a2,a5
  20a9ce:	97b6                	add	a5,a5,a3
  20a9d0:	cbd8                	sw	a4,20(a5)
  20a9d2:	002107b7          	lui	a5,0x210
  20a9d6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a9da:	fe846683          	lwu	a3,-24(s0)
  20a9de:	03400793          	li	a5,52
  20a9e2:	02f687b3          	mul	a5,a3,a5
  20a9e6:	97ba                	add	a5,a5,a4
  20a9e8:	4bdc                	lw	a5,20(a5)
  20a9ea:	fe842703          	lw	a4,-24(s0)
  20a9ee:	85ba                	mv	a1,a4
  20a9f0:	853e                	mv	a0,a5
  20a9f2:	b24fa0ef          	jal	ra,204d16 <UpdateDataBufEntryInfoBlockingReq>
  20a9f6:	002107b7          	lui	a5,0x210
  20a9fa:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20a9fe:	fe846683          	lwu	a3,-24(s0)
  20aa02:	03400793          	li	a5,52
  20aa06:	02f687b3          	mul	a5,a3,a5
  20aa0a:	97ba                	add	a5,a5,a4
  20aa0c:	fec42703          	lw	a4,-20(s0)
  20aa10:	d3d8                	sw	a4,36(a5)
  20aa12:	fe842783          	lw	a5,-24(s0)
  20aa16:	4581                	li	a1,0
  20aa18:	853e                	mv	a0,a5
  20aa1a:	22d000ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20aa1e:	0001                	nop
  20aa20:	70a2                	ld	ra,40(sp)
  20aa22:	7402                	ld	s0,32(sp)
  20aa24:	6145                	addi	sp,sp,48
  20aa26:	8082                	ret

000000000020aa28 <ReqTransSliceToLowLevel>:
  20aa28:	7179                	addi	sp,sp,-48
  20aa2a:	f406                	sd	ra,40(sp)
  20aa2c:	f022                	sd	s0,32(sp)
  20aa2e:	1800                	addi	s0,sp,48
  20aa30:	fca43c23          	sd	a0,-40(s0)
  20aa34:	ac3d                	j	20ac72 <ReqTransSliceToLowLevel+0x24a>
  20aa36:	0020f7b7          	lui	a5,0x20f
  20aa3a:	47078513          	addi	a0,a5,1136 # 20f470 <nvme_main+0x9ba>
  20aa3e:	b7bf90ef          	jal	ra,2045b8 <cpl_print>
  20aa42:	b8ff80ef          	jal	ra,2035d0 <GetFromSliceReqQ>
  20aa46:	87aa                	mv	a5,a0
  20aa48:	fef42423          	sw	a5,-24(s0)
  20aa4c:	fe842783          	lw	a5,-24(s0)
  20aa50:	0007871b          	sext.w	a4,a5
  20aa54:	67c1                	lui	a5,0x10
  20aa56:	17fd                	addi	a5,a5,-1
  20aa58:	22f70863          	beq	a4,a5,20ac88 <ReqTransSliceToLowLevel+0x260>
  20aa5c:	fe842783          	lw	a5,-24(s0)
  20aa60:	853e                	mv	a0,a5
  20aa62:	dedf90ef          	jal	ra,20484e <CheckDataBufHit>
  20aa66:	87aa                	mv	a5,a0
  20aa68:	fef42623          	sw	a5,-20(s0)
  20aa6c:	fec42783          	lw	a5,-20(s0)
  20aa70:	0007871b          	sext.w	a4,a5
  20aa74:	67c1                	lui	a5,0x10
  20aa76:	17fd                	addi	a5,a5,-1
  20aa78:	02f70163          	beq	a4,a5,20aa9a <ReqTransSliceToLowLevel+0x72>
  20aa7c:	002107b7          	lui	a5,0x210
  20aa80:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20aa84:	fe846683          	lwu	a3,-24(s0)
  20aa88:	03400793          	li	a5,52
  20aa8c:	02f687b3          	mul	a5,a3,a5
  20aa90:	97ba                	add	a5,a5,a4
  20aa92:	fec42703          	lw	a4,-20(s0)
  20aa96:	cbd8                	sw	a4,20(a5)
  20aa98:	a8f9                	j	20ab76 <ReqTransSliceToLowLevel+0x14e>
  20aa9a:	90cfa0ef          	jal	ra,204ba6 <AllocateDataBuf>
  20aa9e:	87aa                	mv	a5,a0
  20aaa0:	fef42623          	sw	a5,-20(s0)
  20aaa4:	002107b7          	lui	a5,0x210
  20aaa8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20aaac:	fe846683          	lwu	a3,-24(s0)
  20aab0:	03400793          	li	a5,52
  20aab4:	02f687b3          	mul	a5,a3,a5
  20aab8:	97ba                	add	a5,a5,a4
  20aaba:	fec42703          	lw	a4,-20(s0)
  20aabe:	cbd8                	sw	a4,20(a5)
  20aac0:	fe842783          	lw	a5,-24(s0)
  20aac4:	853e                	mv	a0,a5
  20aac6:	b0dff0ef          	jal	ra,20a5d2 <EvictDataBufEntry>
  20aaca:	002107b7          	lui	a5,0x210
  20aace:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20aad2:	002107b7          	lui	a5,0x210
  20aad6:	3a07b683          	ld	a3,928(a5) # 2103a0 <dataBufMapPtr>
  20aada:	fe846603          	lwu	a2,-24(s0)
  20aade:	03400793          	li	a5,52
  20aae2:	02f607b3          	mul	a5,a2,a5
  20aae6:	97ba                	add	a5,a5,a4
  20aae8:	47d8                	lw	a4,12(a5)
  20aaea:	fec46783          	lwu	a5,-20(s0)
  20aaee:	0792                	slli	a5,a5,0x4
  20aaf0:	97b6                	add	a5,a5,a3
  20aaf2:	c398                	sw	a4,0(a5)
  20aaf4:	fec42783          	lw	a5,-20(s0)
  20aaf8:	853e                	mv	a0,a5
  20aafa:	bc0fa0ef          	jal	ra,204eba <PutToDataBufHashList>
  20aafe:	002107b7          	lui	a5,0x210
  20ab02:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ab06:	fe846683          	lwu	a3,-24(s0)
  20ab0a:	03400793          	li	a5,52
  20ab0e:	02f687b3          	mul	a5,a3,a5
  20ab12:	97ba                	add	a5,a5,a4
  20ab14:	0017c783          	lbu	a5,1(a5)
  20ab18:	873e                	mv	a4,a5
  20ab1a:	47a1                	li	a5,8
  20ab1c:	00f71863          	bne	a4,a5,20ab2c <ReqTransSliceToLowLevel+0x104>
  20ab20:	fe842783          	lw	a5,-24(s0)
  20ab24:	853e                	mv	a0,a5
  20ab26:	ce3ff0ef          	jal	ra,20a808 <DataReadFromNand>
  20ab2a:	a0b1                	j	20ab76 <ReqTransSliceToLowLevel+0x14e>
  20ab2c:	002107b7          	lui	a5,0x210
  20ab30:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ab34:	fe846683          	lwu	a3,-24(s0)
  20ab38:	03400793          	li	a5,52
  20ab3c:	02f687b3          	mul	a5,a3,a5
  20ab40:	97ba                	add	a5,a5,a4
  20ab42:	0017c783          	lbu	a5,1(a5)
  20ab46:	eb85                	bnez	a5,20ab76 <ReqTransSliceToLowLevel+0x14e>
  20ab48:	002107b7          	lui	a5,0x210
  20ab4c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ab50:	fe846683          	lwu	a3,-24(s0)
  20ab54:	03400793          	li	a5,52
  20ab58:	02f687b3          	mul	a5,a3,a5
  20ab5c:	97ba                	add	a5,a5,a4
  20ab5e:	01c7d783          	lhu	a5,28(a5)
  20ab62:	0007871b          	sext.w	a4,a5
  20ab66:	4791                	li	a5,4
  20ab68:	00f70763          	beq	a4,a5,20ab76 <ReqTransSliceToLowLevel+0x14e>
  20ab6c:	fe842783          	lw	a5,-24(s0)
  20ab70:	853e                	mv	a0,a5
  20ab72:	c97ff0ef          	jal	ra,20a808 <DataReadFromNand>
  20ab76:	002107b7          	lui	a5,0x210
  20ab7a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ab7e:	fe846683          	lwu	a3,-24(s0)
  20ab82:	03400793          	li	a5,52
  20ab86:	02f687b3          	mul	a5,a3,a5
  20ab8a:	97ba                	add	a5,a5,a4
  20ab8c:	0017c783          	lbu	a5,1(a5)
  20ab90:	ef85                	bnez	a5,20abc8 <ReqTransSliceToLowLevel+0x1a0>
  20ab92:	002107b7          	lui	a5,0x210
  20ab96:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20ab9a:	fec46783          	lwu	a5,-20(s0)
  20ab9e:	0792                	slli	a5,a5,0x4
  20aba0:	97ba                	add	a5,a5,a4
  20aba2:	47d4                	lw	a3,12(a5)
  20aba4:	6741                	lui	a4,0x10
  20aba6:	8f55                	or	a4,a4,a3
  20aba8:	c7d8                	sw	a4,12(a5)
  20abaa:	002107b7          	lui	a5,0x210
  20abae:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20abb2:	fe846683          	lwu	a3,-24(s0)
  20abb6:	03400793          	li	a5,52
  20abba:	02f687b3          	mul	a5,a3,a5
  20abbe:	97ba                	add	a5,a5,a4
  20abc0:	4741                	li	a4,16
  20abc2:	00e780a3          	sb	a4,1(a5)
  20abc6:	a881                	j	20ac16 <ReqTransSliceToLowLevel+0x1ee>
  20abc8:	002107b7          	lui	a5,0x210
  20abcc:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20abd0:	fe846683          	lwu	a3,-24(s0)
  20abd4:	03400793          	li	a5,52
  20abd8:	02f687b3          	mul	a5,a3,a5
  20abdc:	97ba                	add	a5,a5,a4
  20abde:	0017c783          	lbu	a5,1(a5)
  20abe2:	873e                	mv	a4,a5
  20abe4:	47a1                	li	a5,8
  20abe6:	02f71263          	bne	a4,a5,20ac0a <ReqTransSliceToLowLevel+0x1e2>
  20abea:	002107b7          	lui	a5,0x210
  20abee:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20abf2:	fe846683          	lwu	a3,-24(s0)
  20abf6:	03400793          	li	a5,52
  20abfa:	02f687b3          	mul	a5,a3,a5
  20abfe:	97ba                	add	a5,a5,a4
  20ac00:	02000713          	li	a4,32
  20ac04:	00e780a3          	sb	a4,1(a5)
  20ac08:	a039                	j	20ac16 <ReqTransSliceToLowLevel+0x1ee>
  20ac0a:	0020f7b7          	lui	a5,0x20f
  20ac0e:	48878513          	addi	a0,a5,1160 # 20f488 <nvme_main+0x9d2>
  20ac12:	9a7f90ef          	jal	ra,2045b8 <cpl_print>
  20ac16:	002107b7          	lui	a5,0x210
  20ac1a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ac1e:	fe846683          	lwu	a3,-24(s0)
  20ac22:	03400793          	li	a5,52
  20ac26:	02f687b3          	mul	a5,a3,a5
  20ac2a:	97ba                	add	a5,a5,a4
  20ac2c:	4398                	lw	a4,0(a5)
  20ac2e:	9b41                	andi	a4,a4,-16
  20ac30:	00276713          	ori	a4,a4,2
  20ac34:	c398                	sw	a4,0(a5)
  20ac36:	002107b7          	lui	a5,0x210
  20ac3a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ac3e:	fe846683          	lwu	a3,-24(s0)
  20ac42:	03400793          	li	a5,52
  20ac46:	02f687b3          	mul	a5,a3,a5
  20ac4a:	97ba                	add	a5,a5,a4
  20ac4c:	4b98                	lw	a4,16(a5)
  20ac4e:	9b71                	andi	a4,a4,-4
  20ac50:	cb98                	sw	a4,16(a5)
  20ac52:	fe842703          	lw	a4,-24(s0)
  20ac56:	fec42783          	lw	a5,-20(s0)
  20ac5a:	85ba                	mv	a1,a4
  20ac5c:	853e                	mv	a0,a5
  20ac5e:	8b8fa0ef          	jal	ra,204d16 <UpdateDataBufEntryInfoBlockingReq>
  20ac62:	fd840713          	addi	a4,s0,-40
  20ac66:	fe842783          	lw	a5,-24(s0)
  20ac6a:	85ba                	mv	a1,a4
  20ac6c:	853e                	mv	a0,a5
  20ac6e:	7d8000ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20ac72:	002107b7          	lui	a5,0x210
  20ac76:	f707d783          	lhu	a5,-144(a5) # 20ff70 <sliceReqQ>
  20ac7a:	0007871b          	sext.w	a4,a5
  20ac7e:	67c1                	lui	a5,0x10
  20ac80:	17fd                	addi	a5,a5,-1
  20ac82:	daf71ae3          	bne	a4,a5,20aa36 <ReqTransSliceToLowLevel+0xe>
  20ac86:	a011                	j	20ac8a <ReqTransSliceToLowLevel+0x262>
  20ac88:	0001                	nop
  20ac8a:	70a2                	ld	ra,40(sp)
  20ac8c:	7402                	ld	s0,32(sp)
  20ac8e:	6145                	addi	sp,sp,48
  20ac90:	8082                	ret

000000000020ac92 <CheckBufDep>:
  20ac92:	1101                	addi	sp,sp,-32
  20ac94:	ec22                	sd	s0,24(sp)
  20ac96:	1000                	addi	s0,sp,32
  20ac98:	87aa                	mv	a5,a0
  20ac9a:	fef42623          	sw	a5,-20(s0)
  20ac9e:	002107b7          	lui	a5,0x210
  20aca2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20aca6:	fec46683          	lwu	a3,-20(s0)
  20acaa:	03400793          	li	a5,52
  20acae:	02f687b3          	mul	a5,a3,a5
  20acb2:	97ba                	add	a5,a5,a4
  20acb4:	0307d783          	lhu	a5,48(a5)
  20acb8:	0007871b          	sext.w	a4,a5
  20acbc:	67c1                	lui	a5,0x10
  20acbe:	17fd                	addi	a5,a5,-1
  20acc0:	00f71463          	bne	a4,a5,20acc8 <CheckBufDep+0x36>
  20acc4:	4785                	li	a5,1
  20acc6:	a011                	j	20acca <CheckBufDep+0x38>
  20acc8:	4781                	li	a5,0
  20acca:	853e                	mv	a0,a5
  20accc:	6462                	ld	s0,24(sp)
  20acce:	6105                	addi	sp,sp,32
  20acd0:	8082                	ret

000000000020acd2 <CheckRowAddrDep>:
  20acd2:	7139                	addi	sp,sp,-64
  20acd4:	fc06                	sd	ra,56(sp)
  20acd6:	f822                	sd	s0,48(sp)
  20acd8:	0080                	addi	s0,sp,64
  20acda:	87aa                	mv	a5,a0
  20acdc:	872e                	mv	a4,a1
  20acde:	fcf42623          	sw	a5,-52(s0)
  20ace2:	87ba                	mv	a5,a4
  20ace4:	fcf42423          	sw	a5,-56(s0)
  20ace8:	002107b7          	lui	a5,0x210
  20acec:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20acf0:	fcc46683          	lwu	a3,-52(s0)
  20acf4:	03400793          	li	a5,52
  20acf8:	02f687b3          	mul	a5,a3,a5
  20acfc:	97ba                	add	a5,a5,a4
  20acfe:	4b9c                	lw	a5,16(a5)
  20ad00:	0027d79b          	srliw	a5,a5,0x2
  20ad04:	8b8d                	andi	a5,a5,3
  20ad06:	0ff7f793          	andi	a5,a5,255
  20ad0a:	e3c1                	bnez	a5,20ad8a <CheckRowAddrDep+0xb8>
  20ad0c:	002107b7          	lui	a5,0x210
  20ad10:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ad14:	fcc46683          	lwu	a3,-52(s0)
  20ad18:	03400793          	li	a5,52
  20ad1c:	02f687b3          	mul	a5,a3,a5
  20ad20:	97ba                	add	a5,a5,a4
  20ad22:	53dc                	lw	a5,36(a5)
  20ad24:	03f7f793          	andi	a5,a5,63
  20ad28:	fcf42e23          	sw	a5,-36(s0)
  20ad2c:	fdc42783          	lw	a5,-36(s0)
  20ad30:	8b9d                	andi	a5,a5,7
  20ad32:	fef42623          	sw	a5,-20(s0)
  20ad36:	fdc42783          	lw	a5,-36(s0)
  20ad3a:	0037d79b          	srliw	a5,a5,0x3
  20ad3e:	fef42423          	sw	a5,-24(s0)
  20ad42:	002107b7          	lui	a5,0x210
  20ad46:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ad4a:	fcc46683          	lwu	a3,-52(s0)
  20ad4e:	03400793          	li	a5,52
  20ad52:	02f687b3          	mul	a5,a3,a5
  20ad56:	97ba                	add	a5,a5,a4
  20ad58:	53dc                	lw	a5,36(a5)
  20ad5a:	00d7d79b          	srliw	a5,a5,0xd
  20ad5e:	fef42223          	sw	a5,-28(s0)
  20ad62:	002107b7          	lui	a5,0x210
  20ad66:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ad6a:	fcc46683          	lwu	a3,-52(s0)
  20ad6e:	03400793          	li	a5,52
  20ad72:	02f687b3          	mul	a5,a3,a5
  20ad76:	97ba                	add	a5,a5,a4
  20ad78:	53dc                	lw	a5,36(a5)
  20ad7a:	0067d79b          	srliw	a5,a5,0x6
  20ad7e:	2781                	sext.w	a5,a5
  20ad80:	07f7f793          	andi	a5,a5,127
  20ad84:	fef42023          	sw	a5,-32(s0)
  20ad88:	a039                	j	20ad96 <CheckRowAddrDep+0xc4>
  20ad8a:	0020f7b7          	lui	a5,0x20f
  20ad8e:	4b878513          	addi	a0,a5,1208 # 20f4b8 <nvme_main+0xa02>
  20ad92:	827f90ef          	jal	ra,2045b8 <cpl_print>
  20ad96:	002107b7          	lui	a5,0x210
  20ad9a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ad9e:	fcc46683          	lwu	a3,-52(s0)
  20ada2:	03400793          	li	a5,52
  20ada6:	02f687b3          	mul	a5,a3,a5
  20adaa:	97ba                	add	a5,a5,a4
  20adac:	0017c783          	lbu	a5,1(a5)
  20adb0:	873e                	mv	a4,a5
  20adb2:	47a1                	li	a5,8
  20adb4:	1af71363          	bne	a4,a5,20af5a <CheckRowAddrDep+0x288>
  20adb8:	fc842783          	lw	a5,-56(s0)
  20adbc:	2781                	sext.w	a5,a5
  20adbe:	e3f5                	bnez	a5,20aea2 <CheckRowAddrDep+0x1d0>
  20adc0:	002107b7          	lui	a5,0x210
  20adc4:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20adc8:	fe446783          	lwu	a5,-28(s0)
  20adcc:	fec46603          	lwu	a2,-20(s0)
  20add0:	fe846683          	lwu	a3,-24(s0)
  20add4:	060e                	slli	a2,a2,0x3
  20add6:	96b2                	add	a3,a3,a2
  20add8:	06b6                	slli	a3,a3,0xd
  20adda:	97b6                	add	a5,a5,a3
  20addc:	078a                	slli	a5,a5,0x2
  20adde:	97ba                	add	a5,a5,a4
  20ade0:	439c                	lw	a5,0(a5)
  20ade2:	01c7d79b          	srliw	a5,a5,0x1c
  20ade6:	8b85                	andi	a5,a5,1
  20ade8:	0ff7f793          	andi	a5,a5,255
  20adec:	cf81                	beqz	a5,20ae04 <CheckRowAddrDep+0x132>
  20adee:	fe442683          	lw	a3,-28(s0)
  20adf2:	fe842703          	lw	a4,-24(s0)
  20adf6:	fec42783          	lw	a5,-20(s0)
  20adfa:	8636                	mv	a2,a3
  20adfc:	85ba                	mv	a1,a4
  20adfe:	853e                	mv	a0,a5
  20ae00:	f7efa0ef          	jal	ra,20557e <SyncReleaseEraseReq>
  20ae04:	002107b7          	lui	a5,0x210
  20ae08:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20ae0c:	fe446783          	lwu	a5,-28(s0)
  20ae10:	fec46603          	lwu	a2,-20(s0)
  20ae14:	fe846683          	lwu	a3,-24(s0)
  20ae18:	060e                	slli	a2,a2,0x3
  20ae1a:	96b2                	add	a3,a3,a2
  20ae1c:	06b6                	slli	a3,a3,0xd
  20ae1e:	97b6                	add	a5,a5,a3
  20ae20:	078a                	slli	a5,a5,0x2
  20ae22:	97ba                	add	a5,a5,a4
  20ae24:	439c                	lw	a5,0(a5)
  20ae26:	873e                	mv	a4,a5
  20ae28:	6785                	lui	a5,0x1
  20ae2a:	17fd                	addi	a5,a5,-1
  20ae2c:	8ff9                	and	a5,a5,a4
  20ae2e:	17c2                	slli	a5,a5,0x30
  20ae30:	93c1                	srli	a5,a5,0x30
  20ae32:	0007871b          	sext.w	a4,a5
  20ae36:	fe042783          	lw	a5,-32(s0)
  20ae3a:	2781                	sext.w	a5,a5
  20ae3c:	00e7f463          	bgeu	a5,a4,20ae44 <CheckRowAddrDep+0x172>
  20ae40:	4785                	li	a5,1
  20ae42:	ae25                	j	20b17a <CheckRowAddrDep+0x4a8>
  20ae44:	002107b7          	lui	a5,0x210
  20ae48:	4387b783          	ld	a5,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20ae4c:	fe446703          	lwu	a4,-28(s0)
  20ae50:	fec46603          	lwu	a2,-20(s0)
  20ae54:	fe846683          	lwu	a3,-24(s0)
  20ae58:	060e                	slli	a2,a2,0x3
  20ae5a:	96b2                	add	a3,a3,a2
  20ae5c:	06b6                	slli	a3,a3,0xd
  20ae5e:	9736                	add	a4,a4,a3
  20ae60:	070a                	slli	a4,a4,0x2
  20ae62:	973e                	add	a4,a4,a5
  20ae64:	4318                	lw	a4,0(a4)
  20ae66:	00c7571b          	srliw	a4,a4,0xc
  20ae6a:	9b7d                	andi	a4,a4,-1
  20ae6c:	1742                	slli	a4,a4,0x30
  20ae6e:	9341                	srli	a4,a4,0x30
  20ae70:	2705                	addiw	a4,a4,1
  20ae72:	1742                	slli	a4,a4,0x30
  20ae74:	9341                	srli	a4,a4,0x30
  20ae76:	fe446683          	lwu	a3,-28(s0)
  20ae7a:	fec46583          	lwu	a1,-20(s0)
  20ae7e:	fe846603          	lwu	a2,-24(s0)
  20ae82:	058e                	slli	a1,a1,0x3
  20ae84:	962e                	add	a2,a2,a1
  20ae86:	0636                	slli	a2,a2,0xd
  20ae88:	96b2                	add	a3,a3,a2
  20ae8a:	068a                	slli	a3,a3,0x2
  20ae8c:	97b6                	add	a5,a5,a3
  20ae8e:	00c7171b          	slliw	a4,a4,0xc
  20ae92:	4390                	lw	a2,0(a5)
  20ae94:	f00016b7          	lui	a3,0xf0001
  20ae98:	16fd                	addi	a3,a3,-1
  20ae9a:	8ef1                	and	a3,a3,a2
  20ae9c:	8f55                	or	a4,a4,a3
  20ae9e:	c398                	sw	a4,0(a5)
  20aea0:	ace1                	j	20b178 <CheckRowAddrDep+0x4a6>
  20aea2:	fc842783          	lw	a5,-56(s0)
  20aea6:	0007871b          	sext.w	a4,a5
  20aeaa:	4785                	li	a5,1
  20aeac:	0af71063          	bne	a4,a5,20af4c <CheckRowAddrDep+0x27a>
  20aeb0:	002107b7          	lui	a5,0x210
  20aeb4:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20aeb8:	fe446783          	lwu	a5,-28(s0)
  20aebc:	fec46603          	lwu	a2,-20(s0)
  20aec0:	fe846683          	lwu	a3,-24(s0)
  20aec4:	060e                	slli	a2,a2,0x3
  20aec6:	96b2                	add	a3,a3,a2
  20aec8:	06b6                	slli	a3,a3,0xd
  20aeca:	97b6                	add	a5,a5,a3
  20aecc:	078a                	slli	a5,a5,0x2
  20aece:	97ba                	add	a5,a5,a4
  20aed0:	439c                	lw	a5,0(a5)
  20aed2:	873e                	mv	a4,a5
  20aed4:	6785                	lui	a5,0x1
  20aed6:	17fd                	addi	a5,a5,-1
  20aed8:	8ff9                	and	a5,a5,a4
  20aeda:	17c2                	slli	a5,a5,0x30
  20aedc:	93c1                	srli	a5,a5,0x30
  20aede:	0007871b          	sext.w	a4,a5
  20aee2:	fe042783          	lw	a5,-32(s0)
  20aee6:	2781                	sext.w	a5,a5
  20aee8:	28e7f863          	bgeu	a5,a4,20b178 <CheckRowAddrDep+0x4a6>
  20aeec:	002107b7          	lui	a5,0x210
  20aef0:	4387b783          	ld	a5,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20aef4:	fe446703          	lwu	a4,-28(s0)
  20aef8:	fec46603          	lwu	a2,-20(s0)
  20aefc:	fe846683          	lwu	a3,-24(s0)
  20af00:	060e                	slli	a2,a2,0x3
  20af02:	96b2                	add	a3,a3,a2
  20af04:	06b6                	slli	a3,a3,0xd
  20af06:	9736                	add	a4,a4,a3
  20af08:	070a                	slli	a4,a4,0x2
  20af0a:	973e                	add	a4,a4,a5
  20af0c:	4318                	lw	a4,0(a4)
  20af0e:	00c7571b          	srliw	a4,a4,0xc
  20af12:	9b7d                	andi	a4,a4,-1
  20af14:	1742                	slli	a4,a4,0x30
  20af16:	9341                	srli	a4,a4,0x30
  20af18:	377d                	addiw	a4,a4,-1
  20af1a:	1742                	slli	a4,a4,0x30
  20af1c:	9341                	srli	a4,a4,0x30
  20af1e:	fe446683          	lwu	a3,-28(s0)
  20af22:	fec46583          	lwu	a1,-20(s0)
  20af26:	fe846603          	lwu	a2,-24(s0)
  20af2a:	058e                	slli	a1,a1,0x3
  20af2c:	962e                	add	a2,a2,a1
  20af2e:	0636                	slli	a2,a2,0xd
  20af30:	96b2                	add	a3,a3,a2
  20af32:	068a                	slli	a3,a3,0x2
  20af34:	97b6                	add	a5,a5,a3
  20af36:	00c7171b          	slliw	a4,a4,0xc
  20af3a:	4390                	lw	a2,0(a5)
  20af3c:	f00016b7          	lui	a3,0xf0001
  20af40:	16fd                	addi	a3,a3,-1
  20af42:	8ef1                	and	a3,a3,a2
  20af44:	8f55                	or	a4,a4,a3
  20af46:	c398                	sw	a4,0(a5)
  20af48:	4785                	li	a5,1
  20af4a:	ac05                	j	20b17a <CheckRowAddrDep+0x4a8>
  20af4c:	0020f7b7          	lui	a5,0x20f
  20af50:	4f078513          	addi	a0,a5,1264 # 20f4f0 <nvme_main+0xa3a>
  20af54:	e64f90ef          	jal	ra,2045b8 <cpl_print>
  20af58:	a405                	j	20b178 <CheckRowAddrDep+0x4a6>
  20af5a:	002107b7          	lui	a5,0x210
  20af5e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20af62:	fcc46683          	lwu	a3,-52(s0)
  20af66:	03400793          	li	a5,52
  20af6a:	02f687b3          	mul	a5,a3,a5
  20af6e:	97ba                	add	a5,a5,a4
  20af70:	0017c783          	lbu	a5,1(a5)
  20af74:	ebc5                	bnez	a5,20b024 <CheckRowAddrDep+0x352>
  20af76:	002107b7          	lui	a5,0x210
  20af7a:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20af7e:	fe446783          	lwu	a5,-28(s0)
  20af82:	fec46603          	lwu	a2,-20(s0)
  20af86:	fe846683          	lwu	a3,-24(s0)
  20af8a:	060e                	slli	a2,a2,0x3
  20af8c:	96b2                	add	a3,a3,a2
  20af8e:	06b6                	slli	a3,a3,0xd
  20af90:	97b6                	add	a5,a5,a3
  20af92:	078a                	slli	a5,a5,0x2
  20af94:	97ba                	add	a5,a5,a4
  20af96:	439c                	lw	a5,0(a5)
  20af98:	873e                	mv	a4,a5
  20af9a:	6785                	lui	a5,0x1
  20af9c:	17fd                	addi	a5,a5,-1
  20af9e:	8ff9                	and	a5,a5,a4
  20afa0:	17c2                	slli	a5,a5,0x30
  20afa2:	93c1                	srli	a5,a5,0x30
  20afa4:	0007871b          	sext.w	a4,a5
  20afa8:	fe042783          	lw	a5,-32(s0)
  20afac:	2781                	sext.w	a5,a5
  20afae:	1ce79563          	bne	a5,a4,20b178 <CheckRowAddrDep+0x4a6>
  20afb2:	002107b7          	lui	a5,0x210
  20afb6:	4387b783          	ld	a5,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20afba:	fe446703          	lwu	a4,-28(s0)
  20afbe:	fec46603          	lwu	a2,-20(s0)
  20afc2:	fe846683          	lwu	a3,-24(s0)
  20afc6:	060e                	slli	a2,a2,0x3
  20afc8:	96b2                	add	a3,a3,a2
  20afca:	06b6                	slli	a3,a3,0xd
  20afcc:	9736                	add	a4,a4,a3
  20afce:	070a                	slli	a4,a4,0x2
  20afd0:	973e                	add	a4,a4,a5
  20afd2:	4318                	lw	a4,0(a4)
  20afd4:	86ba                	mv	a3,a4
  20afd6:	6705                	lui	a4,0x1
  20afd8:	177d                	addi	a4,a4,-1
  20afda:	8f75                	and	a4,a4,a3
  20afdc:	1742                	slli	a4,a4,0x30
  20afde:	9341                	srli	a4,a4,0x30
  20afe0:	2705                	addiw	a4,a4,1
  20afe2:	86ba                	mv	a3,a4
  20afe4:	6705                	lui	a4,0x1
  20afe6:	177d                	addi	a4,a4,-1
  20afe8:	8f75                	and	a4,a4,a3
  20afea:	03071593          	slli	a1,a4,0x30
  20afee:	91c1                	srli	a1,a1,0x30
  20aff0:	fe446703          	lwu	a4,-28(s0)
  20aff4:	fec46603          	lwu	a2,-20(s0)
  20aff8:	fe846683          	lwu	a3,-24(s0)
  20affc:	060e                	slli	a2,a2,0x3
  20affe:	96b2                	add	a3,a3,a2
  20b000:	06b6                	slli	a3,a3,0xd
  20b002:	9736                	add	a4,a4,a3
  20b004:	070a                	slli	a4,a4,0x2
  20b006:	97ba                	add	a5,a5,a4
  20b008:	86ae                	mv	a3,a1
  20b00a:	6705                	lui	a4,0x1
  20b00c:	177d                	addi	a4,a4,-1
  20b00e:	00e6f633          	and	a2,a3,a4
  20b012:	4394                	lw	a3,0(a5)
  20b014:	777d                	lui	a4,0xfffff
  20b016:	8f75                	and	a4,a4,a3
  20b018:	86ba                	mv	a3,a4
  20b01a:	8732                	mv	a4,a2
  20b01c:	8f55                	or	a4,a4,a3
  20b01e:	c398                	sw	a4,0(a5)
  20b020:	4785                	li	a5,1
  20b022:	aaa1                	j	20b17a <CheckRowAddrDep+0x4a8>
  20b024:	002107b7          	lui	a5,0x210
  20b028:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b02c:	fcc46683          	lwu	a3,-52(s0)
  20b030:	03400793          	li	a5,52
  20b034:	02f687b3          	mul	a5,a3,a5
  20b038:	97ba                	add	a5,a5,a4
  20b03a:	0017c783          	lbu	a5,1(a5)
  20b03e:	873e                	mv	a4,a5
  20b040:	47b1                	li	a5,12
  20b042:	12f71563          	bne	a4,a5,20b16c <CheckRowAddrDep+0x49a>
  20b046:	002107b7          	lui	a5,0x210
  20b04a:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b04e:	fe446783          	lwu	a5,-28(s0)
  20b052:	fec46603          	lwu	a2,-20(s0)
  20b056:	fe846683          	lwu	a3,-24(s0)
  20b05a:	060e                	slli	a2,a2,0x3
  20b05c:	96b2                	add	a3,a3,a2
  20b05e:	06b6                	slli	a3,a3,0xd
  20b060:	97b6                	add	a5,a5,a3
  20b062:	078a                	slli	a5,a5,0x2
  20b064:	97ba                	add	a5,a5,a4
  20b066:	439c                	lw	a5,0(a5)
  20b068:	873e                	mv	a4,a5
  20b06a:	6785                	lui	a5,0x1
  20b06c:	17fd                	addi	a5,a5,-1
  20b06e:	8ff9                	and	a5,a5,a4
  20b070:	17c2                	slli	a5,a5,0x30
  20b072:	93c1                	srli	a5,a5,0x30
  20b074:	0007861b          	sext.w	a2,a5
  20b078:	002107b7          	lui	a5,0x210
  20b07c:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b080:	fcc46683          	lwu	a3,-52(s0)
  20b084:	03400793          	li	a5,52
  20b088:	02f687b3          	mul	a5,a3,a5
  20b08c:	97ba                	add	a5,a5,a4
  20b08e:	579c                	lw	a5,40(a5)
  20b090:	8732                	mv	a4,a2
  20b092:	08f71563          	bne	a4,a5,20b11c <CheckRowAddrDep+0x44a>
  20b096:	002107b7          	lui	a5,0x210
  20b09a:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b09e:	fe446783          	lwu	a5,-28(s0)
  20b0a2:	fec46603          	lwu	a2,-20(s0)
  20b0a6:	fe846683          	lwu	a3,-24(s0)
  20b0aa:	060e                	slli	a2,a2,0x3
  20b0ac:	96b2                	add	a3,a3,a2
  20b0ae:	06b6                	slli	a3,a3,0xd
  20b0b0:	97b6                	add	a5,a5,a3
  20b0b2:	078a                	slli	a5,a5,0x2
  20b0b4:	97ba                	add	a5,a5,a4
  20b0b6:	439c                	lw	a5,0(a5)
  20b0b8:	00c7d79b          	srliw	a5,a5,0xc
  20b0bc:	9bfd                	andi	a5,a5,-1
  20b0be:	17c2                	slli	a5,a5,0x30
  20b0c0:	93c1                	srli	a5,a5,0x30
  20b0c2:	efa9                	bnez	a5,20b11c <CheckRowAddrDep+0x44a>
  20b0c4:	002107b7          	lui	a5,0x210
  20b0c8:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b0cc:	fe446783          	lwu	a5,-28(s0)
  20b0d0:	fec46603          	lwu	a2,-20(s0)
  20b0d4:	fe846683          	lwu	a3,-24(s0)
  20b0d8:	060e                	slli	a2,a2,0x3
  20b0da:	96b2                	add	a3,a3,a2
  20b0dc:	06b6                	slli	a3,a3,0xd
  20b0de:	97b6                	add	a5,a5,a3
  20b0e0:	078a                	slli	a5,a5,0x2
  20b0e2:	97ba                	add	a5,a5,a4
  20b0e4:	4394                	lw	a3,0(a5)
  20b0e6:	777d                	lui	a4,0xfffff
  20b0e8:	8f75                	and	a4,a4,a3
  20b0ea:	c398                	sw	a4,0(a5)
  20b0ec:	002107b7          	lui	a5,0x210
  20b0f0:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b0f4:	fe446783          	lwu	a5,-28(s0)
  20b0f8:	fec46603          	lwu	a2,-20(s0)
  20b0fc:	fe846683          	lwu	a3,-24(s0)
  20b100:	060e                	slli	a2,a2,0x3
  20b102:	96b2                	add	a3,a3,a2
  20b104:	06b6                	slli	a3,a3,0xd
  20b106:	97b6                	add	a5,a5,a3
  20b108:	078a                	slli	a5,a5,0x2
  20b10a:	97ba                	add	a5,a5,a4
  20b10c:	4394                	lw	a3,0(a5)
  20b10e:	f0000737          	lui	a4,0xf0000
  20b112:	177d                	addi	a4,a4,-1
  20b114:	8f75                	and	a4,a4,a3
  20b116:	c398                	sw	a4,0(a5)
  20b118:	4785                	li	a5,1
  20b11a:	a085                	j	20b17a <CheckRowAddrDep+0x4a8>
  20b11c:	fc842783          	lw	a5,-56(s0)
  20b120:	2781                	sext.w	a5,a5
  20b122:	e79d                	bnez	a5,20b150 <CheckRowAddrDep+0x47e>
  20b124:	002107b7          	lui	a5,0x210
  20b128:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b12c:	fe446783          	lwu	a5,-28(s0)
  20b130:	fec46603          	lwu	a2,-20(s0)
  20b134:	fe846683          	lwu	a3,-24(s0)
  20b138:	060e                	slli	a2,a2,0x3
  20b13a:	96b2                	add	a3,a3,a2
  20b13c:	06b6                	slli	a3,a3,0xd
  20b13e:	97b6                	add	a5,a5,a3
  20b140:	078a                	slli	a5,a5,0x2
  20b142:	97ba                	add	a5,a5,a4
  20b144:	4394                	lw	a3,0(a5)
  20b146:	10000737          	lui	a4,0x10000
  20b14a:	8f55                	or	a4,a4,a3
  20b14c:	c398                	sw	a4,0(a5)
  20b14e:	a02d                	j	20b178 <CheckRowAddrDep+0x4a6>
  20b150:	fc842783          	lw	a5,-56(s0)
  20b154:	0007871b          	sext.w	a4,a5
  20b158:	4785                	li	a5,1
  20b15a:	00f70f63          	beq	a4,a5,20b178 <CheckRowAddrDep+0x4a6>
  20b15e:	0020f7b7          	lui	a5,0x20f
  20b162:	4f078513          	addi	a0,a5,1264 # 20f4f0 <nvme_main+0xa3a>
  20b166:	c52f90ef          	jal	ra,2045b8 <cpl_print>
  20b16a:	a039                	j	20b178 <CheckRowAddrDep+0x4a6>
  20b16c:	0020f7b7          	lui	a5,0x20f
  20b170:	52878513          	addi	a0,a5,1320 # 20f528 <nvme_main+0xa72>
  20b174:	c44f90ef          	jal	ra,2045b8 <cpl_print>
  20b178:	4781                	li	a5,0
  20b17a:	853e                	mv	a0,a5
  20b17c:	70e2                	ld	ra,56(sp)
  20b17e:	7442                	ld	s0,48(sp)
  20b180:	6121                	addi	sp,sp,64
  20b182:	8082                	ret

000000000020b184 <UpdateRowAddrDepTableForBufBlockedReq>:
  20b184:	7139                	addi	sp,sp,-64
  20b186:	fc06                	sd	ra,56(sp)
  20b188:	f822                	sd	s0,48(sp)
  20b18a:	0080                	addi	s0,sp,64
  20b18c:	87aa                	mv	a5,a0
  20b18e:	fcf42623          	sw	a5,-52(s0)
  20b192:	002107b7          	lui	a5,0x210
  20b196:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b19a:	fcc46683          	lwu	a3,-52(s0)
  20b19e:	03400793          	li	a5,52
  20b1a2:	02f687b3          	mul	a5,a3,a5
  20b1a6:	97ba                	add	a5,a5,a4
  20b1a8:	4b9c                	lw	a5,16(a5)
  20b1aa:	0027d79b          	srliw	a5,a5,0x2
  20b1ae:	8b8d                	andi	a5,a5,3
  20b1b0:	0ff7f793          	andi	a5,a5,255
  20b1b4:	e3c1                	bnez	a5,20b234 <UpdateRowAddrDepTableForBufBlockedReq+0xb0>
  20b1b6:	002107b7          	lui	a5,0x210
  20b1ba:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b1be:	fcc46683          	lwu	a3,-52(s0)
  20b1c2:	03400793          	li	a5,52
  20b1c6:	02f687b3          	mul	a5,a3,a5
  20b1ca:	97ba                	add	a5,a5,a4
  20b1cc:	53dc                	lw	a5,36(a5)
  20b1ce:	03f7f793          	andi	a5,a5,63
  20b1d2:	fcf42e23          	sw	a5,-36(s0)
  20b1d6:	fdc42783          	lw	a5,-36(s0)
  20b1da:	8b9d                	andi	a5,a5,7
  20b1dc:	fef42623          	sw	a5,-20(s0)
  20b1e0:	fdc42783          	lw	a5,-36(s0)
  20b1e4:	0037d79b          	srliw	a5,a5,0x3
  20b1e8:	fef42423          	sw	a5,-24(s0)
  20b1ec:	002107b7          	lui	a5,0x210
  20b1f0:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b1f4:	fcc46683          	lwu	a3,-52(s0)
  20b1f8:	03400793          	li	a5,52
  20b1fc:	02f687b3          	mul	a5,a3,a5
  20b200:	97ba                	add	a5,a5,a4
  20b202:	53dc                	lw	a5,36(a5)
  20b204:	00d7d79b          	srliw	a5,a5,0xd
  20b208:	fef42223          	sw	a5,-28(s0)
  20b20c:	002107b7          	lui	a5,0x210
  20b210:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b214:	fcc46683          	lwu	a3,-52(s0)
  20b218:	03400793          	li	a5,52
  20b21c:	02f687b3          	mul	a5,a3,a5
  20b220:	97ba                	add	a5,a5,a4
  20b222:	53dc                	lw	a5,36(a5)
  20b224:	0067d79b          	srliw	a5,a5,0x6
  20b228:	2781                	sext.w	a5,a5
  20b22a:	07f7f793          	andi	a5,a5,127
  20b22e:	fef42023          	sw	a5,-32(s0)
  20b232:	a039                	j	20b240 <UpdateRowAddrDepTableForBufBlockedReq+0xbc>
  20b234:	0020f7b7          	lui	a5,0x20f
  20b238:	4b878513          	addi	a0,a5,1208 # 20f4b8 <nvme_main+0xa02>
  20b23c:	b7cf90ef          	jal	ra,2045b8 <cpl_print>
  20b240:	002107b7          	lui	a5,0x210
  20b244:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b248:	fcc46683          	lwu	a3,-52(s0)
  20b24c:	03400793          	li	a5,52
  20b250:	02f687b3          	mul	a5,a3,a5
  20b254:	97ba                	add	a5,a5,a4
  20b256:	0017c783          	lbu	a5,1(a5)
  20b25a:	873e                	mv	a4,a5
  20b25c:	47a1                	li	a5,8
  20b25e:	18f71863          	bne	a4,a5,20b3ee <UpdateRowAddrDepTableForBufBlockedReq+0x26a>
  20b262:	002107b7          	lui	a5,0x210
  20b266:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b26a:	fe446783          	lwu	a5,-28(s0)
  20b26e:	fec46603          	lwu	a2,-20(s0)
  20b272:	fe846683          	lwu	a3,-24(s0)
  20b276:	060e                	slli	a2,a2,0x3
  20b278:	96b2                	add	a3,a3,a2
  20b27a:	06b6                	slli	a3,a3,0xd
  20b27c:	97b6                	add	a5,a5,a3
  20b27e:	078a                	slli	a5,a5,0x2
  20b280:	97ba                	add	a5,a5,a4
  20b282:	439c                	lw	a5,0(a5)
  20b284:	01c7d79b          	srliw	a5,a5,0x1c
  20b288:	8b85                	andi	a5,a5,1
  20b28a:	0ff7f793          	andi	a5,a5,255
  20b28e:	10078163          	beqz	a5,20b390 <UpdateRowAddrDepTableForBufBlockedReq+0x20c>
  20b292:	fe442683          	lw	a3,-28(s0)
  20b296:	fe842703          	lw	a4,-24(s0)
  20b29a:	fec42783          	lw	a5,-20(s0)
  20b29e:	8636                	mv	a2,a3
  20b2a0:	85ba                	mv	a1,a4
  20b2a2:	853e                	mv	a0,a5
  20b2a4:	adafa0ef          	jal	ra,20557e <SyncReleaseEraseReq>
  20b2a8:	fcc42783          	lw	a5,-52(s0)
  20b2ac:	853e                	mv	a0,a5
  20b2ae:	9e5ff0ef          	jal	ra,20ac92 <CheckBufDep>
  20b2b2:	87aa                	mv	a5,a0
  20b2b4:	fcf42c23          	sw	a5,-40(s0)
  20b2b8:	fd842783          	lw	a5,-40(s0)
  20b2bc:	0007871b          	sext.w	a4,a5
  20b2c0:	4785                	li	a5,1
  20b2c2:	0cf71763          	bne	a4,a5,20b390 <UpdateRowAddrDepTableForBufBlockedReq+0x20c>
  20b2c6:	002107b7          	lui	a5,0x210
  20b2ca:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b2ce:	fe446783          	lwu	a5,-28(s0)
  20b2d2:	fec46603          	lwu	a2,-20(s0)
  20b2d6:	fe846683          	lwu	a3,-24(s0)
  20b2da:	060e                	slli	a2,a2,0x3
  20b2dc:	96b2                	add	a3,a3,a2
  20b2de:	06b6                	slli	a3,a3,0xd
  20b2e0:	97b6                	add	a5,a5,a3
  20b2e2:	078a                	slli	a5,a5,0x2
  20b2e4:	97ba                	add	a5,a5,a4
  20b2e6:	439c                	lw	a5,0(a5)
  20b2e8:	873e                	mv	a4,a5
  20b2ea:	6785                	lui	a5,0x1
  20b2ec:	17fd                	addi	a5,a5,-1
  20b2ee:	8ff9                	and	a5,a5,a4
  20b2f0:	17c2                	slli	a5,a5,0x30
  20b2f2:	93c1                	srli	a5,a5,0x30
  20b2f4:	0007871b          	sext.w	a4,a5
  20b2f8:	fe042783          	lw	a5,-32(s0)
  20b2fc:	2781                	sext.w	a5,a5
  20b2fe:	00e7fe63          	bgeu	a5,a4,20b31a <UpdateRowAddrDepTableForBufBlockedReq+0x196>
  20b302:	fe842683          	lw	a3,-24(s0)
  20b306:	fec42703          	lw	a4,-20(s0)
  20b30a:	fcc42783          	lw	a5,-52(s0)
  20b30e:	8636                	mv	a2,a3
  20b310:	85ba                	mv	a1,a4
  20b312:	853e                	mv	a0,a5
  20b314:	ea7f80ef          	jal	ra,2041ba <PutToNandReqQ>
  20b318:	a895                	j	20b38c <UpdateRowAddrDepTableForBufBlockedReq+0x208>
  20b31a:	002107b7          	lui	a5,0x210
  20b31e:	4387b783          	ld	a5,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b322:	fe446703          	lwu	a4,-28(s0)
  20b326:	fec46603          	lwu	a2,-20(s0)
  20b32a:	fe846683          	lwu	a3,-24(s0)
  20b32e:	060e                	slli	a2,a2,0x3
  20b330:	96b2                	add	a3,a3,a2
  20b332:	06b6                	slli	a3,a3,0xd
  20b334:	9736                	add	a4,a4,a3
  20b336:	070a                	slli	a4,a4,0x2
  20b338:	973e                	add	a4,a4,a5
  20b33a:	4318                	lw	a4,0(a4)
  20b33c:	00c7571b          	srliw	a4,a4,0xc
  20b340:	9b7d                	andi	a4,a4,-1
  20b342:	1742                	slli	a4,a4,0x30
  20b344:	9341                	srli	a4,a4,0x30
  20b346:	2705                	addiw	a4,a4,1
  20b348:	1742                	slli	a4,a4,0x30
  20b34a:	9341                	srli	a4,a4,0x30
  20b34c:	fe446683          	lwu	a3,-28(s0)
  20b350:	fec46583          	lwu	a1,-20(s0)
  20b354:	fe846603          	lwu	a2,-24(s0)
  20b358:	058e                	slli	a1,a1,0x3
  20b35a:	962e                	add	a2,a2,a1
  20b35c:	0636                	slli	a2,a2,0xd
  20b35e:	96b2                	add	a3,a3,a2
  20b360:	068a                	slli	a3,a3,0x2
  20b362:	97b6                	add	a5,a5,a3
  20b364:	00c7171b          	slliw	a4,a4,0xc
  20b368:	4390                	lw	a2,0(a5)
  20b36a:	f00016b7          	lui	a3,0xf0001
  20b36e:	16fd                	addi	a3,a3,-1
  20b370:	8ef1                	and	a3,a3,a2
  20b372:	8f55                	or	a4,a4,a3
  20b374:	c398                	sw	a4,0(a5)
  20b376:	fe842683          	lw	a3,-24(s0)
  20b37a:	fec42703          	lw	a4,-20(s0)
  20b37e:	fcc42783          	lw	a5,-52(s0)
  20b382:	8636                	mv	a2,a3
  20b384:	85ba                	mv	a1,a4
  20b386:	853e                	mv	a0,a5
  20b388:	eaaf80ef          	jal	ra,203a32 <PutToBlockedByRowAddrDepReqQ>
  20b38c:	4785                	li	a5,1
  20b38e:	a07d                	j	20b43c <UpdateRowAddrDepTableForBufBlockedReq+0x2b8>
  20b390:	002107b7          	lui	a5,0x210
  20b394:	4387b783          	ld	a5,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b398:	fe446703          	lwu	a4,-28(s0)
  20b39c:	fec46603          	lwu	a2,-20(s0)
  20b3a0:	fe846683          	lwu	a3,-24(s0)
  20b3a4:	060e                	slli	a2,a2,0x3
  20b3a6:	96b2                	add	a3,a3,a2
  20b3a8:	06b6                	slli	a3,a3,0xd
  20b3aa:	9736                	add	a4,a4,a3
  20b3ac:	070a                	slli	a4,a4,0x2
  20b3ae:	973e                	add	a4,a4,a5
  20b3b0:	4318                	lw	a4,0(a4)
  20b3b2:	00c7571b          	srliw	a4,a4,0xc
  20b3b6:	9b7d                	andi	a4,a4,-1
  20b3b8:	1742                	slli	a4,a4,0x30
  20b3ba:	9341                	srli	a4,a4,0x30
  20b3bc:	2705                	addiw	a4,a4,1
  20b3be:	1742                	slli	a4,a4,0x30
  20b3c0:	9341                	srli	a4,a4,0x30
  20b3c2:	fe446683          	lwu	a3,-28(s0)
  20b3c6:	fec46583          	lwu	a1,-20(s0)
  20b3ca:	fe846603          	lwu	a2,-24(s0)
  20b3ce:	058e                	slli	a1,a1,0x3
  20b3d0:	962e                	add	a2,a2,a1
  20b3d2:	0636                	slli	a2,a2,0xd
  20b3d4:	96b2                	add	a3,a3,a2
  20b3d6:	068a                	slli	a3,a3,0x2
  20b3d8:	97b6                	add	a5,a5,a3
  20b3da:	00c7171b          	slliw	a4,a4,0xc
  20b3de:	4390                	lw	a2,0(a5)
  20b3e0:	f00016b7          	lui	a3,0xf0001
  20b3e4:	16fd                	addi	a3,a3,-1
  20b3e6:	8ef1                	and	a3,a3,a2
  20b3e8:	8f55                	or	a4,a4,a3
  20b3ea:	c398                	sw	a4,0(a5)
  20b3ec:	a0b9                	j	20b43a <UpdateRowAddrDepTableForBufBlockedReq+0x2b6>
  20b3ee:	002107b7          	lui	a5,0x210
  20b3f2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b3f6:	fcc46683          	lwu	a3,-52(s0)
  20b3fa:	03400793          	li	a5,52
  20b3fe:	02f687b3          	mul	a5,a3,a5
  20b402:	97ba                	add	a5,a5,a4
  20b404:	0017c783          	lbu	a5,1(a5)
  20b408:	873e                	mv	a4,a5
  20b40a:	47b1                	li	a5,12
  20b40c:	02f71763          	bne	a4,a5,20b43a <UpdateRowAddrDepTableForBufBlockedReq+0x2b6>
  20b410:	002107b7          	lui	a5,0x210
  20b414:	4387b703          	ld	a4,1080(a5) # 210438 <rowAddrDependencyTablePtr>
  20b418:	fe446783          	lwu	a5,-28(s0)
  20b41c:	fec46603          	lwu	a2,-20(s0)
  20b420:	fe846683          	lwu	a3,-24(s0)
  20b424:	060e                	slli	a2,a2,0x3
  20b426:	96b2                	add	a3,a3,a2
  20b428:	06b6                	slli	a3,a3,0xd
  20b42a:	97b6                	add	a5,a5,a3
  20b42c:	078a                	slli	a5,a5,0x2
  20b42e:	97ba                	add	a5,a5,a4
  20b430:	4394                	lw	a3,0(a5)
  20b432:	10000737          	lui	a4,0x10000
  20b436:	8f55                	or	a4,a4,a3
  20b438:	c398                	sw	a4,0(a5)
  20b43a:	4781                	li	a5,0
  20b43c:	853e                	mv	a0,a5
  20b43e:	70e2                	ld	ra,56(sp)
  20b440:	7442                	ld	s0,48(sp)
  20b442:	6121                	addi	sp,sp,64
  20b444:	8082                	ret

000000000020b446 <SelectLowLevelReqQ>:
  20b446:	7139                	addi	sp,sp,-64
  20b448:	fc06                	sd	ra,56(sp)
  20b44a:	f822                	sd	s0,48(sp)
  20b44c:	0080                	addi	s0,sp,64
  20b44e:	87aa                	mv	a5,a0
  20b450:	fcb43023          	sd	a1,-64(s0)
  20b454:	fcf42623          	sw	a5,-52(s0)
  20b458:	fcc42783          	lw	a5,-52(s0)
  20b45c:	853e                	mv	a0,a5
  20b45e:	835ff0ef          	jal	ra,20ac92 <CheckBufDep>
  20b462:	87aa                	mv	a5,a0
  20b464:	fef42223          	sw	a5,-28(s0)
  20b468:	fe442783          	lw	a5,-28(s0)
  20b46c:	0007871b          	sext.w	a4,a5
  20b470:	4785                	li	a5,1
  20b472:	24f71463          	bne	a4,a5,20b6ba <SelectLowLevelReqQ+0x274>
  20b476:	002107b7          	lui	a5,0x210
  20b47a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b47e:	fcc46683          	lwu	a3,-52(s0)
  20b482:	03400793          	li	a5,52
  20b486:	02f687b3          	mul	a5,a3,a5
  20b48a:	97ba                	add	a5,a5,a4
  20b48c:	439c                	lw	a5,0(a5)
  20b48e:	8bbd                	andi	a5,a5,15
  20b490:	0ff7f793          	andi	a5,a5,255
  20b494:	873e                	mv	a4,a5
  20b496:	4789                	li	a5,2
  20b498:	02f71c63          	bne	a4,a5,20b4d0 <SelectLowLevelReqQ+0x8a>
  20b49c:	fc040713          	addi	a4,s0,-64
  20b4a0:	fcc42783          	lw	a5,-52(s0)
  20b4a4:	85ba                	mv	a1,a4
  20b4a6:	853e                	mv	a0,a5
  20b4a8:	770000ef          	jal	ra,20bc18 <IssueNvmeDmaReq>
  20b4ac:	0020f7b7          	lui	a5,0x20f
  20b4b0:	55878513          	addi	a0,a5,1368 # 20f558 <nvme_main+0xaa2>
  20b4b4:	904f90ef          	jal	ra,2045b8 <cpl_print>
  20b4b8:	fcc42783          	lw	a5,-52(s0)
  20b4bc:	853e                	mv	a0,a5
  20b4be:	9d9f80ef          	jal	ra,203e96 <PutToNvmeDmaReqQ>
  20b4c2:	0020f7b7          	lui	a5,0x20f
  20b4c6:	56078513          	addi	a0,a5,1376 # 20f560 <nvme_main+0xaaa>
  20b4ca:	8eef90ef          	jal	ra,2045b8 <cpl_print>
  20b4ce:	ac49                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b4d0:	002107b7          	lui	a5,0x210
  20b4d4:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b4d8:	fcc46683          	lwu	a3,-52(s0)
  20b4dc:	03400793          	li	a5,52
  20b4e0:	02f687b3          	mul	a5,a3,a5
  20b4e4:	97ba                	add	a5,a5,a4
  20b4e6:	439c                	lw	a5,0(a5)
  20b4e8:	8bbd                	andi	a5,a5,15
  20b4ea:	0ff7f793          	andi	a5,a5,255
  20b4ee:	873e                	mv	a4,a5
  20b4f0:	4785                	li	a5,1
  20b4f2:	1af71d63          	bne	a4,a5,20b6ac <SelectLowLevelReqQ+0x266>
  20b4f6:	002107b7          	lui	a5,0x210
  20b4fa:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b4fe:	fcc46683          	lwu	a3,-52(s0)
  20b502:	03400793          	li	a5,52
  20b506:	02f687b3          	mul	a5,a3,a5
  20b50a:	97ba                	add	a5,a5,a4
  20b50c:	4b9c                	lw	a5,16(a5)
  20b50e:	0027d79b          	srliw	a5,a5,0x2
  20b512:	8b8d                	andi	a5,a5,3
  20b514:	0ff7f793          	andi	a5,a5,255
  20b518:	ef8d                	bnez	a5,20b552 <SelectLowLevelReqQ+0x10c>
  20b51a:	002107b7          	lui	a5,0x210
  20b51e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b522:	fcc46683          	lwu	a3,-52(s0)
  20b526:	03400793          	li	a5,52
  20b52a:	02f687b3          	mul	a5,a3,a5
  20b52e:	97ba                	add	a5,a5,a4
  20b530:	53dc                	lw	a5,36(a5)
  20b532:	03f7f793          	andi	a5,a5,63
  20b536:	fcf42e23          	sw	a5,-36(s0)
  20b53a:	fdc42783          	lw	a5,-36(s0)
  20b53e:	8b9d                	andi	a5,a5,7
  20b540:	fef42623          	sw	a5,-20(s0)
  20b544:	fdc42783          	lw	a5,-36(s0)
  20b548:	0037d79b          	srliw	a5,a5,0x3
  20b54c:	fef42423          	sw	a5,-24(s0)
  20b550:	a049                	j	20b5d2 <SelectLowLevelReqQ+0x18c>
  20b552:	002107b7          	lui	a5,0x210
  20b556:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b55a:	fcc46683          	lwu	a3,-52(s0)
  20b55e:	03400793          	li	a5,52
  20b562:	02f687b3          	mul	a5,a3,a5
  20b566:	97ba                	add	a5,a5,a4
  20b568:	4b9c                	lw	a5,16(a5)
  20b56a:	0027d79b          	srliw	a5,a5,0x2
  20b56e:	8b8d                	andi	a5,a5,3
  20b570:	0ff7f793          	andi	a5,a5,255
  20b574:	873e                	mv	a4,a5
  20b576:	4785                	li	a5,1
  20b578:	04f71763          	bne	a4,a5,20b5c6 <SelectLowLevelReqQ+0x180>
  20b57c:	002107b7          	lui	a5,0x210
  20b580:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b584:	fcc46683          	lwu	a3,-52(s0)
  20b588:	03400793          	li	a5,52
  20b58c:	02f687b3          	mul	a5,a3,a5
  20b590:	97ba                	add	a5,a5,a4
  20b592:	53dc                	lw	a5,36(a5)
  20b594:	8bbd                	andi	a5,a5,15
  20b596:	0ff7f793          	andi	a5,a5,255
  20b59a:	fef42623          	sw	a5,-20(s0)
  20b59e:	002107b7          	lui	a5,0x210
  20b5a2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b5a6:	fcc46683          	lwu	a3,-52(s0)
  20b5aa:	03400793          	li	a5,52
  20b5ae:	02f687b3          	mul	a5,a3,a5
  20b5b2:	97ba                	add	a5,a5,a4
  20b5b4:	53dc                	lw	a5,36(a5)
  20b5b6:	0047d79b          	srliw	a5,a5,0x4
  20b5ba:	8bbd                	andi	a5,a5,15
  20b5bc:	0ff7f793          	andi	a5,a5,255
  20b5c0:	fef42423          	sw	a5,-24(s0)
  20b5c4:	a039                	j	20b5d2 <SelectLowLevelReqQ+0x18c>
  20b5c6:	0020f7b7          	lui	a5,0x20f
  20b5ca:	4b878513          	addi	a0,a5,1208 # 20f4b8 <nvme_main+0xa02>
  20b5ce:	febf80ef          	jal	ra,2045b8 <cpl_print>
  20b5d2:	002107b7          	lui	a5,0x210
  20b5d6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b5da:	fcc46683          	lwu	a3,-52(s0)
  20b5de:	03400793          	li	a5,52
  20b5e2:	02f687b3          	mul	a5,a3,a5
  20b5e6:	97ba                	add	a5,a5,a4
  20b5e8:	4b9c                	lw	a5,16(a5)
  20b5ea:	0067d79b          	srliw	a5,a5,0x6
  20b5ee:	8b85                	andi	a5,a5,1
  20b5f0:	0ff7f793          	andi	a5,a5,255
  20b5f4:	873e                	mv	a4,a5
  20b5f6:	4785                	li	a5,1
  20b5f8:	06f71563          	bne	a4,a5,20b662 <SelectLowLevelReqQ+0x21c>
  20b5fc:	fcc42783          	lw	a5,-52(s0)
  20b600:	4581                	li	a1,0
  20b602:	853e                	mv	a0,a5
  20b604:	eceff0ef          	jal	ra,20acd2 <CheckRowAddrDep>
  20b608:	87aa                	mv	a5,a0
  20b60a:	fcf42c23          	sw	a5,-40(s0)
  20b60e:	fd842783          	lw	a5,-40(s0)
  20b612:	0007871b          	sext.w	a4,a5
  20b616:	4785                	li	a5,1
  20b618:	00f71e63          	bne	a4,a5,20b634 <SelectLowLevelReqQ+0x1ee>
  20b61c:	fe842683          	lw	a3,-24(s0)
  20b620:	fec42703          	lw	a4,-20(s0)
  20b624:	fcc42783          	lw	a5,-52(s0)
  20b628:	8636                	mv	a2,a3
  20b62a:	85ba                	mv	a1,a4
  20b62c:	853e                	mv	a0,a5
  20b62e:	b8df80ef          	jal	ra,2041ba <PutToNandReqQ>
  20b632:	a23d                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b634:	fd842783          	lw	a5,-40(s0)
  20b638:	2781                	sext.w	a5,a5
  20b63a:	ef89                	bnez	a5,20b654 <SelectLowLevelReqQ+0x20e>
  20b63c:	fe842683          	lw	a3,-24(s0)
  20b640:	fec42703          	lw	a4,-20(s0)
  20b644:	fcc42783          	lw	a5,-52(s0)
  20b648:	8636                	mv	a2,a3
  20b64a:	85ba                	mv	a1,a4
  20b64c:	853e                	mv	a0,a5
  20b64e:	be4f80ef          	jal	ra,203a32 <PutToBlockedByRowAddrDepReqQ>
  20b652:	a239                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b654:	0020f7b7          	lui	a5,0x20f
  20b658:	56878513          	addi	a0,a5,1384 # 20f568 <nvme_main+0xab2>
  20b65c:	f5df80ef          	jal	ra,2045b8 <cpl_print>
  20b660:	a201                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b662:	002107b7          	lui	a5,0x210
  20b666:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b66a:	fcc46683          	lwu	a3,-52(s0)
  20b66e:	03400793          	li	a5,52
  20b672:	02f687b3          	mul	a5,a3,a5
  20b676:	97ba                	add	a5,a5,a4
  20b678:	4b9c                	lw	a5,16(a5)
  20b67a:	0067d79b          	srliw	a5,a5,0x6
  20b67e:	8b85                	andi	a5,a5,1
  20b680:	0ff7f793          	andi	a5,a5,255
  20b684:	ef89                	bnez	a5,20b69e <SelectLowLevelReqQ+0x258>
  20b686:	fe842683          	lw	a3,-24(s0)
  20b68a:	fec42703          	lw	a4,-20(s0)
  20b68e:	fcc42783          	lw	a5,-52(s0)
  20b692:	8636                	mv	a2,a3
  20b694:	85ba                	mv	a1,a4
  20b696:	853e                	mv	a0,a5
  20b698:	b23f80ef          	jal	ra,2041ba <PutToNandReqQ>
  20b69c:	a0d1                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b69e:	0020f7b7          	lui	a5,0x20f
  20b6a2:	59878513          	addi	a0,a5,1432 # 20f598 <nvme_main+0xae2>
  20b6a6:	f13f80ef          	jal	ra,2045b8 <cpl_print>
  20b6aa:	a85d                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b6ac:	0020f7b7          	lui	a5,0x20f
  20b6b0:	5c878513          	addi	a0,a5,1480 # 20f5c8 <nvme_main+0xb12>
  20b6b4:	f05f80ef          	jal	ra,2045b8 <cpl_print>
  20b6b8:	a065                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b6ba:	fe442783          	lw	a5,-28(s0)
  20b6be:	2781                	sext.w	a5,a5
  20b6c0:	ebc1                	bnez	a5,20b750 <SelectLowLevelReqQ+0x30a>
  20b6c2:	002107b7          	lui	a5,0x210
  20b6c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b6ca:	fcc46683          	lwu	a3,-52(s0)
  20b6ce:	03400793          	li	a5,52
  20b6d2:	02f687b3          	mul	a5,a3,a5
  20b6d6:	97ba                	add	a5,a5,a4
  20b6d8:	439c                	lw	a5,0(a5)
  20b6da:	8bbd                	andi	a5,a5,15
  20b6dc:	0ff7f793          	andi	a5,a5,255
  20b6e0:	873e                	mv	a4,a5
  20b6e2:	4785                	li	a5,1
  20b6e4:	06f71063          	bne	a4,a5,20b744 <SelectLowLevelReqQ+0x2fe>
  20b6e8:	002107b7          	lui	a5,0x210
  20b6ec:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b6f0:	fcc46683          	lwu	a3,-52(s0)
  20b6f4:	03400793          	li	a5,52
  20b6f8:	02f687b3          	mul	a5,a3,a5
  20b6fc:	97ba                	add	a5,a5,a4
  20b6fe:	4b9c                	lw	a5,16(a5)
  20b700:	0067d79b          	srliw	a5,a5,0x6
  20b704:	8b85                	andi	a5,a5,1
  20b706:	0ff7f793          	andi	a5,a5,255
  20b70a:	873e                	mv	a4,a5
  20b70c:	4785                	li	a5,1
  20b70e:	02f71b63          	bne	a4,a5,20b744 <SelectLowLevelReqQ+0x2fe>
  20b712:	fcc42783          	lw	a5,-52(s0)
  20b716:	853e                	mv	a0,a5
  20b718:	a6dff0ef          	jal	ra,20b184 <UpdateRowAddrDepTableForBufBlockedReq>
  20b71c:	87aa                	mv	a5,a0
  20b71e:	fef42023          	sw	a5,-32(s0)
  20b722:	fe042783          	lw	a5,-32(s0)
  20b726:	2781                	sext.w	a5,a5
  20b728:	cf91                	beqz	a5,20b744 <SelectLowLevelReqQ+0x2fe>
  20b72a:	fe042783          	lw	a5,-32(s0)
  20b72e:	0007871b          	sext.w	a4,a5
  20b732:	4785                	li	a5,1
  20b734:	02f70563          	beq	a4,a5,20b75e <SelectLowLevelReqQ+0x318>
  20b738:	0020f7b7          	lui	a5,0x20f
  20b73c:	56878513          	addi	a0,a5,1384 # 20f568 <nvme_main+0xab2>
  20b740:	e79f80ef          	jal	ra,2045b8 <cpl_print>
  20b744:	fcc42783          	lw	a5,-52(s0)
  20b748:	853e                	mv	a0,a5
  20b74a:	f91f70ef          	jal	ra,2036da <PutToBlockedByBufDepReqQ>
  20b74e:	a809                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b750:	0020f7b7          	lui	a5,0x20f
  20b754:	56878513          	addi	a0,a5,1384 # 20f568 <nvme_main+0xab2>
  20b758:	e61f80ef          	jal	ra,2045b8 <cpl_print>
  20b75c:	a011                	j	20b760 <SelectLowLevelReqQ+0x31a>
  20b75e:	0001                	nop
  20b760:	70e2                	ld	ra,56(sp)
  20b762:	7442                	ld	s0,48(sp)
  20b764:	6121                	addi	sp,sp,64
  20b766:	8082                	ret

000000000020b768 <ReleaseBlockedByBufDepReq>:
  20b768:	7139                	addi	sp,sp,-64
  20b76a:	fc06                	sd	ra,56(sp)
  20b76c:	f822                	sd	s0,48(sp)
  20b76e:	0080                	addi	s0,sp,64
  20b770:	87aa                	mv	a5,a0
  20b772:	fcf42623          	sw	a5,-52(s0)
  20b776:	67c1                	lui	a5,0x10
  20b778:	17fd                	addi	a5,a5,-1
  20b77a:	fef42623          	sw	a5,-20(s0)
  20b77e:	002107b7          	lui	a5,0x210
  20b782:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b786:	fcc46683          	lwu	a3,-52(s0)
  20b78a:	03400793          	li	a5,52
  20b78e:	02f687b3          	mul	a5,a3,a5
  20b792:	97ba                	add	a5,a5,a4
  20b794:	0327d783          	lhu	a5,50(a5)
  20b798:	0007871b          	sext.w	a4,a5
  20b79c:	67c1                	lui	a5,0x10
  20b79e:	17fd                	addi	a5,a5,-1
  20b7a0:	04f70d63          	beq	a4,a5,20b7fa <ReleaseBlockedByBufDepReq+0x92>
  20b7a4:	002107b7          	lui	a5,0x210
  20b7a8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b7ac:	fcc46683          	lwu	a3,-52(s0)
  20b7b0:	03400793          	li	a5,52
  20b7b4:	02f687b3          	mul	a5,a3,a5
  20b7b8:	97ba                	add	a5,a5,a4
  20b7ba:	0327d783          	lhu	a5,50(a5)
  20b7be:	fef42623          	sw	a5,-20(s0)
  20b7c2:	002107b7          	lui	a5,0x210
  20b7c6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b7ca:	fec46683          	lwu	a3,-20(s0)
  20b7ce:	03400793          	li	a5,52
  20b7d2:	02f687b3          	mul	a5,a3,a5
  20b7d6:	97ba                	add	a5,a5,a4
  20b7d8:	577d                	li	a4,-1
  20b7da:	02e79823          	sh	a4,48(a5)
  20b7de:	002107b7          	lui	a5,0x210
  20b7e2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b7e6:	fcc46683          	lwu	a3,-52(s0)
  20b7ea:	03400793          	li	a5,52
  20b7ee:	02f687b3          	mul	a5,a3,a5
  20b7f2:	97ba                	add	a5,a5,a4
  20b7f4:	577d                	li	a4,-1
  20b7f6:	02e79923          	sh	a4,50(a5)
  20b7fa:	002107b7          	lui	a5,0x210
  20b7fe:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b802:	fcc46683          	lwu	a3,-52(s0)
  20b806:	03400793          	li	a5,52
  20b80a:	02f687b3          	mul	a5,a3,a5
  20b80e:	97ba                	add	a5,a5,a4
  20b810:	4b9c                	lw	a5,16(a5)
  20b812:	8b8d                	andi	a5,a5,3
  20b814:	0ff7f793          	andi	a5,a5,255
  20b818:	e7b5                	bnez	a5,20b884 <ReleaseBlockedByBufDepReq+0x11c>
  20b81a:	002107b7          	lui	a5,0x210
  20b81e:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20b822:	002107b7          	lui	a5,0x210
  20b826:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20b82a:	fcc46603          	lwu	a2,-52(s0)
  20b82e:	03400793          	li	a5,52
  20b832:	02f607b3          	mul	a5,a2,a5
  20b836:	97b6                	add	a5,a5,a3
  20b838:	4bdc                	lw	a5,20(a5)
  20b83a:	1782                	slli	a5,a5,0x20
  20b83c:	9381                	srli	a5,a5,0x20
  20b83e:	0792                	slli	a5,a5,0x4
  20b840:	97ba                	add	a5,a5,a4
  20b842:	0087d783          	lhu	a5,8(a5)
  20b846:	0007871b          	sext.w	a4,a5
  20b84a:	fcc42783          	lw	a5,-52(s0)
  20b84e:	2781                	sext.w	a5,a5
  20b850:	0ce79163          	bne	a5,a4,20b912 <ReleaseBlockedByBufDepReq+0x1aa>
  20b854:	002107b7          	lui	a5,0x210
  20b858:	3a07b703          	ld	a4,928(a5) # 2103a0 <dataBufMapPtr>
  20b85c:	002107b7          	lui	a5,0x210
  20b860:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20b864:	fcc46603          	lwu	a2,-52(s0)
  20b868:	03400793          	li	a5,52
  20b86c:	02f607b3          	mul	a5,a2,a5
  20b870:	97b6                	add	a5,a5,a3
  20b872:	4bdc                	lw	a5,20(a5)
  20b874:	1782                	slli	a5,a5,0x20
  20b876:	9381                	srli	a5,a5,0x20
  20b878:	0792                	slli	a5,a5,0x4
  20b87a:	97ba                	add	a5,a5,a4
  20b87c:	577d                	li	a4,-1
  20b87e:	00e79423          	sh	a4,8(a5)
  20b882:	a841                	j	20b912 <ReleaseBlockedByBufDepReq+0x1aa>
  20b884:	002107b7          	lui	a5,0x210
  20b888:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b88c:	fcc46683          	lwu	a3,-52(s0)
  20b890:	03400793          	li	a5,52
  20b894:	02f687b3          	mul	a5,a3,a5
  20b898:	97ba                	add	a5,a5,a4
  20b89a:	4b9c                	lw	a5,16(a5)
  20b89c:	8b8d                	andi	a5,a5,3
  20b89e:	0ff7f793          	andi	a5,a5,255
  20b8a2:	873e                	mv	a4,a5
  20b8a4:	4785                	li	a5,1
  20b8a6:	06f71663          	bne	a4,a5,20b912 <ReleaseBlockedByBufDepReq+0x1aa>
  20b8aa:	002107b7          	lui	a5,0x210
  20b8ae:	3a87b703          	ld	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  20b8b2:	002107b7          	lui	a5,0x210
  20b8b6:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20b8ba:	fcc46603          	lwu	a2,-52(s0)
  20b8be:	03400793          	li	a5,52
  20b8c2:	02f607b3          	mul	a5,a2,a5
  20b8c6:	97b6                	add	a5,a5,a3
  20b8c8:	4bdc                	lw	a5,20(a5)
  20b8ca:	1782                	slli	a5,a5,0x20
  20b8cc:	9381                	srli	a5,a5,0x20
  20b8ce:	078a                	slli	a5,a5,0x2
  20b8d0:	97ba                	add	a5,a5,a4
  20b8d2:	0007d783          	lhu	a5,0(a5)
  20b8d6:	0007871b          	sext.w	a4,a5
  20b8da:	fcc42783          	lw	a5,-52(s0)
  20b8de:	2781                	sext.w	a5,a5
  20b8e0:	02e79963          	bne	a5,a4,20b912 <ReleaseBlockedByBufDepReq+0x1aa>
  20b8e4:	002107b7          	lui	a5,0x210
  20b8e8:	3a87b703          	ld	a4,936(a5) # 2103a8 <tempDataBufMapPtr>
  20b8ec:	002107b7          	lui	a5,0x210
  20b8f0:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20b8f4:	fcc46603          	lwu	a2,-52(s0)
  20b8f8:	03400793          	li	a5,52
  20b8fc:	02f607b3          	mul	a5,a2,a5
  20b900:	97b6                	add	a5,a5,a3
  20b902:	4bdc                	lw	a5,20(a5)
  20b904:	1782                	slli	a5,a5,0x20
  20b906:	9381                	srli	a5,a5,0x20
  20b908:	078a                	slli	a5,a5,0x2
  20b90a:	97ba                	add	a5,a5,a4
  20b90c:	577d                	li	a4,-1
  20b90e:	00e79023          	sh	a4,0(a5)
  20b912:	fec42783          	lw	a5,-20(s0)
  20b916:	0007871b          	sext.w	a4,a5
  20b91a:	67c1                	lui	a5,0x10
  20b91c:	17fd                	addi	a5,a5,-1
  20b91e:	1cf70e63          	beq	a4,a5,20bafa <ReleaseBlockedByBufDepReq+0x392>
  20b922:	002107b7          	lui	a5,0x210
  20b926:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b92a:	fec46683          	lwu	a3,-20(s0)
  20b92e:	03400793          	li	a5,52
  20b932:	02f687b3          	mul	a5,a3,a5
  20b936:	97ba                	add	a5,a5,a4
  20b938:	439c                	lw	a5,0(a5)
  20b93a:	0047d79b          	srliw	a5,a5,0x4
  20b93e:	8bbd                	andi	a5,a5,15
  20b940:	0ff7f793          	andi	a5,a5,255
  20b944:	873e                	mv	a4,a5
  20b946:	478d                	li	a5,3
  20b948:	1af71963          	bne	a4,a5,20bafa <ReleaseBlockedByBufDepReq+0x392>
  20b94c:	fec42783          	lw	a5,-20(s0)
  20b950:	853e                	mv	a0,a5
  20b952:	ef7f70ef          	jal	ra,203848 <SelectiveGetFromBlockedByBufDepReqQ>
  20b956:	002107b7          	lui	a5,0x210
  20b95a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b95e:	fec46683          	lwu	a3,-20(s0)
  20b962:	03400793          	li	a5,52
  20b966:	02f687b3          	mul	a5,a3,a5
  20b96a:	97ba                	add	a5,a5,a4
  20b96c:	439c                	lw	a5,0(a5)
  20b96e:	8bbd                	andi	a5,a5,15
  20b970:	0ff7f793          	andi	a5,a5,255
  20b974:	873e                	mv	a4,a5
  20b976:	4789                	li	a5,2
  20b978:	00f71e63          	bne	a4,a5,20b994 <ReleaseBlockedByBufDepReq+0x22c>
  20b97c:	fec42783          	lw	a5,-20(s0)
  20b980:	4581                	li	a1,0
  20b982:	853e                	mv	a0,a5
  20b984:	294000ef          	jal	ra,20bc18 <IssueNvmeDmaReq>
  20b988:	fec42783          	lw	a5,-20(s0)
  20b98c:	853e                	mv	a0,a5
  20b98e:	d08f80ef          	jal	ra,203e96 <PutToNvmeDmaReqQ>
  20b992:	a2a5                	j	20bafa <ReleaseBlockedByBufDepReq+0x392>
  20b994:	002107b7          	lui	a5,0x210
  20b998:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b99c:	fec46683          	lwu	a3,-20(s0)
  20b9a0:	03400793          	li	a5,52
  20b9a4:	02f687b3          	mul	a5,a3,a5
  20b9a8:	97ba                	add	a5,a5,a4
  20b9aa:	439c                	lw	a5,0(a5)
  20b9ac:	8bbd                	andi	a5,a5,15
  20b9ae:	0ff7f793          	andi	a5,a5,255
  20b9b2:	873e                	mv	a4,a5
  20b9b4:	4785                	li	a5,1
  20b9b6:	14f71263          	bne	a4,a5,20bafa <ReleaseBlockedByBufDepReq+0x392>
  20b9ba:	002107b7          	lui	a5,0x210
  20b9be:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b9c2:	fec46683          	lwu	a3,-20(s0)
  20b9c6:	03400793          	li	a5,52
  20b9ca:	02f687b3          	mul	a5,a3,a5
  20b9ce:	97ba                	add	a5,a5,a4
  20b9d0:	4b9c                	lw	a5,16(a5)
  20b9d2:	0027d79b          	srliw	a5,a5,0x2
  20b9d6:	8b8d                	andi	a5,a5,3
  20b9d8:	0ff7f793          	andi	a5,a5,255
  20b9dc:	ef8d                	bnez	a5,20ba16 <ReleaseBlockedByBufDepReq+0x2ae>
  20b9de:	002107b7          	lui	a5,0x210
  20b9e2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20b9e6:	fec46683          	lwu	a3,-20(s0)
  20b9ea:	03400793          	li	a5,52
  20b9ee:	02f687b3          	mul	a5,a3,a5
  20b9f2:	97ba                	add	a5,a5,a4
  20b9f4:	53dc                	lw	a5,36(a5)
  20b9f6:	03f7f793          	andi	a5,a5,63
  20b9fa:	fef42023          	sw	a5,-32(s0)
  20b9fe:	fe042783          	lw	a5,-32(s0)
  20ba02:	8b9d                	andi	a5,a5,7
  20ba04:	fef42423          	sw	a5,-24(s0)
  20ba08:	fe042783          	lw	a5,-32(s0)
  20ba0c:	0037d79b          	srliw	a5,a5,0x3
  20ba10:	fef42223          	sw	a5,-28(s0)
  20ba14:	a039                	j	20ba22 <ReleaseBlockedByBufDepReq+0x2ba>
  20ba16:	0020f7b7          	lui	a5,0x20f
  20ba1a:	4b878513          	addi	a0,a5,1208 # 20f4b8 <nvme_main+0xa02>
  20ba1e:	b9bf80ef          	jal	ra,2045b8 <cpl_print>
  20ba22:	002107b7          	lui	a5,0x210
  20ba26:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20ba2a:	fec46683          	lwu	a3,-20(s0)
  20ba2e:	03400793          	li	a5,52
  20ba32:	02f687b3          	mul	a5,a3,a5
  20ba36:	97ba                	add	a5,a5,a4
  20ba38:	4b9c                	lw	a5,16(a5)
  20ba3a:	0067d79b          	srliw	a5,a5,0x6
  20ba3e:	8b85                	andi	a5,a5,1
  20ba40:	0ff7f793          	andi	a5,a5,255
  20ba44:	873e                	mv	a4,a5
  20ba46:	4785                	li	a5,1
  20ba48:	06f71563          	bne	a4,a5,20bab2 <ReleaseBlockedByBufDepReq+0x34a>
  20ba4c:	fec42783          	lw	a5,-20(s0)
  20ba50:	4585                	li	a1,1
  20ba52:	853e                	mv	a0,a5
  20ba54:	a7eff0ef          	jal	ra,20acd2 <CheckRowAddrDep>
  20ba58:	87aa                	mv	a5,a0
  20ba5a:	fcf42e23          	sw	a5,-36(s0)
  20ba5e:	fdc42783          	lw	a5,-36(s0)
  20ba62:	0007871b          	sext.w	a4,a5
  20ba66:	4785                	li	a5,1
  20ba68:	00f71e63          	bne	a4,a5,20ba84 <ReleaseBlockedByBufDepReq+0x31c>
  20ba6c:	fe442683          	lw	a3,-28(s0)
  20ba70:	fe842703          	lw	a4,-24(s0)
  20ba74:	fec42783          	lw	a5,-20(s0)
  20ba78:	8636                	mv	a2,a3
  20ba7a:	85ba                	mv	a1,a4
  20ba7c:	853e                	mv	a0,a5
  20ba7e:	f3cf80ef          	jal	ra,2041ba <PutToNandReqQ>
  20ba82:	a8a5                	j	20bafa <ReleaseBlockedByBufDepReq+0x392>
  20ba84:	fdc42783          	lw	a5,-36(s0)
  20ba88:	2781                	sext.w	a5,a5
  20ba8a:	ef89                	bnez	a5,20baa4 <ReleaseBlockedByBufDepReq+0x33c>
  20ba8c:	fe442683          	lw	a3,-28(s0)
  20ba90:	fe842703          	lw	a4,-24(s0)
  20ba94:	fec42783          	lw	a5,-20(s0)
  20ba98:	8636                	mv	a2,a3
  20ba9a:	85ba                	mv	a1,a4
  20ba9c:	853e                	mv	a0,a5
  20ba9e:	f95f70ef          	jal	ra,203a32 <PutToBlockedByRowAddrDepReqQ>
  20baa2:	a8a1                	j	20bafa <ReleaseBlockedByBufDepReq+0x392>
  20baa4:	0020f7b7          	lui	a5,0x20f
  20baa8:	56878513          	addi	a0,a5,1384 # 20f568 <nvme_main+0xab2>
  20baac:	b0df80ef          	jal	ra,2045b8 <cpl_print>
  20bab0:	a0a9                	j	20bafa <ReleaseBlockedByBufDepReq+0x392>
  20bab2:	002107b7          	lui	a5,0x210
  20bab6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20baba:	fec46683          	lwu	a3,-20(s0)
  20babe:	03400793          	li	a5,52
  20bac2:	02f687b3          	mul	a5,a3,a5
  20bac6:	97ba                	add	a5,a5,a4
  20bac8:	4b9c                	lw	a5,16(a5)
  20baca:	0067d79b          	srliw	a5,a5,0x6
  20bace:	8b85                	andi	a5,a5,1
  20bad0:	0ff7f793          	andi	a5,a5,255
  20bad4:	ef89                	bnez	a5,20baee <ReleaseBlockedByBufDepReq+0x386>
  20bad6:	fe442683          	lw	a3,-28(s0)
  20bada:	fe842703          	lw	a4,-24(s0)
  20bade:	fec42783          	lw	a5,-20(s0)
  20bae2:	8636                	mv	a2,a3
  20bae4:	85ba                	mv	a1,a4
  20bae6:	853e                	mv	a0,a5
  20bae8:	ed2f80ef          	jal	ra,2041ba <PutToNandReqQ>
  20baec:	a039                	j	20bafa <ReleaseBlockedByBufDepReq+0x392>
  20baee:	0020f7b7          	lui	a5,0x20f
  20baf2:	59878513          	addi	a0,a5,1432 # 20f598 <nvme_main+0xae2>
  20baf6:	ac3f80ef          	jal	ra,2045b8 <cpl_print>
  20bafa:	0001                	nop
  20bafc:	70e2                	ld	ra,56(sp)
  20bafe:	7442                	ld	s0,48(sp)
  20bb00:	6121                	addi	sp,sp,64
  20bb02:	8082                	ret

000000000020bb04 <ReleaseBlockedByRowAddrDepReq>:
  20bb04:	7179                	addi	sp,sp,-48
  20bb06:	f406                	sd	ra,40(sp)
  20bb08:	f022                	sd	s0,32(sp)
  20bb0a:	1800                	addi	s0,sp,48
  20bb0c:	87aa                	mv	a5,a0
  20bb0e:	872e                	mv	a4,a1
  20bb10:	fcf42e23          	sw	a5,-36(s0)
  20bb14:	87ba                	mv	a5,a4
  20bb16:	fcf42c23          	sw	a5,-40(s0)
  20bb1a:	002107b7          	lui	a5,0x210
  20bb1e:	f8078713          	addi	a4,a5,-128 # 20ff80 <blockedByRowAddrDepReqQ>
  20bb22:	fd846783          	lwu	a5,-40(s0)
  20bb26:	fdc46683          	lwu	a3,-36(s0)
  20bb2a:	068e                	slli	a3,a3,0x3
  20bb2c:	97b6                	add	a5,a5,a3
  20bb2e:	078e                	slli	a5,a5,0x3
  20bb30:	97ba                	add	a5,a5,a4
  20bb32:	0007d783          	lhu	a5,0(a5)
  20bb36:	fef42623          	sw	a5,-20(s0)
  20bb3a:	a0c9                	j	20bbfc <ReleaseBlockedByRowAddrDepReq+0xf8>
  20bb3c:	002107b7          	lui	a5,0x210
  20bb40:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bb44:	fec46683          	lwu	a3,-20(s0)
  20bb48:	03400793          	li	a5,52
  20bb4c:	02f687b3          	mul	a5,a3,a5
  20bb50:	97ba                	add	a5,a5,a4
  20bb52:	02e7d783          	lhu	a5,46(a5)
  20bb56:	fef42423          	sw	a5,-24(s0)
  20bb5a:	002107b7          	lui	a5,0x210
  20bb5e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bb62:	fec46683          	lwu	a3,-20(s0)
  20bb66:	03400793          	li	a5,52
  20bb6a:	02f687b3          	mul	a5,a3,a5
  20bb6e:	97ba                	add	a5,a5,a4
  20bb70:	4b9c                	lw	a5,16(a5)
  20bb72:	0067d79b          	srliw	a5,a5,0x6
  20bb76:	8b85                	andi	a5,a5,1
  20bb78:	0ff7f793          	andi	a5,a5,255
  20bb7c:	873e                	mv	a4,a5
  20bb7e:	4785                	li	a5,1
  20bb80:	06f71463          	bne	a4,a5,20bbe8 <ReleaseBlockedByRowAddrDepReq+0xe4>
  20bb84:	fec42783          	lw	a5,-20(s0)
  20bb88:	4585                	li	a1,1
  20bb8a:	853e                	mv	a0,a5
  20bb8c:	946ff0ef          	jal	ra,20acd2 <CheckRowAddrDep>
  20bb90:	87aa                	mv	a5,a0
  20bb92:	fef42223          	sw	a5,-28(s0)
  20bb96:	fe442783          	lw	a5,-28(s0)
  20bb9a:	0007871b          	sext.w	a4,a5
  20bb9e:	4785                	li	a5,1
  20bba0:	02f71963          	bne	a4,a5,20bbd2 <ReleaseBlockedByRowAddrDepReq+0xce>
  20bba4:	fd842683          	lw	a3,-40(s0)
  20bba8:	fdc42703          	lw	a4,-36(s0)
  20bbac:	fec42783          	lw	a5,-20(s0)
  20bbb0:	8636                	mv	a2,a3
  20bbb2:	85ba                	mv	a1,a4
  20bbb4:	853e                	mv	a0,a5
  20bbb6:	87ef80ef          	jal	ra,203c34 <SelectiveGetFromBlockedByRowAddrDepReqQ>
  20bbba:	fd842683          	lw	a3,-40(s0)
  20bbbe:	fdc42703          	lw	a4,-36(s0)
  20bbc2:	fec42783          	lw	a5,-20(s0)
  20bbc6:	8636                	mv	a2,a3
  20bbc8:	85ba                	mv	a1,a4
  20bbca:	853e                	mv	a0,a5
  20bbcc:	deef80ef          	jal	ra,2041ba <PutToNandReqQ>
  20bbd0:	a015                	j	20bbf4 <ReleaseBlockedByRowAddrDepReq+0xf0>
  20bbd2:	fe442783          	lw	a5,-28(s0)
  20bbd6:	2781                	sext.w	a5,a5
  20bbd8:	cf91                	beqz	a5,20bbf4 <ReleaseBlockedByRowAddrDepReq+0xf0>
  20bbda:	0020f7b7          	lui	a5,0x20f
  20bbde:	56878513          	addi	a0,a5,1384 # 20f568 <nvme_main+0xab2>
  20bbe2:	9d7f80ef          	jal	ra,2045b8 <cpl_print>
  20bbe6:	a039                	j	20bbf4 <ReleaseBlockedByRowAddrDepReq+0xf0>
  20bbe8:	0020f7b7          	lui	a5,0x20f
  20bbec:	59878513          	addi	a0,a5,1432 # 20f598 <nvme_main+0xae2>
  20bbf0:	9c9f80ef          	jal	ra,2045b8 <cpl_print>
  20bbf4:	fe842783          	lw	a5,-24(s0)
  20bbf8:	fef42623          	sw	a5,-20(s0)
  20bbfc:	fec42783          	lw	a5,-20(s0)
  20bc00:	0007871b          	sext.w	a4,a5
  20bc04:	67c1                	lui	a5,0x10
  20bc06:	17fd                	addi	a5,a5,-1
  20bc08:	f2f71ae3          	bne	a4,a5,20bb3c <ReleaseBlockedByRowAddrDepReq+0x38>
  20bc0c:	0001                	nop
  20bc0e:	0001                	nop
  20bc10:	70a2                	ld	ra,40(sp)
  20bc12:	7402                	ld	s0,32(sp)
  20bc14:	6145                	addi	sp,sp,48
  20bc16:	8082                	ret

000000000020bc18 <IssueNvmeDmaReq>:
  20bc18:	7179                	addi	sp,sp,-48
  20bc1a:	f406                	sd	ra,40(sp)
  20bc1c:	f022                	sd	s0,32(sp)
  20bc1e:	1800                	addi	s0,sp,48
  20bc20:	87aa                	mv	a5,a0
  20bc22:	fcb43823          	sd	a1,-48(s0)
  20bc26:	fcf42e23          	sw	a5,-36(s0)
  20bc2a:	002107b7          	lui	a5,0x210
  20bc2e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bc32:	fdc46683          	lwu	a3,-36(s0)
  20bc36:	03400793          	li	a5,52
  20bc3a:	02f687b3          	mul	a5,a3,a5
  20bc3e:	97ba                	add	a5,a5,a4
  20bc40:	0187d783          	lhu	a5,24(a5)
  20bc44:	fef42423          	sw	a5,-24(s0)
  20bc48:	fdc42783          	lw	a5,-36(s0)
  20bc4c:	853e                	mv	a0,a5
  20bc4e:	ef9fc0ef          	jal	ra,208b46 <GenerateDataBufAddr>
  20bc52:	87aa                	mv	a5,a0
  20bc54:	fef42623          	sw	a5,-20(s0)
  20bc58:	fe042223          	sw	zero,-28(s0)
  20bc5c:	002107b7          	lui	a5,0x210
  20bc60:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bc64:	fdc46683          	lwu	a3,-36(s0)
  20bc68:	03400793          	li	a5,52
  20bc6c:	02f687b3          	mul	a5,a3,a5
  20bc70:	97ba                	add	a5,a5,a4
  20bc72:	0017c783          	lbu	a5,1(a5)
  20bc76:	873e                	mv	a4,a5
  20bc78:	47c1                	li	a5,16
  20bc7a:	0cf71363          	bne	a4,a5,20bd40 <IssueNvmeDmaReq+0x128>
  20bc7e:	a881                	j	20bcce <IssueNvmeDmaReq+0xb6>
  20bc80:	002107b7          	lui	a5,0x210
  20bc84:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bc88:	fdc46683          	lwu	a3,-36(s0)
  20bc8c:	03400793          	li	a5,52
  20bc90:	02f687b3          	mul	a5,a3,a5
  20bc94:	97ba                	add	a5,a5,a4
  20bc96:	0027d783          	lhu	a5,2(a5)
  20bc9a:	2781                	sext.w	a5,a5
  20bc9c:	fec42603          	lw	a2,-20(s0)
  20bca0:	fe842703          	lw	a4,-24(s0)
  20bca4:	4681                	li	a3,0
  20bca6:	85ba                	mv	a1,a4
  20bca8:	853e                	mv	a0,a5
  20bcaa:	323010ef          	jal	ra,20d7cc <set_auto_rx_dma>
  20bcae:	fe442783          	lw	a5,-28(s0)
  20bcb2:	2785                	addiw	a5,a5,1
  20bcb4:	fef42223          	sw	a5,-28(s0)
  20bcb8:	fe842783          	lw	a5,-24(s0)
  20bcbc:	2785                	addiw	a5,a5,1
  20bcbe:	fef42423          	sw	a5,-24(s0)
  20bcc2:	fec42703          	lw	a4,-20(s0)
  20bcc6:	6785                	lui	a5,0x1
  20bcc8:	9fb9                	addw	a5,a5,a4
  20bcca:	fef42623          	sw	a5,-20(s0)
  20bcce:	002107b7          	lui	a5,0x210
  20bcd2:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bcd6:	fdc46683          	lwu	a3,-36(s0)
  20bcda:	03400793          	li	a5,52
  20bcde:	02f687b3          	mul	a5,a3,a5
  20bce2:	97ba                	add	a5,a5,a4
  20bce4:	01c7d783          	lhu	a5,28(a5)
  20bce8:	0007871b          	sext.w	a4,a5
  20bcec:	fe442783          	lw	a5,-28(s0)
  20bcf0:	2781                	sext.w	a5,a5
  20bcf2:	f8e7e7e3          	bltu	a5,a4,20bc80 <IssueNvmeDmaReq+0x68>
  20bcf6:	002107b7          	lui	a5,0x210
  20bcfa:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20bcfe:	002107b7          	lui	a5,0x210
  20bd02:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20bd06:	0067c703          	lbu	a4,6(a5)
  20bd0a:	fdc46603          	lwu	a2,-36(s0)
  20bd0e:	03400793          	li	a5,52
  20bd12:	02f607b3          	mul	a5,a2,a5
  20bd16:	97b6                	add	a5,a5,a3
  20bd18:	00e78f23          	sb	a4,30(a5)
  20bd1c:	002107b7          	lui	a5,0x210
  20bd20:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20bd24:	002107b7          	lui	a5,0x210
  20bd28:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20bd2c:	43d8                	lw	a4,4(a5)
  20bd2e:	fdc46603          	lwu	a2,-36(s0)
  20bd32:	03400793          	li	a5,52
  20bd36:	02f607b3          	mul	a5,a2,a5
  20bd3a:	97b6                	add	a5,a5,a3
  20bd3c:	d398                	sw	a4,32(a5)
  20bd3e:	a8cd                	j	20be30 <IssueNvmeDmaReq+0x218>
  20bd40:	002107b7          	lui	a5,0x210
  20bd44:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bd48:	fdc46683          	lwu	a3,-36(s0)
  20bd4c:	03400793          	li	a5,52
  20bd50:	02f687b3          	mul	a5,a3,a5
  20bd54:	97ba                	add	a5,a5,a4
  20bd56:	0017c783          	lbu	a5,1(a5)
  20bd5a:	873e                	mv	a4,a5
  20bd5c:	02000793          	li	a5,32
  20bd60:	0cf71263          	bne	a4,a5,20be24 <IssueNvmeDmaReq+0x20c>
  20bd64:	a881                	j	20bdb4 <IssueNvmeDmaReq+0x19c>
  20bd66:	002107b7          	lui	a5,0x210
  20bd6a:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bd6e:	fdc46683          	lwu	a3,-36(s0)
  20bd72:	03400793          	li	a5,52
  20bd76:	02f687b3          	mul	a5,a3,a5
  20bd7a:	97ba                	add	a5,a5,a4
  20bd7c:	0027d783          	lhu	a5,2(a5)
  20bd80:	2781                	sext.w	a5,a5
  20bd82:	fec42603          	lw	a2,-20(s0)
  20bd86:	fe842703          	lw	a4,-24(s0)
  20bd8a:	4685                	li	a3,1
  20bd8c:	85ba                	mv	a1,a4
  20bd8e:	853e                	mv	a0,a5
  20bd90:	069010ef          	jal	ra,20d5f8 <set_auto_tx_dma>
  20bd94:	fe442783          	lw	a5,-28(s0)
  20bd98:	2785                	addiw	a5,a5,1
  20bd9a:	fef42223          	sw	a5,-28(s0)
  20bd9e:	fe842783          	lw	a5,-24(s0)
  20bda2:	2785                	addiw	a5,a5,1
  20bda4:	fef42423          	sw	a5,-24(s0)
  20bda8:	fec42703          	lw	a4,-20(s0)
  20bdac:	6785                	lui	a5,0x1
  20bdae:	9fb9                	addw	a5,a5,a4
  20bdb0:	fef42623          	sw	a5,-20(s0)
  20bdb4:	002107b7          	lui	a5,0x210
  20bdb8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bdbc:	fdc46683          	lwu	a3,-36(s0)
  20bdc0:	03400793          	li	a5,52
  20bdc4:	02f687b3          	mul	a5,a3,a5
  20bdc8:	97ba                	add	a5,a5,a4
  20bdca:	01c7d783          	lhu	a5,28(a5)
  20bdce:	0007871b          	sext.w	a4,a5
  20bdd2:	fe442783          	lw	a5,-28(s0)
  20bdd6:	2781                	sext.w	a5,a5
  20bdd8:	f8e7e7e3          	bltu	a5,a4,20bd66 <IssueNvmeDmaReq+0x14e>
  20bddc:	002107b7          	lui	a5,0x210
  20bde0:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20bde4:	002107b7          	lui	a5,0x210
  20bde8:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20bdec:	0077c703          	lbu	a4,7(a5)
  20bdf0:	fdc46603          	lwu	a2,-36(s0)
  20bdf4:	03400793          	li	a5,52
  20bdf8:	02f607b3          	mul	a5,a2,a5
  20bdfc:	97b6                	add	a5,a5,a3
  20bdfe:	00e78f23          	sb	a4,30(a5)
  20be02:	002107b7          	lui	a5,0x210
  20be06:	1807b683          	ld	a3,384(a5) # 210180 <reqPoolPtr>
  20be0a:	002107b7          	lui	a5,0x210
  20be0e:	4487a703          	lw	a4,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20be12:	fdc46603          	lwu	a2,-36(s0)
  20be16:	03400793          	li	a5,52
  20be1a:	02f607b3          	mul	a5,a2,a5
  20be1e:	97b6                	add	a5,a5,a3
  20be20:	d398                	sw	a4,32(a5)
  20be22:	a039                	j	20be30 <IssueNvmeDmaReq+0x218>
  20be24:	0020f7b7          	lui	a5,0x20f
  20be28:	52878513          	addi	a0,a5,1320 # 20f528 <nvme_main+0xa72>
  20be2c:	f8cf80ef          	jal	ra,2045b8 <cpl_print>
  20be30:	0001                	nop
  20be32:	70a2                	ld	ra,40(sp)
  20be34:	7402                	ld	s0,32(sp)
  20be36:	6145                	addi	sp,sp,48
  20be38:	8082                	ret

000000000020be3a <CheckDoneNvmeDmaReq>:
  20be3a:	1101                	addi	sp,sp,-32
  20be3c:	ec06                	sd	ra,24(sp)
  20be3e:	e822                	sd	s0,16(sp)
  20be40:	1000                	addi	s0,sp,32
  20be42:	002107b7          	lui	a5,0x210
  20be46:	19078793          	addi	a5,a5,400 # 210190 <nvmeDmaReqQ>
  20be4a:	0027d783          	lhu	a5,2(a5)
  20be4e:	fef42623          	sw	a5,-20(s0)
  20be52:	fe042423          	sw	zero,-24(s0)
  20be56:	fe042223          	sw	zero,-28(s0)
  20be5a:	a221                	j	20bf62 <CheckDoneNvmeDmaReq+0x128>
  20be5c:	002107b7          	lui	a5,0x210
  20be60:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20be64:	fec46683          	lwu	a3,-20(s0)
  20be68:	03400793          	li	a5,52
  20be6c:	02f687b3          	mul	a5,a3,a5
  20be70:	97ba                	add	a5,a5,a4
  20be72:	02c7d783          	lhu	a5,44(a5)
  20be76:	fef42023          	sw	a5,-32(s0)
  20be7a:	002107b7          	lui	a5,0x210
  20be7e:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20be82:	fec46683          	lwu	a3,-20(s0)
  20be86:	03400793          	li	a5,52
  20be8a:	02f687b3          	mul	a5,a3,a5
  20be8e:	97ba                	add	a5,a5,a4
  20be90:	0017c783          	lbu	a5,1(a5)
  20be94:	873e                	mv	a4,a5
  20be96:	47c1                	li	a5,16
  20be98:	06f71263          	bne	a4,a5,20befc <CheckDoneNvmeDmaReq+0xc2>
  20be9c:	fe842783          	lw	a5,-24(s0)
  20bea0:	2781                	sext.w	a5,a5
  20bea2:	e3b9                	bnez	a5,20bee8 <CheckDoneNvmeDmaReq+0xae>
  20bea4:	002107b7          	lui	a5,0x210
  20bea8:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20beac:	fec46683          	lwu	a3,-20(s0)
  20beb0:	03400793          	li	a5,52
  20beb4:	02f687b3          	mul	a5,a3,a5
  20beb8:	97ba                	add	a5,a5,a4
  20beba:	01e7c783          	lbu	a5,30(a5)
  20bebe:	0007861b          	sext.w	a2,a5
  20bec2:	002107b7          	lui	a5,0x210
  20bec6:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20beca:	fec46683          	lwu	a3,-20(s0)
  20bece:	03400793          	li	a5,52
  20bed2:	02f687b3          	mul	a5,a3,a5
  20bed6:	97ba                	add	a5,a5,a4
  20bed8:	539c                	lw	a5,32(a5)
  20beda:	85be                	mv	a1,a5
  20bedc:	8532                	mv	a0,a2
  20bede:	513010ef          	jal	ra,20dbf0 <check_auto_rx_dma_partial_done>
  20bee2:	87aa                	mv	a5,a0
  20bee4:	fef42423          	sw	a5,-24(s0)
  20bee8:	fe842783          	lw	a5,-24(s0)
  20beec:	2781                	sext.w	a5,a5
  20beee:	c7b5                	beqz	a5,20bf5a <CheckDoneNvmeDmaReq+0x120>
  20bef0:	fec42783          	lw	a5,-20(s0)
  20bef4:	853e                	mv	a0,a5
  20bef6:	8f8f80ef          	jal	ra,203fee <SelectiveGetFromNvmeDmaReqQ>
  20befa:	a085                	j	20bf5a <CheckDoneNvmeDmaReq+0x120>
  20befc:	fe442783          	lw	a5,-28(s0)
  20bf00:	2781                	sext.w	a5,a5
  20bf02:	e3b9                	bnez	a5,20bf48 <CheckDoneNvmeDmaReq+0x10e>
  20bf04:	002107b7          	lui	a5,0x210
  20bf08:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bf0c:	fec46683          	lwu	a3,-20(s0)
  20bf10:	03400793          	li	a5,52
  20bf14:	02f687b3          	mul	a5,a3,a5
  20bf18:	97ba                	add	a5,a5,a4
  20bf1a:	01e7c783          	lbu	a5,30(a5)
  20bf1e:	0007861b          	sext.w	a2,a5
  20bf22:	002107b7          	lui	a5,0x210
  20bf26:	1807b703          	ld	a4,384(a5) # 210180 <reqPoolPtr>
  20bf2a:	fec46683          	lwu	a3,-20(s0)
  20bf2e:	03400793          	li	a5,52
  20bf32:	02f687b3          	mul	a5,a3,a5
  20bf36:	97ba                	add	a5,a5,a4
  20bf38:	539c                	lw	a5,32(a5)
  20bf3a:	85be                	mv	a1,a5
  20bf3c:	8532                	mv	a0,a2
  20bf3e:	367010ef          	jal	ra,20daa4 <check_auto_tx_dma_partial_done>
  20bf42:	87aa                	mv	a5,a0
  20bf44:	fef42223          	sw	a5,-28(s0)
  20bf48:	fe442783          	lw	a5,-28(s0)
  20bf4c:	2781                	sext.w	a5,a5
  20bf4e:	c791                	beqz	a5,20bf5a <CheckDoneNvmeDmaReq+0x120>
  20bf50:	fec42783          	lw	a5,-20(s0)
  20bf54:	853e                	mv	a0,a5
  20bf56:	898f80ef          	jal	ra,203fee <SelectiveGetFromNvmeDmaReqQ>
  20bf5a:	fe042783          	lw	a5,-32(s0)
  20bf5e:	fef42623          	sw	a5,-20(s0)
  20bf62:	fec42783          	lw	a5,-20(s0)
  20bf66:	0007871b          	sext.w	a4,a5
  20bf6a:	67c1                	lui	a5,0x10
  20bf6c:	17fd                	addi	a5,a5,-1
  20bf6e:	eef717e3          	bne	a4,a5,20be5c <CheckDoneNvmeDmaReq+0x22>
  20bf72:	0001                	nop
  20bf74:	0001                	nop
  20bf76:	60e2                	ld	ra,24(sp)
  20bf78:	6442                	ld	s0,16(sp)
  20bf7a:	6105                	addi	sp,sp,32
  20bf7c:	8082                	ret

000000000020bf7e <InitGcVictimMap>:
  20bf7e:	388107b7          	lui	a5,0x38810
  20bf82:	00210737          	lui	a4,0x210
  20bf86:	50078793          	addi	a5,a5,1280 # 38810500 <g_nvmeTask+0x38600098>
  20bf8a:	44f73023          	sd	a5,1088(a4) # 210440 <gcVictimMapPtr>
  20bf8e:	4801                	li	a6,0
  20bf90:	38810537          	lui	a0,0x38810
  20bf94:	55fd                	li	a1,-1
  20bf96:	08100613          	li	a2,129
  20bf9a:	04000893          	li	a7,64
  20bf9e:	00781693          	slli	a3,a6,0x7
  20bfa2:	4701                	li	a4,0
  20bfa4:	96c2                	add	a3,a3,a6
  20bfa6:	00e687b3          	add	a5,a3,a4
  20bfaa:	078a                	slli	a5,a5,0x2
  20bfac:	97aa                	add	a5,a5,a0
  20bfae:	50b7a023          	sw	a1,1280(a5)
  20bfb2:	2705                	addiw	a4,a4,1
  20bfb4:	fec719e3          	bne	a4,a2,20bfa6 <InitGcVictimMap+0x28>
  20bfb8:	2805                	addiw	a6,a6,1
  20bfba:	ff1812e3          	bne	a6,a7,20bf9e <InitGcVictimMap+0x20>
  20bfbe:	8082                	ret

000000000020bfc0 <PutToGcVictimList>:
  20bfc0:	1502                	slli	a0,a0,0x20
  20bfc2:	9101                	srli	a0,a0,0x20
  20bfc4:	00751793          	slli	a5,a0,0x7
  20bfc8:	00210737          	lui	a4,0x210
  20bfcc:	1602                	slli	a2,a2,0x20
  20bfce:	44073703          	ld	a4,1088(a4) # 210440 <gcVictimMapPtr>
  20bfd2:	9201                	srli	a2,a2,0x20
  20bfd4:	97aa                	add	a5,a5,a0
  20bfd6:	97b2                	add	a5,a5,a2
  20bfd8:	078a                	slli	a5,a5,0x2
  20bfda:	97ba                	add	a5,a5,a4
  20bfdc:	0027d603          	lhu	a2,2(a5)
  20bfe0:	6741                	lui	a4,0x10
  20bfe2:	03059893          	slli	a7,a1,0x30
  20bfe6:	002106b7          	lui	a3,0x210
  20bfea:	1582                	slli	a1,a1,0x20
  20bfec:	177d                	addi	a4,a4,-1
  20bfee:	f486b803          	ld	a6,-184(a3) # 20ff48 <virtualBlockMapPtr>
  20bff2:	0308d893          	srli	a7,a7,0x30
  20bff6:	0006031b          	sext.w	t1,a2
  20bffa:	9181                	srli	a1,a1,0x20
  20bffc:	02e60d63          	beq	a2,a4,20c036 <PutToGcVictimList+0x76>
  20c000:	00159713          	slli	a4,a1,0x1
  20c004:	00151693          	slli	a3,a0,0x1
  20c008:	95ba                	add	a1,a1,a4
  20c00a:	00a68733          	add	a4,a3,a0
  20c00e:	00131513          	slli	a0,t1,0x1
  20c012:	073e                	slli	a4,a4,0xf
  20c014:	058a                	slli	a1,a1,0x2
  20c016:	951a                	add	a0,a0,t1
  20c018:	95ba                	add	a1,a1,a4
  20c01a:	050a                	slli	a0,a0,0x2
  20c01c:	95c2                	add	a1,a1,a6
  20c01e:	953a                	add	a0,a0,a4
  20c020:	577d                	li	a4,-1
  20c022:	00c59423          	sh	a2,8(a1)
  20c026:	00e59523          	sh	a4,10(a1)
  20c02a:	9542                	add	a0,a0,a6
  20c02c:	01151523          	sh	a7,10(a0) # 3881000a <g_nvmeTask+0x385ffba2>
  20c030:	01179123          	sh	a7,2(a5)
  20c034:	8082                	ret
  20c036:	00159713          	slli	a4,a1,0x1
  20c03a:	00151693          	slli	a3,a0,0x1
  20c03e:	95ba                	add	a1,a1,a4
  20c040:	9536                	add	a0,a0,a3
  20c042:	058a                	slli	a1,a1,0x2
  20c044:	053e                	slli	a0,a0,0xf
  20c046:	952e                	add	a0,a0,a1
  20c048:	9542                	add	a0,a0,a6
  20c04a:	577d                	li	a4,-1
  20c04c:	c518                	sw	a4,8(a0)
  20c04e:	01179023          	sh	a7,0(a5)
  20c052:	01179123          	sh	a7,2(a5)
  20c056:	8082                	ret

000000000020c058 <GetFromGcVictimList>:
  20c058:	1502                	slli	a0,a0,0x20
  20c05a:	9101                	srli	a0,a0,0x20
  20c05c:	1141                	addi	sp,sp,-16
  20c05e:	002107b7          	lui	a5,0x210
  20c062:	00751613          	slli	a2,a0,0x7
  20c066:	66c1                	lui	a3,0x10
  20c068:	4407b583          	ld	a1,1088(a5) # 210440 <gcVictimMapPtr>
  20c06c:	e406                	sd	ra,8(sp)
  20c06e:	e022                	sd	s0,0(sp)
  20c070:	08000713          	li	a4,128
  20c074:	962a                	add	a2,a2,a0
  20c076:	16fd                	addi	a3,a3,-1
  20c078:	a011                	j	20c07c <GetFromGcVictimList+0x24>
  20c07a:	c72d                	beqz	a4,20c0e4 <GetFromGcVictimList+0x8c>
  20c07c:	00e607b3          	add	a5,a2,a4
  20c080:	078a                	slli	a5,a5,0x2
  20c082:	97ae                	add	a5,a5,a1
  20c084:	0007d403          	lhu	s0,0(a5)
  20c088:	377d                	addiw	a4,a4,-1
  20c08a:	fed408e3          	beq	s0,a3,20c07a <GetFromGcVictimList+0x22>
  20c08e:	00151613          	slli	a2,a0,0x1
  20c092:	00141713          	slli	a4,s0,0x1
  20c096:	002105b7          	lui	a1,0x210
  20c09a:	9532                	add	a0,a0,a2
  20c09c:	f485b583          	ld	a1,-184(a1) # 20ff48 <virtualBlockMapPtr>
  20c0a0:	9722                	add	a4,a4,s0
  20c0a2:	070a                	slli	a4,a4,0x2
  20c0a4:	053e                	slli	a0,a0,0xf
  20c0a6:	972a                	add	a4,a4,a0
  20c0a8:	972e                	add	a4,a4,a1
  20c0aa:	00a75603          	lhu	a2,10(a4) # 1000a <start-0x1efff6>
  20c0ae:	02d60463          	beq	a2,a3,20c0d6 <GetFromGcVictimList+0x7e>
  20c0b2:	00161693          	slli	a3,a2,0x1
  20c0b6:	96b2                	add	a3,a3,a2
  20c0b8:	068a                	slli	a3,a3,0x2
  20c0ba:	9536                	add	a0,a0,a3
  20c0bc:	952e                	add	a0,a0,a1
  20c0be:	56fd                	li	a3,-1
  20c0c0:	00d51423          	sh	a3,8(a0)
  20c0c4:	00a75703          	lhu	a4,10(a4)
  20c0c8:	60a2                	ld	ra,8(sp)
  20c0ca:	8522                	mv	a0,s0
  20c0cc:	6402                	ld	s0,0(sp)
  20c0ce:	00e79023          	sh	a4,0(a5)
  20c0d2:	0141                	addi	sp,sp,16
  20c0d4:	8082                	ret
  20c0d6:	60a2                	ld	ra,8(sp)
  20c0d8:	8522                	mv	a0,s0
  20c0da:	6402                	ld	s0,0(sp)
  20c0dc:	577d                	li	a4,-1
  20c0de:	c398                	sw	a4,0(a5)
  20c0e0:	0141                	addi	sp,sp,16
  20c0e2:	8082                	ret
  20c0e4:	00210537          	lui	a0,0x210
  20c0e8:	9c050513          	addi	a0,a0,-1600 # 20f9c0 <nvme_main+0xf0a>
  20c0ec:	cccf80ef          	jal	ra,2045b8 <cpl_print>
  20c0f0:	60a2                	ld	ra,8(sp)
  20c0f2:	8522                	mv	a0,s0
  20c0f4:	6402                	ld	s0,0(sp)
  20c0f6:	0141                	addi	sp,sp,16
  20c0f8:	8082                	ret

000000000020c0fa <GarbageCollection>:
  20c0fa:	7119                	addi	sp,sp,-128
  20c0fc:	f0ca                	sd	s2,96(sp)
  20c0fe:	fc86                	sd	ra,120(sp)
  20c100:	892a                	mv	s2,a0
  20c102:	f8a2                	sd	s0,112(sp)
  20c104:	f4a6                	sd	s1,104(sp)
  20c106:	ecce                	sd	s3,88(sp)
  20c108:	e8d2                	sd	s4,80(sp)
  20c10a:	e4d6                	sd	s5,72(sp)
  20c10c:	e0da                	sd	s6,64(sp)
  20c10e:	fc5e                	sd	s7,56(sp)
  20c110:	f862                	sd	s8,48(sp)
  20c112:	f466                	sd	s9,40(sp)
  20c114:	f06a                	sd	s10,32(sp)
  20c116:	ec6e                	sd	s11,24(sp)
  20c118:	f41ff0ef          	jal	ra,20c058 <GetFromGcVictimList>
  20c11c:	02051593          	slli	a1,a0,0x20
  20c120:	02091613          	slli	a2,s2,0x20
  20c124:	9181                	srli	a1,a1,0x20
  20c126:	9201                	srli	a2,a2,0x20
  20c128:	00159793          	slli	a5,a1,0x1
  20c12c:	00161713          	slli	a4,a2,0x1
  20c130:	002106b7          	lui	a3,0x210
  20c134:	f486b683          	ld	a3,-184(a3) # 20ff48 <virtualBlockMapPtr>
  20c138:	97ae                	add	a5,a5,a1
  20c13a:	9732                	add	a4,a4,a2
  20c13c:	073e                	slli	a4,a4,0xf
  20c13e:	078a                	slli	a5,a5,0x2
  20c140:	97ba                	add	a5,a5,a4
  20c142:	97b6                	add	a5,a5,a3
  20c144:	439c                	lw	a5,0(a5)
  20c146:	0005069b          	sext.w	a3,a0
  20c14a:	08000713          	li	a4,128
  20c14e:	0027d79b          	srliw	a5,a5,0x2
  20c152:	17c2                	slli	a5,a5,0x30
  20c154:	e436                	sd	a3,8(sp)
  20c156:	93c1                	srli	a5,a5,0x30
  20c158:	14e78e63          	beq	a5,a4,20c2b4 <GarbageCollection+0x1ba>
  20c15c:	6709                	lui	a4,0x2
  20c15e:	00d69d9b          	slliw	s11,a3,0xd
  20c162:	0127073b          	addw	a4,a4,s2
  20c166:	012d843b          	addw	s0,s11,s2
  20c16a:	00210d37          	lui	s10,0x210
  20c16e:	01b70dbb          	addw	s11,a4,s11
  20c172:	5afd                	li	s5,-1
  20c174:	00210b37          	lui	s6,0x210
  20c178:	002104b7          	lui	s1,0x210
  20c17c:	a029                	j	20c186 <GarbageCollection+0x8c>
  20c17e:	0404041b          	addiw	s0,s0,64
  20c182:	13b40963          	beq	s0,s11,20c2b4 <GarbageCollection+0x1ba>
  20c186:	f50d3783          	ld	a5,-176(s10) # 20ff50 <virtualSliceMapPtr>
  20c18a:	02041713          	slli	a4,s0,0x20
  20c18e:	8379                	srli	a4,a4,0x1e
  20c190:	97ba                	add	a5,a5,a4
  20c192:	0007ac03          	lw	s8,0(a5)
  20c196:	020c1793          	slli	a5,s8,0x20
  20c19a:	01e7db93          	srli	s7,a5,0x1e
  20c19e:	ff5c00e3          	beq	s8,s5,20c17e <GarbageCollection+0x84>
  20c1a2:	f38b3783          	ld	a5,-200(s6) # 20ff38 <logicalSliceMapPtr>
  20c1a6:	97de                	add	a5,a5,s7
  20c1a8:	439c                	lw	a5,0(a5)
  20c1aa:	fc879ae3          	bne	a5,s0,20c17e <GarbageCollection+0x84>
  20c1ae:	9b2f70ef          	jal	ra,203360 <GetFromFreeReqQ>
  20c1b2:	02051793          	slli	a5,a0,0x20
  20c1b6:	03400713          	li	a4,52
  20c1ba:	9381                	srli	a5,a5,0x20
  20c1bc:	02e789b3          	mul	s3,a5,a4
  20c1c0:	1804bc83          	ld	s9,384(s1) # 210180 <reqPoolPtr>
  20c1c4:	46a1                	li	a3,8
  20c1c6:	05100793          	li	a5,81
  20c1ca:	8a2a                	mv	s4,a0
  20c1cc:	854a                	mv	a0,s2
  20c1ce:	2a01                	sext.w	s4,s4
  20c1d0:	9cce                	add	s9,s9,s3
  20c1d2:	000ca583          	lw	a1,0(s9)
  20c1d6:	00fc8823          	sb	a5,16(s9)
  20c1da:	018ca623          	sw	s8,12(s9)
  20c1de:	99c1                	andi	a1,a1,-16
  20c1e0:	0015e593          	ori	a1,a1,1
  20c1e4:	00bca023          	sw	a1,0(s9)
  20c1e8:	00dc80a3          	sb	a3,1(s9)
  20c1ec:	bf1f80ef          	jal	ra,204ddc <AllocateTempDataBuf>
  20c1f0:	1804b803          	ld	a6,384(s1)
  20c1f4:	00acaa23          	sw	a0,20(s9)
  20c1f8:	85d2                	mv	a1,s4
  20c1fa:	984e                	add	a6,a6,s3
  20c1fc:	01482503          	lw	a0,20(a6)
  20c200:	bf5f80ef          	jal	ra,204df4 <UpdateTempDataBufEntryInfoBlockingReq>
  20c204:	1804b803          	ld	a6,384(s1)
  20c208:	4581                	li	a1,0
  20c20a:	8552                	mv	a0,s4
  20c20c:	013807b3          	add	a5,a6,s3
  20c210:	d3c0                	sw	s0,36(a5)
  20c212:	a34ff0ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20c216:	94af70ef          	jal	ra,203360 <GetFromFreeReqQ>
  20c21a:	02051793          	slli	a5,a0,0x20
  20c21e:	03400713          	li	a4,52
  20c222:	9381                	srli	a5,a5,0x20
  20c224:	02e78a33          	mul	s4,a5,a4
  20c228:	1804bc83          	ld	s9,384(s1)
  20c22c:	05100793          	li	a5,81
  20c230:	89aa                	mv	s3,a0
  20c232:	854a                	mv	a0,s2
  20c234:	2981                	sext.w	s3,s3
  20c236:	0404041b          	addiw	s0,s0,64
  20c23a:	9cd2                	add	s9,s9,s4
  20c23c:	000ca583          	lw	a1,0(s9)
  20c240:	00fc8823          	sb	a5,16(s9)
  20c244:	018ca623          	sw	s8,12(s9)
  20c248:	99c1                	andi	a1,a1,-16
  20c24a:	0015e593          	ori	a1,a1,1
  20c24e:	00bca023          	sw	a1,0(s9)
  20c252:	000c80a3          	sb	zero,1(s9)
  20c256:	b87f80ef          	jal	ra,204ddc <AllocateTempDataBuf>
  20c25a:	1804b803          	ld	a6,384(s1)
  20c25e:	00acaa23          	sw	a0,20(s9)
  20c262:	85ce                	mv	a1,s3
  20c264:	9852                	add	a6,a6,s4
  20c266:	01482503          	lw	a0,20(a6)
  20c26a:	b8bf80ef          	jal	ra,204df4 <UpdateTempDataBufEntryInfoBlockingReq>
  20c26e:	65a2                	ld	a1,8(sp)
  20c270:	854a                	mv	a0,s2
  20c272:	1804bc83          	ld	s9,384(s1)
  20c276:	fbbf50ef          	jal	ra,202230 <FindFreeVirtualSliceForGc>
  20c27a:	1804b583          	ld	a1,384(s1)
  20c27e:	9cd2                	add	s9,s9,s4
  20c280:	02aca223          	sw	a0,36(s9)
  20c284:	014587b3          	add	a5,a1,s4
  20c288:	0247a803          	lw	a6,36(a5)
  20c28c:	f38b3503          	ld	a0,-200(s6)
  20c290:	f50d3583          	ld	a1,-176(s10)
  20c294:	02081793          	slli	a5,a6,0x20
  20c298:	9381                	srli	a5,a5,0x20
  20c29a:	9baa                	add	s7,s7,a0
  20c29c:	078a                	slli	a5,a5,0x2
  20c29e:	97ae                	add	a5,a5,a1
  20c2a0:	010ba023          	sw	a6,0(s7)
  20c2a4:	0187a023          	sw	s8,0(a5)
  20c2a8:	4581                	li	a1,0
  20c2aa:	854e                	mv	a0,s3
  20c2ac:	99aff0ef          	jal	ra,20b446 <SelectLowLevelReqQ>
  20c2b0:	edb41be3          	bne	s0,s11,20c186 <GarbageCollection+0x8c>
  20c2b4:	7446                	ld	s0,112(sp)
  20c2b6:	65a2                	ld	a1,8(sp)
  20c2b8:	70e6                	ld	ra,120(sp)
  20c2ba:	74a6                	ld	s1,104(sp)
  20c2bc:	69e6                	ld	s3,88(sp)
  20c2be:	6a46                	ld	s4,80(sp)
  20c2c0:	6aa6                	ld	s5,72(sp)
  20c2c2:	6b06                	ld	s6,64(sp)
  20c2c4:	7be2                	ld	s7,56(sp)
  20c2c6:	7c42                	ld	s8,48(sp)
  20c2c8:	7ca2                	ld	s9,40(sp)
  20c2ca:	7d02                	ld	s10,32(sp)
  20c2cc:	6de2                	ld	s11,24(sp)
  20c2ce:	854a                	mv	a0,s2
  20c2d0:	7906                	ld	s2,96(sp)
  20c2d2:	6109                	addi	sp,sp,128
  20c2d4:	b8ef606f          	j	202662 <EraseBlock>

000000000020c2d8 <SelectiveGetFromGcVictimList>:
  20c2d8:	1582                	slli	a1,a1,0x20
  20c2da:	1502                	slli	a0,a0,0x20
  20c2dc:	9181                	srli	a1,a1,0x20
  20c2de:	9101                	srli	a0,a0,0x20
  20c2e0:	00159793          	slli	a5,a1,0x1
  20c2e4:	002106b7          	lui	a3,0x210
  20c2e8:	00151713          	slli	a4,a0,0x1
  20c2ec:	f486b803          	ld	a6,-184(a3) # 20ff48 <virtualBlockMapPtr>
  20c2f0:	97ae                	add	a5,a5,a1
  20c2f2:	972a                	add	a4,a4,a0
  20c2f4:	078a                	slli	a5,a5,0x2
  20c2f6:	073e                	slli	a4,a4,0xf
  20c2f8:	97ba                	add	a5,a5,a4
  20c2fa:	97c2                	add	a5,a5,a6
  20c2fc:	4390                	lw	a2,0(a5)
  20c2fe:	00a7d583          	lhu	a1,10(a5)
  20c302:	0087d303          	lhu	t1,8(a5)
  20c306:	0026561b          	srliw	a2,a2,0x2
  20c30a:	67c1                	lui	a5,0x10
  20c30c:	0106161b          	slliw	a2,a2,0x10
  20c310:	17fd                	addi	a5,a5,-1
  20c312:	0005889b          	sext.w	a7,a1
  20c316:	0003069b          	sext.w	a3,t1
  20c31a:	0106561b          	srliw	a2,a2,0x10
  20c31e:	04f58e63          	beq	a1,a5,20c37a <SelectiveGetFromGcVictimList+0xa2>
  20c322:	02f68663          	beq	a3,a5,20c34e <SelectiveGetFromGcVictimList+0x76>
  20c326:	02069613          	slli	a2,a3,0x20
  20c32a:	9201                	srli	a2,a2,0x20
  20c32c:	00161693          	slli	a3,a2,0x1
  20c330:	96b2                	add	a3,a3,a2
  20c332:	00189793          	slli	a5,a7,0x1
  20c336:	068a                	slli	a3,a3,0x2
  20c338:	97c6                	add	a5,a5,a7
  20c33a:	96ba                	add	a3,a3,a4
  20c33c:	078a                	slli	a5,a5,0x2
  20c33e:	96c2                	add	a3,a3,a6
  20c340:	973e                	add	a4,a4,a5
  20c342:	00b69523          	sh	a1,10(a3)
  20c346:	9742                	add	a4,a4,a6
  20c348:	00671423          	sh	t1,8(a4) # 2008 <start-0x1fdff8>
  20c34c:	8082                	ret
  20c34e:	00189793          	slli	a5,a7,0x1
  20c352:	97c6                	add	a5,a5,a7
  20c354:	00751693          	slli	a3,a0,0x7
  20c358:	002108b7          	lui	a7,0x210
  20c35c:	4408b883          	ld	a7,1088(a7) # 210440 <gcVictimMapPtr>
  20c360:	078a                	slli	a5,a5,0x2
  20c362:	9536                	add	a0,a0,a3
  20c364:	973e                	add	a4,a4,a5
  20c366:	962a                	add	a2,a2,a0
  20c368:	9742                	add	a4,a4,a6
  20c36a:	060a                	slli	a2,a2,0x2
  20c36c:	57fd                	li	a5,-1
  20c36e:	00f71423          	sh	a5,8(a4)
  20c372:	9646                	add	a2,a2,a7
  20c374:	00b61023          	sh	a1,0(a2)
  20c378:	8082                	ret
  20c37a:	002107b7          	lui	a5,0x210
  20c37e:	4407b583          	ld	a1,1088(a5) # 210440 <gcVictimMapPtr>
  20c382:	03168663          	beq	a3,a7,20c3ae <SelectiveGetFromGcVictimList+0xd6>
  20c386:	1682                	slli	a3,a3,0x20
  20c388:	9281                	srli	a3,a3,0x20
  20c38a:	00169793          	slli	a5,a3,0x1
  20c38e:	96be                	add	a3,a3,a5
  20c390:	00751793          	slli	a5,a0,0x7
  20c394:	953e                	add	a0,a0,a5
  20c396:	068a                	slli	a3,a3,0x2
  20c398:	9736                	add	a4,a4,a3
  20c39a:	962a                	add	a2,a2,a0
  20c39c:	9742                	add	a4,a4,a6
  20c39e:	060a                	slli	a2,a2,0x2
  20c3a0:	57fd                	li	a5,-1
  20c3a2:	00f71523          	sh	a5,10(a4)
  20c3a6:	962e                	add	a2,a2,a1
  20c3a8:	00661123          	sh	t1,2(a2)
  20c3ac:	8082                	ret
  20c3ae:	00751793          	slli	a5,a0,0x7
  20c3b2:	953e                	add	a0,a0,a5
  20c3b4:	962a                	add	a2,a2,a0
  20c3b6:	060a                	slli	a2,a2,0x2
  20c3b8:	962e                	add	a2,a2,a1
  20c3ba:	57fd                	li	a5,-1
  20c3bc:	c21c                	sw	a5,0(a2)
  20c3be:	8082                	ret

000000000020c3c0 <handle_nvme_io_read>:
  20c3c0:	7179                	addi	sp,sp,-48
  20c3c2:	f406                	sd	ra,40(sp)
  20c3c4:	f022                	sd	s0,32(sp)
  20c3c6:	1800                	addi	s0,sp,48
  20c3c8:	87aa                	mv	a5,a0
  20c3ca:	fcb43823          	sd	a1,-48(s0)
  20c3ce:	fcf42e23          	sw	a5,-36(s0)
  20c3d2:	fd043783          	ld	a5,-48(s0)
  20c3d6:	0307c703          	lbu	a4,48(a5)
  20c3da:	0317c683          	lbu	a3,49(a5)
  20c3de:	06a2                	slli	a3,a3,0x8
  20c3e0:	8f55                	or	a4,a4,a3
  20c3e2:	0327c683          	lbu	a3,50(a5)
  20c3e6:	06c2                	slli	a3,a3,0x10
  20c3e8:	8f55                	or	a4,a4,a3
  20c3ea:	0337c783          	lbu	a5,51(a5)
  20c3ee:	07e2                	slli	a5,a5,0x18
  20c3f0:	8fd9                	or	a5,a5,a4
  20c3f2:	2781                	sext.w	a5,a5
  20c3f4:	fef42423          	sw	a5,-24(s0)
  20c3f8:	fd043783          	ld	a5,-48(s0)
  20c3fc:	0287c703          	lbu	a4,40(a5)
  20c400:	0297c683          	lbu	a3,41(a5)
  20c404:	06a2                	slli	a3,a3,0x8
  20c406:	8f55                	or	a4,a4,a3
  20c408:	02a7c683          	lbu	a3,42(a5)
  20c40c:	06c2                	slli	a3,a3,0x10
  20c40e:	8f55                	or	a4,a4,a3
  20c410:	02b7c783          	lbu	a5,43(a5)
  20c414:	07e2                	slli	a5,a5,0x18
  20c416:	8fd9                	or	a5,a5,a4
  20c418:	2781                	sext.w	a5,a5
  20c41a:	fef42023          	sw	a5,-32(s0)
  20c41e:	fd043783          	ld	a5,-48(s0)
  20c422:	02c7c703          	lbu	a4,44(a5)
  20c426:	02d7c683          	lbu	a3,45(a5)
  20c42a:	06a2                	slli	a3,a3,0x8
  20c42c:	8f55                	or	a4,a4,a3
  20c42e:	02e7c683          	lbu	a3,46(a5)
  20c432:	06c2                	slli	a3,a3,0x10
  20c434:	8f55                	or	a4,a4,a3
  20c436:	02f7c783          	lbu	a5,47(a5)
  20c43a:	07e2                	slli	a5,a5,0x18
  20c43c:	8fd9                	or	a5,a5,a4
  20c43e:	2781                	sext.w	a5,a5
  20c440:	fef42223          	sw	a5,-28(s0)
  20c444:	fe845783          	lhu	a5,-24(s0)
  20c448:	fef42623          	sw	a5,-20(s0)
  20c44c:	fe042703          	lw	a4,-32(s0)
  20c450:	002107b7          	lui	a5,0x210
  20c454:	3f07a783          	lw	a5,1008(a5) # 2103f0 <storageCapacity_L>
  20c458:	00f77563          	bgeu	a4,a5,20c462 <handle_nvme_io_read+0xa2>
  20c45c:	fe442783          	lw	a5,-28(s0)
  20c460:	cb81                	beqz	a5,20c470 <handle_nvme_io_read+0xb0>
  20c462:	0020f7b7          	lui	a5,0x20f
  20c466:	5f878513          	addi	a0,a5,1528 # 20f5f8 <nvme_main+0xb42>
  20c46a:	94ef80ef          	jal	ra,2045b8 <cpl_print>
  20c46e:	a001                	j	20c46e <handle_nvme_io_read+0xae>
  20c470:	fd043783          	ld	a5,-48(s0)
  20c474:	0187c703          	lbu	a4,24(a5)
  20c478:	0197c683          	lbu	a3,25(a5)
  20c47c:	06a2                	slli	a3,a3,0x8
  20c47e:	8f55                	or	a4,a4,a3
  20c480:	01a7c683          	lbu	a3,26(a5)
  20c484:	06c2                	slli	a3,a3,0x10
  20c486:	8f55                	or	a4,a4,a3
  20c488:	01b7c783          	lbu	a5,27(a5)
  20c48c:	07e2                	slli	a5,a5,0x18
  20c48e:	8fd9                	or	a5,a5,a4
  20c490:	2781                	sext.w	a5,a5
  20c492:	8b8d                	andi	a5,a5,3
  20c494:	2781                	sext.w	a5,a5
  20c496:	e78d                	bnez	a5,20c4c0 <handle_nvme_io_read+0x100>
  20c498:	fd043783          	ld	a5,-48(s0)
  20c49c:	0207c703          	lbu	a4,32(a5)
  20c4a0:	0217c683          	lbu	a3,33(a5)
  20c4a4:	06a2                	slli	a3,a3,0x8
  20c4a6:	8f55                	or	a4,a4,a3
  20c4a8:	0227c683          	lbu	a3,34(a5)
  20c4ac:	06c2                	slli	a3,a3,0x10
  20c4ae:	8f55                	or	a4,a4,a3
  20c4b0:	0237c783          	lbu	a5,35(a5)
  20c4b4:	07e2                	slli	a5,a5,0x18
  20c4b6:	8fd9                	or	a5,a5,a4
  20c4b8:	2781                	sext.w	a5,a5
  20c4ba:	8b8d                	andi	a5,a5,3
  20c4bc:	2781                	sext.w	a5,a5
  20c4be:	cb81                	beqz	a5,20c4ce <handle_nvme_io_read+0x10e>
  20c4c0:	0020f7b7          	lui	a5,0x20f
  20c4c4:	61878513          	addi	a0,a5,1560 # 20f618 <nvme_main+0xb62>
  20c4c8:	8f0f80ef          	jal	ra,2045b8 <cpl_print>
  20c4cc:	a001                	j	20c4cc <handle_nvme_io_read+0x10c>
  20c4ce:	fd043783          	ld	a5,-48(s0)
  20c4d2:	01c7c703          	lbu	a4,28(a5)
  20c4d6:	01d7c683          	lbu	a3,29(a5)
  20c4da:	06a2                	slli	a3,a3,0x8
  20c4dc:	8f55                	or	a4,a4,a3
  20c4de:	01e7c683          	lbu	a3,30(a5)
  20c4e2:	06c2                	slli	a3,a3,0x10
  20c4e4:	8f55                	or	a4,a4,a3
  20c4e6:	01f7c783          	lbu	a5,31(a5)
  20c4ea:	07e2                	slli	a5,a5,0x18
  20c4ec:	8fd9                	or	a5,a5,a4
  20c4ee:	2781                	sext.w	a5,a5
  20c4f0:	873e                	mv	a4,a5
  20c4f2:	67c1                	lui	a5,0x10
  20c4f4:	02f77763          	bgeu	a4,a5,20c522 <handle_nvme_io_read+0x162>
  20c4f8:	fd043783          	ld	a5,-48(s0)
  20c4fc:	0247c703          	lbu	a4,36(a5) # 10024 <start-0x1effdc>
  20c500:	0257c683          	lbu	a3,37(a5)
  20c504:	06a2                	slli	a3,a3,0x8
  20c506:	8f55                	or	a4,a4,a3
  20c508:	0267c683          	lbu	a3,38(a5)
  20c50c:	06c2                	slli	a3,a3,0x10
  20c50e:	8f55                	or	a4,a4,a3
  20c510:	0277c783          	lbu	a5,39(a5)
  20c514:	07e2                	slli	a5,a5,0x18
  20c516:	8fd9                	or	a5,a5,a4
  20c518:	2781                	sext.w	a5,a5
  20c51a:	873e                	mv	a4,a5
  20c51c:	67c1                	lui	a5,0x10
  20c51e:	00f76963          	bltu	a4,a5,20c530 <handle_nvme_io_read+0x170>
  20c522:	0020f7b7          	lui	a5,0x20f
  20c526:	63878513          	addi	a0,a5,1592 # 20f638 <nvme_main+0xb82>
  20c52a:	88ef80ef          	jal	ra,2045b8 <cpl_print>
  20c52e:	a001                	j	20c52e <handle_nvme_io_read+0x16e>
  20c530:	fe042703          	lw	a4,-32(s0)
  20c534:	fec42603          	lw	a2,-20(s0)
  20c538:	fdc42783          	lw	a5,-36(s0)
  20c53c:	4689                	li	a3,2
  20c53e:	85ba                	mv	a1,a4
  20c540:	853e                	mv	a0,a5
  20c542:	c19fd0ef          	jal	ra,20a15a <ReqTransNvmeToSlice>
  20c546:	0001                	nop
  20c548:	70a2                	ld	ra,40(sp)
  20c54a:	7402                	ld	s0,32(sp)
  20c54c:	6145                	addi	sp,sp,48
  20c54e:	8082                	ret

000000000020c550 <handle_nvme_io_write>:
  20c550:	7179                	addi	sp,sp,-48
  20c552:	f406                	sd	ra,40(sp)
  20c554:	f022                	sd	s0,32(sp)
  20c556:	1800                	addi	s0,sp,48
  20c558:	87aa                	mv	a5,a0
  20c55a:	fcb43823          	sd	a1,-48(s0)
  20c55e:	fcf42e23          	sw	a5,-36(s0)
  20c562:	fd043783          	ld	a5,-48(s0)
  20c566:	0307c703          	lbu	a4,48(a5)
  20c56a:	0317c683          	lbu	a3,49(a5)
  20c56e:	06a2                	slli	a3,a3,0x8
  20c570:	8f55                	or	a4,a4,a3
  20c572:	0327c683          	lbu	a3,50(a5)
  20c576:	06c2                	slli	a3,a3,0x10
  20c578:	8f55                	or	a4,a4,a3
  20c57a:	0337c783          	lbu	a5,51(a5)
  20c57e:	07e2                	slli	a5,a5,0x18
  20c580:	8fd9                	or	a5,a5,a4
  20c582:	2781                	sext.w	a5,a5
  20c584:	fef42423          	sw	a5,-24(s0)
  20c588:	fd043783          	ld	a5,-48(s0)
  20c58c:	0287c703          	lbu	a4,40(a5)
  20c590:	0297c683          	lbu	a3,41(a5)
  20c594:	06a2                	slli	a3,a3,0x8
  20c596:	8f55                	or	a4,a4,a3
  20c598:	02a7c683          	lbu	a3,42(a5)
  20c59c:	06c2                	slli	a3,a3,0x10
  20c59e:	8f55                	or	a4,a4,a3
  20c5a0:	02b7c783          	lbu	a5,43(a5)
  20c5a4:	07e2                	slli	a5,a5,0x18
  20c5a6:	8fd9                	or	a5,a5,a4
  20c5a8:	2781                	sext.w	a5,a5
  20c5aa:	fef42023          	sw	a5,-32(s0)
  20c5ae:	fd043783          	ld	a5,-48(s0)
  20c5b2:	02c7c703          	lbu	a4,44(a5)
  20c5b6:	02d7c683          	lbu	a3,45(a5)
  20c5ba:	06a2                	slli	a3,a3,0x8
  20c5bc:	8f55                	or	a4,a4,a3
  20c5be:	02e7c683          	lbu	a3,46(a5)
  20c5c2:	06c2                	slli	a3,a3,0x10
  20c5c4:	8f55                	or	a4,a4,a3
  20c5c6:	02f7c783          	lbu	a5,47(a5)
  20c5ca:	07e2                	slli	a5,a5,0x18
  20c5cc:	8fd9                	or	a5,a5,a4
  20c5ce:	2781                	sext.w	a5,a5
  20c5d0:	fef42223          	sw	a5,-28(s0)
  20c5d4:	fe845783          	lhu	a5,-24(s0)
  20c5d8:	fef42623          	sw	a5,-20(s0)
  20c5dc:	fe042703          	lw	a4,-32(s0)
  20c5e0:	002107b7          	lui	a5,0x210
  20c5e4:	3f07a783          	lw	a5,1008(a5) # 2103f0 <storageCapacity_L>
  20c5e8:	00f77563          	bgeu	a4,a5,20c5f2 <handle_nvme_io_write+0xa2>
  20c5ec:	fe442783          	lw	a5,-28(s0)
  20c5f0:	cb81                	beqz	a5,20c600 <handle_nvme_io_write+0xb0>
  20c5f2:	0020f7b7          	lui	a5,0x20f
  20c5f6:	65878513          	addi	a0,a5,1624 # 20f658 <nvme_main+0xba2>
  20c5fa:	fbff70ef          	jal	ra,2045b8 <cpl_print>
  20c5fe:	a001                	j	20c5fe <handle_nvme_io_write+0xae>
  20c600:	fd043783          	ld	a5,-48(s0)
  20c604:	0187c703          	lbu	a4,24(a5)
  20c608:	0197c683          	lbu	a3,25(a5)
  20c60c:	06a2                	slli	a3,a3,0x8
  20c60e:	8f55                	or	a4,a4,a3
  20c610:	01a7c683          	lbu	a3,26(a5)
  20c614:	06c2                	slli	a3,a3,0x10
  20c616:	8f55                	or	a4,a4,a3
  20c618:	01b7c783          	lbu	a5,27(a5)
  20c61c:	07e2                	slli	a5,a5,0x18
  20c61e:	8fd9                	or	a5,a5,a4
  20c620:	2781                	sext.w	a5,a5
  20c622:	8bbd                	andi	a5,a5,15
  20c624:	2781                	sext.w	a5,a5
  20c626:	e78d                	bnez	a5,20c650 <handle_nvme_io_write+0x100>
  20c628:	fd043783          	ld	a5,-48(s0)
  20c62c:	0207c703          	lbu	a4,32(a5)
  20c630:	0217c683          	lbu	a3,33(a5)
  20c634:	06a2                	slli	a3,a3,0x8
  20c636:	8f55                	or	a4,a4,a3
  20c638:	0227c683          	lbu	a3,34(a5)
  20c63c:	06c2                	slli	a3,a3,0x10
  20c63e:	8f55                	or	a4,a4,a3
  20c640:	0237c783          	lbu	a5,35(a5)
  20c644:	07e2                	slli	a5,a5,0x18
  20c646:	8fd9                	or	a5,a5,a4
  20c648:	2781                	sext.w	a5,a5
  20c64a:	8bbd                	andi	a5,a5,15
  20c64c:	2781                	sext.w	a5,a5
  20c64e:	cb81                	beqz	a5,20c65e <handle_nvme_io_write+0x10e>
  20c650:	0020f7b7          	lui	a5,0x20f
  20c654:	67878513          	addi	a0,a5,1656 # 20f678 <nvme_main+0xbc2>
  20c658:	f61f70ef          	jal	ra,2045b8 <cpl_print>
  20c65c:	a001                	j	20c65c <handle_nvme_io_write+0x10c>
  20c65e:	fd043783          	ld	a5,-48(s0)
  20c662:	01c7c703          	lbu	a4,28(a5)
  20c666:	01d7c683          	lbu	a3,29(a5)
  20c66a:	06a2                	slli	a3,a3,0x8
  20c66c:	8f55                	or	a4,a4,a3
  20c66e:	01e7c683          	lbu	a3,30(a5)
  20c672:	06c2                	slli	a3,a3,0x10
  20c674:	8f55                	or	a4,a4,a3
  20c676:	01f7c783          	lbu	a5,31(a5)
  20c67a:	07e2                	slli	a5,a5,0x18
  20c67c:	8fd9                	or	a5,a5,a4
  20c67e:	2781                	sext.w	a5,a5
  20c680:	873e                	mv	a4,a5
  20c682:	67c1                	lui	a5,0x10
  20c684:	02f77763          	bgeu	a4,a5,20c6b2 <handle_nvme_io_write+0x162>
  20c688:	fd043783          	ld	a5,-48(s0)
  20c68c:	0247c703          	lbu	a4,36(a5) # 10024 <start-0x1effdc>
  20c690:	0257c683          	lbu	a3,37(a5)
  20c694:	06a2                	slli	a3,a3,0x8
  20c696:	8f55                	or	a4,a4,a3
  20c698:	0267c683          	lbu	a3,38(a5)
  20c69c:	06c2                	slli	a3,a3,0x10
  20c69e:	8f55                	or	a4,a4,a3
  20c6a0:	0277c783          	lbu	a5,39(a5)
  20c6a4:	07e2                	slli	a5,a5,0x18
  20c6a6:	8fd9                	or	a5,a5,a4
  20c6a8:	2781                	sext.w	a5,a5
  20c6aa:	873e                	mv	a4,a5
  20c6ac:	67c1                	lui	a5,0x10
  20c6ae:	00f76963          	bltu	a4,a5,20c6c0 <handle_nvme_io_write+0x170>
  20c6b2:	0020f7b7          	lui	a5,0x20f
  20c6b6:	69878513          	addi	a0,a5,1688 # 20f698 <nvme_main+0xbe2>
  20c6ba:	efff70ef          	jal	ra,2045b8 <cpl_print>
  20c6be:	a001                	j	20c6be <handle_nvme_io_write+0x16e>
  20c6c0:	0020f7b7          	lui	a5,0x20f
  20c6c4:	6b878513          	addi	a0,a5,1720 # 20f6b8 <nvme_main+0xc02>
  20c6c8:	ef1f70ef          	jal	ra,2045b8 <cpl_print>
  20c6cc:	fe042703          	lw	a4,-32(s0)
  20c6d0:	fec42603          	lw	a2,-20(s0)
  20c6d4:	fdc42783          	lw	a5,-36(s0)
  20c6d8:	4685                	li	a3,1
  20c6da:	85ba                	mv	a1,a4
  20c6dc:	853e                	mv	a0,a5
  20c6de:	a7dfd0ef          	jal	ra,20a15a <ReqTransNvmeToSlice>
  20c6e2:	0001                	nop
  20c6e4:	70a2                	ld	ra,40(sp)
  20c6e6:	7402                	ld	s0,32(sp)
  20c6e8:	6145                	addi	sp,sp,48
  20c6ea:	8082                	ret

000000000020c6ec <handle_nvme_error_insection>:
  20c6ec:	7179                	addi	sp,sp,-48
  20c6ee:	f406                	sd	ra,40(sp)
  20c6f0:	f022                	sd	s0,32(sp)
  20c6f2:	1800                	addi	s0,sp,48
  20c6f4:	87aa                	mv	a5,a0
  20c6f6:	fcb43823          	sd	a1,-48(s0)
  20c6fa:	fcf42e23          	sw	a5,-36(s0)
  20c6fe:	fd043783          	ld	a5,-48(s0)
  20c702:	0287c703          	lbu	a4,40(a5)
  20c706:	0297c683          	lbu	a3,41(a5)
  20c70a:	06a2                	slli	a3,a3,0x8
  20c70c:	8f55                	or	a4,a4,a3
  20c70e:	02a7c683          	lbu	a3,42(a5)
  20c712:	06c2                	slli	a3,a3,0x10
  20c714:	8f55                	or	a4,a4,a3
  20c716:	02b7c783          	lbu	a5,43(a5)
  20c71a:	07e2                	slli	a5,a5,0x18
  20c71c:	8fd9                	or	a5,a5,a4
  20c71e:	fef42623          	sw	a5,-20(s0)
  20c722:	fd043783          	ld	a5,-48(s0)
  20c726:	02c7c703          	lbu	a4,44(a5)
  20c72a:	02d7c683          	lbu	a3,45(a5)
  20c72e:	06a2                	slli	a3,a3,0x8
  20c730:	8f55                	or	a4,a4,a3
  20c732:	02e7c683          	lbu	a3,46(a5)
  20c736:	06c2                	slli	a3,a3,0x10
  20c738:	8f55                	or	a4,a4,a3
  20c73a:	02f7c783          	lbu	a5,47(a5)
  20c73e:	07e2                	slli	a5,a5,0x18
  20c740:	8fd9                	or	a5,a5,a4
  20c742:	fef42423          	sw	a5,-24(s0)
  20c746:	fd043783          	ld	a5,-48(s0)
  20c74a:	0307c703          	lbu	a4,48(a5)
  20c74e:	0317c683          	lbu	a3,49(a5)
  20c752:	06a2                	slli	a3,a3,0x8
  20c754:	8f55                	or	a4,a4,a3
  20c756:	0327c683          	lbu	a3,50(a5)
  20c75a:	06c2                	slli	a3,a3,0x10
  20c75c:	8f55                	or	a4,a4,a3
  20c75e:	0337c783          	lbu	a5,51(a5)
  20c762:	07e2                	slli	a5,a5,0x18
  20c764:	8fd9                	or	a5,a5,a4
  20c766:	fef42223          	sw	a5,-28(s0)
  20c76a:	fec42783          	lw	a5,-20(s0)
  20c76e:	85be                	mv	a1,a5
  20c770:	43c807b7          	lui	a5,0x43c80
  20c774:	00878513          	addi	a0,a5,8 # 43c80008 <g_nvmeTask+0x43a6fba0>
  20c778:	f27f70ef          	jal	ra,20469e <cpl_Out32>
  20c77c:	fe842783          	lw	a5,-24(s0)
  20c780:	85be                	mv	a1,a5
  20c782:	43c807b7          	lui	a5,0x43c80
  20c786:	00c78513          	addi	a0,a5,12 # 43c8000c <g_nvmeTask+0x43a6fba4>
  20c78a:	f15f70ef          	jal	ra,20469e <cpl_Out32>
  20c78e:	fe442783          	lw	a5,-28(s0)
  20c792:	85be                	mv	a1,a5
  20c794:	43c807b7          	lui	a5,0x43c80
  20c798:	01078513          	addi	a0,a5,16 # 43c80010 <g_nvmeTask+0x43a6fba8>
  20c79c:	f03f70ef          	jal	ra,20469e <cpl_Out32>
  20c7a0:	4585                	li	a1,1
  20c7a2:	43c807b7          	lui	a5,0x43c80
  20c7a6:	00478513          	addi	a0,a5,4 # 43c80004 <g_nvmeTask+0x43a6fb9c>
  20c7aa:	ef5f70ef          	jal	ra,20469e <cpl_Out32>
  20c7ae:	4581                	li	a1,0
  20c7b0:	43c80537          	lui	a0,0x43c80
  20c7b4:	eebf70ef          	jal	ra,20469e <cpl_Out32>
  20c7b8:	0001                	nop
  20c7ba:	70a2                	ld	ra,40(sp)
  20c7bc:	7402                	ld	s0,32(sp)
  20c7be:	6145                	addi	sp,sp,48
  20c7c0:	8082                	ret

000000000020c7c2 <handle_nvme_io_cmd>:
  20c7c2:	7139                	addi	sp,sp,-64
  20c7c4:	fc06                	sd	ra,56(sp)
  20c7c6:	f822                	sd	s0,48(sp)
  20c7c8:	0080                	addi	s0,sp,64
  20c7ca:	fca43423          	sd	a0,-56(s0)
  20c7ce:	fc843783          	ld	a5,-56(s0)
  20c7d2:	07a1                	addi	a5,a5,8
  20c7d4:	fef43423          	sd	a5,-24(s0)
  20c7d8:	fe843783          	ld	a5,-24(s0)
  20c7dc:	0007c783          	lbu	a5,0(a5)
  20c7e0:	fef42223          	sw	a5,-28(s0)
  20c7e4:	0020f7b7          	lui	a5,0x20f
  20c7e8:	6c078513          	addi	a0,a5,1728 # 20f6c0 <nvme_main+0xc0a>
  20c7ec:	dcdf70ef          	jal	ra,2045b8 <cpl_print>
  20c7f0:	fe442783          	lw	a5,-28(s0)
  20c7f4:	0007871b          	sext.w	a4,a5
  20c7f8:	04400793          	li	a5,68
  20c7fc:	0ef70e63          	beq	a4,a5,20c8f8 <handle_nvme_io_cmd+0x136>
  20c800:	fe442783          	lw	a5,-28(s0)
  20c804:	0007871b          	sext.w	a4,a5
  20c808:	04400793          	li	a5,68
  20c80c:	12e7ed63          	bltu	a5,a4,20c946 <handle_nvme_io_cmd+0x184>
  20c810:	fe442783          	lw	a5,-28(s0)
  20c814:	0007871b          	sext.w	a4,a5
  20c818:	4789                	li	a5,2
  20c81a:	0af70863          	beq	a4,a5,20c8ca <handle_nvme_io_cmd+0x108>
  20c81e:	fe442783          	lw	a5,-28(s0)
  20c822:	0007871b          	sext.w	a4,a5
  20c826:	4789                	li	a5,2
  20c828:	10e7ef63          	bltu	a5,a4,20c946 <handle_nvme_io_cmd+0x184>
  20c82c:	fe442783          	lw	a5,-28(s0)
  20c830:	2781                	sext.w	a5,a5
  20c832:	cb89                	beqz	a5,20c844 <handle_nvme_io_cmd+0x82>
  20c834:	fe442783          	lw	a5,-28(s0)
  20c838:	0007871b          	sext.w	a4,a5
  20c83c:	4785                	li	a5,1
  20c83e:	04f70f63          	beq	a4,a5,20c89c <handle_nvme_io_cmd+0xda>
  20c842:	a211                	j	20c946 <handle_nvme_io_cmd+0x184>
  20c844:	0020f7b7          	lui	a5,0x20f
  20c848:	6c878513          	addi	a0,a5,1736 # 20f6c8 <nvme_main+0xc12>
  20c84c:	d6df70ef          	jal	ra,2045b8 <cpl_print>
  20c850:	fc042c23          	sw	zero,-40(s0)
  20c854:	fda45783          	lhu	a5,-38(s0)
  20c858:	8b81                	andi	a5,a5,0
  20c85a:	fcf41d23          	sh	a5,-38(s0)
  20c85e:	fdc45783          	lhu	a5,-36(s0)
  20c862:	8b81                	andi	a5,a5,0
  20c864:	fcf41e23          	sh	a5,-36(s0)
  20c868:	fc843783          	ld	a5,-56(s0)
  20c86c:	0027c703          	lbu	a4,2(a5)
  20c870:	0037c783          	lbu	a5,3(a5)
  20c874:	07a2                	slli	a5,a5,0x8
  20c876:	8fd9                	or	a5,a5,a4
  20c878:	17c2                	slli	a5,a5,0x30
  20c87a:	93c1                	srli	a5,a5,0x30
  20c87c:	0007871b          	sext.w	a4,a5
  20c880:	fd843783          	ld	a5,-40(s0)
  20c884:	83c1                	srli	a5,a5,0x10
  20c886:	9bfd                	andi	a5,a5,-1
  20c888:	2781                	sext.w	a5,a5
  20c88a:	fd845683          	lhu	a3,-40(s0)
  20c88e:	2681                	sext.w	a3,a3
  20c890:	8636                	mv	a2,a3
  20c892:	85be                	mv	a1,a5
  20c894:	853a                	mv	a0,a4
  20c896:	772000ef          	jal	ra,20d008 <set_auto_nvme_cpl>
  20c89a:	a0d9                	j	20c960 <handle_nvme_io_cmd+0x19e>
  20c89c:	0020f7b7          	lui	a5,0x20f
  20c8a0:	6e078513          	addi	a0,a5,1760 # 20f6e0 <nvme_main+0xc2a>
  20c8a4:	d15f70ef          	jal	ra,2045b8 <cpl_print>
  20c8a8:	fc843783          	ld	a5,-56(s0)
  20c8ac:	0027c703          	lbu	a4,2(a5)
  20c8b0:	0037c783          	lbu	a5,3(a5)
  20c8b4:	07a2                	slli	a5,a5,0x8
  20c8b6:	8fd9                	or	a5,a5,a4
  20c8b8:	17c2                	slli	a5,a5,0x30
  20c8ba:	93c1                	srli	a5,a5,0x30
  20c8bc:	2781                	sext.w	a5,a5
  20c8be:	fe843583          	ld	a1,-24(s0)
  20c8c2:	853e                	mv	a0,a5
  20c8c4:	c8dff0ef          	jal	ra,20c550 <handle_nvme_io_write>
  20c8c8:	a861                	j	20c960 <handle_nvme_io_cmd+0x19e>
  20c8ca:	0020f7b7          	lui	a5,0x20f
  20c8ce:	6f878513          	addi	a0,a5,1784 # 20f6f8 <nvme_main+0xc42>
  20c8d2:	ce7f70ef          	jal	ra,2045b8 <cpl_print>
  20c8d6:	fc843783          	ld	a5,-56(s0)
  20c8da:	0027c703          	lbu	a4,2(a5)
  20c8de:	0037c783          	lbu	a5,3(a5)
  20c8e2:	07a2                	slli	a5,a5,0x8
  20c8e4:	8fd9                	or	a5,a5,a4
  20c8e6:	17c2                	slli	a5,a5,0x30
  20c8e8:	93c1                	srli	a5,a5,0x30
  20c8ea:	2781                	sext.w	a5,a5
  20c8ec:	fe843583          	ld	a1,-24(s0)
  20c8f0:	853e                	mv	a0,a5
  20c8f2:	acfff0ef          	jal	ra,20c3c0 <handle_nvme_io_read>
  20c8f6:	a0ad                	j	20c960 <handle_nvme_io_cmd+0x19e>
  20c8f8:	0020f7b7          	lui	a5,0x20f
  20c8fc:	71078513          	addi	a0,a5,1808 # 20f710 <nvme_main+0xc5a>
  20c900:	cb9f70ef          	jal	ra,2045b8 <cpl_print>
  20c904:	fc843783          	ld	a5,-56(s0)
  20c908:	0027c703          	lbu	a4,2(a5)
  20c90c:	0037c783          	lbu	a5,3(a5)
  20c910:	07a2                	slli	a5,a5,0x8
  20c912:	8fd9                	or	a5,a5,a4
  20c914:	17c2                	slli	a5,a5,0x30
  20c916:	93c1                	srli	a5,a5,0x30
  20c918:	2781                	sext.w	a5,a5
  20c91a:	fe843583          	ld	a1,-24(s0)
  20c91e:	853e                	mv	a0,a5
  20c920:	dcdff0ef          	jal	ra,20c6ec <handle_nvme_error_insection>
  20c924:	fc843783          	ld	a5,-56(s0)
  20c928:	0027c703          	lbu	a4,2(a5)
  20c92c:	0037c783          	lbu	a5,3(a5)
  20c930:	07a2                	slli	a5,a5,0x8
  20c932:	8fd9                	or	a5,a5,a4
  20c934:	17c2                	slli	a5,a5,0x30
  20c936:	93c1                	srli	a5,a5,0x30
  20c938:	2781                	sext.w	a5,a5
  20c93a:	4601                	li	a2,0
  20c93c:	4581                	li	a1,0
  20c93e:	853e                	mv	a0,a5
  20c940:	6c8000ef          	jal	ra,20d008 <set_auto_nvme_cpl>
  20c944:	a831                	j	20c960 <handle_nvme_io_cmd+0x19e>
  20c946:	0020f7b7          	lui	a5,0x20f
  20c94a:	72878513          	addi	a0,a5,1832 # 20f728 <nvme_main+0xc72>
  20c94e:	c6bf70ef          	jal	ra,2045b8 <cpl_print>
  20c952:	0020f7b7          	lui	a5,0x20f
  20c956:	75078513          	addi	a0,a5,1872 # 20f750 <nvme_main+0xc9a>
  20c95a:	c5ff70ef          	jal	ra,2045b8 <cpl_print>
  20c95e:	a001                	j	20c95e <handle_nvme_io_cmd+0x19c>
  20c960:	0001                	nop
  20c962:	70e2                	ld	ra,56(sp)
  20c964:	7442                	ld	s0,48(sp)
  20c966:	6121                	addi	sp,sp,64
  20c968:	8082                	ret
	...

000000000020c96c <dev_irq_init>:
  20c96c:	1101                	addi	sp,sp,-32
  20c96e:	ec22                	sd	s0,24(sp)
  20c970:	1000                	addi	s0,sp,32
  20c972:	fe042423          	sw	zero,-24(s0)
  20c976:	fe842783          	lw	a5,-24(s0)
  20c97a:	0017e793          	ori	a5,a5,1
  20c97e:	fef42423          	sw	a5,-24(s0)
  20c982:	fe842783          	lw	a5,-24(s0)
  20c986:	0027e793          	ori	a5,a5,2
  20c98a:	fef42423          	sw	a5,-24(s0)
  20c98e:	fe842783          	lw	a5,-24(s0)
  20c992:	0047e793          	ori	a5,a5,4
  20c996:	fef42423          	sw	a5,-24(s0)
  20c99a:	fe842783          	lw	a5,-24(s0)
  20c99e:	0087e793          	ori	a5,a5,8
  20c9a2:	fef42423          	sw	a5,-24(s0)
  20c9a6:	fe842783          	lw	a5,-24(s0)
  20c9aa:	0107e793          	ori	a5,a5,16
  20c9ae:	fef42423          	sw	a5,-24(s0)
  20c9b2:	fe842783          	lw	a5,-24(s0)
  20c9b6:	0207e793          	ori	a5,a5,32
  20c9ba:	fef42423          	sw	a5,-24(s0)
  20c9be:	fe842783          	lw	a5,-24(s0)
  20c9c2:	0407e793          	ori	a5,a5,64
  20c9c6:	fef42423          	sw	a5,-24(s0)
  20c9ca:	fe842783          	lw	a5,-24(s0)
  20c9ce:	0807e793          	ori	a5,a5,128
  20c9d2:	fef42423          	sw	a5,-24(s0)
  20c9d6:	fe842783          	lw	a5,-24(s0)
  20c9da:	2007e793          	ori	a5,a5,512
  20c9de:	fef42423          	sw	a5,-24(s0)
  20c9e2:	fe842783          	lw	a5,-24(s0)
  20c9e6:	4007e793          	ori	a5,a5,1024
  20c9ea:	fef42423          	sw	a5,-24(s0)
  20c9ee:	fe842703          	lw	a4,-24(s0)
  20c9f2:	6785                	lui	a5,0x1
  20c9f4:	80078793          	addi	a5,a5,-2048 # 800 <start-0x1ff800>
  20c9f8:	8fd9                	or	a5,a5,a4
  20c9fa:	fef42423          	sw	a5,-24(s0)
  20c9fe:	20f00793          	li	a5,527
  20ca02:	07da                	slli	a5,a5,0x16
  20ca04:	0791                	addi	a5,a5,4
  20ca06:	fe842703          	lw	a4,-24(s0)
  20ca0a:	c398                	sw	a4,0(a5)
  20ca0c:	0001                	nop
  20ca0e:	6462                	ld	s0,24(sp)
  20ca10:	6105                	addi	sp,sp,32
  20ca12:	8082                	ret

000000000020ca14 <dev_irq_handler>:
  20ca14:	7155                	addi	sp,sp,-208
  20ca16:	e586                	sd	ra,200(sp)
  20ca18:	e196                	sd	t0,192(sp)
  20ca1a:	fd1a                	sd	t1,184(sp)
  20ca1c:	f91e                	sd	t2,176(sp)
  20ca1e:	f522                	sd	s0,168(sp)
  20ca20:	f12a                	sd	a0,160(sp)
  20ca22:	ed2e                	sd	a1,152(sp)
  20ca24:	e932                	sd	a2,144(sp)
  20ca26:	e536                	sd	a3,136(sp)
  20ca28:	e13a                	sd	a4,128(sp)
  20ca2a:	fcbe                	sd	a5,120(sp)
  20ca2c:	f8c2                	sd	a6,112(sp)
  20ca2e:	f4c6                	sd	a7,104(sp)
  20ca30:	f0f2                	sd	t3,96(sp)
  20ca32:	ecf6                	sd	t4,88(sp)
  20ca34:	e8fa                	sd	t5,80(sp)
  20ca36:	e4fe                	sd	t6,72(sp)
  20ca38:	0980                	addi	s0,sp,208
  20ca3a:	20f00793          	li	a5,527
  20ca3e:	07da                	slli	a5,a5,0x16
  20ca40:	07b1                	addi	a5,a5,12
  20ca42:	439c                	lw	a5,0(a5)
  20ca44:	2781                	sext.w	a5,a5
  20ca46:	f6f42423          	sw	a5,-152(s0)
  20ca4a:	20f00793          	li	a5,527
  20ca4e:	07da                	slli	a5,a5,0x16
  20ca50:	07a1                	addi	a5,a5,8
  20ca52:	f6842703          	lw	a4,-152(s0)
  20ca56:	c398                	sw	a4,0(a5)
  20ca58:	f6844783          	lbu	a5,-152(s0)
  20ca5c:	8b85                	andi	a5,a5,1
  20ca5e:	0ff7f793          	andi	a5,a5,255
  20ca62:	c7b1                	beqz	a5,20caae <dev_irq_handler+0x9a>
  20ca64:	20f00793          	li	a5,527
  20ca68:	07da                	slli	a5,a5,0x16
  20ca6a:	10078793          	addi	a5,a5,256
  20ca6e:	439c                	lw	a5,0(a5)
  20ca70:	2781                	sext.w	a5,a5
  20ca72:	f6f42023          	sw	a5,-160(s0)
  20ca76:	0020f7b7          	lui	a5,0x20f
  20ca7a:	77078513          	addi	a0,a5,1904 # 20f770 <nvme_main+0xcba>
  20ca7e:	b3bf70ef          	jal	ra,2045b8 <cpl_print>
  20ca82:	f6043783          	ld	a5,-160(s0)
  20ca86:	83a1                	srli	a5,a5,0x8
  20ca88:	8b85                	andi	a5,a5,1
  20ca8a:	0ff7f793          	andi	a5,a5,255
  20ca8e:	2781                	sext.w	a5,a5
  20ca90:	853e                	mv	a0,a5
  20ca92:	b55f70ef          	jal	ra,2045e6 <cpl_printint>
  20ca96:	f6144783          	lbu	a5,-159(s0)
  20ca9a:	8b85                	andi	a5,a5,1
  20ca9c:	0ff7f793          	andi	a5,a5,255
  20caa0:	e799                	bnez	a5,20caae <dev_irq_handler+0x9a>
  20caa2:	002107b7          	lui	a5,0x210
  20caa6:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20caaa:	4715                	li	a4,5
  20caac:	c398                	sw	a4,0(a5)
  20caae:	f6844783          	lbu	a5,-152(s0)
  20cab2:	8b89                	andi	a5,a5,2
  20cab4:	0ff7f793          	andi	a5,a5,255
  20cab8:	cb8d                	beqz	a5,20caea <dev_irq_handler+0xd6>
  20caba:	20f00793          	li	a5,527
  20cabe:	07da                	slli	a5,a5,0x16
  20cac0:	10478793          	addi	a5,a5,260
  20cac4:	439c                	lw	a5,0(a5)
  20cac6:	2781                	sext.w	a5,a5
  20cac8:	f4f42c23          	sw	a5,-168(s0)
  20cacc:	0020f7b7          	lui	a5,0x20f
  20cad0:	78078513          	addi	a0,a5,1920 # 20f780 <nvme_main+0xcca>
  20cad4:	ae5f70ef          	jal	ra,2045b8 <cpl_print>
  20cad8:	f5843783          	ld	a5,-168(s0)
  20cadc:	8b85                	andi	a5,a5,1
  20cade:	0ff7f793          	andi	a5,a5,255
  20cae2:	2781                	sext.w	a5,a5
  20cae4:	853e                	mv	a0,a5
  20cae6:	b01f70ef          	jal	ra,2045e6 <cpl_printint>
  20caea:	f6844783          	lbu	a5,-152(s0)
  20caee:	8b91                	andi	a5,a5,4
  20caf0:	0ff7f793          	andi	a5,a5,255
  20caf4:	cb95                	beqz	a5,20cb28 <dev_irq_handler+0x114>
  20caf6:	20f00793          	li	a5,527
  20cafa:	07da                	slli	a5,a5,0x16
  20cafc:	10478793          	addi	a5,a5,260
  20cb00:	439c                	lw	a5,0(a5)
  20cb02:	2781                	sext.w	a5,a5
  20cb04:	f4f42823          	sw	a5,-176(s0)
  20cb08:	0020f7b7          	lui	a5,0x20f
  20cb0c:	79878513          	addi	a0,a5,1944 # 20f798 <nvme_main+0xce2>
  20cb10:	aa9f70ef          	jal	ra,2045b8 <cpl_print>
  20cb14:	f5043783          	ld	a5,-176(s0)
  20cb18:	838d                	srli	a5,a5,0x3
  20cb1a:	8b85                	andi	a5,a5,1
  20cb1c:	0ff7f793          	andi	a5,a5,255
  20cb20:	2781                	sext.w	a5,a5
  20cb22:	853e                	mv	a0,a5
  20cb24:	ac3f70ef          	jal	ra,2045e6 <cpl_printint>
  20cb28:	f6844783          	lbu	a5,-152(s0)
  20cb2c:	8ba1                	andi	a5,a5,8
  20cb2e:	0ff7f793          	andi	a5,a5,255
  20cb32:	c385                	beqz	a5,20cb52 <dev_irq_handler+0x13e>
  20cb34:	20f00793          	li	a5,527
  20cb38:	07da                	slli	a5,a5,0x16
  20cb3a:	10478793          	addi	a5,a5,260
  20cb3e:	439c                	lw	a5,0(a5)
  20cb40:	2781                	sext.w	a5,a5
  20cb42:	f4f42423          	sw	a5,-184(s0)
  20cb46:	0020f7b7          	lui	a5,0x20f
  20cb4a:	7b078513          	addi	a0,a5,1968 # 20f7b0 <nvme_main+0xcfa>
  20cb4e:	a6bf70ef          	jal	ra,2045b8 <cpl_print>
  20cb52:	f6844783          	lbu	a5,-152(s0)
  20cb56:	8bc1                	andi	a5,a5,16
  20cb58:	0ff7f793          	andi	a5,a5,255
  20cb5c:	cb95                	beqz	a5,20cb90 <dev_irq_handler+0x17c>
  20cb5e:	20f00793          	li	a5,527
  20cb62:	07da                	slli	a5,a5,0x16
  20cb64:	10478793          	addi	a5,a5,260
  20cb68:	439c                	lw	a5,0(a5)
  20cb6a:	2781                	sext.w	a5,a5
  20cb6c:	f4f42023          	sw	a5,-192(s0)
  20cb70:	0020f7b7          	lui	a5,0x20f
  20cb74:	7d078513          	addi	a0,a5,2000 # 20f7d0 <nvme_main+0xd1a>
  20cb78:	a41f70ef          	jal	ra,2045b8 <cpl_print>
  20cb7c:	f4043783          	ld	a5,-192(s0)
  20cb80:	8389                	srli	a5,a5,0x2
  20cb82:	8b85                	andi	a5,a5,1
  20cb84:	0ff7f793          	andi	a5,a5,255
  20cb88:	2781                	sext.w	a5,a5
  20cb8a:	853e                	mv	a0,a5
  20cb8c:	a5bf70ef          	jal	ra,2045e6 <cpl_printint>
  20cb90:	f6844783          	lbu	a5,-152(s0)
  20cb94:	0207f793          	andi	a5,a5,32
  20cb98:	0ff7f793          	andi	a5,a5,255
  20cb9c:	cfa1                	beqz	a5,20cbf4 <dev_irq_handler+0x1e0>
  20cb9e:	20f00793          	li	a5,527
  20cba2:	07da                	slli	a5,a5,0x16
  20cba4:	20078793          	addi	a5,a5,512
  20cba8:	439c                	lw	a5,0(a5)
  20cbaa:	2781                	sext.w	a5,a5
  20cbac:	f2f42c23          	sw	a5,-200(s0)
  20cbb0:	0020f7b7          	lui	a5,0x20f
  20cbb4:	7e878513          	addi	a0,a5,2024 # 20f7e8 <nvme_main+0xd32>
  20cbb8:	a01f70ef          	jal	ra,2045b8 <cpl_print>
  20cbbc:	f3843783          	ld	a5,-200(s0)
  20cbc0:	8b85                	andi	a5,a5,1
  20cbc2:	0ff7f793          	andi	a5,a5,255
  20cbc6:	2781                	sext.w	a5,a5
  20cbc8:	853e                	mv	a0,a5
  20cbca:	a1df70ef          	jal	ra,2045e6 <cpl_printint>
  20cbce:	f3844783          	lbu	a5,-200(s0)
  20cbd2:	8b85                	andi	a5,a5,1
  20cbd4:	0ff7f793          	andi	a5,a5,255
  20cbd8:	cb81                	beqz	a5,20cbe8 <dev_irq_handler+0x1d4>
  20cbda:	002107b7          	lui	a5,0x210
  20cbde:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20cbe2:	4705                	li	a4,1
  20cbe4:	c398                	sw	a4,0(a5)
  20cbe6:	a039                	j	20cbf4 <dev_irq_handler+0x1e0>
  20cbe8:	002107b7          	lui	a5,0x210
  20cbec:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20cbf0:	4715                	li	a4,5
  20cbf2:	c398                	sw	a4,0(a5)
  20cbf4:	f6844783          	lbu	a5,-152(s0)
  20cbf8:	0407f793          	andi	a5,a5,64
  20cbfc:	0ff7f793          	andi	a5,a5,255
  20cc00:	cba9                	beqz	a5,20cc52 <dev_irq_handler+0x23e>
  20cc02:	20f00793          	li	a5,527
  20cc06:	07da                	slli	a5,a5,0x16
  20cc08:	20078793          	addi	a5,a5,512
  20cc0c:	439c                	lw	a5,0(a5)
  20cc0e:	2781                	sext.w	a5,a5
  20cc10:	f2f42823          	sw	a5,-208(s0)
  20cc14:	0020f7b7          	lui	a5,0x20f
  20cc18:	7f878513          	addi	a0,a5,2040 # 20f7f8 <nvme_main+0xd42>
  20cc1c:	99df70ef          	jal	ra,2045b8 <cpl_print>
  20cc20:	f3043783          	ld	a5,-208(s0)
  20cc24:	8385                	srli	a5,a5,0x1
  20cc26:	8b8d                	andi	a5,a5,3
  20cc28:	0ff7f793          	andi	a5,a5,255
  20cc2c:	2781                	sext.w	a5,a5
  20cc2e:	853e                	mv	a0,a5
  20cc30:	9b7f70ef          	jal	ra,2045e6 <cpl_printint>
  20cc34:	f3044783          	lbu	a5,-208(s0)
  20cc38:	8b99                	andi	a5,a5,6
  20cc3a:	0ff7f793          	andi	a5,a5,255
  20cc3e:	873e                	mv	a4,a5
  20cc40:	4789                	li	a5,2
  20cc42:	00f71863          	bne	a4,a5,20cc52 <dev_irq_handler+0x23e>
  20cc46:	002107b7          	lui	a5,0x210
  20cc4a:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20cc4e:	470d                	li	a4,3
  20cc50:	c398                	sw	a4,0(a5)
  20cc52:	f6844783          	lbu	a5,-152(s0)
  20cc56:	f807f793          	andi	a5,a5,-128
  20cc5a:	0ff7f793          	andi	a5,a5,255
  20cc5e:	c799                	beqz	a5,20cc6c <dev_irq_handler+0x258>
  20cc60:	002107b7          	lui	a5,0x210
  20cc64:	80878513          	addi	a0,a5,-2040 # 20f808 <nvme_main+0xd52>
  20cc68:	951f70ef          	jal	ra,2045b8 <cpl_print>
  20cc6c:	f6944783          	lbu	a5,-151(s0)
  20cc70:	8b89                	andi	a5,a5,2
  20cc72:	0ff7f793          	andi	a5,a5,255
  20cc76:	c799                	beqz	a5,20cc84 <dev_irq_handler+0x270>
  20cc78:	002107b7          	lui	a5,0x210
  20cc7c:	81878513          	addi	a0,a5,-2024 # 20f818 <nvme_main+0xd62>
  20cc80:	939f70ef          	jal	ra,2045b8 <cpl_print>
  20cc84:	f6944783          	lbu	a5,-151(s0)
  20cc88:	8b91                	andi	a5,a5,4
  20cc8a:	0ff7f793          	andi	a5,a5,255
  20cc8e:	c799                	beqz	a5,20cc9c <dev_irq_handler+0x288>
  20cc90:	002107b7          	lui	a5,0x210
  20cc94:	82878513          	addi	a0,a5,-2008 # 20f828 <nvme_main+0xd72>
  20cc98:	921f70ef          	jal	ra,2045b8 <cpl_print>
  20cc9c:	f6944783          	lbu	a5,-151(s0)
  20cca0:	8ba1                	andi	a5,a5,8
  20cca2:	0ff7f793          	andi	a5,a5,255
  20cca6:	c799                	beqz	a5,20ccb4 <dev_irq_handler+0x2a0>
  20cca8:	002107b7          	lui	a5,0x210
  20ccac:	83878513          	addi	a0,a5,-1992 # 20f838 <nvme_main+0xd82>
  20ccb0:	909f70ef          	jal	ra,2045b8 <cpl_print>
  20ccb4:	0001                	nop
  20ccb6:	60ae                	ld	ra,200(sp)
  20ccb8:	628e                	ld	t0,192(sp)
  20ccba:	736a                	ld	t1,184(sp)
  20ccbc:	73ca                	ld	t2,176(sp)
  20ccbe:	742a                	ld	s0,168(sp)
  20ccc0:	750a                	ld	a0,160(sp)
  20ccc2:	65ea                	ld	a1,152(sp)
  20ccc4:	664a                	ld	a2,144(sp)
  20ccc6:	66aa                	ld	a3,136(sp)
  20ccc8:	670a                	ld	a4,128(sp)
  20ccca:	77e6                	ld	a5,120(sp)
  20cccc:	7846                	ld	a6,112(sp)
  20ccce:	78a6                	ld	a7,104(sp)
  20ccd0:	7e06                	ld	t3,96(sp)
  20ccd2:	6ee6                	ld	t4,88(sp)
  20ccd4:	6f46                	ld	t5,80(sp)
  20ccd6:	6fa6                	ld	t6,72(sp)
  20ccd8:	6169                	addi	sp,sp,208
  20ccda:	30200073          	mret
  20ccde:	0001                	nop

000000000020cce0 <check_nvme_cc_en>:
  20cce0:	1101                	addi	sp,sp,-32
  20cce2:	ec22                	sd	s0,24(sp)
  20cce4:	1000                	addi	s0,sp,32
  20cce6:	20f00793          	li	a5,527
  20ccea:	07da                	slli	a5,a5,0x16
  20ccec:	20078793          	addi	a5,a5,512
  20ccf0:	439c                	lw	a5,0(a5)
  20ccf2:	2781                	sext.w	a5,a5
  20ccf4:	fef42423          	sw	a5,-24(s0)
  20ccf8:	fe843783          	ld	a5,-24(s0)
  20ccfc:	8b85                	andi	a5,a5,1
  20ccfe:	0ff7f793          	andi	a5,a5,255
  20cd02:	2781                	sext.w	a5,a5
  20cd04:	853e                	mv	a0,a5
  20cd06:	6462                	ld	s0,24(sp)
  20cd08:	6105                	addi	sp,sp,32
  20cd0a:	8082                	ret

000000000020cd0c <pcie_async_reset>:
  20cd0c:	7179                	addi	sp,sp,-48
  20cd0e:	f406                	sd	ra,40(sp)
  20cd10:	f022                	sd	s0,32(sp)
  20cd12:	1800                	addi	s0,sp,48
  20cd14:	87aa                	mv	a5,a0
  20cd16:	fcf42e23          	sw	a5,-36(s0)
  20cd1a:	fdc42783          	lw	a5,-36(s0)
  20cd1e:	8bbd                	andi	a5,a5,15
  20cd20:	0ff7f793          	andi	a5,a5,255
  20cd24:	8bbd                	andi	a5,a5,15
  20cd26:	0077979b          	slliw	a5,a5,0x7
  20cd2a:	fe842703          	lw	a4,-24(s0)
  20cd2e:	87f77713          	andi	a4,a4,-1921
  20cd32:	8fd9                	or	a5,a5,a4
  20cd34:	fef42423          	sw	a5,-24(s0)
  20cd38:	002107b7          	lui	a5,0x210
  20cd3c:	85078513          	addi	a0,a5,-1968 # 20f850 <nvme_main+0xd9a>
  20cd40:	879f70ef          	jal	ra,2045b8 <cpl_print>
  20cd44:	20f00793          	li	a5,527
  20cd48:	07da                	slli	a5,a5,0x16
  20cd4a:	20078793          	addi	a5,a5,512
  20cd4e:	fe842703          	lw	a4,-24(s0)
  20cd52:	c398                	sw	a4,0(a5)
  20cd54:	0001                	nop
  20cd56:	70a2                	ld	ra,40(sp)
  20cd58:	7402                	ld	s0,32(sp)
  20cd5a:	6145                	addi	sp,sp,48
  20cd5c:	8082                	ret
  20cd5e:	0001                	nop

000000000020cd60 <set_link_width>:
  20cd60:	7179                	addi	sp,sp,-48
  20cd62:	f406                	sd	ra,40(sp)
  20cd64:	f022                	sd	s0,32(sp)
  20cd66:	1800                	addi	s0,sp,48
  20cd68:	87aa                	mv	a5,a0
  20cd6a:	fcf42e23          	sw	a5,-36(s0)
  20cd6e:	fdc42783          	lw	a5,-36(s0)
  20cd72:	8b8d                	andi	a5,a5,3
  20cd74:	0ff7f793          	andi	a5,a5,255
  20cd78:	8b8d                	andi	a5,a5,3
  20cd7a:	00b7979b          	slliw	a5,a5,0xb
  20cd7e:	fe842683          	lw	a3,-24(s0)
  20cd82:	7779                	lui	a4,0xffffe
  20cd84:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <g_nvmeTask+0xffffffffffdee397>
  20cd88:	8f75                	and	a4,a4,a3
  20cd8a:	8fd9                	or	a5,a5,a4
  20cd8c:	fef42423          	sw	a5,-24(s0)
  20cd90:	fe842703          	lw	a4,-24(s0)
  20cd94:	77e9                	lui	a5,0xffffa
  20cd96:	17fd                	addi	a5,a5,-1
  20cd98:	8ff9                	and	a5,a5,a4
  20cd9a:	873e                	mv	a4,a5
  20cd9c:	6789                	lui	a5,0x2
  20cd9e:	8fd9                	or	a5,a5,a4
  20cda0:	fef42423          	sw	a5,-24(s0)
  20cda4:	002107b7          	lui	a5,0x210
  20cda8:	86078513          	addi	a0,a5,-1952 # 20f860 <nvme_main+0xdaa>
  20cdac:	80df70ef          	jal	ra,2045b8 <cpl_print>
  20cdb0:	20f00793          	li	a5,527
  20cdb4:	07da                	slli	a5,a5,0x16
  20cdb6:	20078793          	addi	a5,a5,512
  20cdba:	fe842703          	lw	a4,-24(s0)
  20cdbe:	c398                	sw	a4,0(a5)
  20cdc0:	0001                	nop
  20cdc2:	70a2                	ld	ra,40(sp)
  20cdc4:	7402                	ld	s0,32(sp)
  20cdc6:	6145                	addi	sp,sp,48
  20cdc8:	8082                	ret
  20cdca:	0001                	nop

000000000020cdcc <set_nvme_csts_rdy>:
  20cdcc:	7179                	addi	sp,sp,-48
  20cdce:	f422                	sd	s0,40(sp)
  20cdd0:	1800                	addi	s0,sp,48
  20cdd2:	87aa                	mv	a5,a0
  20cdd4:	fcf42e23          	sw	a5,-36(s0)
  20cdd8:	20f00793          	li	a5,527
  20cddc:	07da                	slli	a5,a5,0x16
  20cdde:	20078793          	addi	a5,a5,512
  20cde2:	439c                	lw	a5,0(a5)
  20cde4:	2781                	sext.w	a5,a5
  20cde6:	fef42423          	sw	a5,-24(s0)
  20cdea:	fdc42783          	lw	a5,-36(s0)
  20cdee:	8b85                	andi	a5,a5,1
  20cdf0:	0ff7f793          	andi	a5,a5,255
  20cdf4:	8b85                	andi	a5,a5,1
  20cdf6:	0047979b          	slliw	a5,a5,0x4
  20cdfa:	fe842703          	lw	a4,-24(s0)
  20cdfe:	9b3d                	andi	a4,a4,-17
  20ce00:	8fd9                	or	a5,a5,a4
  20ce02:	fef42423          	sw	a5,-24(s0)
  20ce06:	20f00793          	li	a5,527
  20ce0a:	07da                	slli	a5,a5,0x16
  20ce0c:	20078793          	addi	a5,a5,512
  20ce10:	fe842703          	lw	a4,-24(s0)
  20ce14:	c398                	sw	a4,0(a5)
  20ce16:	0001                	nop
  20ce18:	7422                	ld	s0,40(sp)
  20ce1a:	6145                	addi	sp,sp,48
  20ce1c:	8082                	ret
  20ce1e:	0001                	nop

000000000020ce20 <set_nvme_csts_shst>:
  20ce20:	7179                	addi	sp,sp,-48
  20ce22:	f422                	sd	s0,40(sp)
  20ce24:	1800                	addi	s0,sp,48
  20ce26:	87aa                	mv	a5,a0
  20ce28:	fcf42e23          	sw	a5,-36(s0)
  20ce2c:	20f00793          	li	a5,527
  20ce30:	07da                	slli	a5,a5,0x16
  20ce32:	20078793          	addi	a5,a5,512
  20ce36:	439c                	lw	a5,0(a5)
  20ce38:	2781                	sext.w	a5,a5
  20ce3a:	fef42423          	sw	a5,-24(s0)
  20ce3e:	fdc42783          	lw	a5,-36(s0)
  20ce42:	8b8d                	andi	a5,a5,3
  20ce44:	0ff7f793          	andi	a5,a5,255
  20ce48:	8b8d                	andi	a5,a5,3
  20ce4a:	0057979b          	slliw	a5,a5,0x5
  20ce4e:	fe842703          	lw	a4,-24(s0)
  20ce52:	f9f77713          	andi	a4,a4,-97
  20ce56:	8fd9                	or	a5,a5,a4
  20ce58:	fef42423          	sw	a5,-24(s0)
  20ce5c:	20f00793          	li	a5,527
  20ce60:	07da                	slli	a5,a5,0x16
  20ce62:	20078793          	addi	a5,a5,512
  20ce66:	fe842703          	lw	a4,-24(s0)
  20ce6a:	c398                	sw	a4,0(a5)
  20ce6c:	0001                	nop
  20ce6e:	7422                	ld	s0,40(sp)
  20ce70:	6145                	addi	sp,sp,48
  20ce72:	8082                	ret

000000000020ce74 <set_nvme_admin_queue>:
  20ce74:	7179                	addi	sp,sp,-48
  20ce76:	f422                	sd	s0,40(sp)
  20ce78:	1800                	addi	s0,sp,48
  20ce7a:	87aa                	mv	a5,a0
  20ce7c:	86ae                	mv	a3,a1
  20ce7e:	8732                	mv	a4,a2
  20ce80:	fcf42e23          	sw	a5,-36(s0)
  20ce84:	87b6                	mv	a5,a3
  20ce86:	fcf42c23          	sw	a5,-40(s0)
  20ce8a:	87ba                	mv	a5,a4
  20ce8c:	fcf42a23          	sw	a5,-44(s0)
  20ce90:	20f00793          	li	a5,527
  20ce94:	07da                	slli	a5,a5,0x16
  20ce96:	21c78793          	addi	a5,a5,540
  20ce9a:	439c                	lw	a5,0(a5)
  20ce9c:	2781                	sext.w	a5,a5
  20ce9e:	fef42423          	sw	a5,-24(s0)
  20cea2:	fdc42783          	lw	a5,-36(s0)
  20cea6:	8b85                	andi	a5,a5,1
  20cea8:	0ff7f793          	andi	a5,a5,255
  20ceac:	8b85                	andi	a5,a5,1
  20ceae:	0017979b          	slliw	a5,a5,0x1
  20ceb2:	fe842703          	lw	a4,-24(s0)
  20ceb6:	9b75                	andi	a4,a4,-3
  20ceb8:	8fd9                	or	a5,a5,a4
  20ceba:	fef42423          	sw	a5,-24(s0)
  20cebe:	fd842783          	lw	a5,-40(s0)
  20cec2:	8b85                	andi	a5,a5,1
  20cec4:	0ff7f793          	andi	a5,a5,255
  20cec8:	0017f693          	andi	a3,a5,1
  20cecc:	fe842783          	lw	a5,-24(s0)
  20ced0:	9bf9                	andi	a5,a5,-2
  20ced2:	873e                	mv	a4,a5
  20ced4:	87b6                	mv	a5,a3
  20ced6:	8fd9                	or	a5,a5,a4
  20ced8:	fef42423          	sw	a5,-24(s0)
  20cedc:	fd442783          	lw	a5,-44(s0)
  20cee0:	8b85                	andi	a5,a5,1
  20cee2:	0ff7f793          	andi	a5,a5,255
  20cee6:	8b85                	andi	a5,a5,1
  20cee8:	0027979b          	slliw	a5,a5,0x2
  20ceec:	fe842703          	lw	a4,-24(s0)
  20cef0:	9b6d                	andi	a4,a4,-5
  20cef2:	8fd9                	or	a5,a5,a4
  20cef4:	fef42423          	sw	a5,-24(s0)
  20cef8:	20f00793          	li	a5,527
  20cefc:	07da                	slli	a5,a5,0x16
  20cefe:	21c78793          	addi	a5,a5,540
  20cf02:	fe842703          	lw	a4,-24(s0)
  20cf06:	c398                	sw	a4,0(a5)
  20cf08:	0001                	nop
  20cf0a:	7422                	ld	s0,40(sp)
  20cf0c:	6145                	addi	sp,sp,48
  20cf0e:	8082                	ret

000000000020cf10 <get_nvme_cmd>:
  20cf10:	7139                	addi	sp,sp,-64
  20cf12:	fc22                	sd	s0,56(sp)
  20cf14:	0080                	addi	s0,sp,64
  20cf16:	fca43c23          	sd	a0,-40(s0)
  20cf1a:	fcb43823          	sd	a1,-48(s0)
  20cf1e:	fcc43423          	sd	a2,-56(s0)
  20cf22:	fcd43023          	sd	a3,-64(s0)
  20cf26:	20f00793          	li	a5,527
  20cf2a:	07da                	slli	a5,a5,0x16
  20cf2c:	30078793          	addi	a5,a5,768
  20cf30:	439c                	lw	a5,0(a5)
  20cf32:	2781                	sext.w	a5,a5
  20cf34:	fef42023          	sw	a5,-32(s0)
  20cf38:	fe344783          	lbu	a5,-29(s0)
  20cf3c:	f807f793          	andi	a5,a5,-128
  20cf40:	0ff7f793          	andi	a5,a5,255
  20cf44:	c7d5                	beqz	a5,20cff0 <get_nvme_cmd+0xe0>
  20cf46:	fe043783          	ld	a5,-32(s0)
  20cf4a:	8bbd                	andi	a5,a5,15
  20cf4c:	0ff7f793          	andi	a5,a5,255
  20cf50:	03079713          	slli	a4,a5,0x30
  20cf54:	9341                	srli	a4,a4,0x30
  20cf56:	fd843783          	ld	a5,-40(s0)
  20cf5a:	00e79023          	sh	a4,0(a5)
  20cf5e:	fe043783          	ld	a5,-32(s0)
  20cf62:	8395                	srli	a5,a5,0x5
  20cf64:	3ff7f793          	andi	a5,a5,1023
  20cf68:	17c2                	slli	a5,a5,0x30
  20cf6a:	93c1                	srli	a5,a5,0x30
  20cf6c:	873e                	mv	a4,a5
  20cf6e:	fd043783          	ld	a5,-48(s0)
  20cf72:	00e79023          	sh	a4,0(a5)
  20cf76:	fe244783          	lbu	a5,-30(s0)
  20cf7a:	0007871b          	sext.w	a4,a5
  20cf7e:	fc843783          	ld	a5,-56(s0)
  20cf82:	c398                	sw	a4,0(a5)
  20cf84:	fe043783          	ld	a5,-32(s0)
  20cf88:	8395                	srli	a5,a5,0x5
  20cf8a:	3ff7f793          	andi	a5,a5,1023
  20cf8e:	17c2                	slli	a5,a5,0x30
  20cf90:	93c1                	srli	a5,a5,0x30
  20cf92:	2781                	sext.w	a5,a5
  20cf94:	0067979b          	slliw	a5,a5,0x6
  20cf98:	2781                	sext.w	a5,a5
  20cf9a:	0007871b          	sext.w	a4,a5
  20cf9e:	83c107b7          	lui	a5,0x83c10
  20cfa2:	9fb9                	addw	a5,a5,a4
  20cfa4:	fef42423          	sw	a5,-24(s0)
  20cfa8:	fe042623          	sw	zero,-20(s0)
  20cfac:	a81d                	j	20cfe2 <get_nvme_cmd+0xd2>
  20cfae:	fec42783          	lw	a5,-20(s0)
  20cfb2:	0027979b          	slliw	a5,a5,0x2
  20cfb6:	2781                	sext.w	a5,a5
  20cfb8:	fe842703          	lw	a4,-24(s0)
  20cfbc:	9fb9                	addw	a5,a5,a4
  20cfbe:	2781                	sext.w	a5,a5
  20cfc0:	1782                	slli	a5,a5,0x20
  20cfc2:	9381                	srli	a5,a5,0x20
  20cfc4:	86be                	mv	a3,a5
  20cfc6:	fec46783          	lwu	a5,-20(s0)
  20cfca:	078a                	slli	a5,a5,0x2
  20cfcc:	fc043703          	ld	a4,-64(s0)
  20cfd0:	97ba                	add	a5,a5,a4
  20cfd2:	4298                	lw	a4,0(a3)
  20cfd4:	2701                	sext.w	a4,a4
  20cfd6:	c398                	sw	a4,0(a5)
  20cfd8:	fec42783          	lw	a5,-20(s0)
  20cfdc:	2785                	addiw	a5,a5,1
  20cfde:	fef42623          	sw	a5,-20(s0)
  20cfe2:	fec42783          	lw	a5,-20(s0)
  20cfe6:	0007871b          	sext.w	a4,a5
  20cfea:	47bd                	li	a5,15
  20cfec:	fce7f1e3          	bgeu	a5,a4,20cfae <get_nvme_cmd+0x9e>
  20cff0:	fe043783          	ld	a5,-32(s0)
  20cff4:	83fd                	srli	a5,a5,0x1f
  20cff6:	8b85                	andi	a5,a5,1
  20cff8:	0ff7f793          	andi	a5,a5,255
  20cffc:	2781                	sext.w	a5,a5
  20cffe:	853e                	mv	a0,a5
  20d000:	7462                	ld	s0,56(sp)
  20d002:	6121                	addi	sp,sp,64
  20d004:	8082                	ret
  20d006:	0001                	nop

000000000020d008 <set_auto_nvme_cpl>:
  20d008:	7179                	addi	sp,sp,-48
  20d00a:	f422                	sd	s0,40(sp)
  20d00c:	1800                	addi	s0,sp,48
  20d00e:	87aa                	mv	a5,a0
  20d010:	86ae                	mv	a3,a1
  20d012:	8732                	mv	a4,a2
  20d014:	fcf42e23          	sw	a5,-36(s0)
  20d018:	87b6                	mv	a5,a3
  20d01a:	fcf42c23          	sw	a5,-40(s0)
  20d01e:	87ba                	mv	a5,a4
  20d020:	fcf42a23          	sw	a5,-44(s0)
  20d024:	fd842783          	lw	a5,-40(s0)
  20d028:	fef42223          	sw	a5,-28(s0)
  20d02c:	fdc42783          	lw	a5,-36(s0)
  20d030:	3ff7f793          	andi	a5,a5,1023
  20d034:	17c2                	slli	a5,a5,0x30
  20d036:	93c1                	srli	a5,a5,0x30
  20d038:	3ff7f693          	andi	a3,a5,1023
  20d03c:	fe845783          	lhu	a5,-24(s0)
  20d040:	c007f793          	andi	a5,a5,-1024
  20d044:	873e                	mv	a4,a5
  20d046:	87b6                	mv	a5,a3
  20d048:	8fd9                	or	a5,a5,a4
  20d04a:	fef41423          	sh	a5,-24(s0)
  20d04e:	fd442783          	lw	a5,-44(s0)
  20d052:	17c2                	slli	a5,a5,0x30
  20d054:	93c1                	srli	a5,a5,0x30
  20d056:	fef41523          	sh	a5,-22(s0)
  20d05a:	fe845703          	lhu	a4,-24(s0)
  20d05e:	6791                	lui	a5,0x4
  20d060:	17fd                	addi	a5,a5,-1
  20d062:	8ff9                	and	a5,a5,a4
  20d064:	873e                	mv	a4,a5
  20d066:	6791                	lui	a5,0x4
  20d068:	8fd9                	or	a5,a5,a4
  20d06a:	fef41423          	sh	a5,-24(s0)
  20d06e:	20f00793          	li	a5,527
  20d072:	07da                	slli	a5,a5,0x16
  20d074:	30878793          	addi	a5,a5,776 # 4308 <start-0x1fbcf8>
  20d078:	fe442703          	lw	a4,-28(s0)
  20d07c:	c398                	sw	a4,0(a5)
  20d07e:	20f00793          	li	a5,527
  20d082:	07da                	slli	a5,a5,0x16
  20d084:	30c78793          	addi	a5,a5,780
  20d088:	fe842703          	lw	a4,-24(s0)
  20d08c:	c398                	sw	a4,0(a5)
  20d08e:	0001                	nop
  20d090:	7422                	ld	s0,40(sp)
  20d092:	6145                	addi	sp,sp,48
  20d094:	8082                	ret
  20d096:	0001                	nop

000000000020d098 <set_nvme_slot_release>:
  20d098:	7179                	addi	sp,sp,-48
  20d09a:	f422                	sd	s0,40(sp)
  20d09c:	1800                	addi	s0,sp,48
  20d09e:	87aa                	mv	a5,a0
  20d0a0:	fcf42e23          	sw	a5,-36(s0)
  20d0a4:	fdc42783          	lw	a5,-36(s0)
  20d0a8:	3ff7f793          	andi	a5,a5,1023
  20d0ac:	17c2                	slli	a5,a5,0x30
  20d0ae:	93c1                	srli	a5,a5,0x30
  20d0b0:	3ff7f693          	andi	a3,a5,1023
  20d0b4:	fe845783          	lhu	a5,-24(s0)
  20d0b8:	c007f793          	andi	a5,a5,-1024
  20d0bc:	873e                	mv	a4,a5
  20d0be:	87b6                	mv	a5,a3
  20d0c0:	8fd9                	or	a5,a5,a4
  20d0c2:	fef41423          	sh	a5,-24(s0)
  20d0c6:	fe845703          	lhu	a4,-24(s0)
  20d0ca:	6791                	lui	a5,0x4
  20d0cc:	17fd                	addi	a5,a5,-1
  20d0ce:	8ff9                	and	a5,a5,a4
  20d0d0:	873e                	mv	a4,a5
  20d0d2:	77e1                	lui	a5,0xffff8
  20d0d4:	8fd9                	or	a5,a5,a4
  20d0d6:	fef41423          	sh	a5,-24(s0)
  20d0da:	20f00793          	li	a5,527
  20d0de:	07da                	slli	a5,a5,0x16
  20d0e0:	30c78793          	addi	a5,a5,780 # ffffffffffff830c <g_nvmeTask+0xffffffffffde7ea4>
  20d0e4:	fe842703          	lw	a4,-24(s0)
  20d0e8:	c398                	sw	a4,0(a5)
  20d0ea:	0001                	nop
  20d0ec:	7422                	ld	s0,40(sp)
  20d0ee:	6145                	addi	sp,sp,48
  20d0f0:	8082                	ret
  20d0f2:	0001                	nop

000000000020d0f4 <set_nvme_cpl>:
  20d0f4:	7179                	addi	sp,sp,-48
  20d0f6:	f422                	sd	s0,40(sp)
  20d0f8:	1800                	addi	s0,sp,48
  20d0fa:	87aa                	mv	a5,a0
  20d0fc:	8736                	mv	a4,a3
  20d0fe:	fcf42e23          	sw	a5,-36(s0)
  20d102:	87ae                	mv	a5,a1
  20d104:	fcf42c23          	sw	a5,-40(s0)
  20d108:	87b2                	mv	a5,a2
  20d10a:	fcf42a23          	sw	a5,-44(s0)
  20d10e:	87ba                	mv	a5,a4
  20d110:	fcf42823          	sw	a5,-48(s0)
  20d114:	fd842783          	lw	a5,-40(s0)
  20d118:	17c2                	slli	a5,a5,0x30
  20d11a:	93c1                	srli	a5,a5,0x30
  20d11c:	fef41023          	sh	a5,-32(s0)
  20d120:	fdc42783          	lw	a5,-36(s0)
  20d124:	8bbd                	andi	a5,a5,15
  20d126:	0ff7f793          	andi	a5,a5,255
  20d12a:	8bbd                	andi	a5,a5,15
  20d12c:	0107979b          	slliw	a5,a5,0x10
  20d130:	fe042683          	lw	a3,-32(s0)
  20d134:	fff10737          	lui	a4,0xfff10
  20d138:	177d                	addi	a4,a4,-1
  20d13a:	8f75                	and	a4,a4,a3
  20d13c:	8fd9                	or	a5,a5,a4
  20d13e:	fef42023          	sw	a5,-32(s0)
  20d142:	fd442783          	lw	a5,-44(s0)
  20d146:	fef42223          	sw	a5,-28(s0)
  20d14a:	fd042783          	lw	a5,-48(s0)
  20d14e:	17c2                	slli	a5,a5,0x30
  20d150:	93c1                	srli	a5,a5,0x30
  20d152:	fef41523          	sh	a5,-22(s0)
  20d156:	fe845703          	lhu	a4,-24(s0)
  20d15a:	6791                	lui	a5,0x4
  20d15c:	17fd                	addi	a5,a5,-1
  20d15e:	8ff9                	and	a5,a5,a4
  20d160:	fef41423          	sh	a5,-24(s0)
  20d164:	20f00793          	li	a5,527
  20d168:	07da                	slli	a5,a5,0x16
  20d16a:	30478793          	addi	a5,a5,772 # 4304 <start-0x1fbcfc>
  20d16e:	fe042703          	lw	a4,-32(s0)
  20d172:	c398                	sw	a4,0(a5)
  20d174:	20f00793          	li	a5,527
  20d178:	07da                	slli	a5,a5,0x16
  20d17a:	30878793          	addi	a5,a5,776
  20d17e:	fe442703          	lw	a4,-28(s0)
  20d182:	c398                	sw	a4,0(a5)
  20d184:	20f00793          	li	a5,527
  20d188:	07da                	slli	a5,a5,0x16
  20d18a:	30c78793          	addi	a5,a5,780
  20d18e:	fe842703          	lw	a4,-24(s0)
  20d192:	c398                	sw	a4,0(a5)
  20d194:	0001                	nop
  20d196:	7422                	ld	s0,40(sp)
  20d198:	6145                	addi	sp,sp,48
  20d19a:	8082                	ret

000000000020d19c <set_io_sq>:
  20d19c:	7139                	addi	sp,sp,-64
  20d19e:	fc22                	sd	s0,56(sp)
  20d1a0:	0080                	addi	s0,sp,64
  20d1a2:	882a                	mv	a6,a0
  20d1a4:	852e                	mv	a0,a1
  20d1a6:	85b2                	mv	a1,a2
  20d1a8:	8636                	mv	a2,a3
  20d1aa:	86ba                	mv	a3,a4
  20d1ac:	873e                	mv	a4,a5
  20d1ae:	87c2                	mv	a5,a6
  20d1b0:	fcf42e23          	sw	a5,-36(s0)
  20d1b4:	87aa                	mv	a5,a0
  20d1b6:	fcf42c23          	sw	a5,-40(s0)
  20d1ba:	87ae                	mv	a5,a1
  20d1bc:	fcf42a23          	sw	a5,-44(s0)
  20d1c0:	87b2                	mv	a5,a2
  20d1c2:	fcf42823          	sw	a5,-48(s0)
  20d1c6:	87b6                	mv	a5,a3
  20d1c8:	fcf42623          	sw	a5,-52(s0)
  20d1cc:	87ba                	mv	a5,a4
  20d1ce:	fcf42423          	sw	a5,-56(s0)
  20d1d2:	fd842783          	lw	a5,-40(s0)
  20d1d6:	8b85                	andi	a5,a5,1
  20d1d8:	0ff7f793          	andi	a5,a5,255
  20d1dc:	8b85                	andi	a5,a5,1
  20d1de:	0107979b          	slliw	a5,a5,0x10
  20d1e2:	fe442683          	lw	a3,-28(s0)
  20d1e6:	7741                	lui	a4,0xffff0
  20d1e8:	177d                	addi	a4,a4,-1
  20d1ea:	8f75                	and	a4,a4,a3
  20d1ec:	8fd9                	or	a5,a5,a4
  20d1ee:	fef42223          	sw	a5,-28(s0)
  20d1f2:	fd442783          	lw	a5,-44(s0)
  20d1f6:	8bbd                	andi	a5,a5,15
  20d1f8:	0ff7f793          	andi	a5,a5,255
  20d1fc:	8bbd                	andi	a5,a5,15
  20d1fe:	0117979b          	slliw	a5,a5,0x11
  20d202:	fe442683          	lw	a3,-28(s0)
  20d206:	ffe20737          	lui	a4,0xffe20
  20d20a:	177d                	addi	a4,a4,-1
  20d20c:	8f75                	and	a4,a4,a3
  20d20e:	8fd9                	or	a5,a5,a4
  20d210:	fef42223          	sw	a5,-28(s0)
  20d214:	fd042783          	lw	a5,-48(s0)
  20d218:	0ff7f793          	andi	a5,a5,255
  20d21c:	fef403a3          	sb	a5,-25(s0)
  20d220:	fcc42783          	lw	a5,-52(s0)
  20d224:	fef42023          	sw	a5,-32(s0)
  20d228:	fc842783          	lw	a5,-56(s0)
  20d22c:	17c2                	slli	a5,a5,0x30
  20d22e:	93c1                	srli	a5,a5,0x30
  20d230:	fef41223          	sh	a5,-28(s0)
  20d234:	fdc42703          	lw	a4,-36(s0)
  20d238:	107807b7          	lui	a5,0x10780
  20d23c:	0447879b          	addiw	a5,a5,68
  20d240:	9fb9                	addw	a5,a5,a4
  20d242:	2781                	sext.w	a5,a5
  20d244:	0037979b          	slliw	a5,a5,0x3
  20d248:	fef42623          	sw	a5,-20(s0)
  20d24c:	fec46783          	lwu	a5,-20(s0)
  20d250:	873e                	mv	a4,a5
  20d252:	fe042783          	lw	a5,-32(s0)
  20d256:	c31c                	sw	a5,0(a4)
  20d258:	fec42783          	lw	a5,-20(s0)
  20d25c:	2791                	addiw	a5,a5,4
  20d25e:	2781                	sext.w	a5,a5
  20d260:	1782                	slli	a5,a5,0x20
  20d262:	9381                	srli	a5,a5,0x20
  20d264:	873e                	mv	a4,a5
  20d266:	fe442783          	lw	a5,-28(s0)
  20d26a:	c31c                	sw	a5,0(a4)
  20d26c:	0001                	nop
  20d26e:	7462                	ld	s0,56(sp)
  20d270:	6121                	addi	sp,sp,64
  20d272:	8082                	ret

000000000020d274 <set_io_cq>:
  20d274:	7139                	addi	sp,sp,-64
  20d276:	fc22                	sd	s0,56(sp)
  20d278:	0080                	addi	s0,sp,64
  20d27a:	832a                	mv	t1,a0
  20d27c:	88ae                	mv	a7,a1
  20d27e:	8532                	mv	a0,a2
  20d280:	85b6                	mv	a1,a3
  20d282:	863a                	mv	a2,a4
  20d284:	86be                	mv	a3,a5
  20d286:	8742                	mv	a4,a6
  20d288:	879a                	mv	a5,t1
  20d28a:	fcf42e23          	sw	a5,-36(s0)
  20d28e:	87c6                	mv	a5,a7
  20d290:	fcf42c23          	sw	a5,-40(s0)
  20d294:	87aa                	mv	a5,a0
  20d296:	fcf42a23          	sw	a5,-44(s0)
  20d29a:	87ae                	mv	a5,a1
  20d29c:	fcf42823          	sw	a5,-48(s0)
  20d2a0:	87b2                	mv	a5,a2
  20d2a2:	fcf42623          	sw	a5,-52(s0)
  20d2a6:	87b6                	mv	a5,a3
  20d2a8:	fcf42423          	sw	a5,-56(s0)
  20d2ac:	87ba                	mv	a5,a4
  20d2ae:	fcf42223          	sw	a5,-60(s0)
  20d2b2:	fd842783          	lw	a5,-40(s0)
  20d2b6:	8b85                	andi	a5,a5,1
  20d2b8:	0ff7f793          	andi	a5,a5,255
  20d2bc:	8b85                	andi	a5,a5,1
  20d2be:	0107979b          	slliw	a5,a5,0x10
  20d2c2:	fe442683          	lw	a3,-28(s0)
  20d2c6:	7741                	lui	a4,0xffff0
  20d2c8:	177d                	addi	a4,a4,-1
  20d2ca:	8f75                	and	a4,a4,a3
  20d2cc:	8fd9                	or	a5,a5,a4
  20d2ce:	fef42223          	sw	a5,-28(s0)
  20d2d2:	fd442783          	lw	a5,-44(s0)
  20d2d6:	8b85                	andi	a5,a5,1
  20d2d8:	0ff7f793          	andi	a5,a5,255
  20d2dc:	8b85                	andi	a5,a5,1
  20d2de:	0147979b          	slliw	a5,a5,0x14
  20d2e2:	fe442683          	lw	a3,-28(s0)
  20d2e6:	fff00737          	lui	a4,0xfff00
  20d2ea:	177d                	addi	a4,a4,-1
  20d2ec:	8f75                	and	a4,a4,a3
  20d2ee:	8fd9                	or	a5,a5,a4
  20d2f0:	fef42223          	sw	a5,-28(s0)
  20d2f4:	fd042783          	lw	a5,-48(s0)
  20d2f8:	8b9d                	andi	a5,a5,7
  20d2fa:	0ff7f793          	andi	a5,a5,255
  20d2fe:	8b9d                	andi	a5,a5,7
  20d300:	0117979b          	slliw	a5,a5,0x11
  20d304:	fe442683          	lw	a3,-28(s0)
  20d308:	fff20737          	lui	a4,0xfff20
  20d30c:	177d                	addi	a4,a4,-1
  20d30e:	8f75                	and	a4,a4,a3
  20d310:	8fd9                	or	a5,a5,a4
  20d312:	fef42223          	sw	a5,-28(s0)
  20d316:	fcc42783          	lw	a5,-52(s0)
  20d31a:	0ff7f793          	andi	a5,a5,255
  20d31e:	fef403a3          	sb	a5,-25(s0)
  20d322:	fc842783          	lw	a5,-56(s0)
  20d326:	fef42023          	sw	a5,-32(s0)
  20d32a:	fc442783          	lw	a5,-60(s0)
  20d32e:	17c2                	slli	a5,a5,0x30
  20d330:	93c1                	srli	a5,a5,0x30
  20d332:	fef41223          	sh	a5,-28(s0)
  20d336:	fdc42703          	lw	a4,-36(s0)
  20d33a:	107807b7          	lui	a5,0x10780
  20d33e:	04c7879b          	addiw	a5,a5,76
  20d342:	9fb9                	addw	a5,a5,a4
  20d344:	2781                	sext.w	a5,a5
  20d346:	0037979b          	slliw	a5,a5,0x3
  20d34a:	fef42623          	sw	a5,-20(s0)
  20d34e:	fec46783          	lwu	a5,-20(s0)
  20d352:	873e                	mv	a4,a5
  20d354:	fe042783          	lw	a5,-32(s0)
  20d358:	c31c                	sw	a5,0(a4)
  20d35a:	fec42783          	lw	a5,-20(s0)
  20d35e:	2791                	addiw	a5,a5,4
  20d360:	2781                	sext.w	a5,a5
  20d362:	1782                	slli	a5,a5,0x20
  20d364:	9381                	srli	a5,a5,0x20
  20d366:	873e                	mv	a4,a5
  20d368:	fe442783          	lw	a5,-28(s0)
  20d36c:	c31c                	sw	a5,0(a4)
  20d36e:	0001                	nop
  20d370:	7462                	ld	s0,56(sp)
  20d372:	6121                	addi	sp,sp,64
  20d374:	8082                	ret
  20d376:	0001                	nop

000000000020d378 <set_direct_tx_dma>:
  20d378:	7139                	addi	sp,sp,-64
  20d37a:	fc06                	sd	ra,56(sp)
  20d37c:	f822                	sd	s0,48(sp)
  20d37e:	0080                	addi	s0,sp,64
  20d380:	87aa                	mv	a5,a0
  20d382:	8736                	mv	a4,a3
  20d384:	fcf42623          	sw	a5,-52(s0)
  20d388:	87ae                	mv	a5,a1
  20d38a:	fcf42423          	sw	a5,-56(s0)
  20d38e:	87b2                	mv	a5,a2
  20d390:	fcf42223          	sw	a5,-60(s0)
  20d394:	87ba                	mv	a5,a4
  20d396:	fcf42023          	sw	a5,-64(s0)
  20d39a:	fc042783          	lw	a5,-64(s0)
  20d39e:	0007871b          	sext.w	a4,a5
  20d3a2:	6785                	lui	a5,0x1
  20d3a4:	00e7e763          	bltu	a5,a4,20d3b2 <set_direct_tx_dma+0x3a>
  20d3a8:	fc442783          	lw	a5,-60(s0)
  20d3ac:	8b8d                	andi	a5,a5,3
  20d3ae:	2781                	sext.w	a5,a5
  20d3b0:	cb81                	beqz	a5,20d3c0 <set_direct_tx_dma+0x48>
  20d3b2:	002107b7          	lui	a5,0x210
  20d3b6:	87078513          	addi	a0,a5,-1936 # 20f870 <nvme_main+0xdba>
  20d3ba:	9fef70ef          	jal	ra,2045b8 <cpl_print>
  20d3be:	a001                	j	20d3be <set_direct_tx_dma+0x46>
  20d3c0:	fcc42783          	lw	a5,-52(s0)
  20d3c4:	fcf42c23          	sw	a5,-40(s0)
  20d3c8:	fc442783          	lw	a5,-60(s0)
  20d3cc:	fef42023          	sw	a5,-32(s0)
  20d3d0:	fc842783          	lw	a5,-56(s0)
  20d3d4:	fcf42e23          	sw	a5,-36(s0)
  20d3d8:	fe042223          	sw	zero,-28(s0)
  20d3dc:	fe442703          	lw	a4,-28(s0)
  20d3e0:	800007b7          	lui	a5,0x80000
  20d3e4:	8fd9                	or	a5,a5,a4
  20d3e6:	fef42223          	sw	a5,-28(s0)
  20d3ea:	fe442703          	lw	a4,-28(s0)
  20d3ee:	400007b7          	lui	a5,0x40000
  20d3f2:	8fd9                	or	a5,a5,a4
  20d3f4:	fef42223          	sw	a5,-28(s0)
  20d3f8:	fc042783          	lw	a5,-64(s0)
  20d3fc:	873e                	mv	a4,a5
  20d3fe:	6789                	lui	a5,0x2
  20d400:	17fd                	addi	a5,a5,-1
  20d402:	8ff9                	and	a5,a5,a4
  20d404:	17c2                	slli	a5,a5,0x30
  20d406:	93c1                	srli	a5,a5,0x30
  20d408:	873e                	mv	a4,a5
  20d40a:	6789                	lui	a5,0x2
  20d40c:	17fd                	addi	a5,a5,-1
  20d40e:	00f776b3          	and	a3,a4,a5
  20d412:	fe442703          	lw	a4,-28(s0)
  20d416:	77f9                	lui	a5,0xffffe
  20d418:	8ff9                	and	a5,a5,a4
  20d41a:	873e                	mv	a4,a5
  20d41c:	87b6                	mv	a5,a3
  20d41e:	8fd9                	or	a5,a5,a4
  20d420:	fef42223          	sw	a5,-28(s0)
  20d424:	20f00793          	li	a5,527
  20d428:	07da                	slli	a5,a5,0x16
  20d42a:	31078793          	addi	a5,a5,784 # ffffffffffffe310 <g_nvmeTask+0xffffffffffdedea8>
  20d42e:	fd842703          	lw	a4,-40(s0)
  20d432:	c398                	sw	a4,0(a5)
  20d434:	20f00793          	li	a5,527
  20d438:	07da                	slli	a5,a5,0x16
  20d43a:	31478793          	addi	a5,a5,788
  20d43e:	fdc42703          	lw	a4,-36(s0)
  20d442:	c398                	sw	a4,0(a5)
  20d444:	20f00793          	li	a5,527
  20d448:	07da                	slli	a5,a5,0x16
  20d44a:	31878793          	addi	a5,a5,792
  20d44e:	fe042703          	lw	a4,-32(s0)
  20d452:	c398                	sw	a4,0(a5)
  20d454:	20f00793          	li	a5,527
  20d458:	07da                	slli	a5,a5,0x16
  20d45a:	31c78793          	addi	a5,a5,796
  20d45e:	fe442703          	lw	a4,-28(s0)
  20d462:	c398                	sw	a4,0(a5)
  20d464:	20f00793          	li	a5,527
  20d468:	07da                	slli	a5,a5,0x16
  20d46a:	32078793          	addi	a5,a5,800
  20d46e:	fe842703          	lw	a4,-24(s0)
  20d472:	c398                	sw	a4,0(a5)
  20d474:	002107b7          	lui	a5,0x210
  20d478:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d47c:	0057c783          	lbu	a5,5(a5)
  20d480:	2785                	addiw	a5,a5,1
  20d482:	0ff7f713          	andi	a4,a5,255
  20d486:	002107b7          	lui	a5,0x210
  20d48a:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d48e:	00e782a3          	sb	a4,5(a5)
  20d492:	002107b7          	lui	a5,0x210
  20d496:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d49a:	479c                	lw	a5,8(a5)
  20d49c:	2785                	addiw	a5,a5,1
  20d49e:	0007871b          	sext.w	a4,a5
  20d4a2:	002107b7          	lui	a5,0x210
  20d4a6:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d4aa:	c798                	sw	a4,8(a5)
  20d4ac:	0001                	nop
  20d4ae:	70e2                	ld	ra,56(sp)
  20d4b0:	7442                	ld	s0,48(sp)
  20d4b2:	6121                	addi	sp,sp,64
  20d4b4:	8082                	ret
  20d4b6:	0001                	nop

000000000020d4b8 <set_direct_rx_dma>:
  20d4b8:	7139                	addi	sp,sp,-64
  20d4ba:	fc06                	sd	ra,56(sp)
  20d4bc:	f822                	sd	s0,48(sp)
  20d4be:	0080                	addi	s0,sp,64
  20d4c0:	87aa                	mv	a5,a0
  20d4c2:	8736                	mv	a4,a3
  20d4c4:	fcf42623          	sw	a5,-52(s0)
  20d4c8:	87ae                	mv	a5,a1
  20d4ca:	fcf42423          	sw	a5,-56(s0)
  20d4ce:	87b2                	mv	a5,a2
  20d4d0:	fcf42223          	sw	a5,-60(s0)
  20d4d4:	87ba                	mv	a5,a4
  20d4d6:	fcf42023          	sw	a5,-64(s0)
  20d4da:	fc042783          	lw	a5,-64(s0)
  20d4de:	0007871b          	sext.w	a4,a5
  20d4e2:	6785                	lui	a5,0x1
  20d4e4:	00e7e763          	bltu	a5,a4,20d4f2 <set_direct_rx_dma+0x3a>
  20d4e8:	fc442783          	lw	a5,-60(s0)
  20d4ec:	8b8d                	andi	a5,a5,3
  20d4ee:	2781                	sext.w	a5,a5
  20d4f0:	cb81                	beqz	a5,20d500 <set_direct_rx_dma+0x48>
  20d4f2:	002107b7          	lui	a5,0x210
  20d4f6:	89078513          	addi	a0,a5,-1904 # 20f890 <nvme_main+0xdda>
  20d4fa:	8bef70ef          	jal	ra,2045b8 <cpl_print>
  20d4fe:	a001                	j	20d4fe <set_direct_rx_dma+0x46>
  20d500:	fcc42783          	lw	a5,-52(s0)
  20d504:	fcf42c23          	sw	a5,-40(s0)
  20d508:	fc842783          	lw	a5,-56(s0)
  20d50c:	fcf42e23          	sw	a5,-36(s0)
  20d510:	fc442783          	lw	a5,-60(s0)
  20d514:	fef42023          	sw	a5,-32(s0)
  20d518:	fe042223          	sw	zero,-28(s0)
  20d51c:	fe442703          	lw	a4,-28(s0)
  20d520:	800007b7          	lui	a5,0x80000
  20d524:	8fd9                	or	a5,a5,a4
  20d526:	fef42223          	sw	a5,-28(s0)
  20d52a:	fe442703          	lw	a4,-28(s0)
  20d52e:	c00007b7          	lui	a5,0xc0000
  20d532:	17fd                	addi	a5,a5,-1
  20d534:	8ff9                	and	a5,a5,a4
  20d536:	fef42223          	sw	a5,-28(s0)
  20d53a:	fc042783          	lw	a5,-64(s0)
  20d53e:	873e                	mv	a4,a5
  20d540:	6789                	lui	a5,0x2
  20d542:	17fd                	addi	a5,a5,-1
  20d544:	8ff9                	and	a5,a5,a4
  20d546:	17c2                	slli	a5,a5,0x30
  20d548:	93c1                	srli	a5,a5,0x30
  20d54a:	873e                	mv	a4,a5
  20d54c:	6789                	lui	a5,0x2
  20d54e:	17fd                	addi	a5,a5,-1
  20d550:	00f776b3          	and	a3,a4,a5
  20d554:	fe442703          	lw	a4,-28(s0)
  20d558:	77f9                	lui	a5,0xffffe
  20d55a:	8ff9                	and	a5,a5,a4
  20d55c:	873e                	mv	a4,a5
  20d55e:	87b6                	mv	a5,a3
  20d560:	8fd9                	or	a5,a5,a4
  20d562:	fef42223          	sw	a5,-28(s0)
  20d566:	20f00793          	li	a5,527
  20d56a:	07da                	slli	a5,a5,0x16
  20d56c:	31078793          	addi	a5,a5,784 # ffffffffffffe310 <g_nvmeTask+0xffffffffffdedea8>
  20d570:	fd842703          	lw	a4,-40(s0)
  20d574:	c398                	sw	a4,0(a5)
  20d576:	20f00793          	li	a5,527
  20d57a:	07da                	slli	a5,a5,0x16
  20d57c:	31478793          	addi	a5,a5,788
  20d580:	fdc42703          	lw	a4,-36(s0)
  20d584:	c398                	sw	a4,0(a5)
  20d586:	20f00793          	li	a5,527
  20d58a:	07da                	slli	a5,a5,0x16
  20d58c:	31878793          	addi	a5,a5,792
  20d590:	fe042703          	lw	a4,-32(s0)
  20d594:	c398                	sw	a4,0(a5)
  20d596:	20f00793          	li	a5,527
  20d59a:	07da                	slli	a5,a5,0x16
  20d59c:	31c78793          	addi	a5,a5,796
  20d5a0:	fe442703          	lw	a4,-28(s0)
  20d5a4:	c398                	sw	a4,0(a5)
  20d5a6:	20f00793          	li	a5,527
  20d5aa:	07da                	slli	a5,a5,0x16
  20d5ac:	32078793          	addi	a5,a5,800
  20d5b0:	fe842703          	lw	a4,-24(s0)
  20d5b4:	c398                	sw	a4,0(a5)
  20d5b6:	002107b7          	lui	a5,0x210
  20d5ba:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d5be:	0047c783          	lbu	a5,4(a5)
  20d5c2:	2785                	addiw	a5,a5,1
  20d5c4:	0ff7f713          	andi	a4,a5,255
  20d5c8:	002107b7          	lui	a5,0x210
  20d5cc:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d5d0:	00e78223          	sb	a4,4(a5)
  20d5d4:	002107b7          	lui	a5,0x210
  20d5d8:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d5dc:	47dc                	lw	a5,12(a5)
  20d5de:	2785                	addiw	a5,a5,1
  20d5e0:	0007871b          	sext.w	a4,a5
  20d5e4:	002107b7          	lui	a5,0x210
  20d5e8:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d5ec:	c7d8                	sw	a4,12(a5)
  20d5ee:	0001                	nop
  20d5f0:	70e2                	ld	ra,56(sp)
  20d5f2:	7442                	ld	s0,48(sp)
  20d5f4:	6121                	addi	sp,sp,64
  20d5f6:	8082                	ret

000000000020d5f8 <set_auto_tx_dma>:
  20d5f8:	7139                	addi	sp,sp,-64
  20d5fa:	fc06                	sd	ra,56(sp)
  20d5fc:	f822                	sd	s0,48(sp)
  20d5fe:	0080                	addi	s0,sp,64
  20d600:	87aa                	mv	a5,a0
  20d602:	8736                	mv	a4,a3
  20d604:	fcf42623          	sw	a5,-52(s0)
  20d608:	87ae                	mv	a5,a1
  20d60a:	fcf42423          	sw	a5,-56(s0)
  20d60e:	87b2                	mv	a5,a2
  20d610:	fcf42223          	sw	a5,-60(s0)
  20d614:	87ba                	mv	a5,a4
  20d616:	fcf42023          	sw	a5,-64(s0)
  20d61a:	fc842783          	lw	a5,-56(s0)
  20d61e:	0007871b          	sext.w	a4,a5
  20d622:	0ff00793          	li	a5,255
  20d626:	00e7f963          	bgeu	a5,a4,20d638 <set_auto_tx_dma+0x40>
  20d62a:	002107b7          	lui	a5,0x210
  20d62e:	8b078513          	addi	a0,a5,-1872 # 20f8b0 <nvme_main+0xdfa>
  20d632:	f87f60ef          	jal	ra,2045b8 <cpl_print>
  20d636:	a001                	j	20d636 <set_auto_tx_dma+0x3e>
  20d638:	20f00793          	li	a5,527
  20d63c:	07da                	slli	a5,a5,0x16
  20d63e:	20478793          	addi	a5,a5,516
  20d642:	439c                	lw	a5,0(a5)
  20d644:	0007871b          	sext.w	a4,a5
  20d648:	002107b7          	lui	a5,0x210
  20d64c:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d650:	c398                	sw	a4,0(a5)
  20d652:	a831                	j	20d66e <set_auto_tx_dma+0x76>
  20d654:	20f00793          	li	a5,527
  20d658:	07da                	slli	a5,a5,0x16
  20d65a:	20478793          	addi	a5,a5,516
  20d65e:	439c                	lw	a5,0(a5)
  20d660:	0007871b          	sext.w	a4,a5
  20d664:	002107b7          	lui	a5,0x210
  20d668:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d66c:	c398                	sw	a4,0(a5)
  20d66e:	002107b7          	lui	a5,0x210
  20d672:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d676:	0077c783          	lbu	a5,7(a5)
  20d67a:	2781                	sext.w	a5,a5
  20d67c:	2785                	addiw	a5,a5,1
  20d67e:	2781                	sext.w	a5,a5
  20d680:	873e                	mv	a4,a5
  20d682:	41f7579b          	sraiw	a5,a4,0x1f
  20d686:	0187d79b          	srliw	a5,a5,0x18
  20d68a:	9f3d                	addw	a4,a4,a5
  20d68c:	0ff77713          	andi	a4,a4,255
  20d690:	40f707bb          	subw	a5,a4,a5
  20d694:	0007871b          	sext.w	a4,a5
  20d698:	002107b7          	lui	a5,0x210
  20d69c:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d6a0:	0037c783          	lbu	a5,3(a5)
  20d6a4:	2781                	sext.w	a5,a5
  20d6a6:	faf707e3          	beq	a4,a5,20d654 <set_auto_tx_dma+0x5c>
  20d6aa:	fc442783          	lw	a5,-60(s0)
  20d6ae:	fcf42c23          	sw	a5,-40(s0)
  20d6b2:	fe042223          	sw	zero,-28(s0)
  20d6b6:	fe442703          	lw	a4,-28(s0)
  20d6ba:	800007b7          	lui	a5,0x80000
  20d6be:	fff7c793          	not	a5,a5
  20d6c2:	8ff9                	and	a5,a5,a4
  20d6c4:	fef42223          	sw	a5,-28(s0)
  20d6c8:	fe442703          	lw	a4,-28(s0)
  20d6cc:	400007b7          	lui	a5,0x40000
  20d6d0:	8fd9                	or	a5,a5,a4
  20d6d2:	fef42223          	sw	a5,-28(s0)
  20d6d6:	fc842783          	lw	a5,-56(s0)
  20d6da:	1ff7f793          	andi	a5,a5,511
  20d6de:	17c2                	slli	a5,a5,0x30
  20d6e0:	93c1                	srli	a5,a5,0x30
  20d6e2:	1ff7f793          	andi	a5,a5,511
  20d6e6:	00e7979b          	slliw	a5,a5,0xe
  20d6ea:	fe442683          	lw	a3,-28(s0)
  20d6ee:	ff804737          	lui	a4,0xff804
  20d6f2:	177d                	addi	a4,a4,-1
  20d6f4:	8f75                	and	a4,a4,a3
  20d6f6:	8fd9                	or	a5,a5,a4
  20d6f8:	fef42223          	sw	a5,-28(s0)
  20d6fc:	fcc42783          	lw	a5,-52(s0)
  20d700:	fef42423          	sw	a5,-24(s0)
  20d704:	fc042783          	lw	a5,-64(s0)
  20d708:	8b85                	andi	a5,a5,1
  20d70a:	0ff7f793          	andi	a5,a5,255
  20d70e:	8b85                	andi	a5,a5,1
  20d710:	00d7979b          	slliw	a5,a5,0xd
  20d714:	fe442683          	lw	a3,-28(s0)
  20d718:	7779                	lui	a4,0xffffe
  20d71a:	177d                	addi	a4,a4,-1
  20d71c:	8f75                	and	a4,a4,a3
  20d71e:	8fd9                	or	a5,a5,a4
  20d720:	fef42223          	sw	a5,-28(s0)
  20d724:	20f00793          	li	a5,527
  20d728:	07da                	slli	a5,a5,0x16
  20d72a:	31078793          	addi	a5,a5,784 # 40000310 <g_nvmeTask+0x3fdefea8>
  20d72e:	fd842703          	lw	a4,-40(s0)
  20d732:	c398                	sw	a4,0(a5)
  20d734:	20f00793          	li	a5,527
  20d738:	07da                	slli	a5,a5,0x16
  20d73a:	31c78793          	addi	a5,a5,796
  20d73e:	fe442703          	lw	a4,-28(s0)
  20d742:	c398                	sw	a4,0(a5)
  20d744:	20f00793          	li	a5,527
  20d748:	07da                	slli	a5,a5,0x16
  20d74a:	32078793          	addi	a5,a5,800
  20d74e:	fe842703          	lw	a4,-24(s0)
  20d752:	c398                	sw	a4,0(a5)
  20d754:	002107b7          	lui	a5,0x210
  20d758:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d75c:	0077c783          	lbu	a5,7(a5)
  20d760:	0017871b          	addiw	a4,a5,1
  20d764:	0ff77693          	andi	a3,a4,255
  20d768:	00210737          	lui	a4,0x210
  20d76c:	45070713          	addi	a4,a4,1104 # 210450 <g_hostDmaStatus>
  20d770:	00d703a3          	sb	a3,7(a4)
  20d774:	fef407a3          	sb	a5,-17(s0)
  20d778:	002107b7          	lui	a5,0x210
  20d77c:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d780:	0077c703          	lbu	a4,7(a5)
  20d784:	fef44783          	lbu	a5,-17(s0)
  20d788:	0ff7f793          	andi	a5,a5,255
  20d78c:	00f77d63          	bgeu	a4,a5,20d7a6 <set_auto_tx_dma+0x1ae>
  20d790:	002107b7          	lui	a5,0x210
  20d794:	4487a783          	lw	a5,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20d798:	2785                	addiw	a5,a5,1
  20d79a:	0007871b          	sext.w	a4,a5
  20d79e:	002107b7          	lui	a5,0x210
  20d7a2:	44e7a423          	sw	a4,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20d7a6:	002107b7          	lui	a5,0x210
  20d7aa:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d7ae:	4b9c                	lw	a5,16(a5)
  20d7b0:	2785                	addiw	a5,a5,1
  20d7b2:	0007871b          	sext.w	a4,a5
  20d7b6:	002107b7          	lui	a5,0x210
  20d7ba:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d7be:	cb98                	sw	a4,16(a5)
  20d7c0:	0001                	nop
  20d7c2:	70e2                	ld	ra,56(sp)
  20d7c4:	7442                	ld	s0,48(sp)
  20d7c6:	6121                	addi	sp,sp,64
  20d7c8:	8082                	ret
  20d7ca:	0001                	nop

000000000020d7cc <set_auto_rx_dma>:
  20d7cc:	7139                	addi	sp,sp,-64
  20d7ce:	fc22                	sd	s0,56(sp)
  20d7d0:	0080                	addi	s0,sp,64
  20d7d2:	87aa                	mv	a5,a0
  20d7d4:	8736                	mv	a4,a3
  20d7d6:	fcf42623          	sw	a5,-52(s0)
  20d7da:	87ae                	mv	a5,a1
  20d7dc:	fcf42423          	sw	a5,-56(s0)
  20d7e0:	87b2                	mv	a5,a2
  20d7e2:	fcf42223          	sw	a5,-60(s0)
  20d7e6:	87ba                	mv	a5,a4
  20d7e8:	fcf42023          	sw	a5,-64(s0)
  20d7ec:	20f00793          	li	a5,527
  20d7f0:	07da                	slli	a5,a5,0x16
  20d7f2:	20478793          	addi	a5,a5,516
  20d7f6:	439c                	lw	a5,0(a5)
  20d7f8:	0007871b          	sext.w	a4,a5
  20d7fc:	002107b7          	lui	a5,0x210
  20d800:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d804:	c398                	sw	a4,0(a5)
  20d806:	a831                	j	20d822 <set_auto_rx_dma+0x56>
  20d808:	20f00793          	li	a5,527
  20d80c:	07da                	slli	a5,a5,0x16
  20d80e:	20478793          	addi	a5,a5,516
  20d812:	439c                	lw	a5,0(a5)
  20d814:	0007871b          	sext.w	a4,a5
  20d818:	002107b7          	lui	a5,0x210
  20d81c:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d820:	c398                	sw	a4,0(a5)
  20d822:	002107b7          	lui	a5,0x210
  20d826:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d82a:	0067c783          	lbu	a5,6(a5)
  20d82e:	2781                	sext.w	a5,a5
  20d830:	2785                	addiw	a5,a5,1
  20d832:	2781                	sext.w	a5,a5
  20d834:	873e                	mv	a4,a5
  20d836:	41f7579b          	sraiw	a5,a4,0x1f
  20d83a:	0187d79b          	srliw	a5,a5,0x18
  20d83e:	9f3d                	addw	a4,a4,a5
  20d840:	0ff77713          	andi	a4,a4,255
  20d844:	40f707bb          	subw	a5,a4,a5
  20d848:	0007871b          	sext.w	a4,a5
  20d84c:	002107b7          	lui	a5,0x210
  20d850:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d854:	0027c783          	lbu	a5,2(a5)
  20d858:	2781                	sext.w	a5,a5
  20d85a:	faf707e3          	beq	a4,a5,20d808 <set_auto_rx_dma+0x3c>
  20d85e:	fc442783          	lw	a5,-60(s0)
  20d862:	fcf42c23          	sw	a5,-40(s0)
  20d866:	fe042223          	sw	zero,-28(s0)
  20d86a:	fe442703          	lw	a4,-28(s0)
  20d86e:	800007b7          	lui	a5,0x80000
  20d872:	fff7c793          	not	a5,a5
  20d876:	8ff9                	and	a5,a5,a4
  20d878:	fef42223          	sw	a5,-28(s0)
  20d87c:	fe442703          	lw	a4,-28(s0)
  20d880:	c00007b7          	lui	a5,0xc0000
  20d884:	17fd                	addi	a5,a5,-1
  20d886:	8ff9                	and	a5,a5,a4
  20d888:	fef42223          	sw	a5,-28(s0)
  20d88c:	fc842783          	lw	a5,-56(s0)
  20d890:	1ff7f793          	andi	a5,a5,511
  20d894:	17c2                	slli	a5,a5,0x30
  20d896:	93c1                	srli	a5,a5,0x30
  20d898:	1ff7f793          	andi	a5,a5,511
  20d89c:	00e7979b          	slliw	a5,a5,0xe
  20d8a0:	fe442683          	lw	a3,-28(s0)
  20d8a4:	ff804737          	lui	a4,0xff804
  20d8a8:	177d                	addi	a4,a4,-1
  20d8aa:	8f75                	and	a4,a4,a3
  20d8ac:	8fd9                	or	a5,a5,a4
  20d8ae:	fef42223          	sw	a5,-28(s0)
  20d8b2:	fcc42783          	lw	a5,-52(s0)
  20d8b6:	fef42423          	sw	a5,-24(s0)
  20d8ba:	fc042783          	lw	a5,-64(s0)
  20d8be:	8b85                	andi	a5,a5,1
  20d8c0:	0ff7f793          	andi	a5,a5,255
  20d8c4:	8b85                	andi	a5,a5,1
  20d8c6:	00d7979b          	slliw	a5,a5,0xd
  20d8ca:	fe442683          	lw	a3,-28(s0)
  20d8ce:	7779                	lui	a4,0xffffe
  20d8d0:	177d                	addi	a4,a4,-1
  20d8d2:	8f75                	and	a4,a4,a3
  20d8d4:	8fd9                	or	a5,a5,a4
  20d8d6:	fef42223          	sw	a5,-28(s0)
  20d8da:	20f00793          	li	a5,527
  20d8de:	07da                	slli	a5,a5,0x16
  20d8e0:	31078793          	addi	a5,a5,784 # ffffffffc0000310 <g_nvmeTask+0xffffffffbfdefea8>
  20d8e4:	fd842703          	lw	a4,-40(s0)
  20d8e8:	c398                	sw	a4,0(a5)
  20d8ea:	20f00793          	li	a5,527
  20d8ee:	07da                	slli	a5,a5,0x16
  20d8f0:	31c78793          	addi	a5,a5,796
  20d8f4:	fe442703          	lw	a4,-28(s0)
  20d8f8:	c398                	sw	a4,0(a5)
  20d8fa:	20f00793          	li	a5,527
  20d8fe:	07da                	slli	a5,a5,0x16
  20d900:	32078793          	addi	a5,a5,800
  20d904:	fe842703          	lw	a4,-24(s0)
  20d908:	c398                	sw	a4,0(a5)
  20d90a:	002107b7          	lui	a5,0x210
  20d90e:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d912:	0067c783          	lbu	a5,6(a5)
  20d916:	0017871b          	addiw	a4,a5,1
  20d91a:	0ff77693          	andi	a3,a4,255
  20d91e:	00210737          	lui	a4,0x210
  20d922:	45070713          	addi	a4,a4,1104 # 210450 <g_hostDmaStatus>
  20d926:	00d70323          	sb	a3,6(a4)
  20d92a:	fef407a3          	sb	a5,-17(s0)
  20d92e:	002107b7          	lui	a5,0x210
  20d932:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d936:	0067c703          	lbu	a4,6(a5)
  20d93a:	fef44783          	lbu	a5,-17(s0)
  20d93e:	0ff7f793          	andi	a5,a5,255
  20d942:	00f77f63          	bgeu	a4,a5,20d960 <set_auto_rx_dma+0x194>
  20d946:	002107b7          	lui	a5,0x210
  20d94a:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20d94e:	43dc                	lw	a5,4(a5)
  20d950:	2785                	addiw	a5,a5,1
  20d952:	0007871b          	sext.w	a4,a5
  20d956:	002107b7          	lui	a5,0x210
  20d95a:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20d95e:	c3d8                	sw	a4,4(a5)
  20d960:	002107b7          	lui	a5,0x210
  20d964:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d968:	4bdc                	lw	a5,20(a5)
  20d96a:	2785                	addiw	a5,a5,1
  20d96c:	0007871b          	sext.w	a4,a5
  20d970:	002107b7          	lui	a5,0x210
  20d974:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d978:	cbd8                	sw	a4,20(a5)
  20d97a:	0001                	nop
  20d97c:	7462                	ld	s0,56(sp)
  20d97e:	6121                	addi	sp,sp,64
  20d980:	8082                	ret
  20d982:	0001                	nop

000000000020d984 <check_direct_tx_dma_done>:
  20d984:	1141                	addi	sp,sp,-16
  20d986:	e422                	sd	s0,8(sp)
  20d988:	0800                	addi	s0,sp,16
  20d98a:	a831                	j	20d9a6 <check_direct_tx_dma_done+0x22>
  20d98c:	20f00793          	li	a5,527
  20d990:	07da                	slli	a5,a5,0x16
  20d992:	20478793          	addi	a5,a5,516
  20d996:	439c                	lw	a5,0(a5)
  20d998:	0007871b          	sext.w	a4,a5
  20d99c:	002107b7          	lui	a5,0x210
  20d9a0:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d9a4:	c398                	sw	a4,0(a5)
  20d9a6:	002107b7          	lui	a5,0x210
  20d9aa:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d9ae:	0017c703          	lbu	a4,1(a5)
  20d9b2:	002107b7          	lui	a5,0x210
  20d9b6:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d9ba:	0057c783          	lbu	a5,5(a5)
  20d9be:	fcf717e3          	bne	a4,a5,20d98c <check_direct_tx_dma_done+0x8>
  20d9c2:	0001                	nop
  20d9c4:	0001                	nop
  20d9c6:	6422                	ld	s0,8(sp)
  20d9c8:	0141                	addi	sp,sp,16
  20d9ca:	8082                	ret

000000000020d9cc <check_direct_rx_dma_done>:
  20d9cc:	1141                	addi	sp,sp,-16
  20d9ce:	e422                	sd	s0,8(sp)
  20d9d0:	0800                	addi	s0,sp,16
  20d9d2:	a831                	j	20d9ee <check_direct_rx_dma_done+0x22>
  20d9d4:	20f00793          	li	a5,527
  20d9d8:	07da                	slli	a5,a5,0x16
  20d9da:	20478793          	addi	a5,a5,516
  20d9de:	439c                	lw	a5,0(a5)
  20d9e0:	0007871b          	sext.w	a4,a5
  20d9e4:	002107b7          	lui	a5,0x210
  20d9e8:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d9ec:	c398                	sw	a4,0(a5)
  20d9ee:	002107b7          	lui	a5,0x210
  20d9f2:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20d9f6:	0007c703          	lbu	a4,0(a5)
  20d9fa:	002107b7          	lui	a5,0x210
  20d9fe:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da02:	0047c783          	lbu	a5,4(a5)
  20da06:	fcf717e3          	bne	a4,a5,20d9d4 <check_direct_rx_dma_done+0x8>
  20da0a:	0001                	nop
  20da0c:	0001                	nop
  20da0e:	6422                	ld	s0,8(sp)
  20da10:	0141                	addi	sp,sp,16
  20da12:	8082                	ret

000000000020da14 <check_auto_tx_dma_done>:
  20da14:	1141                	addi	sp,sp,-16
  20da16:	e422                	sd	s0,8(sp)
  20da18:	0800                	addi	s0,sp,16
  20da1a:	a831                	j	20da36 <check_auto_tx_dma_done+0x22>
  20da1c:	20f00793          	li	a5,527
  20da20:	07da                	slli	a5,a5,0x16
  20da22:	20478793          	addi	a5,a5,516
  20da26:	439c                	lw	a5,0(a5)
  20da28:	0007871b          	sext.w	a4,a5
  20da2c:	002107b7          	lui	a5,0x210
  20da30:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da34:	c398                	sw	a4,0(a5)
  20da36:	002107b7          	lui	a5,0x210
  20da3a:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da3e:	0037c703          	lbu	a4,3(a5)
  20da42:	002107b7          	lui	a5,0x210
  20da46:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da4a:	0077c783          	lbu	a5,7(a5)
  20da4e:	fcf717e3          	bne	a4,a5,20da1c <check_auto_tx_dma_done+0x8>
  20da52:	0001                	nop
  20da54:	0001                	nop
  20da56:	6422                	ld	s0,8(sp)
  20da58:	0141                	addi	sp,sp,16
  20da5a:	8082                	ret

000000000020da5c <check_auto_rx_dma_done>:
  20da5c:	1141                	addi	sp,sp,-16
  20da5e:	e422                	sd	s0,8(sp)
  20da60:	0800                	addi	s0,sp,16
  20da62:	a831                	j	20da7e <check_auto_rx_dma_done+0x22>
  20da64:	20f00793          	li	a5,527
  20da68:	07da                	slli	a5,a5,0x16
  20da6a:	20478793          	addi	a5,a5,516
  20da6e:	439c                	lw	a5,0(a5)
  20da70:	0007871b          	sext.w	a4,a5
  20da74:	002107b7          	lui	a5,0x210
  20da78:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da7c:	c398                	sw	a4,0(a5)
  20da7e:	002107b7          	lui	a5,0x210
  20da82:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da86:	0027c703          	lbu	a4,2(a5)
  20da8a:	002107b7          	lui	a5,0x210
  20da8e:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20da92:	0067c783          	lbu	a5,6(a5)
  20da96:	fcf717e3          	bne	a4,a5,20da64 <check_auto_rx_dma_done+0x8>
  20da9a:	0001                	nop
  20da9c:	0001                	nop
  20da9e:	6422                	ld	s0,8(sp)
  20daa0:	0141                	addi	sp,sp,16
  20daa2:	8082                	ret

000000000020daa4 <check_auto_tx_dma_partial_done>:
  20daa4:	1101                	addi	sp,sp,-32
  20daa6:	ec22                	sd	s0,24(sp)
  20daa8:	1000                	addi	s0,sp,32
  20daaa:	87aa                	mv	a5,a0
  20daac:	872e                	mv	a4,a1
  20daae:	fef42623          	sw	a5,-20(s0)
  20dab2:	87ba                	mv	a5,a4
  20dab4:	fef42423          	sw	a5,-24(s0)
  20dab8:	20f00793          	li	a5,527
  20dabc:	07da                	slli	a5,a5,0x16
  20dabe:	20478793          	addi	a5,a5,516
  20dac2:	439c                	lw	a5,0(a5)
  20dac4:	0007871b          	sext.w	a4,a5
  20dac8:	002107b7          	lui	a5,0x210
  20dacc:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dad0:	c398                	sw	a4,0(a5)
  20dad2:	002107b7          	lui	a5,0x210
  20dad6:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dada:	0037c703          	lbu	a4,3(a5)
  20dade:	002107b7          	lui	a5,0x210
  20dae2:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dae6:	0077c783          	lbu	a5,7(a5)
  20daea:	00f71463          	bne	a4,a5,20daf2 <check_auto_tx_dma_partial_done+0x4e>
  20daee:	4785                	li	a5,1
  20daf0:	a8e5                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20daf2:	002107b7          	lui	a5,0x210
  20daf6:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dafa:	0037c783          	lbu	a5,3(a5)
  20dafe:	0007871b          	sext.w	a4,a5
  20db02:	fec42783          	lw	a5,-20(s0)
  20db06:	2781                	sext.w	a5,a5
  20db08:	06f77663          	bgeu	a4,a5,20db74 <check_auto_tx_dma_partial_done+0xd0>
  20db0c:	002107b7          	lui	a5,0x210
  20db10:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20db14:	0077c783          	lbu	a5,7(a5)
  20db18:	0007871b          	sext.w	a4,a5
  20db1c:	fec42783          	lw	a5,-20(s0)
  20db20:	2781                	sext.w	a5,a5
  20db22:	02f77e63          	bgeu	a4,a5,20db5e <check_auto_tx_dma_partial_done+0xba>
  20db26:	002107b7          	lui	a5,0x210
  20db2a:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20db2e:	0077c703          	lbu	a4,7(a5)
  20db32:	002107b7          	lui	a5,0x210
  20db36:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20db3a:	0037c783          	lbu	a5,3(a5)
  20db3e:	00e7f463          	bgeu	a5,a4,20db46 <check_auto_tx_dma_partial_done+0xa2>
  20db42:	4785                	li	a5,1
  20db44:	a055                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20db46:	002107b7          	lui	a5,0x210
  20db4a:	4487a703          	lw	a4,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20db4e:	fe842783          	lw	a5,-24(s0)
  20db52:	2785                	addiw	a5,a5,1
  20db54:	2781                	sext.w	a5,a5
  20db56:	08f70863          	beq	a4,a5,20dbe6 <check_auto_tx_dma_partial_done+0x142>
  20db5a:	4785                	li	a5,1
  20db5c:	a071                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20db5e:	002107b7          	lui	a5,0x210
  20db62:	4487a703          	lw	a4,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20db66:	fe842783          	lw	a5,-24(s0)
  20db6a:	2781                	sext.w	a5,a5
  20db6c:	06e78d63          	beq	a5,a4,20dbe6 <check_auto_tx_dma_partial_done+0x142>
  20db70:	4785                	li	a5,1
  20db72:	a89d                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20db74:	002107b7          	lui	a5,0x210
  20db78:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20db7c:	0037c783          	lbu	a5,3(a5)
  20db80:	0007871b          	sext.w	a4,a5
  20db84:	fec42783          	lw	a5,-20(s0)
  20db88:	2781                	sext.w	a5,a5
  20db8a:	00e79463          	bne	a5,a4,20db92 <check_auto_tx_dma_partial_done+0xee>
  20db8e:	4785                	li	a5,1
  20db90:	a8a1                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20db92:	002107b7          	lui	a5,0x210
  20db96:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20db9a:	0077c783          	lbu	a5,7(a5)
  20db9e:	0007871b          	sext.w	a4,a5
  20dba2:	fec42783          	lw	a5,-20(s0)
  20dba6:	2781                	sext.w	a5,a5
  20dba8:	00f77463          	bgeu	a4,a5,20dbb0 <check_auto_tx_dma_partial_done+0x10c>
  20dbac:	4785                	li	a5,1
  20dbae:	a82d                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20dbb0:	002107b7          	lui	a5,0x210
  20dbb4:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dbb8:	0077c703          	lbu	a4,7(a5)
  20dbbc:	002107b7          	lui	a5,0x210
  20dbc0:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dbc4:	0037c783          	lbu	a5,3(a5)
  20dbc8:	00e7f463          	bgeu	a5,a4,20dbd0 <check_auto_tx_dma_partial_done+0x12c>
  20dbcc:	4785                	li	a5,1
  20dbce:	a829                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20dbd0:	002107b7          	lui	a5,0x210
  20dbd4:	4487a703          	lw	a4,1096(a5) # 210448 <g_hostDmaAssistStatus>
  20dbd8:	fe842783          	lw	a5,-24(s0)
  20dbdc:	2781                	sext.w	a5,a5
  20dbde:	00e78463          	beq	a5,a4,20dbe6 <check_auto_tx_dma_partial_done+0x142>
  20dbe2:	4785                	li	a5,1
  20dbe4:	a011                	j	20dbe8 <check_auto_tx_dma_partial_done+0x144>
  20dbe6:	4781                	li	a5,0
  20dbe8:	853e                	mv	a0,a5
  20dbea:	6462                	ld	s0,24(sp)
  20dbec:	6105                	addi	sp,sp,32
  20dbee:	8082                	ret

000000000020dbf0 <check_auto_rx_dma_partial_done>:
  20dbf0:	1101                	addi	sp,sp,-32
  20dbf2:	ec22                	sd	s0,24(sp)
  20dbf4:	1000                	addi	s0,sp,32
  20dbf6:	87aa                	mv	a5,a0
  20dbf8:	872e                	mv	a4,a1
  20dbfa:	fef42623          	sw	a5,-20(s0)
  20dbfe:	87ba                	mv	a5,a4
  20dc00:	fef42423          	sw	a5,-24(s0)
  20dc04:	20f00793          	li	a5,527
  20dc08:	07da                	slli	a5,a5,0x16
  20dc0a:	20478793          	addi	a5,a5,516
  20dc0e:	439c                	lw	a5,0(a5)
  20dc10:	0007871b          	sext.w	a4,a5
  20dc14:	002107b7          	lui	a5,0x210
  20dc18:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc1c:	c398                	sw	a4,0(a5)
  20dc1e:	002107b7          	lui	a5,0x210
  20dc22:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc26:	0027c703          	lbu	a4,2(a5)
  20dc2a:	002107b7          	lui	a5,0x210
  20dc2e:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc32:	0067c783          	lbu	a5,6(a5)
  20dc36:	00f71463          	bne	a4,a5,20dc3e <check_auto_rx_dma_partial_done+0x4e>
  20dc3a:	4785                	li	a5,1
  20dc3c:	a8fd                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dc3e:	002107b7          	lui	a5,0x210
  20dc42:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc46:	0027c783          	lbu	a5,2(a5)
  20dc4a:	0007871b          	sext.w	a4,a5
  20dc4e:	fec42783          	lw	a5,-20(s0)
  20dc52:	2781                	sext.w	a5,a5
  20dc54:	06f77863          	bgeu	a4,a5,20dcc4 <check_auto_rx_dma_partial_done+0xd4>
  20dc58:	002107b7          	lui	a5,0x210
  20dc5c:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc60:	0067c783          	lbu	a5,6(a5)
  20dc64:	0007871b          	sext.w	a4,a5
  20dc68:	fec42783          	lw	a5,-20(s0)
  20dc6c:	2781                	sext.w	a5,a5
  20dc6e:	02f77f63          	bgeu	a4,a5,20dcac <check_auto_rx_dma_partial_done+0xbc>
  20dc72:	002107b7          	lui	a5,0x210
  20dc76:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc7a:	0067c703          	lbu	a4,6(a5)
  20dc7e:	002107b7          	lui	a5,0x210
  20dc82:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dc86:	0027c783          	lbu	a5,2(a5)
  20dc8a:	00e7f463          	bgeu	a5,a4,20dc92 <check_auto_rx_dma_partial_done+0xa2>
  20dc8e:	4785                	li	a5,1
  20dc90:	a06d                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dc92:	002107b7          	lui	a5,0x210
  20dc96:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20dc9a:	43d8                	lw	a4,4(a5)
  20dc9c:	fe842783          	lw	a5,-24(s0)
  20dca0:	2785                	addiw	a5,a5,1
  20dca2:	2781                	sext.w	a5,a5
  20dca4:	08f70a63          	beq	a4,a5,20dd38 <check_auto_rx_dma_partial_done+0x148>
  20dca8:	4785                	li	a5,1
  20dcaa:	a841                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dcac:	002107b7          	lui	a5,0x210
  20dcb0:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20dcb4:	43d8                	lw	a4,4(a5)
  20dcb6:	fe842783          	lw	a5,-24(s0)
  20dcba:	2781                	sext.w	a5,a5
  20dcbc:	06e78e63          	beq	a5,a4,20dd38 <check_auto_rx_dma_partial_done+0x148>
  20dcc0:	4785                	li	a5,1
  20dcc2:	a8a5                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dcc4:	002107b7          	lui	a5,0x210
  20dcc8:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dccc:	0027c783          	lbu	a5,2(a5)
  20dcd0:	0007871b          	sext.w	a4,a5
  20dcd4:	fec42783          	lw	a5,-20(s0)
  20dcd8:	2781                	sext.w	a5,a5
  20dcda:	00e79463          	bne	a5,a4,20dce2 <check_auto_rx_dma_partial_done+0xf2>
  20dcde:	4785                	li	a5,1
  20dce0:	a8a9                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dce2:	002107b7          	lui	a5,0x210
  20dce6:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dcea:	0067c783          	lbu	a5,6(a5)
  20dcee:	0007871b          	sext.w	a4,a5
  20dcf2:	fec42783          	lw	a5,-20(s0)
  20dcf6:	2781                	sext.w	a5,a5
  20dcf8:	00f77463          	bgeu	a4,a5,20dd00 <check_auto_rx_dma_partial_done+0x110>
  20dcfc:	4785                	li	a5,1
  20dcfe:	a835                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dd00:	002107b7          	lui	a5,0x210
  20dd04:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dd08:	0067c703          	lbu	a4,6(a5)
  20dd0c:	002107b7          	lui	a5,0x210
  20dd10:	45078793          	addi	a5,a5,1104 # 210450 <g_hostDmaStatus>
  20dd14:	0027c783          	lbu	a5,2(a5)
  20dd18:	00e7f463          	bgeu	a5,a4,20dd20 <check_auto_rx_dma_partial_done+0x130>
  20dd1c:	4785                	li	a5,1
  20dd1e:	a831                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dd20:	002107b7          	lui	a5,0x210
  20dd24:	44878793          	addi	a5,a5,1096 # 210448 <g_hostDmaAssistStatus>
  20dd28:	43d8                	lw	a4,4(a5)
  20dd2a:	fe842783          	lw	a5,-24(s0)
  20dd2e:	2781                	sext.w	a5,a5
  20dd30:	00e78463          	beq	a5,a4,20dd38 <check_auto_rx_dma_partial_done+0x148>
  20dd34:	4785                	li	a5,1
  20dd36:	a011                	j	20dd3a <check_auto_rx_dma_partial_done+0x14a>
  20dd38:	4781                	li	a5,0
  20dd3a:	853e                	mv	a0,a5
  20dd3c:	6462                	ld	s0,24(sp)
  20dd3e:	6105                	addi	sp,sp,32
  20dd40:	8082                	ret

000000000020dd42 <get_num_of_queue>:
  20dd42:	7179                	addi	sp,sp,-48
  20dd44:	f022                	sd	s0,32(sp)
  20dd46:	842a                	mv	s0,a0
  20dd48:	00210537          	lui	a0,0x210
  20dd4c:	a0850513          	addi	a0,a0,-1528 # 20fa08 <nvme_main+0xf52>
  20dd50:	f406                	sd	ra,40(sp)
  20dd52:	ec26                	sd	s1,24(sp)
  20dd54:	e84a                	sd	s2,16(sp)
  20dd56:	0104549b          	srliw	s1,s0,0x10
  20dd5a:	85ff60ef          	jal	ra,2045b8 <cpl_print>
  20dd5e:	8526                	mv	a0,s1
  20dd60:	887f60ef          	jal	ra,2045e6 <cpl_printint>
  20dd64:	00210537          	lui	a0,0x210
  20dd68:	a4850513          	addi	a0,a0,-1464 # 20fa48 <nvme_main+0xf92>
  20dd6c:	03041913          	slli	s2,s0,0x30
  20dd70:	849f60ef          	jal	ra,2045b8 <cpl_print>
  20dd74:	03095913          	srli	s2,s2,0x30
  20dd78:	854a                	mv	a0,s2
  20dd7a:	86df60ef          	jal	ra,2045e6 <cpl_printint>
  20dd7e:	479d                	li	a5,7
  20dd80:	844a                	mv	s0,s2
  20dd82:	0697e363          	bltu	a5,s1,20dde8 <get_num_of_queue+0xa6>
  20dd86:	0014869b          	addiw	a3,s1,1
  20dd8a:	16c2                	slli	a3,a3,0x30
  20dd8c:	002107b7          	lui	a5,0x210
  20dd90:	8726                	mv	a4,s1
  20dd92:	92c1                	srli	a3,a3,0x30
  20dd94:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20dd98:	00e11523          	sh	a4,10(sp)
  20dd9c:	00d79623          	sh	a3,12(a5)
  20dda0:	471d                	li	a4,7
  20dda2:	06876163          	bltu	a4,s0,20de04 <get_num_of_queue+0xc2>
  20dda6:	0014071b          	addiw	a4,s0,1
  20ddaa:	1742                	slli	a4,a4,0x30
  20ddac:	9341                	srli	a4,a4,0x30
  20ddae:	00210537          	lui	a0,0x210
  20ddb2:	a8850513          	addi	a0,a0,-1400 # 20fa88 <nvme_main+0xfd2>
  20ddb6:	00e79723          	sh	a4,14(a5)
  20ddba:	00811423          	sh	s0,8(sp)
  20ddbe:	ffaf60ef          	jal	ra,2045b8 <cpl_print>
  20ddc2:	8526                	mv	a0,s1
  20ddc4:	823f60ef          	jal	ra,2045e6 <cpl_printint>
  20ddc8:	00210537          	lui	a0,0x210
  20ddcc:	ac850513          	addi	a0,a0,-1336 # 20fac8 <nvme_main+0x1012>
  20ddd0:	fe8f60ef          	jal	ra,2045b8 <cpl_print>
  20ddd4:	854a                	mv	a0,s2
  20ddd6:	811f60ef          	jal	ra,2045e6 <cpl_printint>
  20ddda:	70a2                	ld	ra,40(sp)
  20dddc:	7402                	ld	s0,32(sp)
  20ddde:	4522                	lw	a0,8(sp)
  20dde0:	64e2                	ld	s1,24(sp)
  20dde2:	6942                	ld	s2,16(sp)
  20dde4:	6145                	addi	sp,sp,48
  20dde6:	8082                	ret
  20dde8:	002107b7          	lui	a5,0x210
  20ddec:	471d                	li	a4,7
  20ddee:	46a1                	li	a3,8
  20ddf0:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20ddf4:	00e11523          	sh	a4,10(sp)
  20ddf8:	00d79623          	sh	a3,12(a5)
  20ddfc:	471d                	li	a4,7
  20ddfe:	449d                	li	s1,7
  20de00:	fa8773e3          	bgeu	a4,s0,20dda6 <get_num_of_queue+0x64>
  20de04:	491d                	li	s2,7
  20de06:	441d                	li	s0,7
  20de08:	4721                	li	a4,8
  20de0a:	b755                	j	20ddae <get_num_of_queue+0x6c>

000000000020de0c <handle_set_features>:
  20de0c:	1101                	addi	sp,sp,-32
  20de0e:	ec06                	sd	ra,24(sp)
  20de10:	e822                	sd	s0,16(sp)
  20de12:	e426                	sd	s1,8(sp)
  20de14:	e04a                	sd	s2,0(sp)
  20de16:	02954683          	lbu	a3,41(a0)
  20de1a:	02854603          	lbu	a2,40(a0)
  20de1e:	02a54783          	lbu	a5,42(a0)
  20de22:	02b54703          	lbu	a4,43(a0)
  20de26:	06a2                	slli	a3,a3,0x8
  20de28:	8ed1                	or	a3,a3,a2
  20de2a:	07c2                	slli	a5,a5,0x10
  20de2c:	8fd5                	or	a5,a5,a3
  20de2e:	0762                	slli	a4,a4,0x18
  20de30:	8f5d                	or	a4,a4,a5
  20de32:	0ff77793          	andi	a5,a4,255
  20de36:	46b9                	li	a3,14
  20de38:	06f6e663          	bltu	a3,a5,20dea4 <handle_set_features+0x98>
  20de3c:	0007091b          	sext.w	s2,a4
  20de40:	00210737          	lui	a4,0x210
  20de44:	078a                	slli	a5,a5,0x2
  20de46:	8c870713          	addi	a4,a4,-1848 # 20f8c8 <nvme_main+0xe12>
  20de4a:	97ba                	add	a5,a5,a4
  20de4c:	439c                	lw	a5,0(a5)
  20de4e:	84aa                	mv	s1,a0
  20de50:	842e                	mv	s0,a1
  20de52:	8782                	jr	a5
  20de54:	00210537          	lui	a0,0x210
  20de58:	b0850513          	addi	a0,a0,-1272 # 20fb08 <nvme_main+0x1052>
  20de5c:	f5cf60ef          	jal	ra,2045b8 <cpl_print>
  20de60:	02c4c783          	lbu	a5,44(s1)
  20de64:	00210737          	lui	a4,0x210
  20de68:	8b85                	andi	a5,a5,1
  20de6a:	46f72623          	sw	a5,1132(a4) # 21046c <g_nvmeTask+0x4>
  20de6e:	00040023          	sb	zero,0(s0)
  20de72:	000400a3          	sb	zero,1(s0)
  20de76:	00040123          	sb	zero,2(s0)
  20de7a:	000401a3          	sb	zero,3(s0)
  20de7e:	00040223          	sb	zero,4(s0)
  20de82:	000402a3          	sb	zero,5(s0)
  20de86:	00210537          	lui	a0,0x210
  20de8a:	b5850513          	addi	a0,a0,-1192 # 20fb58 <nvme_main+0x10a2>
  20de8e:	f2af60ef          	jal	ra,2045b8 <cpl_print>
  20de92:	6442                	ld	s0,16(sp)
  20de94:	60e2                	ld	ra,24(sp)
  20de96:	64a2                	ld	s1,8(sp)
  20de98:	0ff97513          	andi	a0,s2,255
  20de9c:	6902                	ld	s2,0(sp)
  20de9e:	6105                	addi	sp,sp,32
  20dea0:	f46f606f          	j	2045e6 <cpl_printint>
  20dea4:	00210537          	lui	a0,0x210
  20dea8:	b1850513          	addi	a0,a0,-1256 # 20fb18 <nvme_main+0x1062>
  20deac:	f0cf60ef          	jal	ra,2045b8 <cpl_print>
  20deb0:	00210537          	lui	a0,0x210
  20deb4:	b3850513          	addi	a0,a0,-1224 # 20fb38 <nvme_main+0x1082>
  20deb8:	f00f60ef          	jal	ra,2045b8 <cpl_print>
  20debc:	a001                	j	20debc <handle_set_features+0xb0>
  20debe:	00058023          	sb	zero,0(a1)
  20dec2:	000580a3          	sb	zero,1(a1)
  20dec6:	00058123          	sb	zero,2(a1)
  20deca:	000581a3          	sb	zero,3(a1)
  20dece:	02d54703          	lbu	a4,45(a0)
  20ded2:	02c54683          	lbu	a3,44(a0)
  20ded6:	02e54783          	lbu	a5,46(a0)
  20deda:	02f54503          	lbu	a0,47(a0)
  20dede:	0722                	slli	a4,a4,0x8
  20dee0:	8f55                	or	a4,a4,a3
  20dee2:	07c2                	slli	a5,a5,0x10
  20dee4:	8fd9                	or	a5,a5,a4
  20dee6:	0562                	slli	a0,a0,0x18
  20dee8:	8d5d                	or	a0,a0,a5
  20deea:	2501                	sext.w	a0,a0
  20deec:	e57ff0ef          	jal	ra,20dd42 <get_num_of_queue>
  20def0:	0085569b          	srliw	a3,a0,0x8
  20def4:	0105571b          	srliw	a4,a0,0x10
  20def8:	0185579b          	srliw	a5,a0,0x18
  20defc:	00a40123          	sb	a0,2(s0)
  20df00:	00d401a3          	sb	a3,3(s0)
  20df04:	00e40223          	sb	a4,4(s0)
  20df08:	00f402a3          	sb	a5,5(s0)
  20df0c:	bfad                	j	20de86 <handle_set_features+0x7a>

000000000020df0e <handle_get_features>:
  20df0e:	1101                	addi	sp,sp,-32
  20df10:	e822                	sd	s0,16(sp)
  20df12:	ec06                	sd	ra,24(sp)
  20df14:	02854783          	lbu	a5,40(a0)
  20df18:	4731                	li	a4,12
  20df1a:	842e                	mv	s0,a1
  20df1c:	00f76f63          	bltu	a4,a5,20df3a <handle_get_features+0x2c>
  20df20:	4605                	li	a2,1
  20df22:	04f67563          	bgeu	a2,a5,20df6c <handle_get_features+0x5e>
  20df26:	04f76363          	bltu	a4,a5,20df6c <handle_get_features+0x5e>
  20df2a:	00210737          	lui	a4,0x210
  20df2e:	078a                	slli	a5,a5,0x2
  20df30:	90470713          	addi	a4,a4,-1788 # 20f904 <nvme_main+0xe4e>
  20df34:	97ba                	add	a5,a5,a4
  20df36:	439c                	lw	a5,0(a5)
  20df38:	8782                	jr	a5
  20df3a:	0d000713          	li	a4,208
  20df3e:	02e79763          	bne	a5,a4,20df6c <handle_get_features+0x5e>
  20df42:	00040023          	sb	zero,0(s0)
  20df46:	000400a3          	sb	zero,1(s0)
  20df4a:	00040123          	sb	zero,2(s0)
  20df4e:	000401a3          	sb	zero,3(s0)
  20df52:	00040223          	sb	zero,4(s0)
  20df56:	000402a3          	sb	zero,5(s0)
  20df5a:	6442                	ld	s0,16(sp)
  20df5c:	60e2                	ld	ra,24(sp)
  20df5e:	00210537          	lui	a0,0x210
  20df62:	be050513          	addi	a0,a0,-1056 # 20fbe0 <nvme_main+0x112a>
  20df66:	6105                	addi	sp,sp,32
  20df68:	e50f606f          	j	2045b8 <cpl_print>
  20df6c:	00210537          	lui	a0,0x210
  20df70:	ba050513          	addi	a0,a0,-1120 # 20fba0 <nvme_main+0x10ea>
  20df74:	e44f60ef          	jal	ra,2045b8 <cpl_print>
  20df78:	00210537          	lui	a0,0x210
  20df7c:	bc050513          	addi	a0,a0,-1088 # 20fbc0 <nvme_main+0x110a>
  20df80:	e38f60ef          	jal	ra,2045b8 <cpl_print>
  20df84:	a001                	j	20df84 <handle_get_features+0x76>
  20df86:	00554603          	lbu	a2,5(a0)
  20df8a:	00454583          	lbu	a1,4(a0)
  20df8e:	00654703          	lbu	a4,6(a0)
  20df92:	00754783          	lbu	a5,7(a0)
  20df96:	00861693          	slli	a3,a2,0x8
  20df9a:	8ecd                	or	a3,a3,a1
  20df9c:	0742                	slli	a4,a4,0x10
  20df9e:	8f55                	or	a4,a4,a3
  20dfa0:	07e2                	slli	a5,a5,0x18
  20dfa2:	8fd9                	or	a5,a5,a4
  20dfa4:	2781                	sext.w	a5,a5
  20dfa6:	4705                	li	a4,1
  20dfa8:	0ae78d63          	beq	a5,a4,20e062 <handle_get_features+0x154>
  20dfac:	00210537          	lui	a0,0x210
  20dfb0:	b7050513          	addi	a0,a0,-1168 # 20fb70 <nvme_main+0x10ba>
  20dfb4:	e04f60ef          	jal	ra,2045b8 <cpl_print>
  20dfb8:	a001                	j	20dfb8 <handle_get_features+0xaa>
  20dfba:	00058123          	sb	zero,2(a1)
  20dfbe:	000581a3          	sb	zero,3(a1)
  20dfc2:	00058023          	sb	zero,0(a1)
  20dfc6:	000580a3          	sb	zero,1(a1)
  20dfca:	02d54603          	lbu	a2,45(a0)
  20dfce:	02c54583          	lbu	a1,44(a0)
  20dfd2:	02e54703          	lbu	a4,46(a0)
  20dfd6:	02f54783          	lbu	a5,47(a0)
  20dfda:	00861693          	slli	a3,a2,0x8
  20dfde:	8ecd                	or	a3,a3,a1
  20dfe0:	0742                	slli	a4,a4,0x10
  20dfe2:	8f55                	or	a4,a4,a3
  20dfe4:	07e2                	slli	a5,a5,0x18
  20dfe6:	8fd9                	or	a5,a5,a4
  20dfe8:	0087d613          	srli	a2,a5,0x8
  20dfec:	0107d693          	srli	a3,a5,0x10
  20dff0:	83e1                	srli	a5,a5,0x18
  20dff2:	00e40123          	sb	a4,2(s0)
  20dff6:	00c401a3          	sb	a2,3(s0)
  20dffa:	00d40223          	sb	a3,4(s0)
  20dffe:	00f402a3          	sb	a5,5(s0)
  20e002:	6442                	ld	s0,16(sp)
  20e004:	60e2                	ld	ra,24(sp)
  20e006:	00210537          	lui	a0,0x210
  20e00a:	be050513          	addi	a0,a0,-1056 # 20fbe0 <nvme_main+0x112a>
  20e00e:	6105                	addi	sp,sp,32
  20e010:	da8f606f          	j	2045b8 <cpl_print>
  20e014:	00210537          	lui	a0,0x210
  20e018:	b9050513          	addi	a0,a0,-1136 # 20fb90 <nvme_main+0x10da>
  20e01c:	d9cf60ef          	jal	ra,2045b8 <cpl_print>
  20e020:	002107b7          	lui	a5,0x210
  20e024:	46878793          	addi	a5,a5,1128 # 210468 <g_nvmeTask>
  20e028:	0047c603          	lbu	a2,4(a5)
  20e02c:	0057c683          	lbu	a3,5(a5)
  20e030:	0067c703          	lbu	a4,6(a5)
  20e034:	0077c783          	lbu	a5,7(a5)
  20e038:	00040023          	sb	zero,0(s0)
  20e03c:	000400a3          	sb	zero,1(s0)
  20e040:	00c40123          	sb	a2,2(s0)
  20e044:	00d401a3          	sb	a3,3(s0)
  20e048:	00e40223          	sb	a4,4(s0)
  20e04c:	00f402a3          	sb	a5,5(s0)
  20e050:	6442                	ld	s0,16(sp)
  20e052:	60e2                	ld	ra,24(sp)
  20e054:	00210537          	lui	a0,0x210
  20e058:	be050513          	addi	a0,a0,-1056 # 20fbe0 <nvme_main+0x112a>
  20e05c:	6105                	addi	sp,sp,32
  20e05e:	d5af606f          	j	2045b8 <cpl_print>
  20e062:	4791                	li	a5,4
  20e064:	c43e                	sw	a5,8(sp)
  20e066:	67a2                	ld	a5,8(sp)
  20e068:	00040123          	sb	zero,2(s0)
  20e06c:	000401a3          	sb	zero,3(s0)
  20e070:	0087d713          	srli	a4,a5,0x8
  20e074:	00f40023          	sb	a5,0(s0)
  20e078:	00e400a3          	sb	a4,1(s0)
  20e07c:	00040223          	sb	zero,4(s0)
  20e080:	000402a3          	sb	zero,5(s0)
  20e084:	bdd9                	j	20df5a <handle_get_features+0x4c>

000000000020e086 <handle_create_io_sq>:
  20e086:	7179                	addi	sp,sp,-48
  20e088:	f022                	sd	s0,32(sp)
  20e08a:	e84a                	sd	s2,16(sp)
  20e08c:	842a                	mv	s0,a0
  20e08e:	e44e                	sd	s3,8(sp)
  20e090:	f406                	sd	ra,40(sp)
  20e092:	ec26                	sd	s1,24(sp)
  20e094:	02954503          	lbu	a0,41(a0)
  20e098:	02d44683          	lbu	a3,45(s0)
  20e09c:	02844883          	lbu	a7,40(s0)
  20e0a0:	02a44703          	lbu	a4,42(s0)
  20e0a4:	02c44803          	lbu	a6,44(s0)
  20e0a8:	02e44783          	lbu	a5,46(s0)
  20e0ac:	02f44603          	lbu	a2,47(s0)
  20e0b0:	02b44483          	lbu	s1,43(s0)
  20e0b4:	0522                	slli	a0,a0,0x8
  20e0b6:	06a2                	slli	a3,a3,0x8
  20e0b8:	01156533          	or	a0,a0,a7
  20e0bc:	0106e6b3          	or	a3,a3,a6
  20e0c0:	0742                	slli	a4,a4,0x10
  20e0c2:	07c2                	slli	a5,a5,0x10
  20e0c4:	8f49                	or	a4,a4,a0
  20e0c6:	8fd5                	or	a5,a5,a3
  20e0c8:	0662                	slli	a2,a2,0x18
  20e0ca:	00210537          	lui	a0,0x210
  20e0ce:	8e5d                	or	a2,a2,a5
  20e0d0:	04e2                	slli	s1,s1,0x18
  20e0d2:	bf850513          	addi	a0,a0,-1032 # 20fbf8 <nvme_main+0x1142>
  20e0d6:	8cd9                	or	s1,s1,a4
  20e0d8:	892e                	mv	s2,a1
  20e0da:	0006099b          	sext.w	s3,a2
  20e0de:	cdaf60ef          	jal	ra,2045b8 <cpl_print>
  20e0e2:	01944683          	lbu	a3,25(s0)
  20e0e6:	01844583          	lbu	a1,24(s0)
  20e0ea:	01a44703          	lbu	a4,26(s0)
  20e0ee:	01b44783          	lbu	a5,27(s0)
  20e0f2:	06a2                	slli	a3,a3,0x8
  20e0f4:	8ecd                	or	a3,a3,a1
  20e0f6:	0742                	slli	a4,a4,0x10
  20e0f8:	8f55                	or	a4,a4,a3
  20e0fa:	07e2                	slli	a5,a5,0x18
  20e0fc:	8fd9                	or	a5,a5,a4
  20e0fe:	0037f693          	andi	a3,a5,3
  20e102:	eacd                	bnez	a3,20e1b4 <handle_create_io_sq+0x12e>
  20e104:	01d44583          	lbu	a1,29(s0)
  20e108:	01c44503          	lbu	a0,28(s0)
  20e10c:	01e44683          	lbu	a3,30(s0)
  20e110:	0007871b          	sext.w	a4,a5
  20e114:	01f44783          	lbu	a5,31(s0)
  20e118:	05a2                	slli	a1,a1,0x8
  20e11a:	8dc9                	or	a1,a1,a0
  20e11c:	06c2                	slli	a3,a3,0x10
  20e11e:	8ecd                	or	a3,a3,a1
  20e120:	07e2                	slli	a5,a5,0x18
  20e122:	8fd5                	or	a5,a5,a3
  20e124:	2781                	sext.w	a5,a5
  20e126:	66c1                	lui	a3,0x10
  20e128:	08d7f663          	bgeu	a5,a3,20e1b4 <handle_create_io_sq+0x12e>
  20e12c:	2481                	sext.w	s1,s1
  20e12e:	fff4869b          	addiw	a3,s1,-1
  20e132:	16c2                	slli	a3,a3,0x30
  20e134:	92c1                	srli	a3,a3,0x30
  20e136:	451d                	li	a0,7
  20e138:	08d56563          	bltu	a0,a3,20e1c2 <handle_create_io_sq+0x13c>
  20e13c:	0104d69b          	srliw	a3,s1,0x10
  20e140:	0ff00593          	li	a1,255
  20e144:	06d5ef63          	bltu	a1,a3,20e1c2 <handle_create_io_sq+0x13c>
  20e148:	0109d61b          	srliw	a2,s3,0x10
  20e14c:	fff6059b          	addiw	a1,a2,-1
  20e150:	15c2                	slli	a1,a1,0x30
  20e152:	91c1                	srli	a1,a1,0x30
  20e154:	06b56763          	bltu	a0,a1,20e1c2 <handle_create_io_sq+0x13c>
  20e158:	03049513          	slli	a0,s1,0x30
  20e15c:	9141                	srli	a0,a0,0x30
  20e15e:	357d                	addiw	a0,a0,-1
  20e160:	00151813          	slli	a6,a0,0x1
  20e164:	982a                	add	a6,a6,a0
  20e166:	002105b7          	lui	a1,0x210
  20e16a:	47858593          	addi	a1,a1,1144 # 210478 <g_nvmeTask+0x10>
  20e16e:	080a                	slli	a6,a6,0x2
  20e170:	982e                	add	a6,a6,a1
  20e172:	4305                	li	t1,1
  20e174:	4585                	li	a1,1
  20e176:	00680023          	sb	t1,0(a6)
  20e17a:	00d81123          	sh	a3,2(a6)
  20e17e:	00c800a3          	sb	a2,1(a6)
  20e182:	00e82223          	sw	a4,4(a6)
  20e186:	00f82423          	sw	a5,8(a6)
  20e18a:	812ff0ef          	jal	ra,20d19c <set_io_sq>
  20e18e:	70a2                	ld	ra,40(sp)
  20e190:	7402                	ld	s0,32(sp)
  20e192:	00090023          	sb	zero,0(s2)
  20e196:	000900a3          	sb	zero,1(s2)
  20e19a:	00090123          	sb	zero,2(s2)
  20e19e:	000901a3          	sb	zero,3(s2)
  20e1a2:	00090223          	sb	zero,4(s2)
  20e1a6:	000902a3          	sb	zero,5(s2)
  20e1aa:	64e2                	ld	s1,24(sp)
  20e1ac:	6942                	ld	s2,16(sp)
  20e1ae:	69a2                	ld	s3,8(sp)
  20e1b0:	6145                	addi	sp,sp,48
  20e1b2:	8082                	ret
  20e1b4:	00210537          	lui	a0,0x210
  20e1b8:	c1850513          	addi	a0,a0,-1000 # 20fc18 <nvme_main+0x1162>
  20e1bc:	bfcf60ef          	jal	ra,2045b8 <cpl_print>
  20e1c0:	a001                	j	20e1c0 <handle_create_io_sq+0x13a>
  20e1c2:	00210537          	lui	a0,0x210
  20e1c6:	c3850513          	addi	a0,a0,-968 # 20fc38 <nvme_main+0x1182>
  20e1ca:	beef60ef          	jal	ra,2045b8 <cpl_print>
  20e1ce:	a001                	j	20e1ce <handle_create_io_sq+0x148>

000000000020e1d0 <handle_delete_io_sq>:
  20e1d0:	1101                	addi	sp,sp,-32
  20e1d2:	ec06                	sd	ra,24(sp)
  20e1d4:	e426                	sd	s1,8(sp)
  20e1d6:	e822                	sd	s0,16(sp)
  20e1d8:	02954703          	lbu	a4,41(a0)
  20e1dc:	02854683          	lbu	a3,40(a0)
  20e1e0:	02a54783          	lbu	a5,42(a0)
  20e1e4:	02b54403          	lbu	s0,43(a0)
  20e1e8:	00871513          	slli	a0,a4,0x8
  20e1ec:	00d56733          	or	a4,a0,a3
  20e1f0:	01079513          	slli	a0,a5,0x10
  20e1f4:	8d59                	or	a0,a0,a4
  20e1f6:	0462                	slli	s0,s0,0x18
  20e1f8:	8c49                	or	s0,s0,a0
  20e1fa:	00210537          	lui	a0,0x210
  20e1fe:	c5850513          	addi	a0,a0,-936 # 20fc58 <nvme_main+0x11a2>
  20e202:	84ae                	mv	s1,a1
  20e204:	2401                	sext.w	s0,s0
  20e206:	bb2f60ef          	jal	ra,2045b8 <cpl_print>
  20e20a:	03041513          	slli	a0,s0,0x30
  20e20e:	9141                	srli	a0,a0,0x30
  20e210:	357d                	addiw	a0,a0,-1
  20e212:	02051793          	slli	a5,a0,0x20
  20e216:	9381                	srli	a5,a5,0x20
  20e218:	00179813          	slli	a6,a5,0x1
  20e21c:	983e                	add	a6,a6,a5
  20e21e:	002107b7          	lui	a5,0x210
  20e222:	47878793          	addi	a5,a5,1144 # 210478 <g_nvmeTask+0x10>
  20e226:	080a                	slli	a6,a6,0x2
  20e228:	983e                	add	a6,a6,a5
  20e22a:	4701                	li	a4,0
  20e22c:	4781                	li	a5,0
  20e22e:	4681                	li	a3,0
  20e230:	4601                	li	a2,0
  20e232:	4581                	li	a1,0
  20e234:	00082023          	sw	zero,0(a6)
  20e238:	00082223          	sw	zero,4(a6)
  20e23c:	00082423          	sw	zero,8(a6)
  20e240:	f5dfe0ef          	jal	ra,20d19c <set_io_sq>
  20e244:	60e2                	ld	ra,24(sp)
  20e246:	6442                	ld	s0,16(sp)
  20e248:	00048023          	sb	zero,0(s1)
  20e24c:	000480a3          	sb	zero,1(s1)
  20e250:	00048123          	sb	zero,2(s1)
  20e254:	000481a3          	sb	zero,3(s1)
  20e258:	00048223          	sb	zero,4(s1)
  20e25c:	000482a3          	sb	zero,5(s1)
  20e260:	64a2                	ld	s1,8(sp)
  20e262:	6105                	addi	sp,sp,32
  20e264:	8082                	ret

000000000020e266 <handle_create_io_cq>:
  20e266:	7139                	addi	sp,sp,-64
  20e268:	f822                	sd	s0,48(sp)
  20e26a:	ec4e                	sd	s3,24(sp)
  20e26c:	fc06                	sd	ra,56(sp)
  20e26e:	f426                	sd	s1,40(sp)
  20e270:	f04a                	sd	s2,32(sp)
  20e272:	02d54603          	lbu	a2,45(a0)
  20e276:	842a                	mv	s0,a0
  20e278:	02c54803          	lbu	a6,44(a0)
  20e27c:	02e54703          	lbu	a4,46(a0)
  20e280:	02954683          	lbu	a3,41(a0)
  20e284:	02f44903          	lbu	s2,47(s0)
  20e288:	02854503          	lbu	a0,40(a0)
  20e28c:	02a44783          	lbu	a5,42(s0)
  20e290:	0622                	slli	a2,a2,0x8
  20e292:	02b44483          	lbu	s1,43(s0)
  20e296:	01066633          	or	a2,a2,a6
  20e29a:	0742                	slli	a4,a4,0x10
  20e29c:	8f51                	or	a4,a4,a2
  20e29e:	06a2                	slli	a3,a3,0x8
  20e2a0:	0962                	slli	s2,s2,0x18
  20e2a2:	8ec9                	or	a3,a3,a0
  20e2a4:	00e96933          	or	s2,s2,a4
  20e2a8:	07c2                	slli	a5,a5,0x10
  20e2aa:	00210537          	lui	a0,0x210
  20e2ae:	8fd5                	or	a5,a5,a3
  20e2b0:	04e2                	slli	s1,s1,0x18
  20e2b2:	2901                	sext.w	s2,s2
  20e2b4:	c7050513          	addi	a0,a0,-912 # 20fc70 <nvme_main+0x11ba>
  20e2b8:	8cdd                	or	s1,s1,a5
  20e2ba:	89ae                	mv	s3,a1
  20e2bc:	c44a                	sw	s2,8(sp)
  20e2be:	afaf60ef          	jal	ra,2045b8 <cpl_print>
  20e2c2:	01944683          	lbu	a3,25(s0)
  20e2c6:	01844603          	lbu	a2,24(s0)
  20e2ca:	01a44703          	lbu	a4,26(s0)
  20e2ce:	01b44783          	lbu	a5,27(s0)
  20e2d2:	06a2                	slli	a3,a3,0x8
  20e2d4:	8ed1                	or	a3,a3,a2
  20e2d6:	0742                	slli	a4,a4,0x10
  20e2d8:	8f55                	or	a4,a4,a3
  20e2da:	07e2                	slli	a5,a5,0x18
  20e2dc:	8fd9                	or	a5,a5,a4
  20e2de:	0037f713          	andi	a4,a5,3
  20e2e2:	eb45                	bnez	a4,20e392 <handle_create_io_cq+0x12c>
  20e2e4:	01d44683          	lbu	a3,29(s0)
  20e2e8:	01c44603          	lbu	a2,28(s0)
  20e2ec:	01e44703          	lbu	a4,30(s0)
  20e2f0:	01f44803          	lbu	a6,31(s0)
  20e2f4:	06a2                	slli	a3,a3,0x8
  20e2f6:	8ed1                	or	a3,a3,a2
  20e2f8:	0742                	slli	a4,a4,0x10
  20e2fa:	8f55                	or	a4,a4,a3
  20e2fc:	0862                	slli	a6,a6,0x18
  20e2fe:	00e86833          	or	a6,a6,a4
  20e302:	2801                	sext.w	a6,a6
  20e304:	6741                	lui	a4,0x10
  20e306:	08e87663          	bgeu	a6,a4,20e392 <handle_create_io_cq+0x12c>
  20e30a:	0109569b          	srliw	a3,s2,0x10
  20e30e:	459d                	li	a1,7
  20e310:	08d5e863          	bltu	a1,a3,20e3a0 <handle_create_io_cq+0x13a>
  20e314:	2481                	sext.w	s1,s1
  20e316:	0104d71b          	srliw	a4,s1,0x10
  20e31a:	0ff00613          	li	a2,255
  20e31e:	08e66163          	bltu	a2,a4,20e3a0 <handle_create_io_cq+0x13a>
  20e322:	fff4861b          	addiw	a2,s1,-1
  20e326:	1642                	slli	a2,a2,0x30
  20e328:	9241                	srli	a2,a2,0x30
  20e32a:	06c5eb63          	bltu	a1,a2,20e3a0 <handle_create_io_cq+0x13a>
  20e32e:	6622                	ld	a2,8(sp)
  20e330:	03049513          	slli	a0,s1,0x30
  20e334:	9141                	srli	a0,a0,0x30
  20e336:	357d                	addiw	a0,a0,-1
  20e338:	002105b7          	lui	a1,0x210
  20e33c:	00451893          	slli	a7,a0,0x4
  20e340:	4d858593          	addi	a1,a1,1240 # 2104d8 <g_nvmeTask+0x70>
  20e344:	8205                	srli	a2,a2,0x1
  20e346:	98ae                	add	a7,a7,a1
  20e348:	2781                	sext.w	a5,a5
  20e34a:	8a05                	andi	a2,a2,1
  20e34c:	4e05                	li	t3,1
  20e34e:	4585                	li	a1,1
  20e350:	01c88023          	sb	t3,0(a7)
  20e354:	00e89323          	sh	a4,6(a7)
  20e358:	00c880a3          	sb	a2,1(a7)
  20e35c:	00d89223          	sh	a3,4(a7)
  20e360:	00f8a423          	sw	a5,8(a7)
  20e364:	0108a623          	sw	a6,12(a7)
  20e368:	f0dfe0ef          	jal	ra,20d274 <set_io_cq>
  20e36c:	70e2                	ld	ra,56(sp)
  20e36e:	7442                	ld	s0,48(sp)
  20e370:	00098023          	sb	zero,0(s3)
  20e374:	000980a3          	sb	zero,1(s3)
  20e378:	00098123          	sb	zero,2(s3)
  20e37c:	000981a3          	sb	zero,3(s3)
  20e380:	00098223          	sb	zero,4(s3)
  20e384:	000982a3          	sb	zero,5(s3)
  20e388:	74a2                	ld	s1,40(sp)
  20e38a:	7902                	ld	s2,32(sp)
  20e38c:	69e2                	ld	s3,24(sp)
  20e38e:	6121                	addi	sp,sp,64
  20e390:	8082                	ret
  20e392:	00210537          	lui	a0,0x210
  20e396:	c9050513          	addi	a0,a0,-880 # 20fc90 <nvme_main+0x11da>
  20e39a:	a1ef60ef          	jal	ra,2045b8 <cpl_print>
  20e39e:	a001                	j	20e39e <handle_create_io_cq+0x138>
  20e3a0:	00210537          	lui	a0,0x210
  20e3a4:	cb050513          	addi	a0,a0,-848 # 20fcb0 <nvme_main+0x11fa>
  20e3a8:	a10f60ef          	jal	ra,2045b8 <cpl_print>
  20e3ac:	a001                	j	20e3ac <handle_create_io_cq+0x146>

000000000020e3ae <handle_delete_io_cq>:
  20e3ae:	1101                	addi	sp,sp,-32
  20e3b0:	ec06                	sd	ra,24(sp)
  20e3b2:	e426                	sd	s1,8(sp)
  20e3b4:	e822                	sd	s0,16(sp)
  20e3b6:	02954703          	lbu	a4,41(a0)
  20e3ba:	02854683          	lbu	a3,40(a0)
  20e3be:	02a54783          	lbu	a5,42(a0)
  20e3c2:	02b54403          	lbu	s0,43(a0)
  20e3c6:	00871513          	slli	a0,a4,0x8
  20e3ca:	00d56733          	or	a4,a0,a3
  20e3ce:	01079513          	slli	a0,a5,0x10
  20e3d2:	8d59                	or	a0,a0,a4
  20e3d4:	0462                	slli	s0,s0,0x18
  20e3d6:	8c49                	or	s0,s0,a0
  20e3d8:	00210537          	lui	a0,0x210
  20e3dc:	cd050513          	addi	a0,a0,-816 # 20fcd0 <nvme_main+0x121a>
  20e3e0:	84ae                	mv	s1,a1
  20e3e2:	2401                	sext.w	s0,s0
  20e3e4:	9d4f60ef          	jal	ra,2045b8 <cpl_print>
  20e3e8:	03041513          	slli	a0,s0,0x30
  20e3ec:	9141                	srli	a0,a0,0x30
  20e3ee:	357d                	addiw	a0,a0,-1
  20e3f0:	02051893          	slli	a7,a0,0x20
  20e3f4:	002107b7          	lui	a5,0x210
  20e3f8:	4d878793          	addi	a5,a5,1240 # 2104d8 <g_nvmeTask+0x70>
  20e3fc:	01c8d893          	srli	a7,a7,0x1c
  20e400:	98be                	add	a7,a7,a5
  20e402:	4801                	li	a6,0
  20e404:	4781                	li	a5,0
  20e406:	4701                	li	a4,0
  20e408:	4681                	li	a3,0
  20e40a:	4601                	li	a2,0
  20e40c:	4581                	li	a1,0
  20e40e:	00088023          	sb	zero,0(a7)
  20e412:	0008a223          	sw	zero,4(a7)
  20e416:	0008a423          	sw	zero,8(a7)
  20e41a:	0008a623          	sw	zero,12(a7)
  20e41e:	e57fe0ef          	jal	ra,20d274 <set_io_cq>
  20e422:	60e2                	ld	ra,24(sp)
  20e424:	6442                	ld	s0,16(sp)
  20e426:	00048023          	sb	zero,0(s1)
  20e42a:	000480a3          	sb	zero,1(s1)
  20e42e:	00048123          	sb	zero,2(s1)
  20e432:	000481a3          	sb	zero,3(s1)
  20e436:	00048223          	sb	zero,4(s1)
  20e43a:	000482a3          	sb	zero,5(s1)
  20e43e:	64a2                	ld	s1,8(sp)
  20e440:	6105                	addi	sp,sp,32
  20e442:	8082                	ret

000000000020e444 <handle_identify>:
  20e444:	7179                	addi	sp,sp,-48
  20e446:	f022                	sd	s0,32(sp)
  20e448:	ec26                	sd	s1,24(sp)
  20e44a:	f406                	sd	ra,40(sp)
  20e44c:	e84a                	sd	s2,16(sp)
  20e44e:	e44e                	sd	s3,8(sp)
  20e450:	e052                	sd	s4,0(sp)
  20e452:	02854703          	lbu	a4,40(a0)
  20e456:	01854783          	lbu	a5,24(a0)
  20e45a:	842a                	mv	s0,a0
  20e45c:	8b05                	andi	a4,a4,1
  20e45e:	84ae                	mv	s1,a1
  20e460:	8b8d                	andi	a5,a5,3
  20e462:	10070c63          	beqz	a4,20e57a <handle_identify+0x136>
  20e466:	e7e5                	bnez	a5,20e54e <handle_identify+0x10a>
  20e468:	02054783          	lbu	a5,32(a0)
  20e46c:	8b8d                	andi	a5,a5,3
  20e46e:	e3e5                	bnez	a5,20e54e <handle_identify+0x10a>
  20e470:	16000537          	lui	a0,0x16000
  20e474:	2f0000ef          	jal	ra,20e764 <identify_controller>
  20e478:	01944503          	lbu	a0,25(s0)
  20e47c:	01844583          	lbu	a1,24(s0)
  20e480:	01a44683          	lbu	a3,26(s0)
  20e484:	01b44603          	lbu	a2,27(s0)
  20e488:	01d44703          	lbu	a4,29(s0)
  20e48c:	0522                	slli	a0,a0,0x8
  20e48e:	8d4d                	or	a0,a0,a1
  20e490:	01c44803          	lbu	a6,28(s0)
  20e494:	01e44783          	lbu	a5,30(s0)
  20e498:	06c2                	slli	a3,a3,0x10
  20e49a:	8ec9                	or	a3,a3,a0
  20e49c:	01f44583          	lbu	a1,31(s0)
  20e4a0:	0662                	slli	a2,a2,0x18
  20e4a2:	6985                	lui	s3,0x1
  20e4a4:	8e55                	or	a2,a2,a3
  20e4a6:	0722                	slli	a4,a4,0x8
  20e4a8:	2601                	sext.w	a2,a2
  20e4aa:	fff98913          	addi	s2,s3,-1 # fff <start-0x1ff001>
  20e4ae:	01076733          	or	a4,a4,a6
  20e4b2:	07c2                	slli	a5,a5,0x10
  20e4b4:	6685                	lui	a3,0x1
  20e4b6:	01267933          	and	s2,a2,s2
  20e4ba:	8fd9                	or	a5,a5,a4
  20e4bc:	05e2                	slli	a1,a1,0x18
  20e4be:	41268a3b          	subw	s4,a3,s2
  20e4c2:	8ddd                	or	a1,a1,a5
  20e4c4:	86d2                	mv	a3,s4
  20e4c6:	2581                	sext.w	a1,a1
  20e4c8:	16000537          	lui	a0,0x16000
  20e4cc:	eadfe0ef          	jal	ra,20d378 <set_direct_tx_dma>
  20e4d0:	053a0963          	beq	s4,s3,20e522 <handle_identify+0xde>
  20e4d4:	02144503          	lbu	a0,33(s0)
  20e4d8:	02544683          	lbu	a3,37(s0)
  20e4dc:	02044883          	lbu	a7,32(s0)
  20e4e0:	02244703          	lbu	a4,34(s0)
  20e4e4:	02444803          	lbu	a6,36(s0)
  20e4e8:	02644783          	lbu	a5,38(s0)
  20e4ec:	02344603          	lbu	a2,35(s0)
  20e4f0:	02744583          	lbu	a1,39(s0)
  20e4f4:	0522                	slli	a0,a0,0x8
  20e4f6:	06a2                	slli	a3,a3,0x8
  20e4f8:	01156533          	or	a0,a0,a7
  20e4fc:	0106e6b3          	or	a3,a3,a6
  20e500:	0742                	slli	a4,a4,0x10
  20e502:	07c2                	slli	a5,a5,0x10
  20e504:	8f49                	or	a4,a4,a0
  20e506:	8fd5                	or	a5,a5,a3
  20e508:	0662                	slli	a2,a2,0x18
  20e50a:	05e2                	slli	a1,a1,0x18
  20e50c:	8e59                	or	a2,a2,a4
  20e50e:	8ddd                	or	a1,a1,a5
  20e510:	16001537          	lui	a0,0x16001
  20e514:	86ca                	mv	a3,s2
  20e516:	2601                	sext.w	a2,a2
  20e518:	2581                	sext.w	a1,a1
  20e51a:	4125053b          	subw	a0,a0,s2
  20e51e:	e5bfe0ef          	jal	ra,20d378 <set_direct_tx_dma>
  20e522:	c62ff0ef          	jal	ra,20d984 <check_direct_tx_dma_done>
  20e526:	70a2                	ld	ra,40(sp)
  20e528:	7402                	ld	s0,32(sp)
  20e52a:	00048023          	sb	zero,0(s1)
  20e52e:	000480a3          	sb	zero,1(s1)
  20e532:	00048123          	sb	zero,2(s1)
  20e536:	000481a3          	sb	zero,3(s1)
  20e53a:	00048223          	sb	zero,4(s1)
  20e53e:	000482a3          	sb	zero,5(s1)
  20e542:	6942                	ld	s2,16(sp)
  20e544:	64e2                	ld	s1,24(sp)
  20e546:	69a2                	ld	s3,8(sp)
  20e548:	6a02                	ld	s4,0(sp)
  20e54a:	6145                	addi	sp,sp,48
  20e54c:	8082                	ret
  20e54e:	00210537          	lui	a0,0x210
  20e552:	ce850513          	addi	a0,a0,-792 # 20fce8 <nvme_main+0x1232>
  20e556:	862f60ef          	jal	ra,2045b8 <cpl_print>
  20e55a:	01844783          	lbu	a5,24(s0)
  20e55e:	8b8d                	andi	a5,a5,3
  20e560:	e791                	bnez	a5,20e56c <handle_identify+0x128>
  20e562:	02044783          	lbu	a5,32(s0)
  20e566:	8b8d                	andi	a5,a5,3
  20e568:	f00784e3          	beqz	a5,20e470 <handle_identify+0x2c>
  20e56c:	00210537          	lui	a0,0x210
  20e570:	d0050513          	addi	a0,a0,-768 # 20fd00 <nvme_main+0x124a>
  20e574:	844f60ef          	jal	ra,2045b8 <cpl_print>
  20e578:	a001                	j	20e578 <handle_identify+0x134>
  20e57a:	e789                	bnez	a5,20e584 <handle_identify+0x140>
  20e57c:	02054783          	lbu	a5,32(a0)
  20e580:	8b8d                	andi	a5,a5,3
  20e582:	c795                	beqz	a5,20e5ae <handle_identify+0x16a>
  20e584:	00210537          	lui	a0,0x210
  20e588:	d1850513          	addi	a0,a0,-744 # 20fd18 <nvme_main+0x1262>
  20e58c:	82cf60ef          	jal	ra,2045b8 <cpl_print>
  20e590:	01844783          	lbu	a5,24(s0)
  20e594:	8b8d                	andi	a5,a5,3
  20e596:	e789                	bnez	a5,20e5a0 <handle_identify+0x15c>
  20e598:	02044783          	lbu	a5,32(s0)
  20e59c:	8b8d                	andi	a5,a5,3
  20e59e:	cb81                	beqz	a5,20e5ae <handle_identify+0x16a>
  20e5a0:	00210537          	lui	a0,0x210
  20e5a4:	d3050513          	addi	a0,a0,-720 # 20fd30 <nvme_main+0x127a>
  20e5a8:	810f60ef          	jal	ra,2045b8 <cpl_print>
  20e5ac:	a001                	j	20e5ac <handle_identify+0x168>
  20e5ae:	16000537          	lui	a0,0x16000
  20e5b2:	404000ef          	jal	ra,20e9b6 <identify_namespace>
  20e5b6:	b5c9                	j	20e478 <handle_identify+0x34>

000000000020e5b8 <handle_get_log_page>:
  20e5b8:	47a5                	li	a5,9
  20e5ba:	00058023          	sb	zero,0(a1)
  20e5be:	000580a3          	sb	zero,1(a1)
  20e5c2:	000581a3          	sb	zero,3(a1)
  20e5c6:	00f58123          	sb	a5,2(a1)
  20e5ca:	00058223          	sb	zero,4(a1)
  20e5ce:	000582a3          	sb	zero,5(a1)
  20e5d2:	8082                	ret

000000000020e5d4 <handle_nvme_admin_cmd>:
  20e5d4:	00854783          	lbu	a5,8(a0) # 16000008 <g_nvmeTask+0x15defba0>
  20e5d8:	7179                	addi	sp,sp,-48
  20e5da:	f022                	sd	s0,32(sp)
  20e5dc:	ec26                	sd	s1,24(sp)
  20e5de:	f406                	sd	ra,40(sp)
  20e5e0:	4731                	li	a4,12
  20e5e2:	842a                	mv	s0,a0
  20e5e4:	0007849b          	sext.w	s1,a5
  20e5e8:	00f76b63          	bltu	a4,a5,20e5fe <handle_nvme_admin_cmd+0x2a>
  20e5ec:	00210737          	lui	a4,0x210
  20e5f0:	078a                	slli	a5,a5,0x2
  20e5f2:	93870713          	addi	a4,a4,-1736 # 20f938 <nvme_main+0xe82>
  20e5f6:	97ba                	add	a5,a5,a4
  20e5f8:	439c                	lw	a5,0(a5)
  20e5fa:	0521                	addi	a0,a0,8
  20e5fc:	8782                	jr	a5
  20e5fe:	07c00713          	li	a4,124
  20e602:	00e78663          	beq	a5,a4,20e60e <handle_nvme_admin_cmd+0x3a>
  20e606:	08200713          	li	a4,130
  20e60a:	04e79f63          	bne	a5,a4,20e668 <handle_nvme_admin_cmd+0x94>
  20e60e:	00b44703          	lbu	a4,11(s0)
  20e612:	00144783          	lbu	a5,1(s0)
  20e616:	00a44583          	lbu	a1,10(s0)
  20e61a:	00044503          	lbu	a0,0(s0)
  20e61e:	0722                	slli	a4,a4,0x8
  20e620:	07a2                	slli	a5,a5,0x8
  20e622:	4681                	li	a3,0
  20e624:	4601                	li	a2,0
  20e626:	8dd9                	or	a1,a1,a4
  20e628:	8d5d                	or	a0,a0,a5
  20e62a:	c402                	sw	zero,8(sp)
  20e62c:	00011623          	sh	zero,12(sp)
  20e630:	ac5fe0ef          	jal	ra,20d0f4 <set_nvme_cpl>
  20e634:	00210537          	lui	a0,0x210
  20e638:	d9050513          	addi	a0,a0,-624 # 20fd90 <nvme_main+0x12da>
  20e63c:	f7df50ef          	jal	ra,2045b8 <cpl_print>
  20e640:	8526                	mv	a0,s1
  20e642:	fa5f50ef          	jal	ra,2045e6 <cpl_printint>
  20e646:	70a2                	ld	ra,40(sp)
  20e648:	7402                	ld	s0,32(sp)
  20e64a:	64e2                	ld	s1,24(sp)
  20e64c:	6145                	addi	sp,sp,48
  20e64e:	8082                	ret
  20e650:	00344783          	lbu	a5,3(s0)
  20e654:	00244503          	lbu	a0,2(s0)
  20e658:	c402                	sw	zero,8(sp)
  20e65a:	07a2                	slli	a5,a5,0x8
  20e65c:	8d5d                	or	a0,a0,a5
  20e65e:	00011623          	sh	zero,12(sp)
  20e662:	a37fe0ef          	jal	ra,20d098 <set_nvme_slot_release>
  20e666:	b7f9                	j	20e634 <handle_nvme_admin_cmd+0x60>
  20e668:	00210537          	lui	a0,0x210
  20e66c:	d4850513          	addi	a0,a0,-696 # 20fd48 <nvme_main+0x1292>
  20e670:	f49f50ef          	jal	ra,2045b8 <cpl_print>
  20e674:	00210537          	lui	a0,0x210
  20e678:	d7050513          	addi	a0,a0,-656 # 20fd70 <nvme_main+0x12ba>
  20e67c:	f3df50ef          	jal	ra,2045b8 <cpl_print>
  20e680:	a001                	j	20e680 <handle_nvme_admin_cmd+0xac>
  20e682:	002c                	addi	a1,sp,8
  20e684:	b4dff0ef          	jal	ra,20e1d0 <handle_delete_io_sq>
  20e688:	65a2                	ld	a1,8(sp)
  20e68a:	00815603          	lhu	a2,8(sp)
  20e68e:	81c1                	srli	a1,a1,0x10
  20e690:	2581                	sext.w	a1,a1
  20e692:	00344783          	lbu	a5,3(s0)
  20e696:	00244503          	lbu	a0,2(s0)
  20e69a:	07a2                	slli	a5,a5,0x8
  20e69c:	8d5d                	or	a0,a0,a5
  20e69e:	96bfe0ef          	jal	ra,20d008 <set_auto_nvme_cpl>
  20e6a2:	bf49                	j	20e634 <handle_nvme_admin_cmd+0x60>
  20e6a4:	002c                	addi	a1,sp,8
  20e6a6:	9e1ff0ef          	jal	ra,20e086 <handle_create_io_sq>
  20e6aa:	65a2                	ld	a1,8(sp)
  20e6ac:	00815603          	lhu	a2,8(sp)
  20e6b0:	81c1                	srli	a1,a1,0x10
  20e6b2:	2581                	sext.w	a1,a1
  20e6b4:	bff9                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e6b6:	c402                	sw	zero,8(sp)
  20e6b8:	47a5                	li	a5,9
  20e6ba:	00f11523          	sh	a5,10(sp)
  20e6be:	00011623          	sh	zero,12(sp)
  20e6c2:	4601                	li	a2,0
  20e6c4:	45a5                	li	a1,9
  20e6c6:	b7f1                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e6c8:	002c                	addi	a1,sp,8
  20e6ca:	ce5ff0ef          	jal	ra,20e3ae <handle_delete_io_cq>
  20e6ce:	65a2                	ld	a1,8(sp)
  20e6d0:	00815603          	lhu	a2,8(sp)
  20e6d4:	81c1                	srli	a1,a1,0x10
  20e6d6:	2581                	sext.w	a1,a1
  20e6d8:	bf6d                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e6da:	002c                	addi	a1,sp,8
  20e6dc:	b8bff0ef          	jal	ra,20e266 <handle_create_io_cq>
  20e6e0:	65a2                	ld	a1,8(sp)
  20e6e2:	00815603          	lhu	a2,8(sp)
  20e6e6:	81c1                	srli	a1,a1,0x10
  20e6e8:	2581                	sext.w	a1,a1
  20e6ea:	b765                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e6ec:	002c                	addi	a1,sp,8
  20e6ee:	d57ff0ef          	jal	ra,20e444 <handle_identify>
  20e6f2:	65a2                	ld	a1,8(sp)
  20e6f4:	00815603          	lhu	a2,8(sp)
  20e6f8:	81c1                	srli	a1,a1,0x10
  20e6fa:	2581                	sext.w	a1,a1
  20e6fc:	bf59                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e6fe:	002c                	addi	a1,sp,8
  20e700:	f0cff0ef          	jal	ra,20de0c <handle_set_features>
  20e704:	65a2                	ld	a1,8(sp)
  20e706:	00815603          	lhu	a2,8(sp)
  20e70a:	81c1                	srli	a1,a1,0x10
  20e70c:	2581                	sext.w	a1,a1
  20e70e:	b751                	j	20e692 <handle_nvme_admin_cmd+0xbe>
  20e710:	002c                	addi	a1,sp,8
  20e712:	ffcff0ef          	jal	ra,20df0e <handle_get_features>
  20e716:	65a2                	ld	a1,8(sp)
  20e718:	00815603          	lhu	a2,8(sp)
  20e71c:	81c1                	srli	a1,a1,0x10
  20e71e:	2581                	sext.w	a1,a1
  20e720:	bf8d                	j	20e692 <handle_nvme_admin_cmd+0xbe>

000000000020e722 <cpl_memset>:
  20e722:	ce19                	beqz	a2,20e740 <cpl_memset+0x1e>
  20e724:	fff6071b          	addiw	a4,a2,-1
  20e728:	1702                	slli	a4,a4,0x20
  20e72a:	9301                	srli	a4,a4,0x20
  20e72c:	0705                	addi	a4,a4,1
  20e72e:	0ff5f593          	andi	a1,a1,255
  20e732:	87aa                	mv	a5,a0
  20e734:	972a                	add	a4,a4,a0
  20e736:	00b78023          	sb	a1,0(a5)
  20e73a:	0785                	addi	a5,a5,1
  20e73c:	fee79de3          	bne	a5,a4,20e736 <cpl_memset+0x14>
  20e740:	8082                	ret

000000000020e742 <cpl_memcpy>:
  20e742:	c205                	beqz	a2,20e762 <cpl_memcpy+0x20>
  20e744:	fff6071b          	addiw	a4,a2,-1
  20e748:	1702                	slli	a4,a4,0x20
  20e74a:	9301                	srli	a4,a4,0x20
  20e74c:	0705                	addi	a4,a4,1
  20e74e:	87aa                	mv	a5,a0
  20e750:	972e                	add	a4,a4,a1
  20e752:	0005c683          	lbu	a3,0(a1)
  20e756:	0585                	addi	a1,a1,1
  20e758:	0785                	addi	a5,a5,1
  20e75a:	fed78fa3          	sb	a3,-1(a5)
  20e75e:	fee59ae3          	bne	a1,a4,20e752 <cpl_memcpy+0x10>
  20e762:	8082                	ret

000000000020e764 <identify_controller>:
  20e764:	1502                	slli	a0,a0,0x20
  20e766:	9101                	srli	a0,a0,0x20
  20e768:	6705                	lui	a4,0x1
  20e76a:	972a                	add	a4,a4,a0
  20e76c:	87aa                	mv	a5,a0
  20e76e:	00078023          	sb	zero,0(a5)
  20e772:	0785                	addi	a5,a5,1
  20e774:	fee79de3          	bne	a5,a4,20e76e <identify_controller+0xa>
  20e778:	fdc00713          	li	a4,-36
  20e77c:	47f9                	li	a5,30
  20e77e:	00e50023          	sb	a4,0(a0)
  20e782:	00f500a3          	sb	a5,1(a0)
  20e786:	00e50123          	sb	a4,2(a0)
  20e78a:	00f501a3          	sb	a5,3(a0)
  20e78e:	01850713          	addi	a4,a0,24
  20e792:	00450793          	addi	a5,a0,4
  20e796:	02000693          	li	a3,32
  20e79a:	00d78023          	sb	a3,0(a5)
  20e79e:	0785                	addi	a5,a5,1
  20e7a0:	fee79de3          	bne	a5,a4,20e79a <identify_controller+0x36>
  20e7a4:	002107b7          	lui	a5,0x210
  20e7a8:	db078813          	addi	a6,a5,-592 # 20fdb0 <nvme_main+0x12fa>
  20e7ac:	4591                	li	a1,4
  20e7ae:	db078793          	addi	a5,a5,-592
  20e7b2:	0825                	addi	a6,a6,9
  20e7b4:	05300613          	li	a2,83
  20e7b8:	8d9d                	sub	a1,a1,a5
  20e7ba:	a019                	j	20e7c0 <identify_controller+0x5c>
  20e7bc:	0007c603          	lbu	a2,0(a5)
  20e7c0:	00f506b3          	add	a3,a0,a5
  20e7c4:	96ae                	add	a3,a3,a1
  20e7c6:	00c68023          	sb	a2,0(a3) # 1000 <start-0x1ff000>
  20e7ca:	0785                	addi	a5,a5,1
  20e7cc:	ff0798e3          	bne	a5,a6,20e7bc <identify_controller+0x58>
  20e7d0:	04050793          	addi	a5,a0,64
  20e7d4:	02000693          	li	a3,32
  20e7d8:	00d70023          	sb	a3,0(a4) # 1000 <start-0x1ff000>
  20e7dc:	0705                	addi	a4,a4,1
  20e7de:	fef71de3          	bne	a4,a5,20e7d8 <identify_controller+0x74>
  20e7e2:	002105b7          	lui	a1,0x210
  20e7e6:	dc058693          	addi	a3,a1,-576 # 20fdc0 <nvme_main+0x130a>
  20e7ea:	00210737          	lui	a4,0x210
  20e7ee:	45dd                	li	a1,23
  20e7f0:	dc170713          	addi	a4,a4,-575 # 20fdc1 <nvme_main+0x130b>
  20e7f4:	01068813          	addi	a6,a3,16
  20e7f8:	04300613          	li	a2,67
  20e7fc:	8d95                	sub	a1,a1,a3
  20e7fe:	a021                	j	20e806 <identify_controller+0xa2>
  20e800:	00074603          	lbu	a2,0(a4)
  20e804:	0705                	addi	a4,a4,1
  20e806:	00e506b3          	add	a3,a0,a4
  20e80a:	96ae                	add	a3,a3,a1
  20e80c:	00c68023          	sb	a2,0(a3)
  20e810:	ff0718e3          	bne	a4,a6,20e800 <identify_controller+0x9c>
  20e814:	04850693          	addi	a3,a0,72
  20e818:	02000713          	li	a4,32
  20e81c:	00e78023          	sb	a4,0(a5)
  20e820:	0785                	addi	a5,a5,1
  20e822:	fef69de3          	bne	a3,a5,20e81c <identify_controller+0xb8>
  20e826:	002107b7          	lui	a5,0x210
  20e82a:	dd078593          	addi	a1,a5,-560 # 20fdd0 <nvme_main+0x131a>
  20e82e:	04000613          	li	a2,64
  20e832:	dd078793          	addi	a5,a5,-560
  20e836:	05a5                	addi	a1,a1,9
  20e838:	05400693          	li	a3,84
  20e83c:	8e1d                	sub	a2,a2,a5
  20e83e:	a019                	j	20e844 <identify_controller+0xe0>
  20e840:	0007c683          	lbu	a3,0(a5)
  20e844:	00f50733          	add	a4,a0,a5
  20e848:	9732                	add	a4,a4,a2
  20e84a:	00d70023          	sb	a3,0(a4)
  20e84e:	0785                	addi	a5,a5,1
  20e850:	fef598e3          	bne	a1,a5,20e840 <identify_controller+0xdc>
  20e854:	10454783          	lbu	a5,260(a0)
  20e858:	10054303          	lbu	t1,256(a0)
  20e85c:	10554803          	lbu	a6,261(a0)
  20e860:	9bc1                	andi	a5,a5,-16
  20e862:	10854583          	lbu	a1,264(a0)
  20e866:	10954603          	lbu	a2,265(a0)
  20e86a:	20854683          	lbu	a3,520(a0)
  20e86e:	20a54703          	lbu	a4,522(a0)
  20e872:	0037e793          	ori	a5,a5,3
  20e876:	5f11                	li	t5,-28
  20e878:	10f50223          	sb	a5,260(a0)
  20e87c:	06600793          	li	a5,102
  20e880:	05e504a3          	sb	t5,73(a0)
  20e884:	20f50023          	sb	a5,512(a0)
  20e888:	fd200f13          	li	t5,-46
  20e88c:	04400793          	li	a5,68
  20e890:	4e21                	li	t3,8
  20e892:	48a5                	li	a7,9
  20e894:	4e8d                	li	t4,3
  20e896:	ffe87813          	andi	a6,a6,-2
  20e89a:	99f9                	andi	a1,a1,-2
  20e89c:	9a79                	andi	a2,a2,-2
  20e89e:	9ae1                	andi	a3,a3,-8
  20e8a0:	9b79                	andi	a4,a4,-2
  20e8a2:	05e50523          	sb	t5,74(a0)
  20e8a6:	20f500a3          	sb	a5,513(a0)
  20e8aa:	ff837313          	andi	t1,t1,-8
  20e8ae:	4785                	li	a5,1
  20e8b0:	05c00f13          	li	t5,92
  20e8b4:	110502a3          	sb	a6,261(a0)
  20e8b8:	10b50423          	sb	a1,264(a0)
  20e8bc:	20f50223          	sb	a5,516(a0)
  20e8c0:	20d50423          	sb	a3,520(a0)
  20e8c4:	20e50523          	sb	a4,522(a0)
  20e8c8:	04050423          	sb	zero,72(a0)
  20e8cc:	05e505a3          	sb	t5,75(a0)
  20e8d0:	04050623          	sb	zero,76(a0)
  20e8d4:	05c506a3          	sb	t3,77(a0)
  20e8d8:	05150723          	sb	a7,78(a0)
  20e8dc:	040507a3          	sb	zero,79(a0)
  20e8e0:	10650023          	sb	t1,256(a0)
  20e8e4:	11d50123          	sb	t4,258(a0)
  20e8e8:	11d501a3          	sb	t4,259(a0)
  20e8ec:	11c50323          	sb	t3,262(a0)
  20e8f0:	100503a3          	sb	zero,263(a0)
  20e8f4:	10c504a3          	sb	a2,265(a0)
  20e8f8:	200502a3          	sb	zero,517(a0)
  20e8fc:	20050323          	sb	zero,518(a0)
  20e900:	200503a3          	sb	zero,519(a0)
  20e904:	20c54603          	lbu	a2,524(a0)
  20e908:	20d54683          	lbu	a3,525(a0)
  20e90c:	21254803          	lbu	a6,530(a0)
  20e910:	21854703          	lbu	a4,536(a0)
  20e914:	21a54583          	lbu	a1,538(a0)
  20e918:	9a61                	andi	a2,a2,-8
  20e91a:	0016e693          	ori	a3,a3,1
  20e91e:	9b79                	andi	a4,a4,-2
  20e920:	99f9                	andi	a1,a1,-2
  20e922:	ffe87813          	andi	a6,a6,-2
  20e926:	6785                	lui	a5,0x1
  20e928:	97aa                	add	a5,a5,a0
  20e92a:	20b50d23          	sb	a1,538(a0)
  20e92e:	20050723          	sb	zero,526(a0)
  20e932:	200507a3          	sb	zero,527(a0)
  20e936:	20050823          	sb	zero,528(a0)
  20e93a:	200508a3          	sb	zero,529(a0)
  20e93e:	21050923          	sb	a6,530(a0)
  20e942:	20050a23          	sb	zero,532(a0)
  20e946:	20050aa3          	sb	zero,533(a0)
  20e94a:	20c50623          	sb	a2,524(a0)
  20e94e:	20d506a3          	sb	a3,525(a0)
  20e952:	20e50c23          	sb	a4,536(a0)
  20e956:	8037c603          	lbu	a2,-2045(a5) # 803 <start-0x1ff7fd>
  20e95a:	80c7c683          	lbu	a3,-2036(a5)
  20e95e:	80d7c703          	lbu	a4,-2035(a5)
  20e962:	9a71                	andi	a2,a2,-4
  20e964:	9a81                	andi	a3,a3,-32
  20e966:	9b01                	andi	a4,a4,-32
  20e968:	fc400593          	li	a1,-60
  20e96c:	80e786a3          	sb	a4,-2035(a5)
  20e970:	80b78023          	sb	a1,-2048(a5)
  20e974:	811780a3          	sb	a7,-2047(a5)
  20e978:	80c781a3          	sb	a2,-2045(a5)
  20e97c:	80078223          	sb	zero,-2044(a5)
  20e980:	800782a3          	sb	zero,-2043(a5)
  20e984:	80078323          	sb	zero,-2042(a5)
  20e988:	800783a3          	sb	zero,-2041(a5)
  20e98c:	80078423          	sb	zero,-2040(a5)
  20e990:	800784a3          	sb	zero,-2039(a5)
  20e994:	80078523          	sb	zero,-2038(a5)
  20e998:	800785a3          	sb	zero,-2037(a5)
  20e99c:	80d78623          	sb	a3,-2036(a5)
  20e9a0:	80e7c683          	lbu	a3,-2034(a5)
  20e9a4:	80f7c703          	lbu	a4,-2033(a5)
  20e9a8:	9a81                	andi	a3,a3,-32
  20e9aa:	9b01                	andi	a4,a4,-32
  20e9ac:	80d78723          	sb	a3,-2034(a5)
  20e9b0:	80e787a3          	sb	a4,-2033(a5)
  20e9b4:	8082                	ret

000000000020e9b6 <identify_namespace>:
  20e9b6:	1502                	slli	a0,a0,0x20
  20e9b8:	9101                	srli	a0,a0,0x20
  20e9ba:	6705                	lui	a4,0x1
  20e9bc:	87aa                	mv	a5,a0
  20e9be:	972a                	add	a4,a4,a0
  20e9c0:	00078023          	sb	zero,0(a5)
  20e9c4:	0785                	addi	a5,a5,1
  20e9c6:	fee79de3          	bne	a5,a4,20e9c0 <identify_namespace+0xa>
  20e9ca:	002107b7          	lui	a5,0x210
  20e9ce:	3f07a783          	lw	a5,1008(a5) # 2103f0 <storageCapacity_L>
  20e9d2:	01854803          	lbu	a6,24(a0)
  20e9d6:	01a54583          	lbu	a1,26(a0)
  20e9da:	01b54603          	lbu	a2,27(a0)
  20e9de:	0087d69b          	srliw	a3,a5,0x8
  20e9e2:	0107d71b          	srliw	a4,a5,0x10
  20e9e6:	0ff7f893          	andi	a7,a5,255
  20e9ea:	0ff6f693          	andi	a3,a3,255
  20e9ee:	0ff77713          	andi	a4,a4,255
  20e9f2:	0187d79b          	srliw	a5,a5,0x18
  20e9f6:	9981                	andi	a1,a1,-32
  20e9f8:	9a71                	andi	a2,a2,-4
  20e9fa:	ffe87813          	andi	a6,a6,-2
  20e9fe:	00d500a3          	sb	a3,1(a0)
  20ea02:	00e50123          	sb	a4,2(a0)
  20ea06:	00f501a3          	sb	a5,3(a0)
  20ea0a:	00d504a3          	sb	a3,9(a0)
  20ea0e:	00e50523          	sb	a4,10(a0)
  20ea12:	00f505a3          	sb	a5,11(a0)
  20ea16:	00d508a3          	sb	a3,17(a0)
  20ea1a:	00e50923          	sb	a4,18(a0)
  20ea1e:	00f509a3          	sb	a5,19(a0)
  20ea22:	00c50da3          	sb	a2,27(a0)
  20ea26:	01150023          	sb	a7,0(a0)
  20ea2a:	00050223          	sb	zero,4(a0)
  20ea2e:	000502a3          	sb	zero,5(a0)
  20ea32:	00050323          	sb	zero,6(a0)
  20ea36:	000503a3          	sb	zero,7(a0)
  20ea3a:	01150423          	sb	a7,8(a0)
  20ea3e:	00050623          	sb	zero,12(a0)
  20ea42:	000506a3          	sb	zero,13(a0)
  20ea46:	00050723          	sb	zero,14(a0)
  20ea4a:	000507a3          	sb	zero,15(a0)
  20ea4e:	01150823          	sb	a7,16(a0)
  20ea52:	00050a23          	sb	zero,20(a0)
  20ea56:	00050aa3          	sb	zero,21(a0)
  20ea5a:	00050b23          	sb	zero,22(a0)
  20ea5e:	00050ba3          	sb	zero,23(a0)
  20ea62:	01050c23          	sb	a6,24(a0)
  20ea66:	00050ca3          	sb	zero,25(a0)
  20ea6a:	00b50d23          	sb	a1,26(a0)
  20ea6e:	01c54583          	lbu	a1,28(a0)
  20ea72:	08354783          	lbu	a5,131(a0)
  20ea76:	01f54703          	lbu	a4,31(a0)
  20ea7a:	01d54603          	lbu	a2,29(a0)
  20ea7e:	01e54683          	lbu	a3,30(a0)
  20ea82:	fc077713          	andi	a4,a4,-64
  20ea86:	9bf1                	andi	a5,a5,-4
  20ea88:	9981                	andi	a1,a1,-32
  20ea8a:	9a41                	andi	a2,a2,-16
  20ea8c:	9af9                	andi	a3,a3,-2
  20ea8e:	0027e793          	ori	a5,a5,2
  20ea92:	00e50fa3          	sb	a4,31(a0)
  20ea96:	4731                	li	a4,12
  20ea98:	00b50e23          	sb	a1,28(a0)
  20ea9c:	00c50ea3          	sb	a2,29(a0)
  20eaa0:	00d50f23          	sb	a3,30(a0)
  20eaa4:	08050023          	sb	zero,128(a0)
  20eaa8:	080500a3          	sb	zero,129(a0)
  20eaac:	08e50123          	sb	a4,130(a0)
  20eab0:	08f501a3          	sb	a5,131(a0)
  20eab4:	8082                	ret

000000000020eab6 <nvme_main>:
  20eab6:	00210537          	lui	a0,0x210
  20eaba:	7155                	addi	sp,sp,-208
  20eabc:	de050513          	addi	a0,a0,-544 # 20fde0 <nvme_main+0x132a>
  20eac0:	e586                	sd	ra,200(sp)
  20eac2:	e1a2                	sd	s0,192(sp)
  20eac4:	fd26                	sd	s1,184(sp)
  20eac6:	f94a                	sd	s2,176(sp)
  20eac8:	f54e                	sd	s3,168(sp)
  20eaca:	f152                	sd	s4,160(sp)
  20eacc:	ed56                	sd	s5,152(sp)
  20eace:	e95a                	sd	s6,144(sp)
  20ead0:	e55e                	sd	s7,136(sp)
  20ead2:	e162                	sd	s8,128(sp)
  20ead4:	f8ea                	sd	s10,112(sp)
  20ead6:	f4ee                	sd	s11,104(sp)
  20ead8:	fce6                	sd	s9,120(sp)
  20eada:	adff50ef          	jal	ra,2045b8 <cpl_print>
  20eade:	910fb0ef          	jal	ra,209bee <InitFTL>
  20eae2:	00210537          	lui	a0,0x210
  20eae6:	e1050513          	addi	a0,a0,-496 # 20fe10 <nvme_main+0x135a>
  20eaea:	acff50ef          	jal	ra,2045b8 <cpl_print>
  20eaee:	00210537          	lui	a0,0x210
  20eaf2:	e3050513          	addi	a0,a0,-464 # 20fe30 <nvme_main+0x137a>
  20eaf6:	ac3f50ef          	jal	ra,2045b8 <cpl_print>
  20eafa:	00210537          	lui	a0,0x210
  20eafe:	e4850513          	addi	a0,a0,-440 # 20fe48 <nvme_main+0x1392>
  20eb02:	ab7f50ef          	jal	ra,2045b8 <cpl_print>
  20eb06:	4521                	li	a0,8
  20eb08:	adff50ef          	jal	ra,2045e6 <cpl_printint>
  20eb0c:	20f00d13          	li	s10,527
  20eb10:	00210437          	lui	s0,0x210
  20eb14:	6941                	lui	s2,0x10
  20eb16:	016d1793          	slli	a5,s10,0x16
  20eb1a:	4d81                	li	s11,0
  20eb1c:	46840413          	addi	s0,s0,1128 # 210468 <g_nvmeTask>
  20eb20:	002109b7          	lui	s3,0x210
  20eb24:	00210c37          	lui	s8,0x210
  20eb28:	00210bb7          	lui	s7,0x210
  20eb2c:	4485                	li	s1,1
  20eb2e:	197d                	addi	s2,s2,-1
  20eb30:	4a09                	li	s4,2
  20eb32:	4a8d                	li	s5,3
  20eb34:	4b11                	li	s6,4
  20eb36:	e43e                	sd	a5,8(sp)
  20eb38:	a80d                	j	20eb6a <nvme_main+0xb4>
  20eb3a:	401c                	lw	a5,0(s0)
  20eb3c:	2781                	sext.w	a5,a5
  20eb3e:	0f678f63          	beq	a5,s6,20ec3c <nvme_main+0x186>
  20eb42:	401c                	lw	a5,0(s0)
  20eb44:	4715                	li	a4,5
  20eb46:	2781                	sext.w	a5,a5
  20eb48:	10e78f63          	beq	a5,a4,20ec66 <nvme_main+0x1b0>
  20eb4c:	1909d783          	lhu	a5,400(s3) # 210190 <nvmeDmaReqQ>
  20eb50:	01279963          	bne	a5,s2,20eb62 <nvme_main+0xac>
  20eb54:	f68c2783          	lw	a5,-152(s8) # 20ff68 <notCompletedNandReqCnt>
  20eb58:	398ba703          	lw	a4,920(s7) # 210398 <blockedReqCnt>
  20eb5c:	8fd9                	or	a5,a5,a4
  20eb5e:	2781                	sext.w	a5,a5
  20eb60:	c789                	beqz	a5,20eb6a <nvme_main+0xb4>
  20eb62:	ad8fd0ef          	jal	ra,20be3a <CheckDoneNvmeDmaReq>
  20eb66:	a7bf60ef          	jal	ra,2055e0 <SchedulingNandReq>
  20eb6a:	401c                	lw	a5,0(s0)
  20eb6c:	2781                	sext.w	a5,a5
  20eb6e:	06978f63          	beq	a5,s1,20ebec <nvme_main+0x136>
  20eb72:	401c                	lw	a5,0(s0)
  20eb74:	2781                	sext.w	a5,a5
  20eb76:	0b478163          	beq	a5,s4,20ec18 <nvme_main+0x162>
  20eb7a:	401c                	lw	a5,0(s0)
  20eb7c:	2781                	sext.w	a5,a5
  20eb7e:	fb579ee3          	bne	a5,s5,20eb3a <nvme_main+0x84>
  20eb82:	67a2                	ld	a5,8(sp)
  20eb84:	2007a783          	lw	a5,512(a5)
  20eb88:	8b99                	andi	a5,a5,6
  20eb8a:	d3e9                	beqz	a5,20eb4c <nvme_main+0x96>
  20eb8c:	4505                	li	a0,1
  20eb8e:	a92fe0ef          	jal	ra,20ce20 <set_nvme_csts_shst>
  20eb92:	4c81                	li	s9,0
  20eb94:	4d21                	li	s10,8
  20eb96:	8566                	mv	a0,s9
  20eb98:	4781                	li	a5,0
  20eb9a:	4701                	li	a4,0
  20eb9c:	4681                	li	a3,0
  20eb9e:	4601                	li	a2,0
  20eba0:	4581                	li	a1,0
  20eba2:	4801                	li	a6,0
  20eba4:	ed0fe0ef          	jal	ra,20d274 <set_io_cq>
  20eba8:	8566                	mv	a0,s9
  20ebaa:	4781                	li	a5,0
  20ebac:	2c85                	addiw	s9,s9,1
  20ebae:	4701                	li	a4,0
  20ebb0:	4681                	li	a3,0
  20ebb2:	4601                	li	a2,0
  20ebb4:	4581                	li	a1,0
  20ebb6:	de6fe0ef          	jal	ra,20d19c <set_io_sq>
  20ebba:	fdac9ee3          	bne	s9,s10,20eb96 <nvme_main+0xe0>
  20ebbe:	4601                	li	a2,0
  20ebc0:	4581                	li	a1,0
  20ebc2:	4501                	li	a0,0
  20ebc4:	ab0fe0ef          	jal	ra,20ce74 <set_nvme_admin_queue>
  20ebc8:	4509                	li	a0,2
  20ebca:	00042223          	sw	zero,4(s0)
  20ebce:	a52fe0ef          	jal	ra,20ce20 <set_nvme_csts_shst>
  20ebd2:	11144537          	lui	a0,0x11144
  20ebd6:	01642023          	sw	s6,0(s0)
  20ebda:	a02f40ef          	jal	ra,202ddc <UpdateBadBlockTableForGrownBadBlock>
  20ebde:	002107b7          	lui	a5,0x210
  20ebe2:	e9078513          	addi	a0,a5,-368 # 20fe90 <nvme_main+0x13da>
  20ebe6:	9d3f50ef          	jal	ra,2045b8 <cpl_print>
  20ebea:	b78d                	j	20eb4c <nvme_main+0x96>
  20ebec:	8f4fe0ef          	jal	ra,20cce0 <check_nvme_cc_en>
  20ebf0:	2501                	sext.w	a0,a0
  20ebf2:	f4951de3          	bne	a0,s1,20eb4c <nvme_main+0x96>
  20ebf6:	4605                	li	a2,1
  20ebf8:	4585                	li	a1,1
  20ebfa:	4505                	li	a0,1
  20ebfc:	a78fe0ef          	jal	ra,20ce74 <set_nvme_admin_queue>
  20ec00:	4505                	li	a0,1
  20ec02:	9cafe0ef          	jal	ra,20cdcc <set_nvme_csts_rdy>
  20ec06:	002107b7          	lui	a5,0x210
  20ec0a:	e6878513          	addi	a0,a5,-408 # 20fe68 <nvme_main+0x13b2>
  20ec0e:	01442023          	sw	s4,0(s0)
  20ec12:	9a7f50ef          	jal	ra,2045b8 <cpl_print>
  20ec16:	bf1d                	j	20eb4c <nvme_main+0x96>
  20ec18:	1014                	addi	a3,sp,32
  20ec1a:	0870                	addi	a2,sp,28
  20ec1c:	01a10593          	addi	a1,sp,26
  20ec20:	0828                	addi	a0,sp,24
  20ec22:	aeefe0ef          	jal	ra,20cf10 <get_nvme_cmd>
  20ec26:	2501                	sext.w	a0,a0
  20ec28:	f29512e3          	bne	a0,s1,20eb4c <nvme_main+0x96>
  20ec2c:	01815783          	lhu	a5,24(sp)
  20ec30:	0828                	addi	a0,sp,24
  20ec32:	ebc9                	bnez	a5,20ecc4 <nvme_main+0x20e>
  20ec34:	9a1ff0ef          	jal	ra,20e5d4 <handle_nvme_admin_cmd>
  20ec38:	4d81                	li	s11,0
  20ec3a:	bf09                	j	20eb4c <nvme_main+0x96>
  20ec3c:	8a4fe0ef          	jal	ra,20cce0 <check_nvme_cc_en>
  20ec40:	2501                	sext.w	a0,a0
  20ec42:	f00515e3          	bnez	a0,20eb4c <nvme_main+0x96>
  20ec46:	00042223          	sw	zero,4(s0)
  20ec4a:	9d6fe0ef          	jal	ra,20ce20 <set_nvme_csts_shst>
  20ec4e:	4501                	li	a0,0
  20ec50:	97cfe0ef          	jal	ra,20cdcc <set_nvme_csts_rdy>
  20ec54:	002107b7          	lui	a5,0x210
  20ec58:	ea878513          	addi	a0,a5,-344 # 20fea8 <nvme_main+0x13f2>
  20ec5c:	00042023          	sw	zero,0(s0)
  20ec60:	959f50ef          	jal	ra,2045b8 <cpl_print>
  20ec64:	b5e5                	j	20eb4c <nvme_main+0x96>
  20ec66:	4c81                	li	s9,0
  20ec68:	4d21                	li	s10,8
  20ec6a:	8566                	mv	a0,s9
  20ec6c:	4781                	li	a5,0
  20ec6e:	4701                	li	a4,0
  20ec70:	4681                	li	a3,0
  20ec72:	4601                	li	a2,0
  20ec74:	4581                	li	a1,0
  20ec76:	4801                	li	a6,0
  20ec78:	dfcfe0ef          	jal	ra,20d274 <set_io_cq>
  20ec7c:	8566                	mv	a0,s9
  20ec7e:	4781                	li	a5,0
  20ec80:	2c85                	addiw	s9,s9,1
  20ec82:	4701                	li	a4,0
  20ec84:	4681                	li	a3,0
  20ec86:	4601                	li	a2,0
  20ec88:	4581                	li	a1,0
  20ec8a:	d12fe0ef          	jal	ra,20d19c <set_io_sq>
  20ec8e:	fdac9ee3          	bne	s9,s10,20ec6a <nvme_main+0x1b4>
  20ec92:	07bb6d63          	bltu	s6,s11,20ed0c <nvme_main+0x256>
  20ec96:	2d85                	addiw	s11,s11,1
  20ec98:	4601                	li	a2,0
  20ec9a:	4581                	li	a1,0
  20ec9c:	4501                	li	a0,0
  20ec9e:	00042223          	sw	zero,4(s0)
  20eca2:	9d2fe0ef          	jal	ra,20ce74 <set_nvme_admin_queue>
  20eca6:	4501                	li	a0,0
  20eca8:	978fe0ef          	jal	ra,20ce20 <set_nvme_csts_shst>
  20ecac:	4501                	li	a0,0
  20ecae:	91efe0ef          	jal	ra,20cdcc <set_nvme_csts_rdy>
  20ecb2:	002107b7          	lui	a5,0x210
  20ecb6:	f1078513          	addi	a0,a5,-240 # 20ff10 <nvme_main+0x145a>
  20ecba:	00042023          	sw	zero,0(s0)
  20ecbe:	8fbf50ef          	jal	ra,2045b8 <cpl_print>
  20ecc2:	b569                	j	20eb4c <nvme_main+0x96>
  20ecc4:	afffd0ef          	jal	ra,20c7c2 <handle_nvme_io_cmd>
  20ecc8:	002107b7          	lui	a5,0x210
  20eccc:	e8078513          	addi	a0,a5,-384 # 20fe80 <nvme_main+0x13ca>
  20ecd0:	8e9f50ef          	jal	ra,2045b8 <cpl_print>
  20ecd4:	0828                	addi	a0,sp,24
  20ecd6:	d53fb0ef          	jal	ra,20aa28 <ReqTransSliceToLowLevel>
  20ecda:	002107b7          	lui	a5,0x210
  20ecde:	e8878513          	addi	a0,a5,-376 # 20fe88 <nvme_main+0x13d2>
  20ece2:	8d7f50ef          	jal	ra,2045b8 <cpl_print>
  20ece6:	01815783          	lhu	a5,24(sp)
  20ecea:	00978463          	beq	a5,s1,20ecf2 <nvme_main+0x23c>
  20ecee:	4d81                	li	s11,0
  20ecf0:	bdad                	j	20eb6a <nvme_main+0xb4>
  20ecf2:	02014783          	lbu	a5,32(sp)
  20ecf6:	fe979ce3          	bne	a5,s1,20ecee <nvme_main+0x238>
  20ecfa:	02215583          	lhu	a1,34(sp)
  20ecfe:	66a1                	lui	a3,0x8
  20ed00:	4619                	li	a2,6
  20ed02:	4505                	li	a0,1
  20ed04:	bf0fe0ef          	jal	ra,20d0f4 <set_nvme_cpl>
  20ed08:	4d81                	li	s11,0
  20ed0a:	b585                	j	20eb6a <nvme_main+0xb4>
  20ed0c:	856e                	mv	a0,s11
  20ed0e:	ffffd0ef          	jal	ra,20cd0c <pcie_async_reset>
  20ed12:	002107b7          	lui	a5,0x210
  20ed16:	ec078513          	addi	a0,a5,-320 # 20fec0 <nvme_main+0x140a>
  20ed1a:	89ff50ef          	jal	ra,2045b8 <cpl_print>
  20ed1e:	002107b7          	lui	a5,0x210
  20ed22:	ee078513          	addi	a0,a5,-288 # 20fee0 <nvme_main+0x142a>
  20ed26:	893f50ef          	jal	ra,2045b8 <cpl_print>
  20ed2a:	4d81                	li	s11,0
  20ed2c:	b7b5                	j	20ec98 <nvme_main+0x1e2>
