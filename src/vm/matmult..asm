
/home/anhngo/pintos/src/examples/matmult:     file format elf32-i386


Disassembly of section .text:

080480a0 <main>:
 80480a0:	55                   	push   ebp
 80480a1:	89 e5                	mov    ebp,esp
 80480a3:	57                   	push   edi
 80480a4:	56                   	push   esi
 80480a5:	53                   	push   ebx
 80480a6:	83 e4 f0             	and    esp,0xfffffff0
 80480a9:	83 ec 30             	sub    esp,0x30
 80480ac:	e8 e4 21 00 00       	call   804a295 <__x86.get_pc_thunk.dx>
 80480b1:	81 c2 4f 2f 00 00    	add    edx,0x2f4f
 80480b7:	89 54 24 18          	mov    DWORD PTR [esp+0x18],edx
 80480bb:	8d 82 80 00 20 00    	lea    eax,[edx+0x200080]
 80480c1:	8d 9a 80 00 10 00    	lea    ebx,[edx+0x100080]
 80480c7:	89 5c 24 1c          	mov    DWORD PTR [esp+0x1c],ebx
 80480cb:	8d 92 80 00 00 00    	lea    edx,[edx+0x80]
 80480d1:	89 54 24 20          	mov    DWORD PTR [esp+0x20],edx
 80480d5:	8d b8 00 00 10 00    	lea    edi,[eax+0x100000]
 80480db:	89 d6                	mov    esi,edx
 80480dd:	89 c2                	mov    edx,eax
 80480df:	b9 00 00 00 00       	mov    ecx,0x0
 80480e4:	89 44 24 2c          	mov    DWORD PTR [esp+0x2c],eax
 80480e8:	b8 00 00 00 00       	mov    eax,0x0
 80480ed:	89 0c 82             	mov    DWORD PTR [edx+eax*4],ecx
 80480f0:	89 04 83             	mov    DWORD PTR [ebx+eax*4],eax
 80480f3:	c7 04 86 00 00 00 00 	mov    DWORD PTR [esi+eax*4],0x0
 80480fa:	40                   	inc    eax
 80480fb:	3d 00 02 00 00       	cmp    eax,0x200
 8048100:	75 eb                	jne    80480ed <main+0x4d>
 8048102:	41                   	inc    ecx
 8048103:	81 c2 00 08 00 00    	add    edx,0x800
 8048109:	81 c3 00 08 00 00    	add    ebx,0x800
 804810f:	81 c6 00 08 00 00    	add    esi,0x800
 8048115:	39 fa                	cmp    edx,edi
 8048117:	75 cf                	jne    80480e8 <main+0x48>
 8048119:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 804811d:	bb 00 00 00 00       	mov    ebx,0x0
 8048122:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 8048126:	81 c2 00 08 10 00    	add    edx,0x100800
 804812c:	89 54 24 28          	mov    DWORD PTR [esp+0x28],edx
 8048130:	8b 54 24 1c          	mov    edx,DWORD PTR [esp+0x1c]
 8048134:	8d b2 00 00 10 00    	lea    esi,[edx+0x100000]
 804813a:	89 da                	mov    edx,ebx
 804813c:	c1 e2 0b             	shl    edx,0xb
 804813f:	01 c2                	add    edx,eax
 8048141:	89 54 24 24          	mov    DWORD PTR [esp+0x24],edx
 8048145:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
 8048149:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
 804814d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8048151:	89 54 24 2c          	mov    DWORD PTR [esp+0x2c],edx
 8048155:	8b 3a                	mov    edi,DWORD PTR [edx]
 8048157:	8d 86 00 00 f0 ff    	lea    eax,[esi-0x100000]
 804815d:	8b 5c 24 24          	mov    ebx,DWORD PTR [esp+0x24]
 8048161:	8b 0b                	mov    ecx,DWORD PTR [ebx]
 8048163:	0f af 08             	imul   ecx,DWORD PTR [eax]
 8048166:	01 cf                	add    edi,ecx
 8048168:	83 c3 04             	add    ebx,0x4
 804816b:	05 00 08 00 00       	add    eax,0x800
 8048170:	39 f0                	cmp    eax,esi
 8048172:	75 ed                	jne    8048161 <main+0xc1>
 8048174:	8b 44 24 2c          	mov    eax,DWORD PTR [esp+0x2c]
 8048178:	89 38                	mov    DWORD PTR [eax],edi
 804817a:	83 c2 04             	add    edx,0x4
 804817d:	83 c6 04             	add    esi,0x4
 8048180:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
 8048184:	39 c6                	cmp    esi,eax
 8048186:	75 c9                	jne    8048151 <main+0xb1>
 8048188:	8b 5c 24 14          	mov    ebx,DWORD PTR [esp+0x14]
 804818c:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
 8048190:	43                   	inc    ebx
 8048191:	81 44 24 20 00 08 00 	add    DWORD PTR [esp+0x20],0x800
 8048198:	00 
 8048199:	81 fb 00 02 00 00    	cmp    ebx,0x200
 804819f:	75 8f                	jne    8048130 <main+0x90>
 80481a1:	8b 5c 24 18          	mov    ebx,DWORD PTR [esp+0x18]
 80481a5:	8b 83 7c 00 10 00    	mov    eax,DWORD PTR [ebx+0x10007c]
 80481ab:	89 04 24             	mov    DWORD PTR [esp],eax
 80481ae:	e8 6f 00 00 00       	call   8048222 <exit>

080481b3 <_start>:
 80481b3:	55                   	push   ebp
 80481b4:	89 e5                	mov    ebp,esp
 80481b6:	53                   	push   ebx
 80481b7:	83 ec 14             	sub    esp,0x14
 80481ba:	e8 da 20 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80481bf:	81 c3 41 2e 00 00    	add    ebx,0x2e41
 80481c5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80481c8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80481cc:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80481cf:	89 04 24             	mov    DWORD PTR [esp],eax
 80481d2:	e8 c9 fe ff ff       	call   80480a0 <main>
 80481d7:	89 04 24             	mov    DWORD PTR [esp],eax
 80481da:	e8 43 00 00 00       	call   8048222 <exit>

080481df <halt>:
 80481df:	55                   	push   ebp
 80481e0:	89 e5                	mov    ebp,esp
 80481e2:	53                   	push   ebx
 80481e3:	83 ec 14             	sub    esp,0x14
 80481e6:	e8 ae 20 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80481eb:	81 c3 15 2e 00 00    	add    ebx,0x2e15
 80481f1:	6a 00                	push   0x0
 80481f3:	cd 30                	int    0x30
 80481f5:	83 c4 04             	add    esp,0x4
 80481f8:	8d 83 5c fa ff ff    	lea    eax,[ebx-0x5a4]
 80481fe:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8048202:	8d 83 b8 f2 ff ff    	lea    eax,[ebx-0xd48]
 8048208:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804820c:	c7 44 24 04 44 00 00 	mov    DWORD PTR [esp+0x4],0x44
 8048213:	00 
 8048214:	8d 83 43 fb ff ff    	lea    eax,[ebx-0x4bd]
 804821a:	89 04 24             	mov    DWORD PTR [esp],eax
 804821d:	e8 98 01 00 00       	call   80483ba <debug_panic>

08048222 <exit>:
 8048222:	55                   	push   ebp
 8048223:	89 e5                	mov    ebp,esp
 8048225:	53                   	push   ebx
 8048226:	83 ec 14             	sub    esp,0x14
 8048229:	e8 6b 20 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 804822e:	81 c3 d2 2d 00 00    	add    ebx,0x2dd2
 8048234:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 8048237:	6a 01                	push   0x1
 8048239:	cd 30                	int    0x30
 804823b:	83 c4 08             	add    esp,0x8
 804823e:	8d 83 5c fa ff ff    	lea    eax,[ebx-0x5a4]
 8048244:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8048248:	8d 83 b0 f2 ff ff    	lea    eax,[ebx-0xd50]
 804824e:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048252:	c7 44 24 04 4b 00 00 	mov    DWORD PTR [esp+0x4],0x4b
 8048259:	00 
 804825a:	8d 83 43 fb ff ff    	lea    eax,[ebx-0x4bd]
 8048260:	89 04 24             	mov    DWORD PTR [esp],eax
 8048263:	e8 52 01 00 00       	call   80483ba <debug_panic>

08048268 <exec>:
 8048268:	55                   	push   ebp
 8048269:	89 e5                	mov    ebp,esp
 804826b:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804826e:	6a 02                	push   0x2
 8048270:	cd 30                	int    0x30
 8048272:	83 c4 08             	add    esp,0x8
 8048275:	5d                   	pop    ebp
 8048276:	c3                   	ret

08048277 <wait>:
 8048277:	55                   	push   ebp
 8048278:	89 e5                	mov    ebp,esp
 804827a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804827d:	6a 03                	push   0x3
 804827f:	cd 30                	int    0x30
 8048281:	83 c4 08             	add    esp,0x8
 8048284:	5d                   	pop    ebp
 8048285:	c3                   	ret

08048286 <create>:
 8048286:	55                   	push   ebp
 8048287:	89 e5                	mov    ebp,esp
 8048289:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804828c:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804828f:	52                   	push   edx
 8048290:	50                   	push   eax
 8048291:	6a 04                	push   0x4
 8048293:	cd 30                	int    0x30
 8048295:	83 c4 0c             	add    esp,0xc
 8048298:	85 c0                	test   eax,eax
 804829a:	0f 95 c0             	setne  al
 804829d:	5d                   	pop    ebp
 804829e:	c3                   	ret

0804829f <remove>:
 804829f:	55                   	push   ebp
 80482a0:	89 e5                	mov    ebp,esp
 80482a2:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 80482a5:	6a 05                	push   0x5
 80482a7:	cd 30                	int    0x30
 80482a9:	83 c4 08             	add    esp,0x8
 80482ac:	85 c0                	test   eax,eax
 80482ae:	0f 95 c0             	setne  al
 80482b1:	5d                   	pop    ebp
 80482b2:	c3                   	ret

080482b3 <open>:
 80482b3:	55                   	push   ebp
 80482b4:	89 e5                	mov    ebp,esp
 80482b6:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 80482b9:	6a 06                	push   0x6
 80482bb:	cd 30                	int    0x30
 80482bd:	83 c4 08             	add    esp,0x8
 80482c0:	5d                   	pop    ebp
 80482c1:	c3                   	ret

080482c2 <filesize>:
 80482c2:	55                   	push   ebp
 80482c3:	89 e5                	mov    ebp,esp
 80482c5:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 80482c8:	6a 07                	push   0x7
 80482ca:	cd 30                	int    0x30
 80482cc:	83 c4 08             	add    esp,0x8
 80482cf:	5d                   	pop    ebp
 80482d0:	c3                   	ret

080482d1 <read>:
 80482d1:	55                   	push   ebp
 80482d2:	89 e5                	mov    ebp,esp
 80482d4:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80482d7:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 80482da:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
 80482dd:	51                   	push   ecx
 80482de:	52                   	push   edx
 80482df:	50                   	push   eax
 80482e0:	6a 08                	push   0x8
 80482e2:	cd 30                	int    0x30
 80482e4:	83 c4 10             	add    esp,0x10
 80482e7:	5d                   	pop    ebp
 80482e8:	c3                   	ret

080482e9 <write>:
 80482e9:	55                   	push   ebp
 80482ea:	89 e5                	mov    ebp,esp
 80482ec:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80482ef:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 80482f2:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
 80482f5:	51                   	push   ecx
 80482f6:	52                   	push   edx
 80482f7:	50                   	push   eax
 80482f8:	6a 09                	push   0x9
 80482fa:	cd 30                	int    0x30
 80482fc:	83 c4 10             	add    esp,0x10
 80482ff:	5d                   	pop    ebp
 8048300:	c3                   	ret

08048301 <seek>:
 8048301:	55                   	push   ebp
 8048302:	89 e5                	mov    ebp,esp
 8048304:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048307:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804830a:	52                   	push   edx
 804830b:	50                   	push   eax
 804830c:	6a 0a                	push   0xa
 804830e:	cd 30                	int    0x30
 8048310:	83 c4 0c             	add    esp,0xc
 8048313:	5d                   	pop    ebp
 8048314:	c3                   	ret

08048315 <tell>:
 8048315:	55                   	push   ebp
 8048316:	89 e5                	mov    ebp,esp
 8048318:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804831b:	6a 0b                	push   0xb
 804831d:	cd 30                	int    0x30
 804831f:	83 c4 08             	add    esp,0x8
 8048322:	5d                   	pop    ebp
 8048323:	c3                   	ret

08048324 <close>:
 8048324:	55                   	push   ebp
 8048325:	89 e5                	mov    ebp,esp
 8048327:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804832a:	6a 0c                	push   0xc
 804832c:	cd 30                	int    0x30
 804832e:	83 c4 08             	add    esp,0x8
 8048331:	5d                   	pop    ebp
 8048332:	c3                   	ret

08048333 <mmap>:
 8048333:	55                   	push   ebp
 8048334:	89 e5                	mov    ebp,esp
 8048336:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048339:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804833c:	52                   	push   edx
 804833d:	50                   	push   eax
 804833e:	6a 0d                	push   0xd
 8048340:	cd 30                	int    0x30
 8048342:	83 c4 0c             	add    esp,0xc
 8048345:	5d                   	pop    ebp
 8048346:	c3                   	ret

08048347 <munmap>:
 8048347:	55                   	push   ebp
 8048348:	89 e5                	mov    ebp,esp
 804834a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804834d:	6a 0e                	push   0xe
 804834f:	cd 30                	int    0x30
 8048351:	83 c4 08             	add    esp,0x8
 8048354:	5d                   	pop    ebp
 8048355:	c3                   	ret

08048356 <chdir>:
 8048356:	55                   	push   ebp
 8048357:	89 e5                	mov    ebp,esp
 8048359:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804835c:	6a 0f                	push   0xf
 804835e:	cd 30                	int    0x30
 8048360:	83 c4 08             	add    esp,0x8
 8048363:	85 c0                	test   eax,eax
 8048365:	0f 95 c0             	setne  al
 8048368:	5d                   	pop    ebp
 8048369:	c3                   	ret

0804836a <mkdir>:
 804836a:	55                   	push   ebp
 804836b:	89 e5                	mov    ebp,esp
 804836d:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 8048370:	6a 10                	push   0x10
 8048372:	cd 30                	int    0x30
 8048374:	83 c4 08             	add    esp,0x8
 8048377:	85 c0                	test   eax,eax
 8048379:	0f 95 c0             	setne  al
 804837c:	5d                   	pop    ebp
 804837d:	c3                   	ret

0804837e <readdir>:
 804837e:	55                   	push   ebp
 804837f:	89 e5                	mov    ebp,esp
 8048381:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048384:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8048387:	52                   	push   edx
 8048388:	50                   	push   eax
 8048389:	6a 11                	push   0x11
 804838b:	cd 30                	int    0x30
 804838d:	83 c4 0c             	add    esp,0xc
 8048390:	85 c0                	test   eax,eax
 8048392:	0f 95 c0             	setne  al
 8048395:	5d                   	pop    ebp
 8048396:	c3                   	ret

08048397 <isdir>:
 8048397:	55                   	push   ebp
 8048398:	89 e5                	mov    ebp,esp
 804839a:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 804839d:	6a 12                	push   0x12
 804839f:	cd 30                	int    0x30
 80483a1:	83 c4 08             	add    esp,0x8
 80483a4:	85 c0                	test   eax,eax
 80483a6:	0f 95 c0             	setne  al
 80483a9:	5d                   	pop    ebp
 80483aa:	c3                   	ret

080483ab <inumber>:
 80483ab:	55                   	push   ebp
 80483ac:	89 e5                	mov    ebp,esp
 80483ae:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 80483b1:	6a 13                	push   0x13
 80483b3:	cd 30                	int    0x30
 80483b5:	83 c4 08             	add    esp,0x8
 80483b8:	5d                   	pop    ebp
 80483b9:	c3                   	ret

080483ba <debug_panic>:
 80483ba:	55                   	push   ebp
 80483bb:	89 e5                	mov    ebp,esp
 80483bd:	53                   	push   ebx
 80483be:	83 ec 14             	sub    esp,0x14
 80483c1:	e8 d3 1e 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80483c6:	81 c3 3a 2c 00 00    	add    ebx,0x2c3a
 80483cc:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 80483cf:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80483d3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80483d6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80483da:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80483dd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80483e1:	8d 83 80 fa ff ff    	lea    eax,[ebx-0x580]
 80483e7:	89 04 24             	mov    DWORD PTR [esp],eax
 80483ea:	e8 65 06 00 00       	call   8048a54 <printf>
 80483ef:	8d 45 18             	lea    eax,[ebp+0x18]
 80483f2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80483f6:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 80483f9:	89 04 24             	mov    DWORD PTR [esp],eax
 80483fc:	e8 88 01 00 00       	call   8048589 <vprintf>
 8048401:	8d 83 69 fb ff ff    	lea    eax,[ebx-0x497]
 8048407:	89 04 24             	mov    DWORD PTR [esp],eax
 804840a:	e8 45 06 00 00       	call   8048a54 <printf>
 804840f:	e8 bc 01 00 00       	call   80485d0 <debug_backtrace>
 8048414:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 804841b:	e8 02 fe ff ff       	call   8048222 <exit>

08048420 <flush>:
 8048420:	55                   	push   ebp
 8048421:	89 e5                	mov    ebp,esp
 8048423:	83 ec 18             	sub    esp,0x18
 8048426:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
 8048429:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
 804842c:	e8 68 1e 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8048431:	81 c3 cf 2b 00 00    	add    ebx,0x2bcf
 8048437:	89 c6                	mov    esi,eax
 8048439:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
 804843c:	39 c6                	cmp    esi,eax
 804843e:	72 0d                	jb     804844d <flush+0x2d>
 8048440:	89 76 40             	mov    DWORD PTR [esi+0x40],esi
 8048443:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
 8048446:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
 8048449:	89 ec                	mov    esp,ebp
 804844b:	5d                   	pop    ebp
 804844c:	c3                   	ret
 804844d:	29 f0                	sub    eax,esi
 804844f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048453:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
 8048457:	8b 46 48             	mov    eax,DWORD PTR [esi+0x48]
 804845a:	89 04 24             	mov    DWORD PTR [esp],eax
 804845d:	e8 87 fe ff ff       	call   80482e9 <write>
 8048462:	eb dc                	jmp    8048440 <flush+0x20>

08048464 <add_char>:
 8048464:	55                   	push   ebp
 8048465:	89 e5                	mov    ebp,esp
 8048467:	83 ec 08             	sub    esp,0x8
 804846a:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 804846d:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048470:	8b 43 40             	mov    eax,DWORD PTR [ebx+0x40]
 8048473:	8d 50 01             	lea    edx,[eax+0x1]
 8048476:	89 53 40             	mov    DWORD PTR [ebx+0x40],edx
 8048479:	0f b6 4d 08          	movzx  ecx,BYTE PTR [ebp+0x8]
 804847d:	88 08                	mov    BYTE PTR [eax],cl
 804847f:	8d 43 40             	lea    eax,[ebx+0x40]
 8048482:	39 43 40             	cmp    DWORD PTR [ebx+0x40],eax
 8048485:	73 0a                	jae    8048491 <add_char+0x2d>
 8048487:	ff 43 44             	inc    DWORD PTR [ebx+0x44]
 804848a:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 804848d:	89 ec                	mov    esp,ebp
 804848f:	5d                   	pop    ebp
 8048490:	c3                   	ret
 8048491:	89 d8                	mov    eax,ebx
 8048493:	e8 88 ff ff ff       	call   8048420 <flush>
 8048498:	eb ed                	jmp    8048487 <add_char+0x23>

0804849a <putchar>:
 804849a:	55                   	push   ebp
 804849b:	89 e5                	mov    ebp,esp
 804849d:	83 ec 28             	sub    esp,0x28
 80484a0:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 80484a3:	e8 f1 1d 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80484a8:	81 c3 58 2b 00 00    	add    ebx,0x2b58
 80484ae:	0f b6 45 08          	movzx  eax,BYTE PTR [ebp+0x8]
 80484b2:	88 45 f7             	mov    BYTE PTR [ebp-0x9],al
 80484b5:	c7 44 24 08 01 00 00 	mov    DWORD PTR [esp+0x8],0x1
 80484bc:	00 
 80484bd:	8d 45 f7             	lea    eax,[ebp-0x9]
 80484c0:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80484c4:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80484cb:	e8 19 fe ff ff       	call   80482e9 <write>
 80484d0:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80484d3:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 80484d6:	89 ec                	mov    esp,ebp
 80484d8:	5d                   	pop    ebp
 80484d9:	c3                   	ret

080484da <puts>:
 80484da:	55                   	push   ebp
 80484db:	89 e5                	mov    ebp,esp
 80484dd:	83 ec 18             	sub    esp,0x18
 80484e0:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
 80484e3:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
 80484e6:	e8 ae 1d 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80484eb:	81 c3 15 2b 00 00    	add    ebx,0x2b15
 80484f1:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 80484f4:	89 34 24             	mov    DWORD PTR [esp],esi
 80484f7:	e8 c9 17 00 00       	call   8049cc5 <strlen>
 80484fc:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048500:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
 8048504:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 804850b:	e8 d9 fd ff ff       	call   80482e9 <write>
 8048510:	c7 04 24 0a 00 00 00 	mov    DWORD PTR [esp],0xa
 8048517:	e8 7e ff ff ff       	call   804849a <putchar>
 804851c:	b8 00 00 00 00       	mov    eax,0x0
 8048521:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
 8048524:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
 8048527:	89 ec                	mov    esp,ebp
 8048529:	5d                   	pop    ebp
 804852a:	c3                   	ret

0804852b <vhprintf>:
 804852b:	55                   	push   ebp
 804852c:	89 e5                	mov    ebp,esp
 804852e:	83 ec 68             	sub    esp,0x68
 8048531:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
 8048534:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
 8048537:	e8 5d 1d 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 804853c:	81 c3 c4 2a 00 00    	add    ebx,0x2ac4
 8048542:	8d 75 ac             	lea    esi,[ebp-0x54]
 8048545:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
 8048548:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 804854f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048552:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 8048555:	89 74 24 0c          	mov    DWORD PTR [esp+0xc],esi
 8048559:	8d 83 64 d4 ff ff    	lea    eax,[ebx-0x2b9c]
 804855f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048563:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048566:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804856a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804856d:	89 04 24             	mov    DWORD PTR [esp],eax
 8048570:	e8 36 05 00 00       	call   8048aab <__vprintf>
 8048575:	89 f0                	mov    eax,esi
 8048577:	e8 a4 fe ff ff       	call   8048420 <flush>
 804857c:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 804857f:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
 8048582:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
 8048585:	89 ec                	mov    esp,ebp
 8048587:	5d                   	pop    ebp
 8048588:	c3                   	ret

08048589 <vprintf>:
 8048589:	55                   	push   ebp
 804858a:	89 e5                	mov    ebp,esp
 804858c:	83 ec 18             	sub    esp,0x18
 804858f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048592:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048596:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048599:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804859d:	c7 04 24 01 00 00 00 	mov    DWORD PTR [esp],0x1
 80485a4:	e8 82 ff ff ff       	call   804852b <vhprintf>
 80485a9:	89 ec                	mov    esp,ebp
 80485ab:	5d                   	pop    ebp
 80485ac:	c3                   	ret

080485ad <hprintf>:
 80485ad:	55                   	push   ebp
 80485ae:	89 e5                	mov    ebp,esp
 80485b0:	83 ec 18             	sub    esp,0x18
 80485b3:	8d 45 10             	lea    eax,[ebp+0x10]
 80485b6:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80485ba:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80485bd:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80485c4:	89 04 24             	mov    DWORD PTR [esp],eax
 80485c7:	e8 5f ff ff ff       	call   804852b <vhprintf>
 80485cc:	89 ec                	mov    esp,ebp
 80485ce:	5d                   	pop    ebp
 80485cf:	c3                   	ret

080485d0 <debug_backtrace>:
 80485d0:	55                   	push   ebp
 80485d1:	89 e5                	mov    ebp,esp
 80485d3:	57                   	push   edi
 80485d4:	56                   	push   esi
 80485d5:	53                   	push   ebx
 80485d6:	83 ec 1c             	sub    esp,0x1c
 80485d9:	e8 bb 1c 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80485de:	81 c3 22 2a 00 00    	add    ebx,0x2a22
 80485e4:	8b 45 04             	mov    eax,DWORD PTR [ebp+0x4]
 80485e7:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80485eb:	8d 83 59 fb ff ff    	lea    eax,[ebx-0x4a7]
 80485f1:	89 04 24             	mov    DWORD PTR [esp],eax
 80485f4:	e8 5b 04 00 00       	call   8048a54 <printf>
 80485f9:	8b 75 00             	mov    esi,DWORD PTR [ebp+0x0]
 80485fc:	8d bb 64 fb ff ff    	lea    edi,[ebx-0x49c]
 8048602:	81 fe ff 0f 00 00    	cmp    esi,0xfff
 8048608:	76 1e                	jbe    8048628 <debug_backtrace+0x58>
 804860a:	83 3e 00             	cmp    DWORD PTR [esi],0x0
 804860d:	74 19                	je     8048628 <debug_backtrace+0x58>
 804860f:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
 8048612:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048616:	89 3c 24             	mov    DWORD PTR [esp],edi
 8048619:	e8 36 04 00 00       	call   8048a54 <printf>
 804861e:	8b 36                	mov    esi,DWORD PTR [esi]
 8048620:	81 fe ff 0f 00 00    	cmp    esi,0xfff
 8048626:	77 e2                	ja     804860a <debug_backtrace+0x3a>
 8048628:	8d 83 68 fb ff ff    	lea    eax,[ebx-0x498]
 804862e:	89 04 24             	mov    DWORD PTR [esp],eax
 8048631:	e8 1e 04 00 00       	call   8048a54 <printf>
 8048636:	80 bb 80 00 30 00 00 	cmp    BYTE PTR [ebx+0x300080],0x0
 804863d:	74 08                	je     8048647 <debug_backtrace+0x77>
 804863f:	83 c4 1c             	add    esp,0x1c
 8048642:	5b                   	pop    ebx
 8048643:	5e                   	pop    esi
 8048644:	5f                   	pop    edi
 8048645:	5d                   	pop    ebp
 8048646:	c3                   	ret
 8048647:	c6 83 80 00 30 00 01 	mov    BYTE PTR [ebx+0x300080],0x1
 804864e:	8d 83 a8 fa ff ff    	lea    eax,[ebx-0x558]
 8048654:	89 04 24             	mov    DWORD PTR [esp],eax
 8048657:	e8 f8 03 00 00       	call   8048a54 <printf>
 804865c:	eb e1                	jmp    804863f <debug_backtrace+0x6f>
 804865e:	90                   	nop
 804865f:	90                   	nop

08048660 <vsnprintf_helper>:
 8048660:	55                   	push   ebp
 8048661:	89 e5                	mov    ebp,esp
 8048663:	53                   	push   ebx
 8048664:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048667:	0f b6 5d 08          	movzx  ebx,BYTE PTR [ebp+0x8]
 804866b:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 804866e:	8d 4a 01             	lea    ecx,[edx+0x1]
 8048671:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
 8048674:	3b 50 08             	cmp    edx,DWORD PTR [eax+0x8]
 8048677:	7d 09                	jge    8048682 <vsnprintf_helper+0x22>
 8048679:	8b 10                	mov    edx,DWORD PTR [eax]
 804867b:	8d 4a 01             	lea    ecx,[edx+0x1]
 804867e:	89 08                	mov    DWORD PTR [eax],ecx
 8048680:	88 1a                	mov    BYTE PTR [edx],bl
 8048682:	5b                   	pop    ebx
 8048683:	5d                   	pop    ebp
 8048684:	c3                   	ret

08048685 <output_dup>:
 8048685:	85 d2                	test   edx,edx
 8048687:	74 2b                	je     80486b4 <output_dup+0x2f>
 8048689:	55                   	push   ebp
 804868a:	89 e5                	mov    ebp,esp
 804868c:	57                   	push   edi
 804868d:	56                   	push   esi
 804868e:	53                   	push   ebx
 804868f:	83 ec 1c             	sub    esp,0x1c
 8048692:	89 cf                	mov    edi,ecx
 8048694:	8d 5a ff             	lea    ebx,[edx-0x1]
 8048697:	0f be f0             	movsx  esi,al
 804869a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804869d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80486a1:	89 34 24             	mov    DWORD PTR [esp],esi
 80486a4:	ff d7                	call   edi
 80486a6:	4b                   	dec    ebx
 80486a7:	83 fb ff             	cmp    ebx,0xffffffff
 80486aa:	75 ee                	jne    804869a <output_dup+0x15>
 80486ac:	83 c4 1c             	add    esp,0x1c
 80486af:	5b                   	pop    ebx
 80486b0:	5e                   	pop    esi
 80486b1:	5f                   	pop    edi
 80486b2:	5d                   	pop    ebp
 80486b3:	c3                   	ret
 80486b4:	c3                   	ret

080486b5 <format_integer>:
 80486b5:	55                   	push   ebp
 80486b6:	89 e5                	mov    ebp,esp
 80486b8:	57                   	push   edi
 80486b9:	56                   	push   esi
 80486ba:	53                   	push   ebx
 80486bb:	81 ec 8c 00 00 00    	sub    esp,0x8c
 80486c1:	e8 d7 1b 00 00       	call   804a29d <__x86.get_pc_thunk.di>
 80486c6:	81 c7 3a 29 00 00    	add    edi,0x293a
 80486cc:	89 7d 8c             	mov    DWORD PTR [ebp-0x74],edi
 80486cf:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
 80486d2:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
 80486d5:	0f b6 45 08          	movzx  eax,BYTE PTR [ebp+0x8]
 80486d9:	c7 45 84 00 00 00 00 	mov    DWORD PTR [ebp-0x7c],0x0
 80486e0:	84 c9                	test   cl,cl
 80486e2:	74 17                	je     80486fb <format_integer+0x46>
 80486e4:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
 80486e7:	8b 17                	mov    edx,DWORD PTR [edi]
 80486e9:	f6 c2 02             	test   dl,0x2
 80486ec:	74 79                	je     8048767 <format_integer+0xb2>
 80486ee:	3c 01                	cmp    al,0x1
 80486f0:	19 c0                	sbb    eax,eax
 80486f2:	83 e0 fe             	and    eax,0xfffffffe
 80486f5:	83 c0 2d             	add    eax,0x2d
 80486f8:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
 80486fb:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 80486fe:	8b 38                	mov    edi,DWORD PTR [eax]
 8048700:	89 bd 7c ff ff ff    	mov    DWORD PTR [ebp-0x84],edi
 8048706:	83 e7 08             	and    edi,0x8
 8048709:	89 bd 78 ff ff ff    	mov    DWORD PTR [ebp-0x88],edi
 804870f:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
 8048712:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
 8048715:	09 d0                	or     eax,edx
 8048717:	74 04                	je     804871d <format_integer+0x68>
 8048719:	85 ff                	test   edi,edi
 804871b:	75 6d                	jne    804878a <format_integer+0xd5>
 804871d:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
 8048720:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
 8048723:	09 d0                	or     eax,edx
 8048725:	0f 84 6f 02 00 00    	je     804899a <format_integer+0x2e5>
 804872b:	c7 45 80 00 00 00 00 	mov    DWORD PTR [ebp-0x80],0x0
 8048732:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048735:	8b 40 04             	mov    eax,DWORD PTR [eax+0x4]
 8048738:	89 45 88             	mov    DWORD PTR [ebp-0x78],eax
 804873b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804873e:	8b 00                	mov    eax,DWORD PTR [eax]
 8048740:	89 c6                	mov    esi,eax
 8048742:	89 c7                	mov    edi,eax
 8048744:	c1 ff 1f             	sar    edi,0x1f
 8048747:	c7 45 90 00 00 00 00 	mov    DWORD PTR [ebp-0x70],0x0
 804874e:	8d 5d a8             	lea    ebx,[ebp-0x58]
 8048751:	8b 85 7c ff ff ff    	mov    eax,DWORD PTR [ebp-0x84]
 8048757:	c1 e8 05             	shr    eax,0x5
 804875a:	24 01                	and    al,0x1
 804875c:	88 45 96             	mov    BYTE PTR [ebp-0x6a],al
 804875f:	89 5d 98             	mov    DWORD PTR [ebp-0x68],ebx
 8048762:	e9 96 00 00 00       	jmp    80487fd <format_integer+0x148>
 8048767:	f6 c2 04             	test   dl,0x4
 804876a:	74 0f                	je     804877b <format_integer+0xc6>
 804876c:	3c 01                	cmp    al,0x1
 804876e:	19 c0                	sbb    eax,eax
 8048770:	83 e0 f3             	and    eax,0xfffffff3
 8048773:	83 c0 2d             	add    eax,0x2d
 8048776:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
 8048779:	eb 80                	jmp    80486fb <format_integer+0x46>
 804877b:	f6 d8                	neg    al
 804877d:	19 c0                	sbb    eax,eax
 804877f:	83 e0 2d             	and    eax,0x2d
 8048782:	89 45 84             	mov    DWORD PTR [ebp-0x7c],eax
 8048785:	e9 71 ff ff ff       	jmp    80486fb <format_integer+0x46>
 804878a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804878d:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
 8048790:	89 45 80             	mov    DWORD PTR [ebp-0x80],eax
 8048793:	eb 9d                	jmp    8048732 <format_integer+0x7d>
 8048795:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
 8048798:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
 804879b:	8b 4d 9c             	mov    ecx,DWORD PTR [ebp-0x64]
 804879e:	8d 41 01             	lea    eax,[ecx+0x1]
 80487a1:	89 45 98             	mov    DWORD PTR [ebp-0x68],eax
 80487a4:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 80487a8:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
 80487ac:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
 80487af:	89 04 24             	mov    DWORD PTR [esp],eax
 80487b2:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
 80487b5:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 80487b9:	8b 5d 8c             	mov    ebx,DWORD PTR [ebp-0x74]
 80487bc:	e8 30 1a 00 00       	call   804a1f1 <__umoddi3>
 80487c1:	8b 55 88             	mov    edx,DWORD PTR [ebp-0x78]
 80487c4:	0f b6 04 02          	movzx  eax,BYTE PTR [edx+eax*1]
 80487c8:	88 45 97             	mov    BYTE PTR [ebp-0x69],al
 80487cb:	8b 4d 9c             	mov    ecx,DWORD PTR [ebp-0x64]
 80487ce:	88 01                	mov    BYTE PTR [ecx],al
 80487d0:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 80487d4:	89 7c 24 0c          	mov    DWORD PTR [esp+0xc],edi
 80487d8:	8b 45 a4             	mov    eax,DWORD PTR [ebp-0x5c]
 80487db:	89 04 24             	mov    DWORD PTR [esp],eax
 80487de:	8b 55 a0             	mov    edx,DWORD PTR [ebp-0x60]
 80487e1:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 80487e5:	e8 e5 19 00 00       	call   804a1cf <__udivdi3>
 80487ea:	ff 45 90             	inc    DWORD PTR [ebp-0x70]
 80487ed:	39 75 a4             	cmp    DWORD PTR [ebp-0x5c],esi
 80487f0:	8b 4d a0             	mov    ecx,DWORD PTR [ebp-0x60]
 80487f3:	19 f9                	sbb    ecx,edi
 80487f5:	72 32                	jb     8048829 <format_integer+0x174>
 80487f7:	89 45 a4             	mov    DWORD PTR [ebp-0x5c],eax
 80487fa:	89 55 a0             	mov    DWORD PTR [ebp-0x60],edx
 80487fd:	80 7d 96 00          	cmp    BYTE PTR [ebp-0x6a],0x0
 8048801:	74 92                	je     8048795 <format_integer+0xe0>
 8048803:	8b 45 90             	mov    eax,DWORD PTR [ebp-0x70]
 8048806:	85 c0                	test   eax,eax
 8048808:	7e 8b                	jle    8048795 <format_integer+0xe0>
 804880a:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
 804880d:	99                   	cdq
 804880e:	f7 79 0c             	idiv   DWORD PTR [ecx+0xc]
 8048811:	8b 45 98             	mov    eax,DWORD PTR [ebp-0x68]
 8048814:	89 45 9c             	mov    DWORD PTR [ebp-0x64],eax
 8048817:	85 d2                	test   edx,edx
 8048819:	75 80                	jne    804879b <format_integer+0xe6>
 804881b:	8d 50 01             	lea    edx,[eax+0x1]
 804881e:	89 55 9c             	mov    DWORD PTR [ebp-0x64],edx
 8048821:	c6 00 2c             	mov    BYTE PTR [eax],0x2c
 8048824:	e9 72 ff ff ff       	jmp    804879b <format_integer+0xe6>
 8048829:	8b 5d 98             	mov    ebx,DWORD PTR [ebp-0x68]
 804882c:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804882f:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
 8048832:	85 d2                	test   edx,edx
 8048834:	b8 01 00 00 00       	mov    eax,0x1
 8048839:	0f 48 d0             	cmovs  edx,eax
 804883c:	8d 4d a8             	lea    ecx,[ebp-0x58]
 804883f:	89 d8                	mov    eax,ebx
 8048841:	29 c8                	sub    eax,ecx
 8048843:	39 c2                	cmp    edx,eax
 8048845:	7e 1e                	jle    8048865 <format_integer+0x1b0>
 8048847:	8d 45 e7             	lea    eax,[ebp-0x19]
 804884a:	39 c3                	cmp    ebx,eax
 804884c:	73 17                	jae    8048865 <format_integer+0x1b0>
 804884e:	8d 4d a8             	lea    ecx,[ebp-0x58]
 8048851:	8d 7d e7             	lea    edi,[ebp-0x19]
 8048854:	43                   	inc    ebx
 8048855:	c6 43 ff 30          	mov    BYTE PTR [ebx-0x1],0x30
 8048859:	89 d8                	mov    eax,ebx
 804885b:	29 c8                	sub    eax,ecx
 804885d:	39 d0                	cmp    eax,edx
 804885f:	7d 04                	jge    8048865 <format_integer+0x1b0>
 8048861:	39 fb                	cmp    ebx,edi
 8048863:	72 ef                	jb     8048854 <format_integer+0x19f>
 8048865:	83 bd 78 ff ff ff 00 	cmp    DWORD PTR [ebp-0x88],0x0
 804886c:	74 0c                	je     804887a <format_integer+0x1c5>
 804886e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048871:	83 38 08             	cmp    DWORD PTR [eax],0x8
 8048874:	0f 84 b9 00 00 00    	je     8048933 <format_integer+0x27e>
 804887a:	8d 7d a8             	lea    edi,[ebp-0x58]
 804887d:	29 df                	sub    edi,ebx
 804887f:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048882:	03 78 04             	add    edi,DWORD PTR [eax+0x4]
 8048885:	83 7d 80 00          	cmp    DWORD PTR [ebp-0x80],0x0
 8048889:	0f 95 c0             	setne  al
 804888c:	0f b6 c0             	movzx  eax,al
 804888f:	01 c0                	add    eax,eax
 8048891:	29 c7                	sub    edi,eax
 8048893:	83 7d 84 00          	cmp    DWORD PTR [ebp-0x7c],0x0
 8048897:	0f 95 c0             	setne  al
 804889a:	0f b6 c0             	movzx  eax,al
 804889d:	29 c7                	sub    edi,eax
 804889f:	89 fe                	mov    esi,edi
 80488a1:	b8 00 00 00 00       	mov    eax,0x0
 80488a6:	0f 48 f0             	cmovs  esi,eax
 80488a9:	f6 85 7c ff ff ff 11 	test   BYTE PTR [ebp-0x84],0x11
 80488b0:	0f 84 99 00 00 00    	je     804894f <format_integer+0x29a>
 80488b6:	8b 45 84             	mov    eax,DWORD PTR [ebp-0x7c]
 80488b9:	85 c0                	test   eax,eax
 80488bb:	74 0d                	je     80488ca <format_integer+0x215>
 80488bd:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
 80488c0:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 80488c4:	89 04 24             	mov    DWORD PTR [esp],eax
 80488c7:	ff 55 14             	call   DWORD PTR [ebp+0x14]
 80488ca:	83 7d 80 00          	cmp    DWORD PTR [ebp-0x80],0x0
 80488ce:	74 22                	je     80488f2 <format_integer+0x23d>
 80488d0:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
 80488d3:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 80488d7:	c7 04 24 30 00 00 00 	mov    DWORD PTR [esp],0x30
 80488de:	ff 55 14             	call   DWORD PTR [ebp+0x14]
 80488e1:	8b 7d 18             	mov    edi,DWORD PTR [ebp+0x18]
 80488e4:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 80488e8:	0f be 45 80          	movsx  eax,BYTE PTR [ebp-0x80]
 80488ec:	89 04 24             	mov    DWORD PTR [esp],eax
 80488ef:	ff 55 14             	call   DWORD PTR [ebp+0x14]
 80488f2:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 80488f5:	f6 00 10             	test   BYTE PTR [eax],0x10
 80488f8:	75 6f                	jne    8048969 <format_integer+0x2b4>
 80488fa:	8d 45 a8             	lea    eax,[ebp-0x58]
 80488fd:	89 c7                	mov    edi,eax
 80488ff:	39 d8                	cmp    eax,ebx
 8048901:	73 1d                	jae    8048920 <format_integer+0x26b>
 8048903:	89 75 a4             	mov    DWORD PTR [ebp-0x5c],esi
 8048906:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
 8048909:	4b                   	dec    ebx
 804890a:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
 804890d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048911:	0f be 03             	movsx  eax,BYTE PTR [ebx]
 8048914:	89 04 24             	mov    DWORD PTR [esp],eax
 8048917:	ff d6                	call   esi
 8048919:	39 fb                	cmp    ebx,edi
 804891b:	75 ec                	jne    8048909 <format_integer+0x254>
 804891d:	8b 75 a4             	mov    esi,DWORD PTR [ebp-0x5c]
 8048920:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8048923:	f6 00 01             	test   BYTE PTR [eax],0x1
 8048926:	75 5b                	jne    8048983 <format_integer+0x2ce>
 8048928:	81 c4 8c 00 00 00    	add    esp,0x8c
 804892e:	5b                   	pop    ebx
 804892f:	5e                   	pop    esi
 8048930:	5f                   	pop    edi
 8048931:	5d                   	pop    ebp
 8048932:	c3                   	ret
 8048933:	8d 45 a8             	lea    eax,[ebp-0x58]
 8048936:	39 c3                	cmp    ebx,eax
 8048938:	74 0a                	je     8048944 <format_integer+0x28f>
 804893a:	80 7b ff 30          	cmp    BYTE PTR [ebx-0x1],0x30
 804893e:	0f 84 36 ff ff ff    	je     804887a <format_integer+0x1c5>
 8048944:	c6 03 30             	mov    BYTE PTR [ebx],0x30
 8048947:	8d 5b 01             	lea    ebx,[ebx+0x1]
 804894a:	e9 2b ff ff ff       	jmp    804887a <format_integer+0x1c5>
 804894f:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
 8048952:	89 04 24             	mov    DWORD PTR [esp],eax
 8048955:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
 8048958:	89 f2                	mov    edx,esi
 804895a:	b8 20 00 00 00       	mov    eax,0x20
 804895f:	e8 21 fd ff ff       	call   8048685 <output_dup>
 8048964:	e9 4d ff ff ff       	jmp    80488b6 <format_integer+0x201>
 8048969:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
 804896c:	89 04 24             	mov    DWORD PTR [esp],eax
 804896f:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
 8048972:	89 f2                	mov    edx,esi
 8048974:	b8 30 00 00 00       	mov    eax,0x30
 8048979:	e8 07 fd ff ff       	call   8048685 <output_dup>
 804897e:	e9 77 ff ff ff       	jmp    80488fa <format_integer+0x245>
 8048983:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
 8048986:	89 04 24             	mov    DWORD PTR [esp],eax
 8048989:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
 804898c:	89 f2                	mov    edx,esi
 804898e:	b8 20 00 00 00       	mov    eax,0x20
 8048993:	e8 ed fc ff ff       	call   8048685 <output_dup>
 8048998:	eb 8e                	jmp    8048928 <format_integer+0x273>
 804899a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804899d:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
 80489a0:	85 d2                	test   edx,edx
 80489a2:	78 0f                	js     80489b3 <format_integer+0x2fe>
 80489a4:	8d 5d a8             	lea    ebx,[ebp-0x58]
 80489a7:	c7 45 80 00 00 00 00 	mov    DWORD PTR [ebp-0x80],0x0
 80489ae:	e9 89 fe ff ff       	jmp    804883c <format_integer+0x187>
 80489b3:	ba 01 00 00 00       	mov    edx,0x1
 80489b8:	c7 45 80 00 00 00 00 	mov    DWORD PTR [ebp-0x80],0x0
 80489bf:	8d 5d a8             	lea    ebx,[ebp-0x58]
 80489c2:	e9 87 fe ff ff       	jmp    804884e <format_integer+0x199>

080489c7 <format_string>:
 80489c7:	55                   	push   ebp
 80489c8:	89 e5                	mov    ebp,esp
 80489ca:	57                   	push   edi
 80489cb:	56                   	push   esi
 80489cc:	53                   	push   ebx
 80489cd:	83 ec 2c             	sub    esp,0x2c
 80489d0:	89 c7                	mov    edi,eax
 80489d2:	89 d6                	mov    esi,edx
 80489d4:	89 4d e4             	mov    DWORD PTR [ebp-0x1c],ecx
 80489d7:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
 80489da:	39 f2                	cmp    edx,esi
 80489dc:	7e 3b                	jle    8048a19 <format_string+0x52>
 80489de:	f6 01 01             	test   BYTE PTR [ecx],0x1
 80489e1:	74 1b                	je     80489fe <format_string+0x37>
 80489e3:	85 f6                	test   esi,esi
 80489e5:	7f 3b                	jg     8048a22 <format_string+0x5b>
 80489e7:	29 f2                	sub    edx,esi
 80489e9:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80489ec:	89 04 24             	mov    DWORD PTR [esp],eax
 80489ef:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
 80489f2:	b8 20 00 00 00       	mov    eax,0x20
 80489f7:	e8 89 fc ff ff       	call   8048685 <output_dup>
 80489fc:	eb 4e                	jmp    8048a4c <format_string+0x85>
 80489fe:	29 f2                	sub    edx,esi
 8048a00:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048a03:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a06:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
 8048a09:	b8 20 00 00 00       	mov    eax,0x20
 8048a0e:	e8 72 fc ff ff       	call   8048685 <output_dup>
 8048a13:	85 f6                	test   esi,esi
 8048a15:	7f 0b                	jg     8048a22 <format_string+0x5b>
 8048a17:	eb 24                	jmp    8048a3d <format_string+0x76>
 8048a19:	85 f6                	test   esi,esi
 8048a1b:	2e 8d 74 26 00       	lea    esi,cs:[esi+eiz*1+0x0]
 8048a20:	7e 2a                	jle    8048a4c <format_string+0x85>
 8048a22:	bb 00 00 00 00       	mov    ebx,0x0
 8048a27:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048a2a:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a2e:	0f be 04 1f          	movsx  eax,BYTE PTR [edi+ebx*1]
 8048a32:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a35:	ff 55 08             	call   DWORD PTR [ebp+0x8]
 8048a38:	43                   	inc    ebx
 8048a39:	39 de                	cmp    esi,ebx
 8048a3b:	7f ea                	jg     8048a27 <format_string+0x60>
 8048a3d:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 8048a40:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048a43:	39 f2                	cmp    edx,esi
 8048a45:	7e 05                	jle    8048a4c <format_string+0x85>
 8048a47:	f6 00 01             	test   BYTE PTR [eax],0x1
 8048a4a:	75 9b                	jne    80489e7 <format_string+0x20>
 8048a4c:	83 c4 2c             	add    esp,0x2c
 8048a4f:	5b                   	pop    ebx
 8048a50:	5e                   	pop    esi
 8048a51:	5f                   	pop    edi
 8048a52:	5d                   	pop    ebp
 8048a53:	c3                   	ret

08048a54 <printf>:
 8048a54:	55                   	push   ebp
 8048a55:	89 e5                	mov    ebp,esp
 8048a57:	83 ec 18             	sub    esp,0x18
 8048a5a:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 8048a5d:	e8 37 18 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8048a62:	81 c3 9e 25 00 00    	add    ebx,0x259e
 8048a68:	8d 45 0c             	lea    eax,[ebp+0xc]
 8048a6b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a6f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048a72:	89 04 24             	mov    DWORD PTR [esp],eax
 8048a75:	e8 0f fb ff ff       	call   8048589 <vprintf>
 8048a7a:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 8048a7d:	89 ec                	mov    esp,ebp
 8048a7f:	5d                   	pop    ebp
 8048a80:	c3                   	ret

08048a81 <__printf>:
 8048a81:	55                   	push   ebp
 8048a82:	89 e5                	mov    ebp,esp
 8048a84:	83 ec 18             	sub    esp,0x18
 8048a87:	8d 45 14             	lea    eax,[ebp+0x14]
 8048a8a:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
 8048a8d:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8048a91:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8048a94:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8048a98:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048a9c:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8048a9f:	89 04 24             	mov    DWORD PTR [esp],eax
 8048aa2:	e8 04 00 00 00       	call   8048aab <__vprintf>
 8048aa7:	89 ec                	mov    esp,ebp
 8048aa9:	5d                   	pop    ebp
 8048aaa:	c3                   	ret

08048aab <__vprintf>:
 8048aab:	55                   	push   ebp
 8048aac:	89 e5                	mov    ebp,esp
 8048aae:	57                   	push   edi
 8048aaf:	56                   	push   esi
 8048ab0:	53                   	push   ebx
 8048ab1:	83 ec 5c             	sub    esp,0x5c
 8048ab4:	e8 e4 17 00 00       	call   804a29d <__x86.get_pc_thunk.di>
 8048ab9:	81 c7 47 25 00 00    	add    edi,0x2547
 8048abf:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
 8048ac2:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
 8048ac5:	84 c0                	test   al,al
 8048ac7:	75 25                	jne    8048aee <__vprintf+0x43>
 8048ac9:	83 c4 5c             	add    esp,0x5c
 8048acc:	5b                   	pop    ebx
 8048acd:	5e                   	pop    esi
 8048ace:	5f                   	pop    edi
 8048acf:	5d                   	pop    ebp
 8048ad0:	c3                   	ret
 8048ad1:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
 8048ad4:	89 74 24 04          	mov    DWORD PTR [esp+0x4],esi
 8048ad8:	0f be c0             	movsx  eax,al
 8048adb:	89 04 24             	mov    DWORD PTR [esp],eax
 8048ade:	ff 55 10             	call   DWORD PTR [ebp+0x10]
 8048ae1:	89 de                	mov    esi,ebx
 8048ae3:	8d 5e 01             	lea    ebx,[esi+0x1]
 8048ae6:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048aea:	84 c0                	test   al,al
 8048aec:	74 db                	je     8048ac9 <__vprintf+0x1e>
 8048aee:	3c 25                	cmp    al,0x25
 8048af0:	75 df                	jne    8048ad1 <__vprintf+0x26>
 8048af2:	8d 73 01             	lea    esi,[ebx+0x1]
 8048af5:	80 7b 01 25          	cmp    BYTE PTR [ebx+0x1],0x25
 8048af9:	74 15                	je     8048b10 <__vprintf+0x65>
 8048afb:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
 8048b02:	c6 45 c0 00          	mov    BYTE PTR [ebp-0x40],0x0
 8048b06:	bb 00 00 00 00       	mov    ebx,0x0
 8048b0b:	89 5d bc             	mov    DWORD PTR [ebp-0x44],ebx
 8048b0e:	eb 1d                	jmp    8048b2d <.L80+0xa>
 8048b10:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 8048b13:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8048b17:	c7 04 24 25 00 00 00 	mov    DWORD PTR [esp],0x25
 8048b1e:	ff 55 10             	call   DWORD PTR [ebp+0x10]
 8048b21:	eb c0                	jmp    8048ae3 <__vprintf+0x38>

08048b23 <.L80>:
 8048b23:	83 4d bc 01          	or     DWORD PTR [ebp-0x44],0x1
 8048b27:	89 ce                	mov    esi,ecx
 8048b29:	c6 45 c0 01          	mov    BYTE PTR [ebp-0x40],0x1
 8048b2d:	8d 4e 01             	lea    ecx,[esi+0x1]
 8048b30:	0f b6 41 ff          	movzx  eax,BYTE PTR [ecx-0x1]
 8048b34:	88 c2                	mov    dl,al
 8048b36:	80 ea 20             	sub    dl,0x20
 8048b39:	80 fa 10             	cmp    dl,0x10
 8048b3c:	77 2c                	ja     8048b6a <.L77>
 8048b3e:	0f b6 d2             	movzx  edx,dl
 8048b41:	89 fb                	mov    ebx,edi
 8048b43:	03 9c 97 c0 f2 ff ff 	add    ebx,DWORD PTR [edi+edx*4-0xd40]
 8048b4a:	ff e3                	jmp    ebx

08048b4c <.L81>:
 8048b4c:	83 4d bc 02          	or     DWORD PTR [ebp-0x44],0x2
 8048b50:	eb d5                	jmp    8048b27 <.L80+0x4>

08048b52 <.L84>:
 8048b52:	83 4d bc 04          	or     DWORD PTR [ebp-0x44],0x4
 8048b56:	eb cf                	jmp    8048b27 <.L80+0x4>

08048b58 <.L83>:
 8048b58:	83 4d bc 08          	or     DWORD PTR [ebp-0x44],0x8
 8048b5c:	eb c9                	jmp    8048b27 <.L80+0x4>

08048b5e <.L78>:
 8048b5e:	83 4d bc 10          	or     DWORD PTR [ebp-0x44],0x10
 8048b62:	eb c3                	jmp    8048b27 <.L80+0x4>

08048b64 <.L82>:
 8048b64:	83 4d bc 20          	or     DWORD PTR [ebp-0x44],0x20
 8048b68:	eb bd                	jmp    8048b27 <.L80+0x4>

08048b6a <.L77>:
 8048b6a:	8b 5d bc             	mov    ebx,DWORD PTR [ebp-0x44]
 8048b6d:	80 7d c0 00          	cmp    BYTE PTR [ebp-0x40],0x0
 8048b71:	74 0e                	je     8048b81 <.L77+0x17>
 8048b73:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
 8048b76:	f6 c3 01             	test   bl,0x1
 8048b79:	74 06                	je     8048b81 <.L77+0x17>
 8048b7b:	83 e3 ef             	and    ebx,0xffffffef
 8048b7e:	89 5d d8             	mov    DWORD PTR [ebp-0x28],ebx
 8048b81:	8b 55 d8             	mov    edx,DWORD PTR [ebp-0x28]
 8048b84:	f6 c2 02             	test   dl,0x2
 8048b87:	74 06                	je     8048b8f <.L77+0x25>
 8048b89:	83 e2 fb             	and    edx,0xfffffffb
 8048b8c:	89 55 d8             	mov    DWORD PTR [ebp-0x28],edx
 8048b8f:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
 8048b96:	3c 2a                	cmp    al,0x2a
 8048b98:	74 44                	je     8048bde <.L77+0x74>
 8048b9a:	0f be c8             	movsx  ecx,al
 8048b9d:	83 e9 30             	sub    ecx,0x30
 8048ba0:	ba 00 00 00 00       	mov    edx,0x0
 8048ba5:	83 f9 09             	cmp    ecx,0x9
 8048ba8:	77 20                	ja     8048bca <.L77+0x60>
 8048baa:	8d 14 92             	lea    edx,[edx+edx*4]
 8048bad:	0f be c0             	movsx  eax,al
 8048bb0:	8d 54 50 d0          	lea    edx,[eax+edx*2-0x30]
 8048bb4:	46                   	inc    esi
 8048bb5:	0f b6 06             	movzx  eax,BYTE PTR [esi]
 8048bb8:	0f be c8             	movsx  ecx,al
 8048bbb:	83 e9 30             	sub    ecx,0x30
 8048bbe:	83 f9 09             	cmp    ecx,0x9
 8048bc1:	76 e7                	jbe    8048baa <.L77+0x40>
 8048bc3:	85 d2                	test   edx,edx
 8048bc5:	78 26                	js     8048bed <.L77+0x83>
 8048bc7:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048bca:	c7 45 e0 ff ff ff ff 	mov    DWORD PTR [ebp-0x20],0xffffffff
 8048bd1:	80 3e 2e             	cmp    BYTE PTR [esi],0x2e
 8048bd4:	74 22                	je     8048bf8 <.L77+0x8e>
 8048bd6:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 8048bd9:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048bdc:	eb 64                	jmp    8048c42 <.L77+0xd8>
 8048bde:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048be1:	8b 10                	mov    edx,DWORD PTR [eax]
 8048be3:	8d 40 04             	lea    eax,[eax+0x4]
 8048be6:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048be9:	89 ce                	mov    esi,ecx
 8048beb:	eb d6                	jmp    8048bc3 <.L77+0x59>
 8048bed:	f7 da                	neg    edx
 8048bef:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 8048bf2:	83 4d d8 01          	or     DWORD PTR [ebp-0x28],0x1
 8048bf6:	eb d2                	jmp    8048bca <.L77+0x60>
 8048bf8:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048bfc:	3c 2a                	cmp    al,0x2a
 8048bfe:	74 6b                	je     8048c6b <.L77+0x101>
 8048c00:	46                   	inc    esi
 8048c01:	c7 45 e0 00 00 00 00 	mov    DWORD PTR [ebp-0x20],0x0
 8048c08:	0f be d0             	movsx  edx,al
 8048c0b:	83 ea 30             	sub    edx,0x30
 8048c0e:	83 fa 09             	cmp    edx,0x9
 8048c11:	77 25                	ja     8048c38 <.L77+0xce>
 8048c13:	b9 00 00 00 00       	mov    ecx,0x0
 8048c18:	8d 14 89             	lea    edx,[ecx+ecx*4]
 8048c1b:	0f be c0             	movsx  eax,al
 8048c1e:	8d 4c 50 d0          	lea    ecx,[eax+edx*2-0x30]
 8048c22:	46                   	inc    esi
 8048c23:	0f b6 06             	movzx  eax,BYTE PTR [esi]
 8048c26:	0f be d0             	movsx  edx,al
 8048c29:	83 ea 30             	sub    edx,0x30
 8048c2c:	83 fa 09             	cmp    edx,0x9
 8048c2f:	76 e7                	jbe    8048c18 <.L77+0xae>
 8048c31:	85 c9                	test   ecx,ecx
 8048c33:	78 46                	js     8048c7b <.L77+0x111>
 8048c35:	89 4d e0             	mov    DWORD PTR [ebp-0x20],ecx
 8048c38:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 8048c3b:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048c3e:	83 65 d8 ef          	and    DWORD PTR [ebp-0x28],0xffffffef
 8048c42:	c7 45 e4 03 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x3
 8048c49:	8d 5e 01             	lea    ebx,[esi+0x1]
 8048c4c:	0f b6 06             	movzx  eax,BYTE PTR [esi]
 8048c4f:	88 c2                	mov    dl,al
 8048c51:	80 ea 68             	sub    dl,0x68
 8048c54:	80 fa 12             	cmp    dl,0x12
 8048c57:	0f 87 49 01 00 00    	ja     8048da6 <.L99>
 8048c5d:	0f b6 d2             	movzx  edx,dl
 8048c60:	89 f9                	mov    ecx,edi
 8048c62:	03 8c 97 04 f3 ff ff 	add    ecx,DWORD PTR [edi+edx*4-0xcfc]
 8048c69:	ff e1                	jmp    ecx
 8048c6b:	83 c6 02             	add    esi,0x2
 8048c6e:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048c71:	8b 08                	mov    ecx,DWORD PTR [eax]
 8048c73:	8d 40 04             	lea    eax,[eax+0x4]
 8048c76:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048c79:	eb b6                	jmp    8048c31 <.L77+0xc7>
 8048c7b:	c7 45 e0 ff ff ff ff 	mov    DWORD PTR [ebp-0x20],0xffffffff
 8048c82:	e9 4f ff ff ff       	jmp    8048bd6 <.L77+0x6c>

08048c87 <.L105>:
 8048c87:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048c8b:	3c 68                	cmp    al,0x68
 8048c8d:	74 23                	je     8048cb2 <.L105+0x2b>
 8048c8f:	c7 45 e4 02 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x2
 8048c96:	88 c2                	mov    dl,al
 8048c98:	80 ea 45             	sub    dl,0x45
 8048c9b:	80 fa 33             	cmp    dl,0x33
 8048c9e:	0f 87 b4 05 00 00    	ja     8049258 <.L107>
 8048ca4:	0f b6 d2             	movzx  edx,dl
 8048ca7:	89 fe                	mov    esi,edi
 8048ca9:	03 b4 97 50 f3 ff ff 	add    esi,DWORD PTR [edi+edx*4-0xcb0]
 8048cb0:	ff e6                	jmp    esi
 8048cb2:	8d 5e 02             	lea    ebx,[esi+0x2]
 8048cb5:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
 8048cbc:	0f b6 46 02          	movzx  eax,BYTE PTR [esi+0x2]
 8048cc0:	88 c2                	mov    dl,al
 8048cc2:	80 ea 45             	sub    dl,0x45
 8048cc5:	80 fa 33             	cmp    dl,0x33
 8048cc8:	0f 87 8a 05 00 00    	ja     8049258 <.L107>
 8048cce:	0f b6 d2             	movzx  edx,dl
 8048cd1:	89 fe                	mov    esi,edi
 8048cd3:	03 b4 97 20 f4 ff ff 	add    esi,DWORD PTR [edi+edx*4-0xbe0]
 8048cda:	ff e6                	jmp    esi

08048cdc <.L104>:
 8048cdc:	c7 45 e4 04 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x4
 8048ce3:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048ce7:	88 c2                	mov    dl,al
 8048ce9:	80 ea 45             	sub    dl,0x45
 8048cec:	80 fa 33             	cmp    dl,0x33
 8048cef:	0f 87 63 05 00 00    	ja     8049258 <.L107>
 8048cf5:	0f b6 d2             	movzx  edx,dl
 8048cf8:	89 fe                	mov    esi,edi
 8048cfa:	03 b4 97 f0 f4 ff ff 	add    esi,DWORD PTR [edi+edx*4-0xb10]
 8048d01:	ff e6                	jmp    esi

08048d03 <.L103>:
 8048d03:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048d07:	3c 6c                	cmp    al,0x6c
 8048d09:	74 23                	je     8048d2e <.L103+0x2b>
 8048d0b:	c7 45 e4 05 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x5
 8048d12:	88 c2                	mov    dl,al
 8048d14:	80 ea 45             	sub    dl,0x45
 8048d17:	80 fa 33             	cmp    dl,0x33
 8048d1a:	0f 87 38 05 00 00    	ja     8049258 <.L107>
 8048d20:	0f b6 d2             	movzx  edx,dl
 8048d23:	89 fe                	mov    esi,edi
 8048d25:	03 b4 97 c0 f5 ff ff 	add    esi,DWORD PTR [edi+edx*4-0xa40]
 8048d2c:	ff e6                	jmp    esi
 8048d2e:	8d 5e 02             	lea    ebx,[esi+0x2]
 8048d31:	c7 45 e4 06 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x6
 8048d38:	0f b6 46 02          	movzx  eax,BYTE PTR [esi+0x2]
 8048d3c:	88 c2                	mov    dl,al
 8048d3e:	80 ea 45             	sub    dl,0x45
 8048d41:	80 fa 33             	cmp    dl,0x33
 8048d44:	0f 87 0e 05 00 00    	ja     8049258 <.L107>
 8048d4a:	0f b6 d2             	movzx  edx,dl
 8048d4d:	89 fe                	mov    esi,edi
 8048d4f:	03 b4 97 90 f6 ff ff 	add    esi,DWORD PTR [edi+edx*4-0x970]
 8048d56:	ff e6                	jmp    esi

08048d58 <.L102>:
 8048d58:	c7 45 e4 07 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x7
 8048d5f:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048d63:	88 c2                	mov    dl,al
 8048d65:	80 ea 45             	sub    dl,0x45
 8048d68:	80 fa 33             	cmp    dl,0x33
 8048d6b:	0f 87 e7 04 00 00    	ja     8049258 <.L107>
 8048d71:	0f b6 d2             	movzx  edx,dl
 8048d74:	89 fe                	mov    esi,edi
 8048d76:	03 b4 97 60 f7 ff ff 	add    esi,DWORD PTR [edi+edx*4-0x8a0]
 8048d7d:	ff e6                	jmp    esi

08048d7f <.L100>:
 8048d7f:	c7 45 e4 08 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x8
 8048d86:	0f b6 46 01          	movzx  eax,BYTE PTR [esi+0x1]
 8048d8a:	88 c2                	mov    dl,al
 8048d8c:	80 ea 45             	sub    dl,0x45
 8048d8f:	80 fa 33             	cmp    dl,0x33
 8048d92:	0f 87 c0 04 00 00    	ja     8049258 <.L107>
 8048d98:	0f b6 d2             	movzx  edx,dl
 8048d9b:	89 fe                	mov    esi,edi
 8048d9d:	03 b4 97 30 f8 ff ff 	add    esi,DWORD PTR [edi+edx*4-0x7d0]
 8048da4:	ff e6                	jmp    esi

08048da6 <.L99>:
 8048da6:	88 c2                	mov    dl,al
 8048da8:	80 ea 45             	sub    dl,0x45
 8048dab:	80 fa 33             	cmp    dl,0x33
 8048dae:	0f 87 a2 04 00 00    	ja     8049256 <.L179>
 8048db4:	0f b6 d2             	movzx  edx,dl
 8048db7:	89 fb                	mov    ebx,edi
 8048db9:	03 9c 97 00 f9 ff ff 	add    ebx,DWORD PTR [edi+edx*4-0x700]
 8048dc0:	ff e3                	jmp    ebx

08048dc2 <.L152>:
 8048dc2:	89 de                	mov    esi,ebx
 8048dc4:	eb 06                	jmp    8048dcc <.L113>

08048dc6 <.L156>:
 8048dc6:	89 de                	mov    esi,ebx
 8048dc8:	eb 02                	jmp    8048dcc <.L113>

08048dca <.L160>:
 8048dca:	89 de                	mov    esi,ebx

08048dcc <.L113>:
 8048dcc:	83 7d e4 08          	cmp    DWORD PTR [ebp-0x1c],0x8
 8048dd0:	0f 87 6d 01 00 00    	ja     8048f43 <.L130>
 8048dd6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 8048dd9:	89 fb                	mov    ebx,edi
 8048ddb:	03 9c 87 d0 f9 ff ff 	add    ebx,DWORD PTR [edi+eax*4-0x630]
 8048de2:	ff e3                	jmp    ebx

08048de4 <.L164>:
 8048de4:	89 de                	mov    esi,ebx
 8048de6:	eb e4                	jmp    8048dcc <.L113>

08048de8 <.L168>:
 8048de8:	89 de                	mov    esi,ebx
 8048dea:	eb e0                	jmp    8048dcc <.L113>

08048dec <.L172>:
 8048dec:	89 de                	mov    esi,ebx
 8048dee:	66 90                	xchg   ax,ax
 8048df0:	eb da                	jmp    8048dcc <.L113>

08048df2 <.L176>:
 8048df2:	89 de                	mov    esi,ebx
 8048df4:	eb d6                	jmp    8048dcc <.L113>

08048df6 <.L139>:
 8048df6:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048df9:	0f be 00             	movsx  eax,BYTE PTR [eax]
 8048dfc:	89 c3                	mov    ebx,eax
 8048dfe:	c1 fb 1f             	sar    ebx,0x1f
 8048e01:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048e04:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048e07:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e0a:	8d 40 04             	lea    eax,[eax+0x4]
 8048e0d:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048e10:	8b 4d c0             	mov    ecx,DWORD PTR [ebp-0x40]
 8048e13:	8b 5d c4             	mov    ebx,DWORD PTR [ebp-0x3c]
 8048e16:	89 c8                	mov    eax,ecx
 8048e18:	f7 d8                	neg    eax
 8048e1a:	89 da                	mov    edx,ebx
 8048e1c:	83 d2 00             	adc    edx,0x0
 8048e1f:	f7 da                	neg    edx
 8048e21:	0f 48 c1             	cmovs  eax,ecx
 8048e24:	0f 48 55 c4          	cmovs  edx,DWORD PTR [ebp-0x3c]
 8048e28:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
 8048e2b:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 8048e2f:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
 8048e32:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
 8048e36:	8d 4d d8             	lea    ecx,[ebp-0x28]
 8048e39:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
 8048e3d:	8d 8f 54 00 00 00    	lea    ecx,[edi+0x54]
 8048e43:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 8048e47:	8b 4d c4             	mov    ecx,DWORD PTR [ebp-0x3c]
 8048e4a:	c1 e9 1f             	shr    ecx,0x1f
 8048e4d:	89 0c 24             	mov    DWORD PTR [esp],ecx
 8048e50:	b9 01 00 00 00       	mov    ecx,0x1
 8048e55:	e8 5b f8 ff ff       	call   80486b5 <format_integer>
 8048e5a:	e9 84 fc ff ff       	jmp    8048ae3 <__vprintf+0x38>

08048e5f <.L138>:
 8048e5f:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e62:	0f bf 00             	movsx  eax,WORD PTR [eax]
 8048e65:	89 c3                	mov    ebx,eax
 8048e67:	c1 fb 1f             	sar    ebx,0x1f
 8048e6a:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048e6d:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048e70:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e73:	8d 40 04             	lea    eax,[eax+0x4]
 8048e76:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048e79:	eb 95                	jmp    8048e10 <.L139+0x1a>

08048e7b <.L137>:
 8048e7b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e7e:	8b 00                	mov    eax,DWORD PTR [eax]
 8048e80:	89 c3                	mov    ebx,eax
 8048e82:	c1 fb 1f             	sar    ebx,0x1f
 8048e85:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048e88:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048e8b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e8e:	8d 40 04             	lea    eax,[eax+0x4]
 8048e91:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048e94:	e9 77 ff ff ff       	jmp    8048e10 <.L139+0x1a>

08048e99 <.L136>:
 8048e99:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048e9c:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048e9f:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ea1:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048ea4:	89 55 c4             	mov    DWORD PTR [ebp-0x3c],edx
 8048ea7:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048eaa:	8d 40 08             	lea    eax,[eax+0x8]
 8048ead:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048eb0:	e9 5b ff ff ff       	jmp    8048e10 <.L139+0x1a>

08048eb5 <.L135>:
 8048eb5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048eb8:	8b 00                	mov    eax,DWORD PTR [eax]
 8048eba:	89 c3                	mov    ebx,eax
 8048ebc:	c1 fb 1f             	sar    ebx,0x1f
 8048ebf:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048ec2:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048ec5:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048ec8:	8d 40 04             	lea    eax,[eax+0x4]
 8048ecb:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048ece:	e9 3d ff ff ff       	jmp    8048e10 <.L139+0x1a>

08048ed3 <.L134>:
 8048ed3:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048ed6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
 8048ed9:	8b 00                	mov    eax,DWORD PTR [eax]
 8048edb:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048ede:	89 55 c4             	mov    DWORD PTR [ebp-0x3c],edx
 8048ee1:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048ee4:	8d 40 08             	lea    eax,[eax+0x8]
 8048ee7:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048eea:	e9 21 ff ff ff       	jmp    8048e10 <.L139+0x1a>

08048eef <.L133>:
 8048eef:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048ef2:	8b 00                	mov    eax,DWORD PTR [eax]
 8048ef4:	89 c3                	mov    ebx,eax
 8048ef6:	c1 fb 1f             	sar    ebx,0x1f
 8048ef9:	89 45 c0             	mov    DWORD PTR [ebp-0x40],eax
 8048efc:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048eff:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048f02:	8d 40 04             	lea    eax,[eax+0x4]
 8048f05:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 8048f08:	e9 03 ff ff ff       	jmp    8048e10 <.L139+0x1a>

08048f0d <.L131>:
 8048f0d:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8048f10:	8d 50 04             	lea    edx,[eax+0x4]
 8048f13:	8b 08                	mov    ecx,DWORD PTR [eax]
 8048f15:	bb 00 00 00 00       	mov    ebx,0x0
 8048f1a:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
 8048f1d:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048f20:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
 8048f25:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048f28:	3b 03                	cmp    eax,DWORD PTR [ebx]
 8048f2a:	b8 00 00 00 00       	mov    eax,0x0
 8048f2f:	83 d8 00             	sbb    eax,0x0
 8048f32:	89 55 0c             	mov    DWORD PTR [ebp+0xc],edx
 8048f35:	0f 8d d5 fe ff ff    	jge    8048e10 <.L139+0x1a>
 8048f3b:	ff 4d c4             	dec    DWORD PTR [ebp-0x3c]
 8048f3e:	e9 cd fe ff ff       	jmp    8048e10 <.L139+0x1a>

08048f43 <.L130>:
 8048f43:	8d 87 5c fa ff ff    	lea    eax,[edi-0x5a4]
 8048f49:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8048f4d:	8d 87 f4 f9 ff ff    	lea    eax,[edi-0x60c]
 8048f53:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8048f57:	c7 44 24 04 dc 00 00 	mov    DWORD PTR [esp+0x4],0xdc
 8048f5e:	00 
 8048f5f:	8d 87 72 fb ff ff    	lea    eax,[edi-0x48e]
 8048f65:	89 04 24             	mov    DWORD PTR [esp],eax
 8048f68:	89 fb                	mov    ebx,edi
 8048f6a:	e8 4b f4 ff ff       	call   80483ba <debug_panic>

08048f6f <.L128>:
 8048f6f:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048f72:	8b 0b                	mov    ecx,DWORD PTR [ebx]
 8048f74:	bb 00 00 00 00       	mov    ebx,0x0
 8048f79:	89 4d c0             	mov    DWORD PTR [ebp-0x40],ecx
 8048f7c:	89 5d c4             	mov    DWORD PTR [ebp-0x3c],ebx
 8048f7f:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048f82:	8d 5b 04             	lea    ebx,[ebx+0x4]
 8048f85:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8048f88:	3c 75                	cmp    al,0x75
 8048f8a:	0f 84 2e 01 00 00    	je     80490be <.L126+0x58>
 8048f90:	3c 75                	cmp    al,0x75
 8048f92:	0f 8f ee 00 00 00    	jg     8049086 <.L126+0x20>
 8048f98:	3c 58                	cmp    al,0x58
 8048f9a:	0f 84 59 01 00 00    	je     80490f9 <.L126+0x93>
 8048fa0:	3c 6f                	cmp    al,0x6f
 8048fa2:	0f 85 ea 00 00 00    	jne    8049092 <.L126+0x2c>
 8048fa8:	8d 87 44 00 00 00    	lea    eax,[edi+0x44]
 8048fae:	e9 11 01 00 00       	jmp    80490c4 <.L126+0x5e>

08048fb3 <.L108>:
 8048fb3:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8048fb6:	0f b6 16             	movzx  edx,BYTE PTR [esi]
 8048fb9:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8048fbc:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [ebp-0x3c],0x0
 8048fc3:	89 de                	mov    esi,ebx
 8048fc5:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048fc8:	8d 5b 04             	lea    ebx,[ebx+0x4]
 8048fcb:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8048fce:	eb b8                	jmp    8048f88 <.L128+0x19>

08048fd0 <.L115>:
 8048fd0:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8048fd3:	0f b7 16             	movzx  edx,WORD PTR [esi]
 8048fd6:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8048fd9:	c7 45 c4 00 00 00 00 	mov    DWORD PTR [ebp-0x3c],0x0
 8048fe0:	89 de                	mov    esi,ebx
 8048fe2:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8048fe5:	8d 5b 04             	lea    ebx,[ebx+0x4]
 8048fe8:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8048feb:	eb 9b                	jmp    8048f88 <.L128+0x19>

08048fed <.L117>:
 8048fed:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8048ff0:	8b 16                	mov    edx,DWORD PTR [esi]
 8048ff2:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
 8048ff5:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8048ff8:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
 8048ffb:	89 de                	mov    esi,ebx
 8048ffd:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 8049000:	8d 5b 08             	lea    ebx,[ebx+0x8]
 8049003:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049006:	eb 80                	jmp    8048f88 <.L128+0x19>

08049008 <.L122>:
 8049008:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 804900b:	8b 16                	mov    edx,DWORD PTR [esi]
 804900d:	b9 00 00 00 00       	mov    ecx,0x0
 8049012:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8049015:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
 8049018:	89 de                	mov    esi,ebx
 804901a:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 804901d:	8d 5b 04             	lea    ebx,[ebx+0x4]
 8049020:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049023:	e9 60 ff ff ff       	jmp    8048f88 <.L128+0x19>

08049028 <.L120>:
 8049028:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 804902b:	8b 16                	mov    edx,DWORD PTR [esi]
 804902d:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
 8049030:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8049033:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
 8049036:	89 de                	mov    esi,ebx
 8049038:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 804903b:	8d 5b 08             	lea    ebx,[ebx+0x8]
 804903e:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049041:	e9 42 ff ff ff       	jmp    8048f88 <.L128+0x19>

08049046 <.L124>:
 8049046:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8049049:	8b 16                	mov    edx,DWORD PTR [esi]
 804904b:	b9 00 00 00 00       	mov    ecx,0x0
 8049050:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8049053:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
 8049056:	89 de                	mov    esi,ebx
 8049058:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 804905b:	8d 5b 04             	lea    ebx,[ebx+0x4]
 804905e:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049061:	e9 22 ff ff ff       	jmp    8048f88 <.L128+0x19>

08049066 <.L126>:
 8049066:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8049069:	8b 16                	mov    edx,DWORD PTR [esi]
 804906b:	b9 00 00 00 00       	mov    ecx,0x0
 8049070:	89 55 c0             	mov    DWORD PTR [ebp-0x40],edx
 8049073:	89 4d c4             	mov    DWORD PTR [ebp-0x3c],ecx
 8049076:	89 de                	mov    esi,ebx
 8049078:	8b 5d 0c             	mov    ebx,DWORD PTR [ebp+0xc]
 804907b:	8d 5b 04             	lea    ebx,[ebx+0x4]
 804907e:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049081:	e9 02 ff ff ff       	jmp    8048f88 <.L128+0x19>
 8049086:	3c 78                	cmp    al,0x78
 8049088:	75 08                	jne    8049092 <.L126+0x2c>
 804908a:	8d 87 34 00 00 00    	lea    eax,[edi+0x34]
 8049090:	eb 32                	jmp    80490c4 <.L126+0x5e>
 8049092:	8d 87 5c fa ff ff    	lea    eax,[edi-0x5a4]
 8049098:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804909c:	8d 87 f4 f9 ff ff    	lea    eax,[edi-0x60c]
 80490a2:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80490a6:	c7 44 24 04 14 01 00 	mov    DWORD PTR [esp+0x4],0x114
 80490ad:	00 
 80490ae:	8d 87 72 fb ff ff    	lea    eax,[edi-0x48e]
 80490b4:	89 04 24             	mov    DWORD PTR [esp],eax
 80490b7:	89 fb                	mov    ebx,edi
 80490b9:	e8 fc f2 ff ff       	call   80483ba <debug_panic>
 80490be:	8d 87 54 00 00 00    	lea    eax,[edi+0x54]
 80490c4:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
 80490c7:	89 5c 24 10          	mov    DWORD PTR [esp+0x10],ebx
 80490cb:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
 80490ce:	89 5c 24 0c          	mov    DWORD PTR [esp+0xc],ebx
 80490d2:	8d 55 d8             	lea    edx,[ebp-0x28]
 80490d5:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 80490d9:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80490dd:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 80490e4:	b9 00 00 00 00       	mov    ecx,0x0
 80490e9:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
 80490ec:	8b 55 c4             	mov    edx,DWORD PTR [ebp-0x3c]
 80490ef:	e8 c1 f5 ff ff       	call   80486b5 <format_integer>
 80490f4:	e9 ea f9 ff ff       	jmp    8048ae3 <__vprintf+0x38>
 80490f9:	8d 87 24 00 00 00    	lea    eax,[edi+0x24]
 80490ff:	eb c3                	jmp    80490c4 <.L126+0x5e>

08049101 <.L151>:
 8049101:	89 de                	mov    esi,ebx
 8049103:	eb 06                	jmp    804910b <.L114>

08049105 <.L155>:
 8049105:	89 de                	mov    esi,ebx
 8049107:	eb 02                	jmp    804910b <.L114>

08049109 <.L159>:
 8049109:	89 de                	mov    esi,ebx

0804910b <.L114>:
 804910b:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804910e:	8d 58 04             	lea    ebx,[eax+0x4]
 8049111:	8b 00                	mov    eax,DWORD PTR [eax]
 8049113:	88 45 d7             	mov    BYTE PTR [ebp-0x29],al
 8049116:	8d 4d d8             	lea    ecx,[ebp-0x28]
 8049119:	8d 45 d7             	lea    eax,[ebp-0x29]
 804911c:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
 804911f:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8049123:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
 8049126:	89 14 24             	mov    DWORD PTR [esp],edx
 8049129:	ba 01 00 00 00       	mov    edx,0x1
 804912e:	e8 94 f8 ff ff       	call   80489c7 <format_string>
 8049133:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049136:	e9 a8 f9 ff ff       	jmp    8048ae3 <__vprintf+0x38>

0804913b <.L163>:
 804913b:	89 de                	mov    esi,ebx
 804913d:	eb cc                	jmp    804910b <.L114>

0804913f <.L167>:
 804913f:	89 de                	mov    esi,ebx
 8049141:	eb c8                	jmp    804910b <.L114>

08049143 <.L171>:
 8049143:	89 de                	mov    esi,ebx
 8049145:	eb c4                	jmp    804910b <.L114>

08049147 <.L175>:
 8049147:	89 de                	mov    esi,ebx
 8049149:	eb c0                	jmp    804910b <.L114>

0804914b <.L154>:
 804914b:	89 de                	mov    esi,ebx
 804914d:	8d 76 00             	lea    esi,[esi+0x0]
 8049150:	eb 06                	jmp    8049158 <.L110>

08049152 <.L158>:
 8049152:	89 de                	mov    esi,ebx
 8049154:	eb 02                	jmp    8049158 <.L110>

08049156 <.L162>:
 8049156:	89 de                	mov    esi,ebx

08049158 <.L110>:
 8049158:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804915b:	83 c0 04             	add    eax,0x4
 804915e:	89 45 b8             	mov    DWORD PTR [ebp-0x48],eax
 8049161:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8049164:	8b 00                	mov    eax,DWORD PTR [eax]
 8049166:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
 8049169:	85 c0                	test   eax,eax
 804916b:	74 49                	je     80491b6 <.L178+0x4>
 804916d:	8b 45 c0             	mov    eax,DWORD PTR [ebp-0x40]
 8049170:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049174:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
 8049177:	89 04 24             	mov    DWORD PTR [esp],eax
 804917a:	89 fb                	mov    ebx,edi
 804917c:	e8 16 0c 00 00       	call   8049d97 <strnlen>
 8049181:	89 c2                	mov    edx,eax
 8049183:	8d 4d d8             	lea    ecx,[ebp-0x28]
 8049186:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
 8049189:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
 804918d:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
 8049190:	89 1c 24             	mov    DWORD PTR [esp],ebx
 8049193:	8b 45 bc             	mov    eax,DWORD PTR [ebp-0x44]
 8049196:	e8 2c f8 ff ff       	call   80489c7 <format_string>
 804919b:	8b 45 b8             	mov    eax,DWORD PTR [ebp-0x48]
 804919e:	89 45 0c             	mov    DWORD PTR [ebp+0xc],eax
 80491a1:	e9 3d f9 ff ff       	jmp    8048ae3 <__vprintf+0x38>

080491a6 <.L166>:
 80491a6:	89 de                	mov    esi,ebx
 80491a8:	eb ae                	jmp    8049158 <.L110>

080491aa <.L170>:
 80491aa:	89 de                	mov    esi,ebx
 80491ac:	eb aa                	jmp    8049158 <.L110>

080491ae <.L174>:
 80491ae:	89 de                	mov    esi,ebx
 80491b0:	eb a6                	jmp    8049158 <.L110>

080491b2 <.L178>:
 80491b2:	89 de                	mov    esi,ebx
 80491b4:	eb a2                	jmp    8049158 <.L110>
 80491b6:	8d 87 6b fb ff ff    	lea    eax,[edi-0x495]
 80491bc:	89 45 bc             	mov    DWORD PTR [ebp-0x44],eax
 80491bf:	eb ac                	jmp    804916d <.L110+0x15>

080491c1 <.L153>:
 80491c1:	89 de                	mov    esi,ebx
 80491c3:	eb 06                	jmp    80491cb <.L111>

080491c5 <.L157>:
 80491c5:	89 de                	mov    esi,ebx
 80491c7:	eb 02                	jmp    80491cb <.L111>

080491c9 <.L161>:
 80491c9:	89 de                	mov    esi,ebx

080491cb <.L111>:
 80491cb:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80491ce:	8d 58 04             	lea    ebx,[eax+0x4]
 80491d1:	8b 00                	mov    eax,DWORD PTR [eax]
 80491d3:	c7 45 d8 08 00 00 00 	mov    DWORD PTR [ebp-0x28],0x8
 80491da:	ba 00 00 00 00       	mov    edx,0x0
 80491df:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
 80491e2:	89 4c 24 10          	mov    DWORD PTR [esp+0x10],ecx
 80491e6:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
 80491e9:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 80491ed:	8d 4d d8             	lea    ecx,[ebp-0x28]
 80491f0:	89 4c 24 08          	mov    DWORD PTR [esp+0x8],ecx
 80491f4:	8d 8f 34 00 00 00    	lea    ecx,[edi+0x34]
 80491fa:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 80491fe:	c7 04 24 00 00 00 00 	mov    DWORD PTR [esp],0x0
 8049205:	b9 00 00 00 00       	mov    ecx,0x0
 804920a:	e8 a6 f4 ff ff       	call   80486b5 <format_integer>
 804920f:	89 5d 0c             	mov    DWORD PTR [ebp+0xc],ebx
 8049212:	e9 cc f8 ff ff       	jmp    8048ae3 <__vprintf+0x38>

08049217 <.L165>:
 8049217:	89 de                	mov    esi,ebx
 8049219:	eb b0                	jmp    80491cb <.L111>

0804921b <.L169>:
 804921b:	89 de                	mov    esi,ebx
 804921d:	8d 76 00             	lea    esi,[esi+0x0]
 8049220:	eb a9                	jmp    80491cb <.L111>

08049222 <.L173>:
 8049222:	89 de                	mov    esi,ebx
 8049224:	eb a5                	jmp    80491cb <.L111>

08049226 <.L177>:
 8049226:	89 de                	mov    esi,ebx
 8049228:	eb a1                	jmp    80491cb <.L111>

0804922a <.L180>:
 804922a:	89 f3                	mov    ebx,esi

0804922c <.L112>:
 804922c:	0f be c0             	movsx  eax,al
 804922f:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049233:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 8049236:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804923a:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804923d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049241:	8d 87 81 fb ff ff    	lea    eax,[edi-0x47f]
 8049247:	89 04 24             	mov    DWORD PTR [esp],eax
 804924a:	e8 32 f8 ff ff       	call   8048a81 <__printf>
 804924f:	89 de                	mov    esi,ebx
 8049251:	e9 8d f8 ff ff       	jmp    8048ae3 <__vprintf+0x38>

08049256 <.L179>:
 8049256:	89 f3                	mov    ebx,esi

08049258 <.L107>:
 8049258:	0f be c0             	movsx  eax,al
 804925b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804925f:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 8049262:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049266:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8049269:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804926d:	8d 87 97 fb ff ff    	lea    eax,[edi-0x469]
 8049273:	89 04 24             	mov    DWORD PTR [esp],eax
 8049276:	e8 06 f8 ff ff       	call   8048a81 <__printf>
 804927b:	89 de                	mov    esi,ebx
 804927d:	e9 61 f8 ff ff       	jmp    8048ae3 <__vprintf+0x38>

08049282 <vsnprintf>:
 8049282:	55                   	push   ebp
 8049283:	89 e5                	mov    ebp,esp
 8049285:	56                   	push   esi
 8049286:	53                   	push   ebx
 8049287:	83 ec 20             	sub    esp,0x20
 804928a:	e8 0a 10 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 804928f:	81 c3 71 1d 00 00    	add    ebx,0x1d71
 8049295:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8049298:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
 804929b:	8b 4d 14             	mov    ecx,DWORD PTR [ebp+0x14]
 804929e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 80492a1:	89 75 ec             	mov    DWORD PTR [ebp-0x14],esi
 80492a4:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [ebp-0x10],0x0
 80492ab:	85 c0                	test   eax,eax
 80492ad:	74 31                	je     80492e0 <vsnprintf+0x5e>
 80492af:	48                   	dec    eax
 80492b0:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
 80492b3:	8d 45 ec             	lea    eax,[ebp-0x14]
 80492b6:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80492ba:	8d 83 60 d6 ff ff    	lea    eax,[ebx-0x29a0]
 80492c0:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80492c4:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 80492c8:	89 14 24             	mov    DWORD PTR [esp],edx
 80492cb:	e8 db f7 ff ff       	call   8048aab <__vprintf>
 80492d0:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 80492d3:	c6 00 00             	mov    BYTE PTR [eax],0x0
 80492d6:	8b 45 f0             	mov    eax,DWORD PTR [ebp-0x10]
 80492d9:	83 c4 20             	add    esp,0x20
 80492dc:	5b                   	pop    ebx
 80492dd:	5e                   	pop    esi
 80492de:	5d                   	pop    ebp
 80492df:	c3                   	ret
 80492e0:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80492e7:	8d 45 ec             	lea    eax,[ebp-0x14]
 80492ea:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80492ee:	8d 83 60 d6 ff ff    	lea    eax,[ebx-0x29a0]
 80492f4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80492f8:	89 4c 24 04          	mov    DWORD PTR [esp+0x4],ecx
 80492fc:	89 14 24             	mov    DWORD PTR [esp],edx
 80492ff:	e8 a7 f7 ff ff       	call   8048aab <__vprintf>
 8049304:	eb d0                	jmp    80492d6 <vsnprintf+0x54>

08049306 <snprintf>:
 8049306:	55                   	push   ebp
 8049307:	89 e5                	mov    ebp,esp
 8049309:	83 ec 18             	sub    esp,0x18
 804930c:	8d 45 14             	lea    eax,[ebp+0x14]
 804930f:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049313:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8049316:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804931a:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 804931d:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049321:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049324:	89 04 24             	mov    DWORD PTR [esp],eax
 8049327:	e8 56 ff ff ff       	call   8049282 <vsnprintf>
 804932c:	89 ec                	mov    esp,ebp
 804932e:	5d                   	pop    ebp
 804932f:	c3                   	ret

08049330 <hex_dump>:
 8049330:	55                   	push   ebp
 8049331:	89 e5                	mov    ebp,esp
 8049333:	57                   	push   edi
 8049334:	56                   	push   esi
 8049335:	53                   	push   ebx
 8049336:	83 ec 3c             	sub    esp,0x3c
 8049339:	e8 57 0f 00 00       	call   804a295 <__x86.get_pc_thunk.dx>
 804933e:	81 c2 c2 1c 00 00    	add    edx,0x1cc2
 8049344:	89 55 e0             	mov    DWORD PTR [ebp-0x20],edx
 8049347:	0f b6 45 14          	movzx  eax,BYTE PTR [ebp+0x14]
 804934b:	88 45 db             	mov    BYTE PTR [ebp-0x25],al
 804934e:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
 8049352:	0f 84 e0 01 00 00    	je     8049538 <hex_dump+0x208>
 8049358:	8d 82 ae fb ff ff    	lea    eax,[edx-0x452]
 804935e:	89 45 d4             	mov    DWORD PTR [ebp-0x2c],eax
 8049361:	e9 c0 00 00 00       	jmp    8049426 <hex_dump+0xf6>
 8049366:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 8049369:	29 f8                	sub    eax,edi
 804936b:	89 45 dc             	mov    DWORD PTR [ebp-0x24],eax
 804936e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049371:	83 e0 f0             	and    eax,0xfffffff0
 8049374:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049378:	c7 44 24 08 00 00 00 	mov    DWORD PTR [esp+0x8],0x0
 804937f:	00 
 8049380:	8b 45 d4             	mov    eax,DWORD PTR [ebp-0x2c]
 8049383:	89 04 24             	mov    DWORD PTR [esp],eax
 8049386:	e8 c9 f6 ff ff       	call   8048a54 <printf>
 804938b:	85 ff                	test   edi,edi
 804938d:	0f 84 bd 00 00 00    	je     8049450 <hex_dump+0x120>
 8049393:	bb 00 00 00 00       	mov    ebx,0x0
 8049398:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 804939b:	8d b0 b6 fb ff ff    	lea    esi,[eax-0x44a]
 80493a1:	89 34 24             	mov    DWORD PTR [esp],esi
 80493a4:	e8 ab f6 ff ff       	call   8048a54 <printf>
 80493a9:	43                   	inc    ebx
 80493aa:	39 df                	cmp    edi,ebx
 80493ac:	75 f3                	jne    80493a1 <hex_dump+0x71>
 80493ae:	89 fb                	mov    ebx,edi
 80493b0:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 80493b3:	39 c3                	cmp    ebx,eax
 80493b5:	0f 83 6e 01 00 00    	jae    8049529 <hex_dump+0x1f9>
 80493bb:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 80493be:	8d b0 ba fb ff ff    	lea    esi,[eax-0x446]
 80493c4:	83 fb 07             	cmp    ebx,0x7
 80493c7:	b8 2d 00 00 00       	mov    eax,0x2d
 80493cc:	b9 20 00 00 00       	mov    ecx,0x20
 80493d1:	0f 45 c1             	cmovne eax,ecx
 80493d4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80493d8:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80493db:	29 f8                	sub    eax,edi
 80493dd:	0f b6 04 18          	movzx  eax,BYTE PTR [eax+ebx*1]
 80493e1:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80493e5:	89 34 24             	mov    DWORD PTR [esp],esi
 80493e8:	e8 67 f6 ff ff       	call   8048a54 <printf>
 80493ed:	43                   	inc    ebx
 80493ee:	39 5d e4             	cmp    DWORD PTR [ebp-0x1c],ebx
 80493f1:	75 d1                	jne    80493c4 <hex_dump+0x94>
 80493f3:	80 7d db 00          	cmp    BYTE PTR [ebp-0x25],0x0
 80493f7:	75 5e                	jne    8049457 <hex_dump+0x127>
 80493f9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 80493fc:	8d 80 69 fb ff ff    	lea    eax,[eax-0x497]
 8049402:	89 04 24             	mov    DWORD PTR [esp],eax
 8049405:	e8 4a f6 ff ff       	call   8048a54 <printf>
 804940a:	8b 45 dc             	mov    eax,DWORD PTR [ebp-0x24]
 804940d:	01 45 08             	add    DWORD PTR [ebp+0x8],eax
 8049410:	01 45 0c             	add    DWORD PTR [ebp+0xc],eax
 8049413:	89 f8                	mov    eax,edi
 8049415:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
 8049418:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
 804941b:	29 d0                	sub    eax,edx
 804941d:	89 45 10             	mov    DWORD PTR [ebp+0x10],eax
 8049420:	0f 84 12 01 00 00    	je     8049538 <hex_dump+0x208>
 8049426:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
 8049429:	83 e7 0f             	and    edi,0xf
 804942c:	b8 10 00 00 00       	mov    eax,0x10
 8049431:	29 f8                	sub    eax,edi
 8049433:	c7 45 e4 10 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x10
 804943a:	39 45 10             	cmp    DWORD PTR [ebp+0x10],eax
 804943d:	0f 83 23 ff ff ff    	jae    8049366 <hex_dump+0x36>
 8049443:	89 f8                	mov    eax,edi
 8049445:	03 45 10             	add    eax,DWORD PTR [ebp+0x10]
 8049448:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 804944b:	e9 16 ff ff ff       	jmp    8049366 <hex_dump+0x36>
 8049450:	89 fb                	mov    ebx,edi
 8049452:	e9 59 ff ff ff       	jmp    80493b0 <hex_dump+0x80>
 8049457:	83 fb 0f             	cmp    ebx,0xf
 804945a:	77 17                	ja     8049473 <hex_dump+0x143>
 804945c:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 804945f:	8d b0 b6 fb ff ff    	lea    esi,[eax-0x44a]
 8049465:	89 34 24             	mov    DWORD PTR [esp],esi
 8049468:	e8 e7 f5 ff ff       	call   8048a54 <printf>
 804946d:	43                   	inc    ebx
 804946e:	83 fb 10             	cmp    ebx,0x10
 8049471:	75 f2                	jne    8049465 <hex_dump+0x135>
 8049473:	8b 75 e0             	mov    esi,DWORD PTR [ebp-0x20]
 8049476:	8d 86 c3 fb ff ff    	lea    eax,[esi-0x43d]
 804947c:	89 04 24             	mov    DWORD PTR [esp],eax
 804947f:	e8 d0 f5 ff ff       	call   8048a54 <printf>
 8049484:	85 ff                	test   edi,edi
 8049486:	74 3d                	je     80494c5 <hex_dump+0x195>
 8049488:	bb 00 00 00 00       	mov    ebx,0x0
 804948d:	8d b6 b8 fb ff ff    	lea    esi,[esi-0x448]
 8049493:	89 34 24             	mov    DWORD PTR [esp],esi
 8049496:	e8 b9 f5 ff ff       	call   8048a54 <printf>
 804949b:	43                   	inc    ebx
 804949c:	39 df                	cmp    edi,ebx
 804949e:	75 f3                	jne    8049493 <hex_dump+0x163>
 80494a0:	89 fb                	mov    ebx,edi
 80494a2:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
 80494a5:	39 d3                	cmp    ebx,edx
 80494a7:	73 53                	jae    80494fc <hex_dump+0x1cc>
 80494a9:	29 fb                	sub    ebx,edi
 80494ab:	03 5d 0c             	add    ebx,DWORD PTR [ebp+0xc]
 80494ae:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 80494b1:	29 f8                	sub    eax,edi
 80494b3:	01 d0                	add    eax,edx
 80494b5:	8b 55 e0             	mov    edx,DWORD PTR [ebp-0x20]
 80494b8:	8d b2 c0 fb ff ff    	lea    esi,[edx-0x440]
 80494be:	89 7d d0             	mov    DWORD PTR [ebp-0x30],edi
 80494c1:	89 c7                	mov    edi,eax
 80494c3:	eb 18                	jmp    80494dd <hex_dump+0x1ad>
 80494c5:	89 fb                	mov    ebx,edi
 80494c7:	eb d9                	jmp    80494a2 <hex_dump+0x172>
 80494c9:	0f b6 c0             	movzx  eax,al
 80494cc:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80494d0:	89 34 24             	mov    DWORD PTR [esp],esi
 80494d3:	e8 7c f5 ff ff       	call   8048a54 <printf>
 80494d8:	43                   	inc    ebx
 80494d9:	39 df                	cmp    edi,ebx
 80494db:	74 12                	je     80494ef <hex_dump+0x1bf>
 80494dd:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
 80494e0:	0f b6 d0             	movzx  edx,al
 80494e3:	83 ea 20             	sub    edx,0x20
 80494e6:	83 fa 5e             	cmp    edx,0x5e
 80494e9:	76 de                	jbe    80494c9 <hex_dump+0x199>
 80494eb:	b0 2e                	mov    al,0x2e
 80494ed:	eb da                	jmp    80494c9 <hex_dump+0x199>
 80494ef:	8b 7d d0             	mov    edi,DWORD PTR [ebp-0x30]
 80494f2:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 80494f5:	83 f8 0f             	cmp    eax,0xf
 80494f8:	77 19                	ja     8049513 <hex_dump+0x1e3>
 80494fa:	89 c3                	mov    ebx,eax
 80494fc:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 80494ff:	8d b0 b8 fb ff ff    	lea    esi,[eax-0x448]
 8049505:	89 34 24             	mov    DWORD PTR [esp],esi
 8049508:	e8 47 f5 ff ff       	call   8048a54 <printf>
 804950d:	43                   	inc    ebx
 804950e:	83 fb 10             	cmp    ebx,0x10
 8049511:	75 f2                	jne    8049505 <hex_dump+0x1d5>
 8049513:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 8049516:	8d 80 c3 fb ff ff    	lea    eax,[eax-0x43d]
 804951c:	89 04 24             	mov    DWORD PTR [esp],eax
 804951f:	e8 30 f5 ff ff       	call   8048a54 <printf>
 8049524:	e9 d0 fe ff ff       	jmp    80493f9 <hex_dump+0xc9>
 8049529:	80 7d db 00          	cmp    BYTE PTR [ebp-0x25],0x0
 804952d:	0f 84 c6 fe ff ff    	je     80493f9 <hex_dump+0xc9>
 8049533:	e9 24 ff ff ff       	jmp    804945c <hex_dump+0x12c>
 8049538:	83 c4 3c             	add    esp,0x3c
 804953b:	5b                   	pop    ebx
 804953c:	5e                   	pop    esi
 804953d:	5f                   	pop    edi
 804953e:	5d                   	pop    ebp
 804953f:	c3                   	ret

08049540 <print_human_readable_size>:
 8049540:	55                   	push   ebp
 8049541:	89 e5                	mov    ebp,esp
 8049543:	57                   	push   edi
 8049544:	56                   	push   esi
 8049545:	53                   	push   ebx
 8049546:	83 ec 2c             	sub    esp,0x2c
 8049549:	e8 4f 0d 00 00       	call   804a29d <__x86.get_pc_thunk.di>
 804954e:	81 c7 b2 1a 00 00    	add    edi,0x1ab2
 8049554:	89 7d e4             	mov    DWORD PTR [ebp-0x1c],edi
 8049557:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804955a:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804955d:	89 c1                	mov    ecx,eax
 804955f:	83 f1 01             	xor    ecx,0x1
 8049562:	09 d1                	or     ecx,edx
 8049564:	74 40                	je     80495a6 <print_human_readable_size+0x66>
 8049566:	b9 ff 03 00 00       	mov    ecx,0x3ff
 804956b:	39 c1                	cmp    ecx,eax
 804956d:	b9 00 00 00 00       	mov    ecx,0x0
 8049572:	19 d1                	sbb    ecx,edx
 8049574:	8d 8f 0c 00 00 00    	lea    ecx,[edi+0xc]
 804957a:	73 41                	jae    80495bd <print_human_readable_size+0x7d>
 804957c:	83 79 04 00          	cmp    DWORD PTR [ecx+0x4],0x0
 8049580:	74 3b                	je     80495bd <print_human_readable_size+0x7d>
 8049582:	89 c6                	mov    esi,eax
 8049584:	89 d7                	mov    edi,edx
 8049586:	0f ac fe 0a          	shrd   esi,edi,0xa
 804958a:	c1 ef 0a             	shr    edi,0xa
 804958d:	83 c1 04             	add    ecx,0x4
 8049590:	bb ff ff 0f 00       	mov    ebx,0xfffff
 8049595:	39 c3                	cmp    ebx,eax
 8049597:	bb 00 00 00 00       	mov    ebx,0x0
 804959c:	19 d3                	sbb    ebx,edx
 804959e:	73 19                	jae    80495b9 <print_human_readable_size+0x79>
 80495a0:	89 f0                	mov    eax,esi
 80495a2:	89 fa                	mov    edx,edi
 80495a4:	eb d6                	jmp    804957c <print_human_readable_size+0x3c>
 80495a6:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 80495a9:	8d 80 c5 fb ff ff    	lea    eax,[eax-0x43b]
 80495af:	89 04 24             	mov    DWORD PTR [esp],eax
 80495b2:	e8 9d f4 ff ff       	call   8048a54 <printf>
 80495b7:	eb 23                	jmp    80495dc <print_human_readable_size+0x9c>
 80495b9:	89 f0                	mov    eax,esi
 80495bb:	89 fa                	mov    edx,edi
 80495bd:	8b 09                	mov    ecx,DWORD PTR [ecx]
 80495bf:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
 80495c3:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 80495c7:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 80495cb:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 80495ce:	8d 80 cc fb ff ff    	lea    eax,[eax-0x434]
 80495d4:	89 04 24             	mov    DWORD PTR [esp],eax
 80495d7:	e8 78 f4 ff ff       	call   8048a54 <printf>
 80495dc:	83 c4 2c             	add    esp,0x2c
 80495df:	5b                   	pop    ebx
 80495e0:	5e                   	pop    esi
 80495e1:	5f                   	pop    edi
 80495e2:	5d                   	pop    ebp
 80495e3:	c3                   	ret
 80495e4:	90                   	nop
 80495e5:	90                   	nop
 80495e6:	90                   	nop
 80495e7:	90                   	nop
 80495e8:	90                   	nop
 80495e9:	90                   	nop
 80495ea:	90                   	nop
 80495eb:	90                   	nop
 80495ec:	90                   	nop
 80495ed:	90                   	nop
 80495ee:	90                   	nop
 80495ef:	90                   	nop

080495f0 <memcpy>:
 80495f0:	55                   	push   ebp
 80495f1:	89 e5                	mov    ebp,esp
 80495f3:	57                   	push   edi
 80495f4:	56                   	push   esi
 80495f5:	53                   	push   ebx
 80495f6:	83 ec 2c             	sub    esp,0x2c
 80495f9:	e8 a7 0c 00 00       	call   804a2a5 <__x86.get_pc_thunk.cx>
 80495fe:	81 c1 02 1a 00 00    	add    ecx,0x1a02
 8049604:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
 8049607:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804960a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
 804960d:	85 f6                	test   esi,esi
 804960f:	0f 94 c0             	sete   al
 8049612:	85 ff                	test   edi,edi
 8049614:	75 04                	jne    804961a <memcpy+0x2a>
 8049616:	84 c0                	test   al,al
 8049618:	74 28                	je     8049642 <memcpy+0x52>
 804961a:	85 d2                	test   edx,edx
 804961c:	75 04                	jne    8049622 <memcpy+0x32>
 804961e:	84 c0                	test   al,al
 8049620:	74 56                	je     8049678 <memcpy+0x88>
 8049622:	8d 0c 37             	lea    ecx,[edi+esi*1]
 8049625:	89 f8                	mov    eax,edi
 8049627:	85 f6                	test   esi,esi
 8049629:	74 0d                	je     8049638 <memcpy+0x48>
 804962b:	42                   	inc    edx
 804962c:	40                   	inc    eax
 804962d:	0f b6 5a ff          	movzx  ebx,BYTE PTR [edx-0x1]
 8049631:	88 58 ff             	mov    BYTE PTR [eax-0x1],bl
 8049634:	39 c1                	cmp    ecx,eax
 8049636:	75 f3                	jne    804962b <memcpy+0x3b>
 8049638:	89 f8                	mov    eax,edi
 804963a:	83 c4 2c             	add    esp,0x2c
 804963d:	5b                   	pop    ebx
 804963e:	5e                   	pop    esi
 804963f:	5f                   	pop    edi
 8049640:	5d                   	pop    ebp
 8049641:	c3                   	ret
 8049642:	8d 81 1c fc ff ff    	lea    eax,[ecx-0x3e4]
 8049648:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 804964c:	8d 81 35 fc ff ff    	lea    eax,[ecx-0x3cb]
 8049652:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049656:	8d 81 54 fa ff ff    	lea    eax,[ecx-0x5ac]
 804965c:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049660:	c7 44 24 04 0c 00 00 	mov    DWORD PTR [esp+0x4],0xc
 8049667:	00 
 8049668:	8d 81 4c fc ff ff    	lea    eax,[ecx-0x3b4]
 804966e:	89 04 24             	mov    DWORD PTR [esp],eax
 8049671:	89 cb                	mov    ebx,ecx
 8049673:	e8 42 ed ff ff       	call   80483ba <debug_panic>
 8049678:	8d 81 5c fc ff ff    	lea    eax,[ecx-0x3a4]
 804967e:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049682:	8d 81 35 fc ff ff    	lea    eax,[ecx-0x3cb]
 8049688:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804968c:	8d 81 54 fa ff ff    	lea    eax,[ecx-0x5ac]
 8049692:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049696:	c7 44 24 04 0d 00 00 	mov    DWORD PTR [esp+0x4],0xd
 804969d:	00 
 804969e:	8d 81 4c fc ff ff    	lea    eax,[ecx-0x3b4]
 80496a4:	89 04 24             	mov    DWORD PTR [esp],eax
 80496a7:	89 cb                	mov    ebx,ecx
 80496a9:	e8 0c ed ff ff       	call   80483ba <debug_panic>

080496ae <memmove>:
 80496ae:	55                   	push   ebp
 80496af:	89 e5                	mov    ebp,esp
 80496b1:	56                   	push   esi
 80496b2:	53                   	push   ebx
 80496b3:	83 ec 20             	sub    esp,0x20
 80496b6:	e8 ee 0b 00 00       	call   804a2a9 <__x86.get_pc_thunk.si>
 80496bb:	81 c6 45 19 00 00    	add    esi,0x1945
 80496c1:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80496c4:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
 80496c7:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
 80496ca:	85 db                	test   ebx,ebx
 80496cc:	0f 94 c2             	sete   dl
 80496cf:	85 c0                	test   eax,eax
 80496d1:	75 04                	jne    80496d7 <memmove+0x29>
 80496d3:	84 d2                	test   dl,dl
 80496d5:	74 34                	je     804970b <memmove+0x5d>
 80496d7:	85 c9                	test   ecx,ecx
 80496d9:	75 07                	jne    80496e2 <memmove+0x34>
 80496db:	84 d2                	test   dl,dl
 80496dd:	8d 76 00             	lea    esi,[esi+0x0]
 80496e0:	74 5f                	je     8049741 <memmove+0x93>
 80496e2:	39 c8                	cmp    eax,ecx
 80496e4:	0f 83 8d 00 00 00    	jae    8049777 <memmove+0xc9>
 80496ea:	85 db                	test   ebx,ebx
 80496ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80496f0:	74 12                	je     8049704 <memmove+0x56>
 80496f2:	8d 14 18             	lea    edx,[eax+ebx*1]
 80496f5:	41                   	inc    ecx
 80496f6:	40                   	inc    eax
 80496f7:	0f b6 59 ff          	movzx  ebx,BYTE PTR [ecx-0x1]
 80496fb:	88 58 ff             	mov    BYTE PTR [eax-0x1],bl
 80496fe:	39 d0                	cmp    eax,edx
 8049700:	75 f3                	jne    80496f5 <memmove+0x47>
 8049702:	89 d0                	mov    eax,edx
 8049704:	83 c4 20             	add    esp,0x20
 8049707:	5b                   	pop    ebx
 8049708:	5e                   	pop    esi
 8049709:	5d                   	pop    ebp
 804970a:	c3                   	ret
 804970b:	8d 86 1c fc ff ff    	lea    eax,[esi-0x3e4]
 8049711:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049715:	8d 86 35 fc ff ff    	lea    eax,[esi-0x3cb]
 804971b:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804971f:	8d 86 4c fa ff ff    	lea    eax,[esi-0x5b4]
 8049725:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049729:	c7 44 24 04 1d 00 00 	mov    DWORD PTR [esp+0x4],0x1d
 8049730:	00 
 8049731:	8d 86 4c fc ff ff    	lea    eax,[esi-0x3b4]
 8049737:	89 04 24             	mov    DWORD PTR [esp],eax
 804973a:	89 f3                	mov    ebx,esi
 804973c:	e8 79 ec ff ff       	call   80483ba <debug_panic>
 8049741:	8d 86 5c fc ff ff    	lea    eax,[esi-0x3a4]
 8049747:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 804974b:	8d 86 35 fc ff ff    	lea    eax,[esi-0x3cb]
 8049751:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049755:	8d 86 4c fa ff ff    	lea    eax,[esi-0x5b4]
 804975b:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804975f:	c7 44 24 04 1e 00 00 	mov    DWORD PTR [esp+0x4],0x1e
 8049766:	00 
 8049767:	8d 86 4c fc ff ff    	lea    eax,[esi-0x3b4]
 804976d:	89 04 24             	mov    DWORD PTR [esp],eax
 8049770:	89 f3                	mov    ebx,esi
 8049772:	e8 43 ec ff ff       	call   80483ba <debug_panic>
 8049777:	8d 53 ff             	lea    edx,[ebx-0x1]
 804977a:	85 db                	test   ebx,ebx
 804977c:	74 12                	je     8049790 <memmove+0xe2>
 804977e:	0f b6 1c 11          	movzx  ebx,BYTE PTR [ecx+edx*1]
 8049782:	88 1c 10             	mov    BYTE PTR [eax+edx*1],bl
 8049785:	4a                   	dec    edx
 8049786:	83 fa ff             	cmp    edx,0xffffffff
 8049789:	75 f3                	jne    804977e <memmove+0xd0>
 804978b:	e9 74 ff ff ff       	jmp    8049704 <memmove+0x56>
 8049790:	01 d8                	add    eax,ebx
 8049792:	e9 6d ff ff ff       	jmp    8049704 <memmove+0x56>

08049797 <memcmp>:
 8049797:	55                   	push   ebp
 8049798:	89 e5                	mov    ebp,esp
 804979a:	56                   	push   esi
 804979b:	53                   	push   ebx
 804979c:	83 ec 20             	sub    esp,0x20
 804979f:	e8 05 0b 00 00       	call   804a2a9 <__x86.get_pc_thunk.si>
 80497a4:	81 c6 5c 18 00 00    	add    esi,0x185c
 80497aa:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80497ad:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 80497b0:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
 80497b3:	85 c9                	test   ecx,ecx
 80497b5:	0f 94 c3             	sete   bl
 80497b8:	85 c0                	test   eax,eax
 80497ba:	75 04                	jne    80497c0 <memcmp+0x29>
 80497bc:	84 db                	test   bl,bl
 80497be:	74 2a                	je     80497ea <memcmp+0x53>
 80497c0:	85 d2                	test   edx,edx
 80497c2:	75 04                	jne    80497c8 <memcmp+0x31>
 80497c4:	84 db                	test   bl,bl
 80497c6:	74 5f                	je     8049827 <memcmp+0x90>
 80497c8:	8d 34 08             	lea    esi,[eax+ecx*1]
 80497cb:	85 c9                	test   ecx,ecx
 80497cd:	74 51                	je     8049820 <memcmp+0x89>
 80497cf:	0f b6 08             	movzx  ecx,BYTE PTR [eax]
 80497d2:	0f b6 1a             	movzx  ebx,BYTE PTR [edx]
 80497d5:	38 d9                	cmp    cl,bl
 80497d7:	0f 85 80 00 00 00    	jne    804985d <memcmp+0xc6>
 80497dd:	40                   	inc    eax
 80497de:	42                   	inc    edx
 80497df:	39 c6                	cmp    esi,eax
 80497e1:	75 ec                	jne    80497cf <memcmp+0x38>
 80497e3:	b8 00 00 00 00       	mov    eax,0x0
 80497e8:	eb 7b                	jmp    8049865 <memcmp+0xce>
 80497ea:	8d 86 75 fc ff ff    	lea    eax,[esi-0x38b]
 80497f0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 80497f4:	8d 86 35 fc ff ff    	lea    eax,[esi-0x3cb]
 80497fa:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80497fe:	8d 86 44 fa ff ff    	lea    eax,[esi-0x5bc]
 8049804:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049808:	c7 44 24 04 3a 00 00 	mov    DWORD PTR [esp+0x4],0x3a
 804980f:	00 
 8049810:	8d 86 4c fc ff ff    	lea    eax,[esi-0x3b4]
 8049816:	89 04 24             	mov    DWORD PTR [esp],eax
 8049819:	89 f3                	mov    ebx,esi
 804981b:	e8 9a eb ff ff       	call   80483ba <debug_panic>
 8049820:	b8 00 00 00 00       	mov    eax,0x0
 8049825:	eb 3e                	jmp    8049865 <memcmp+0xce>
 8049827:	8d 86 8c fc ff ff    	lea    eax,[esi-0x374]
 804982d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049831:	8d 86 35 fc ff ff    	lea    eax,[esi-0x3cb]
 8049837:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 804983b:	8d 86 44 fa ff ff    	lea    eax,[esi-0x5bc]
 8049841:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049845:	c7 44 24 04 3b 00 00 	mov    DWORD PTR [esp+0x4],0x3b
 804984c:	00 
 804984d:	8d 86 4c fc ff ff    	lea    eax,[esi-0x3b4]
 8049853:	89 04 24             	mov    DWORD PTR [esp],eax
 8049856:	89 f3                	mov    ebx,esi
 8049858:	e8 5d eb ff ff       	call   80483ba <debug_panic>
 804985d:	38 cb                	cmp    bl,cl
 804985f:	19 c0                	sbb    eax,eax
 8049861:	83 e0 02             	and    eax,0x2
 8049864:	48                   	dec    eax
 8049865:	83 c4 20             	add    esp,0x20
 8049868:	5b                   	pop    ebx
 8049869:	5e                   	pop    esi
 804986a:	5d                   	pop    ebp
 804986b:	c3                   	ret

0804986c <strcmp>:
 804986c:	55                   	push   ebp
 804986d:	89 e5                	mov    ebp,esp
 804986f:	83 ec 28             	sub    esp,0x28
 8049872:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 8049875:	e8 1f 0a 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 804987a:	81 c3 86 17 00 00    	add    ebx,0x1786
 8049880:	8b 4d 08             	mov    ecx,DWORD PTR [ebp+0x8]
 8049883:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8049886:	85 c9                	test   ecx,ecx
 8049888:	74 35                	je     80498bf <strcmp+0x53>
 804988a:	85 d2                	test   edx,edx
 804988c:	74 65                	je     80498f3 <strcmp+0x87>
 804988e:	0f b6 01             	movzx  eax,BYTE PTR [ecx]
 8049891:	84 c0                	test   al,al
 8049893:	74 0d                	je     80498a2 <strcmp+0x36>
 8049895:	38 02                	cmp    BYTE PTR [edx],al
 8049897:	75 09                	jne    80498a2 <strcmp+0x36>
 8049899:	41                   	inc    ecx
 804989a:	42                   	inc    edx
 804989b:	0f b6 01             	movzx  eax,BYTE PTR [ecx]
 804989e:	84 c0                	test   al,al
 80498a0:	75 f3                	jne    8049895 <strcmp+0x29>
 80498a2:	0f b6 0a             	movzx  ecx,BYTE PTR [edx]
 80498a5:	ba ff ff ff ff       	mov    edx,0xffffffff
 80498aa:	38 c8                	cmp    al,cl
 80498ac:	72 08                	jb     80498b6 <strcmp+0x4a>
 80498ae:	38 c1                	cmp    cl,al
 80498b0:	0f 92 c2             	setb   dl
 80498b3:	0f b6 d2             	movzx  edx,dl
 80498b6:	89 d0                	mov    eax,edx
 80498b8:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 80498bb:	89 ec                	mov    esp,ebp
 80498bd:	5d                   	pop    ebp
 80498be:	c3                   	ret
 80498bf:	8d 83 a3 fc ff ff    	lea    eax,[ebx-0x35d]
 80498c5:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 80498c9:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 80498cf:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80498d3:	8d 83 3c fa ff ff    	lea    eax,[ebx-0x5c4]
 80498d9:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80498dd:	c7 44 24 04 4e 00 00 	mov    DWORD PTR [esp+0x4],0x4e
 80498e4:	00 
 80498e5:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 80498eb:	89 04 24             	mov    DWORD PTR [esp],eax
 80498ee:	e8 c7 ea ff ff       	call   80483ba <debug_panic>
 80498f3:	8d 83 ad fc ff ff    	lea    eax,[ebx-0x353]
 80498f9:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 80498fd:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049903:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049907:	8d 83 3c fa ff ff    	lea    eax,[ebx-0x5c4]
 804990d:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049911:	c7 44 24 04 4f 00 00 	mov    DWORD PTR [esp+0x4],0x4f
 8049918:	00 
 8049919:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 804991f:	89 04 24             	mov    DWORD PTR [esp],eax
 8049922:	e8 93 ea ff ff       	call   80483ba <debug_panic>

08049927 <memchr>:
 8049927:	55                   	push   ebp
 8049928:	89 e5                	mov    ebp,esp
 804992a:	83 ec 28             	sub    esp,0x28
 804992d:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 8049930:	e8 70 09 00 00       	call   804a2a5 <__x86.get_pc_thunk.cx>
 8049935:	81 c1 cb 16 00 00    	add    ecx,0x16cb
 804993b:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804993e:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
 8049941:	0f b6 55 0c          	movzx  edx,BYTE PTR [ebp+0xc]
 8049945:	85 c0                	test   eax,eax
 8049947:	75 04                	jne    804994d <memchr+0x26>
 8049949:	85 db                	test   ebx,ebx
 804994b:	75 23                	jne    8049970 <memchr+0x49>
 804994d:	8d 0c 18             	lea    ecx,[eax+ebx*1]
 8049950:	85 db                	test   ebx,ebx
 8049952:	74 15                	je     8049969 <memchr+0x42>
 8049954:	38 10                	cmp    BYTE PTR [eax],dl
 8049956:	74 0a                	je     8049962 <memchr+0x3b>
 8049958:	40                   	inc    eax
 8049959:	39 c1                	cmp    ecx,eax
 804995b:	75 f7                	jne    8049954 <memchr+0x2d>
 804995d:	b8 00 00 00 00       	mov    eax,0x0
 8049962:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 8049965:	89 ec                	mov    esp,ebp
 8049967:	5d                   	pop    ebp
 8049968:	c3                   	ret
 8049969:	b8 00 00 00 00       	mov    eax,0x0
 804996e:	eb f2                	jmp    8049962 <memchr+0x3b>
 8049970:	8d 81 b7 fc ff ff    	lea    eax,[ecx-0x349]
 8049976:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 804997a:	8d 81 35 fc ff ff    	lea    eax,[ecx-0x3cb]
 8049980:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049984:	8d 81 34 fa ff ff    	lea    eax,[ecx-0x5cc]
 804998a:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 804998e:	c7 44 24 04 63 00 00 	mov    DWORD PTR [esp+0x4],0x63
 8049995:	00 
 8049996:	8d 81 4c fc ff ff    	lea    eax,[ecx-0x3b4]
 804999c:	89 04 24             	mov    DWORD PTR [esp],eax
 804999f:	89 cb                	mov    ebx,ecx
 80499a1:	e8 14 ea ff ff       	call   80483ba <debug_panic>

080499a6 <strchr>:
 80499a6:	55                   	push   ebp
 80499a7:	89 e5                	mov    ebp,esp
 80499a9:	83 ec 28             	sub    esp,0x28
 80499ac:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 80499af:	e8 e5 08 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 80499b4:	81 c3 4c 16 00 00    	add    ebx,0x164c
 80499ba:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 80499bd:	0f b6 4d 0c          	movzx  ecx,BYTE PTR [ebp+0xc]
 80499c1:	85 c0                	test   eax,eax
 80499c3:	74 15                	je     80499da <strchr+0x34>
 80499c5:	0f b6 10             	movzx  edx,BYTE PTR [eax]
 80499c8:	38 d1                	cmp    cl,dl
 80499ca:	74 47                	je     8049a13 <strchr+0x6d>
 80499cc:	84 d2                	test   dl,dl
 80499ce:	74 3e                	je     8049a0e <strchr+0x68>
 80499d0:	40                   	inc    eax
 80499d1:	0f b6 10             	movzx  edx,BYTE PTR [eax]
 80499d4:	38 ca                	cmp    dl,cl
 80499d6:	75 f4                	jne    80499cc <strchr+0x26>
 80499d8:	eb 39                	jmp    8049a13 <strchr+0x6d>
 80499da:	8d 83 d2 fc ff ff    	lea    eax,[ebx-0x32e]
 80499e0:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 80499e4:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 80499ea:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 80499ee:	8d 83 2c fa ff ff    	lea    eax,[ebx-0x5d4]
 80499f4:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 80499f8:	c7 44 24 04 75 00 00 	mov    DWORD PTR [esp+0x4],0x75
 80499ff:	00 
 8049a00:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049a06:	89 04 24             	mov    DWORD PTR [esp],eax
 8049a09:	e8 ac e9 ff ff       	call   80483ba <debug_panic>
 8049a0e:	b8 00 00 00 00       	mov    eax,0x0
 8049a13:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 8049a16:	89 ec                	mov    esp,ebp
 8049a18:	5d                   	pop    ebp
 8049a19:	c3                   	ret

08049a1a <strcspn>:
 8049a1a:	55                   	push   ebp
 8049a1b:	89 e5                	mov    ebp,esp
 8049a1d:	57                   	push   edi
 8049a1e:	56                   	push   esi
 8049a1f:	53                   	push   ebx
 8049a20:	83 ec 1c             	sub    esp,0x1c
 8049a23:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 8049a26:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 8049a29:	0f b6 06             	movzx  eax,BYTE PTR [esi]
 8049a2c:	84 c0                	test   al,al
 8049a2e:	74 2b                	je     8049a5b <strcspn+0x41>
 8049a30:	bb 00 00 00 00       	mov    ebx,0x0
 8049a35:	0f be c0             	movsx  eax,al
 8049a38:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049a3c:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049a3f:	e8 62 ff ff ff       	call   80499a6 <strchr>
 8049a44:	85 c0                	test   eax,eax
 8049a46:	75 09                	jne    8049a51 <strcspn+0x37>
 8049a48:	43                   	inc    ebx
 8049a49:	0f b6 04 1e          	movzx  eax,BYTE PTR [esi+ebx*1]
 8049a4d:	84 c0                	test   al,al
 8049a4f:	75 e4                	jne    8049a35 <strcspn+0x1b>
 8049a51:	89 d8                	mov    eax,ebx
 8049a53:	83 c4 1c             	add    esp,0x1c
 8049a56:	5b                   	pop    ebx
 8049a57:	5e                   	pop    esi
 8049a58:	5f                   	pop    edi
 8049a59:	5d                   	pop    ebp
 8049a5a:	c3                   	ret
 8049a5b:	bb 00 00 00 00       	mov    ebx,0x0
 8049a60:	eb ef                	jmp    8049a51 <strcspn+0x37>

08049a62 <strpbrk>:
 8049a62:	55                   	push   ebp
 8049a63:	89 e5                	mov    ebp,esp
 8049a65:	56                   	push   esi
 8049a66:	53                   	push   ebx
 8049a67:	83 ec 10             	sub    esp,0x10
 8049a6a:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
 8049a6d:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
 8049a70:	0f b6 13             	movzx  edx,BYTE PTR [ebx]
 8049a73:	84 d2                	test   dl,dl
 8049a75:	74 1d                	je     8049a94 <strpbrk+0x32>
 8049a77:	0f be d2             	movsx  edx,dl
 8049a7a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8049a7e:	89 34 24             	mov    DWORD PTR [esp],esi
 8049a81:	e8 20 ff ff ff       	call   80499a6 <strchr>
 8049a86:	85 c0                	test   eax,eax
 8049a88:	75 11                	jne    8049a9b <strpbrk+0x39>
 8049a8a:	43                   	inc    ebx
 8049a8b:	0f b6 13             	movzx  edx,BYTE PTR [ebx]
 8049a8e:	84 d2                	test   dl,dl
 8049a90:	75 e5                	jne    8049a77 <strpbrk+0x15>
 8049a92:	eb 09                	jmp    8049a9d <strpbrk+0x3b>
 8049a94:	b8 00 00 00 00       	mov    eax,0x0
 8049a99:	eb 02                	jmp    8049a9d <strpbrk+0x3b>
 8049a9b:	89 d8                	mov    eax,ebx
 8049a9d:	83 c4 10             	add    esp,0x10
 8049aa0:	5b                   	pop    ebx
 8049aa1:	5e                   	pop    esi
 8049aa2:	5d                   	pop    ebp
 8049aa3:	c3                   	ret

08049aa4 <strrchr>:
 8049aa4:	55                   	push   ebp
 8049aa5:	89 e5                	mov    ebp,esp
 8049aa7:	53                   	push   ebx
 8049aa8:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049aab:	0f b6 5d 0c          	movzx  ebx,BYTE PTR [ebp+0xc]
 8049aaf:	0f b6 10             	movzx  edx,BYTE PTR [eax]
 8049ab2:	84 d2                	test   dl,dl
 8049ab4:	74 17                	je     8049acd <strrchr+0x29>
 8049ab6:	b9 00 00 00 00       	mov    ecx,0x0
 8049abb:	38 d3                	cmp    bl,dl
 8049abd:	0f 44 c8             	cmove  ecx,eax
 8049ac0:	40                   	inc    eax
 8049ac1:	0f b6 10             	movzx  edx,BYTE PTR [eax]
 8049ac4:	84 d2                	test   dl,dl
 8049ac6:	75 f3                	jne    8049abb <strrchr+0x17>
 8049ac8:	89 c8                	mov    eax,ecx
 8049aca:	5b                   	pop    ebx
 8049acb:	5d                   	pop    ebp
 8049acc:	c3                   	ret
 8049acd:	b9 00 00 00 00       	mov    ecx,0x0
 8049ad2:	eb f4                	jmp    8049ac8 <strrchr+0x24>

08049ad4 <strspn>:
 8049ad4:	55                   	push   ebp
 8049ad5:	89 e5                	mov    ebp,esp
 8049ad7:	57                   	push   edi
 8049ad8:	56                   	push   esi
 8049ad9:	53                   	push   ebx
 8049ada:	83 ec 1c             	sub    esp,0x1c
 8049add:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 8049ae0:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 8049ae3:	0f b6 06             	movzx  eax,BYTE PTR [esi]
 8049ae6:	84 c0                	test   al,al
 8049ae8:	74 2b                	je     8049b15 <strspn+0x41>
 8049aea:	bb 00 00 00 00       	mov    ebx,0x0
 8049aef:	0f be c0             	movsx  eax,al
 8049af2:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049af6:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049af9:	e8 a8 fe ff ff       	call   80499a6 <strchr>
 8049afe:	85 c0                	test   eax,eax
 8049b00:	74 09                	je     8049b0b <strspn+0x37>
 8049b02:	43                   	inc    ebx
 8049b03:	0f b6 04 1e          	movzx  eax,BYTE PTR [esi+ebx*1]
 8049b07:	84 c0                	test   al,al
 8049b09:	75 e4                	jne    8049aef <strspn+0x1b>
 8049b0b:	89 d8                	mov    eax,ebx
 8049b0d:	83 c4 1c             	add    esp,0x1c
 8049b10:	5b                   	pop    ebx
 8049b11:	5e                   	pop    esi
 8049b12:	5f                   	pop    edi
 8049b13:	5d                   	pop    ebp
 8049b14:	c3                   	ret
 8049b15:	bb 00 00 00 00       	mov    ebx,0x0
 8049b1a:	eb ef                	jmp    8049b0b <strspn+0x37>

08049b1c <strtok_r>:
 8049b1c:	55                   	push   ebp
 8049b1d:	89 e5                	mov    ebp,esp
 8049b1f:	57                   	push   edi
 8049b20:	56                   	push   esi
 8049b21:	53                   	push   ebx
 8049b22:	83 ec 3c             	sub    esp,0x3c
 8049b25:	e8 6f 07 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8049b2a:	81 c3 d6 14 00 00    	add    ebx,0x14d6
 8049b30:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 8049b33:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 8049b36:	85 ff                	test   edi,edi
 8049b38:	74 4f                	je     8049b89 <strtok_r+0x6d>
 8049b3a:	83 7d 10 00          	cmp    DWORD PTR [ebp+0x10],0x0
 8049b3e:	74 7d                	je     8049bbd <strtok_r+0xa1>
 8049b40:	85 f6                	test   esi,esi
 8049b42:	0f 85 aa 00 00 00    	jne    8049bf2 <strtok_r+0xd6>
 8049b48:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8049b4b:	8b 30                	mov    esi,DWORD PTR [eax]
 8049b4d:	85 f6                	test   esi,esi
 8049b4f:	0f 85 9d 00 00 00    	jne    8049bf2 <strtok_r+0xd6>
 8049b55:	8d 83 ea fc ff ff    	lea    eax,[ebx-0x316]
 8049b5b:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049b5f:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049b65:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049b69:	8d 83 20 fa ff ff    	lea    eax,[ebx-0x5e0]
 8049b6f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049b73:	c7 44 24 04 f6 00 00 	mov    DWORD PTR [esp+0x4],0xf6
 8049b7a:	00 
 8049b7b:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049b81:	89 04 24             	mov    DWORD PTR [esp],eax
 8049b84:	e8 31 e8 ff ff       	call   80483ba <debug_panic>
 8049b89:	8d 83 e1 fc ff ff    	lea    eax,[ebx-0x31f]
 8049b8f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049b93:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049b99:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049b9d:	8d 83 20 fa ff ff    	lea    eax,[ebx-0x5e0]
 8049ba3:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049ba7:	c7 44 24 04 ef 00 00 	mov    DWORD PTR [esp+0x4],0xef
 8049bae:	00 
 8049baf:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049bb5:	89 04 24             	mov    DWORD PTR [esp],eax
 8049bb8:	e8 fd e7 ff ff       	call   80483ba <debug_panic>
 8049bbd:	8d 83 f4 fc ff ff    	lea    eax,[ebx-0x30c]
 8049bc3:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049bc7:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049bcd:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049bd1:	8d 83 20 fa ff ff    	lea    eax,[ebx-0x5e0]
 8049bd7:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049bdb:	c7 44 24 04 f0 00 00 	mov    DWORD PTR [esp+0x4],0xf0
 8049be2:	00 
 8049be3:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049be9:	89 04 24             	mov    DWORD PTR [esp],eax
 8049bec:	e8 c9 e7 ff ff       	call   80483ba <debug_panic>
 8049bf1:	46                   	inc    esi
 8049bf2:	0f b6 1e             	movzx  ebx,BYTE PTR [esi]
 8049bf5:	0f be c3             	movsx  eax,bl
 8049bf8:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049bfc:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049bff:	e8 a2 fd ff ff       	call   80499a6 <strchr>
 8049c04:	85 c0                	test   eax,eax
 8049c06:	74 16                	je     8049c1e <strtok_r+0x102>
 8049c08:	84 db                	test   bl,bl
 8049c0a:	75 e5                	jne    8049bf1 <strtok_r+0xd5>
 8049c0c:	b8 00 00 00 00       	mov    eax,0x0
 8049c11:	8b 55 10             	mov    edx,DWORD PTR [ebp+0x10]
 8049c14:	89 32                	mov    DWORD PTR [edx],esi
 8049c16:	83 c4 3c             	add    esp,0x3c
 8049c19:	5b                   	pop    ebx
 8049c1a:	5e                   	pop    esi
 8049c1b:	5f                   	pop    edi
 8049c1c:	5d                   	pop    ebp
 8049c1d:	c3                   	ret
 8049c1e:	89 f3                	mov    ebx,esi
 8049c20:	0f b6 03             	movzx  eax,BYTE PTR [ebx]
 8049c23:	88 45 e7             	mov    BYTE PTR [ebp-0x19],al
 8049c26:	0f be c0             	movsx  eax,al
 8049c29:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049c2d:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049c30:	e8 71 fd ff ff       	call   80499a6 <strchr>
 8049c35:	85 c0                	test   eax,eax
 8049c37:	75 03                	jne    8049c3c <strtok_r+0x120>
 8049c39:	43                   	inc    ebx
 8049c3a:	eb e4                	jmp    8049c20 <strtok_r+0x104>
 8049c3c:	80 7d e7 00          	cmp    BYTE PTR [ebp-0x19],0x0
 8049c40:	74 0a                	je     8049c4c <strtok_r+0x130>
 8049c42:	c6 03 00             	mov    BYTE PTR [ebx],0x0
 8049c45:	89 f0                	mov    eax,esi
 8049c47:	8d 73 01             	lea    esi,[ebx+0x1]
 8049c4a:	eb c5                	jmp    8049c11 <strtok_r+0xf5>
 8049c4c:	89 f0                	mov    eax,esi
 8049c4e:	89 de                	mov    esi,ebx
 8049c50:	eb bf                	jmp    8049c11 <strtok_r+0xf5>

08049c52 <memset>:
 8049c52:	55                   	push   ebp
 8049c53:	89 e5                	mov    ebp,esp
 8049c55:	56                   	push   esi
 8049c56:	53                   	push   ebx
 8049c57:	83 ec 20             	sub    esp,0x20
 8049c5a:	e8 42 06 00 00       	call   804a2a1 <__x86.get_pc_thunk.ax>
 8049c5f:	05 a1 13 00 00       	add    eax,0x13a1
 8049c64:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
 8049c67:	8b 4d 0c             	mov    ecx,DWORD PTR [ebp+0xc]
 8049c6a:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
 8049c6d:	85 db                	test   ebx,ebx
 8049c6f:	75 04                	jne    8049c75 <memset+0x23>
 8049c71:	85 f6                	test   esi,esi
 8049c73:	75 1a                	jne    8049c8f <memset+0x3d>
 8049c75:	8d 14 33             	lea    edx,[ebx+esi*1]
 8049c78:	89 d8                	mov    eax,ebx
 8049c7a:	85 f6                	test   esi,esi
 8049c7c:	74 08                	je     8049c86 <memset+0x34>
 8049c7e:	40                   	inc    eax
 8049c7f:	88 48 ff             	mov    BYTE PTR [eax-0x1],cl
 8049c82:	39 c2                	cmp    edx,eax
 8049c84:	75 f8                	jne    8049c7e <memset+0x2c>
 8049c86:	89 d8                	mov    eax,ebx
 8049c88:	83 c4 20             	add    esp,0x20
 8049c8b:	5b                   	pop    ebx
 8049c8c:	5e                   	pop    esi
 8049c8d:	5d                   	pop    ebp
 8049c8e:	c3                   	ret
 8049c8f:	8d 90 1c fc ff ff    	lea    edx,[eax-0x3e4]
 8049c95:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 8049c99:	8d 90 35 fc ff ff    	lea    edx,[eax-0x3cb]
 8049c9f:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8049ca3:	8d 90 18 fa ff ff    	lea    edx,[eax-0x5e8]
 8049ca9:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8049cad:	c7 44 24 04 1b 01 00 	mov    DWORD PTR [esp+0x4],0x11b
 8049cb4:	00 
 8049cb5:	8d 90 4c fc ff ff    	lea    edx,[eax-0x3b4]
 8049cbb:	89 14 24             	mov    DWORD PTR [esp],edx
 8049cbe:	89 c3                	mov    ebx,eax
 8049cc0:	e8 f5 e6 ff ff       	call   80483ba <debug_panic>

08049cc5 <strlen>:
 8049cc5:	55                   	push   ebp
 8049cc6:	89 e5                	mov    ebp,esp
 8049cc8:	83 ec 28             	sub    esp,0x28
 8049ccb:	89 5d fc             	mov    DWORD PTR [ebp-0x4],ebx
 8049cce:	e8 c6 05 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8049cd3:	81 c3 2d 13 00 00    	add    ebx,0x132d
 8049cd9:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
 8049cdc:	85 d2                	test   edx,edx
 8049cde:	74 10                	je     8049cf0 <strlen+0x2b>
 8049ce0:	80 3a 00             	cmp    BYTE PTR [edx],0x0
 8049ce3:	75 3f                	jne    8049d24 <strlen+0x5f>
 8049ce5:	89 d0                	mov    eax,edx
 8049ce7:	29 d0                	sub    eax,edx
 8049ce9:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
 8049cec:	89 ec                	mov    esp,ebp
 8049cee:	5d                   	pop    ebp
 8049cef:	c3                   	ret
 8049cf0:	8d 93 d2 fc ff ff    	lea    edx,[ebx-0x32e]
 8049cf6:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
 8049cfa:	8d 93 35 fc ff ff    	lea    edx,[ebx-0x3cb]
 8049d00:	89 54 24 0c          	mov    DWORD PTR [esp+0xc],edx
 8049d04:	8d 93 10 fa ff ff    	lea    edx,[ebx-0x5f0]
 8049d0a:	89 54 24 08          	mov    DWORD PTR [esp+0x8],edx
 8049d0e:	c7 44 24 04 29 01 00 	mov    DWORD PTR [esp+0x4],0x129
 8049d15:	00 
 8049d16:	8d 93 4c fc ff ff    	lea    edx,[ebx-0x3b4]
 8049d1c:	89 14 24             	mov    DWORD PTR [esp],edx
 8049d1f:	e8 96 e6 ff ff       	call   80483ba <debug_panic>
 8049d24:	89 d0                	mov    eax,edx
 8049d26:	40                   	inc    eax
 8049d27:	80 38 00             	cmp    BYTE PTR [eax],0x0
 8049d2a:	74 bb                	je     8049ce7 <strlen+0x22>
 8049d2c:	eb f8                	jmp    8049d26 <strlen+0x61>

08049d2e <strstr>:
 8049d2e:	55                   	push   ebp
 8049d2f:	89 e5                	mov    ebp,esp
 8049d31:	57                   	push   edi
 8049d32:	56                   	push   esi
 8049d33:	53                   	push   ebx
 8049d34:	83 ec 2c             	sub    esp,0x2c
 8049d37:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049d3a:	89 04 24             	mov    DWORD PTR [esp],eax
 8049d3d:	e8 83 ff ff ff       	call   8049cc5 <strlen>
 8049d42:	89 c3                	mov    ebx,eax
 8049d44:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8049d47:	89 04 24             	mov    DWORD PTR [esp],eax
 8049d4a:	e8 76 ff ff ff       	call   8049cc5 <strlen>
 8049d4f:	39 c3                	cmp    ebx,eax
 8049d51:	72 3d                	jb     8049d90 <strstr+0x62>
 8049d53:	89 c7                	mov    edi,eax
 8049d55:	29 c3                	sub    ebx,eax
 8049d57:	89 5d e4             	mov    DWORD PTR [ebp-0x1c],ebx
 8049d5a:	bb 00 00 00 00       	mov    ebx,0x0
 8049d5f:	89 de                	mov    esi,ebx
 8049d61:	03 75 08             	add    esi,DWORD PTR [ebp+0x8]
 8049d64:	89 7c 24 08          	mov    DWORD PTR [esp+0x8],edi
 8049d68:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8049d6b:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 8049d6f:	89 34 24             	mov    DWORD PTR [esp],esi
 8049d72:	e8 20 fa ff ff       	call   8049797 <memcmp>
 8049d77:	85 c0                	test   eax,eax
 8049d79:	74 0b                	je     8049d86 <strstr+0x58>
 8049d7b:	43                   	inc    ebx
 8049d7c:	39 5d e4             	cmp    DWORD PTR [ebp-0x1c],ebx
 8049d7f:	73 de                	jae    8049d5f <strstr+0x31>
 8049d81:	be 00 00 00 00       	mov    esi,0x0
 8049d86:	89 f0                	mov    eax,esi
 8049d88:	83 c4 2c             	add    esp,0x2c
 8049d8b:	5b                   	pop    ebx
 8049d8c:	5e                   	pop    esi
 8049d8d:	5f                   	pop    edi
 8049d8e:	5d                   	pop    ebp
 8049d8f:	c3                   	ret
 8049d90:	be 00 00 00 00       	mov    esi,0x0
 8049d95:	eb ef                	jmp    8049d86 <strstr+0x58>

08049d97 <strnlen>:
 8049d97:	55                   	push   ebp
 8049d98:	89 e5                	mov    ebp,esp
 8049d9a:	8b 55 08             	mov    edx,DWORD PTR [ebp+0x8]
 8049d9d:	80 3a 00             	cmp    BYTE PTR [edx],0x0
 8049da0:	74 06                	je     8049da8 <strnlen+0x11>
 8049da2:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
 8049da6:	75 07                	jne    8049daf <strnlen+0x18>
 8049da8:	b8 00 00 00 00       	mov    eax,0x0
 8049dad:	5d                   	pop    ebp
 8049dae:	c3                   	ret
 8049daf:	b8 00 00 00 00       	mov    eax,0x0
 8049db4:	40                   	inc    eax
 8049db5:	80 3c 02 00          	cmp    BYTE PTR [edx+eax*1],0x0
 8049db9:	74 f2                	je     8049dad <strnlen+0x16>
 8049dbb:	3b 45 0c             	cmp    eax,DWORD PTR [ebp+0xc]
 8049dbe:	73 ed                	jae    8049dad <strnlen+0x16>
 8049dc0:	eb f2                	jmp    8049db4 <strnlen+0x1d>

08049dc2 <strlcpy>:
 8049dc2:	55                   	push   ebp
 8049dc3:	89 e5                	mov    ebp,esp
 8049dc5:	83 ec 38             	sub    esp,0x38
 8049dc8:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 8049dcb:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 8049dce:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 8049dd1:	e8 c3 04 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8049dd6:	81 c3 2a 12 00 00    	add    ebx,0x122a
 8049ddc:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 8049ddf:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
 8049de2:	83 7d 08 00          	cmp    DWORD PTR [ebp+0x8],0x0
 8049de6:	74 21                	je     8049e09 <strlcpy+0x47>
 8049de8:	85 ff                	test   edi,edi
 8049dea:	74 51                	je     8049e3d <strlcpy+0x7b>
 8049dec:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049def:	e8 d1 fe ff ff       	call   8049cc5 <strlen>
 8049df4:	89 c3                	mov    ebx,eax
 8049df6:	85 f6                	test   esi,esi
 8049df8:	75 77                	jne    8049e71 <strlcpy+0xaf>
 8049dfa:	89 d8                	mov    eax,ebx
 8049dfc:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 8049dff:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 8049e02:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 8049e05:	89 ec                	mov    esp,ebp
 8049e07:	5d                   	pop    ebp
 8049e08:	c3                   	ret
 8049e09:	8d 83 05 fd ff ff    	lea    eax,[ebx-0x2fb]
 8049e0f:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049e13:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049e19:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049e1d:	8d 83 08 fa ff ff    	lea    eax,[ebx-0x5f8]
 8049e23:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049e27:	c7 44 24 04 4a 01 00 	mov    DWORD PTR [esp+0x4],0x14a
 8049e2e:	00 
 8049e2f:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049e35:	89 04 24             	mov    DWORD PTR [esp],eax
 8049e38:	e8 7d e5 ff ff       	call   80483ba <debug_panic>
 8049e3d:	8d 83 11 fd ff ff    	lea    eax,[ebx-0x2ef]
 8049e43:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049e47:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049e4d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049e51:	8d 83 08 fa ff ff    	lea    eax,[ebx-0x5f8]
 8049e57:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049e5b:	c7 44 24 04 4b 01 00 	mov    DWORD PTR [esp+0x4],0x14b
 8049e62:	00 
 8049e63:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049e69:	89 04 24             	mov    DWORD PTR [esp],eax
 8049e6c:	e8 49 e5 ff ff       	call   80483ba <debug_panic>
 8049e71:	4e                   	dec    esi
 8049e72:	39 c6                	cmp    esi,eax
 8049e74:	0f 47 f0             	cmova  esi,eax
 8049e77:	89 74 24 08          	mov    DWORD PTR [esp+0x8],esi
 8049e7b:	89 7c 24 04          	mov    DWORD PTR [esp+0x4],edi
 8049e7f:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049e82:	89 04 24             	mov    DWORD PTR [esp],eax
 8049e85:	e8 66 f7 ff ff       	call   80495f0 <memcpy>
 8049e8a:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049e8d:	c6 04 30 00          	mov    BYTE PTR [eax+esi*1],0x0
 8049e91:	e9 64 ff ff ff       	jmp    8049dfa <strlcpy+0x38>

08049e96 <strlcat>:
 8049e96:	55                   	push   ebp
 8049e97:	89 e5                	mov    ebp,esp
 8049e99:	83 ec 48             	sub    esp,0x48
 8049e9c:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 8049e9f:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 8049ea2:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 8049ea5:	e8 ef 03 00 00       	call   804a299 <__x86.get_pc_thunk.bx>
 8049eaa:	81 c3 56 11 00 00    	add    ebx,0x1156
 8049eb0:	8b 7d 08             	mov    edi,DWORD PTR [ebp+0x8]
 8049eb3:	85 ff                	test   edi,edi
 8049eb5:	74 32                	je     8049ee9 <strlcat+0x53>
 8049eb7:	83 7d 0c 00          	cmp    DWORD PTR [ebp+0xc],0x0
 8049ebb:	74 60                	je     8049f1d <strlcat+0x87>
 8049ebd:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
 8049ec0:	89 04 24             	mov    DWORD PTR [esp],eax
 8049ec3:	e8 fd fd ff ff       	call   8049cc5 <strlen>
 8049ec8:	89 c3                	mov    ebx,eax
 8049eca:	89 3c 24             	mov    DWORD PTR [esp],edi
 8049ecd:	e8 f3 fd ff ff       	call   8049cc5 <strlen>
 8049ed2:	89 c6                	mov    esi,eax
 8049ed4:	3b 45 10             	cmp    eax,DWORD PTR [ebp+0x10]
 8049ed7:	72 78                	jb     8049f51 <strlcat+0xbb>
 8049ed9:	8d 04 33             	lea    eax,[ebx+esi*1]
 8049edc:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 8049edf:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 8049ee2:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 8049ee5:	89 ec                	mov    esp,ebp
 8049ee7:	5d                   	pop    ebp
 8049ee8:	c3                   	ret
 8049ee9:	8d 83 05 fd ff ff    	lea    eax,[ebx-0x2fb]
 8049eef:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049ef3:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049ef9:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049efd:	8d 83 00 fa ff ff    	lea    eax,[ebx-0x600]
 8049f03:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049f07:	c7 44 24 04 68 01 00 	mov    DWORD PTR [esp+0x4],0x168
 8049f0e:	00 
 8049f0f:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049f15:	89 04 24             	mov    DWORD PTR [esp],eax
 8049f18:	e8 9d e4 ff ff       	call   80483ba <debug_panic>
 8049f1d:	8d 83 11 fd ff ff    	lea    eax,[ebx-0x2ef]
 8049f23:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
 8049f27:	8d 83 35 fc ff ff    	lea    eax,[ebx-0x3cb]
 8049f2d:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
 8049f31:	8d 83 00 fa ff ff    	lea    eax,[ebx-0x600]
 8049f37:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049f3b:	c7 44 24 04 69 01 00 	mov    DWORD PTR [esp+0x4],0x169
 8049f42:	00 
 8049f43:	8d 83 4c fc ff ff    	lea    eax,[ebx-0x3b4]
 8049f49:	89 04 24             	mov    DWORD PTR [esp],eax
 8049f4c:	e8 69 e4 ff ff       	call   80483ba <debug_panic>
 8049f51:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 8049f54:	48                   	dec    eax
 8049f55:	29 f0                	sub    eax,esi
 8049f57:	39 d8                	cmp    eax,ebx
 8049f59:	0f 47 c3             	cmova  eax,ebx
 8049f5c:	89 45 e4             	mov    DWORD PTR [ebp-0x1c],eax
 8049f5f:	89 44 24 08          	mov    DWORD PTR [esp+0x8],eax
 8049f63:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8049f66:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 8049f6a:	8d 04 37             	lea    eax,[edi+esi*1]
 8049f6d:	89 04 24             	mov    DWORD PTR [esp],eax
 8049f70:	e8 7b f6 ff ff       	call   80495f0 <memcpy>
 8049f75:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 8049f78:	01 c7                	add    edi,eax
 8049f7a:	c6 04 37 00          	mov    BYTE PTR [edi+esi*1],0x0
 8049f7e:	e9 56 ff ff ff       	jmp    8049ed9 <strlcat+0x43>

08049f83 <udiv64>:
 8049f83:	55                   	push   ebp
 8049f84:	89 e5                	mov    ebp,esp
 8049f86:	83 ec 28             	sub    esp,0x28
 8049f89:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 8049f8c:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 8049f8f:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 8049f92:	89 45 e0             	mov    DWORD PTR [ebp-0x20],eax
 8049f95:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
 8049f98:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 8049f9b:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 8049f9e:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
 8049fa1:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
 8049fa4:	89 d0                	mov    eax,edx
 8049fa6:	b9 00 00 00 00       	mov    ecx,0x0
 8049fab:	09 c8                	or     eax,ecx
 8049fad:	0f 84 ec 00 00 00    	je     804a09f <udiv64+0x11c>
 8049fb3:	8b 5d e0             	mov    ebx,DWORD PTR [ebp-0x20]
 8049fb6:	8b 75 e4             	mov    esi,DWORD PTR [ebp-0x1c]
 8049fb9:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 8049fbc:	39 c3                	cmp    ebx,eax
 8049fbe:	89 f0                	mov    eax,esi
 8049fc0:	1b 45 ec             	sbb    eax,DWORD PTR [ebp-0x14]
 8049fc3:	c7 45 d8 00 00 00 00 	mov    DWORD PTR [ebp-0x28],0x0
 8049fca:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [ebp-0x24],0x0
 8049fd1:	0f 82 f7 00 00 00    	jb     804a0ce <udiv64+0x14b>
 8049fd7:	89 d0                	mov    eax,edx
 8049fd9:	b9 00 00 00 00       	mov    ecx,0x0
 8049fde:	81 fa ff ff 00 00    	cmp    edx,0xffff
 8049fe4:	77 08                	ja     8049fee <udiv64+0x6b>
 8049fe6:	c1 e0 10             	shl    eax,0x10
 8049fe9:	b9 10 00 00 00       	mov    ecx,0x10
 8049fee:	3d ff ff ff 00       	cmp    eax,0xffffff
 8049ff3:	77 06                	ja     8049ffb <udiv64+0x78>
 8049ff5:	83 c1 08             	add    ecx,0x8
 8049ff8:	c1 e0 08             	shl    eax,0x8
 8049ffb:	3d ff ff ff 0f       	cmp    eax,0xfffffff
 804a000:	77 06                	ja     804a008 <udiv64+0x85>
 804a002:	83 c1 04             	add    ecx,0x4
 804a005:	c1 e0 04             	shl    eax,0x4
 804a008:	3d ff ff ff 3f       	cmp    eax,0x3fffffff
 804a00d:	77 06                	ja     804a015 <udiv64+0x92>
 804a00f:	83 c1 02             	add    ecx,0x2
 804a012:	c1 e0 02             	shl    eax,0x2
 804a015:	3d 00 00 00 80       	cmp    eax,0x80000000
 804a01a:	83 d1 00             	adc    ecx,0x0
 804a01d:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 804a020:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
 804a023:	89 d3                	mov    ebx,edx
 804a025:	d1 eb                	shr    ebx,1
 804a027:	0f ac d0 01          	shrd   eax,edx,0x1
 804a02b:	d1 ea                	shr    edx,1
 804a02d:	8b 75 e8             	mov    esi,DWORD PTR [ebp-0x18]
 804a030:	8b 7d ec             	mov    edi,DWORD PTR [ebp-0x14]
 804a033:	0f a5 f7             	shld   edi,esi,cl
 804a036:	d3 e6                	shl    esi,cl
 804a038:	f6 c1 20             	test   cl,0x20
 804a03b:	74 04                	je     804a041 <udiv64+0xbe>
 804a03d:	89 f7                	mov    edi,esi
 804a03f:	31 f6                	xor    esi,esi
 804a041:	89 da                	mov    edx,ebx
 804a043:	f7 f7                	div    edi
 804a045:	ba 1f 00 00 00       	mov    edx,0x1f
 804a04a:	29 ca                	sub    edx,ecx
 804a04c:	88 d1                	mov    cl,dl
 804a04e:	d3 e8                	shr    eax,cl
 804a050:	89 c6                	mov    esi,eax
 804a052:	bf 00 00 00 00       	mov    edi,0x0
 804a057:	89 fa                	mov    edx,edi
 804a059:	83 c0 ff             	add    eax,0xffffffff
 804a05c:	83 d2 ff             	adc    edx,0xffffffff
 804a05f:	89 d3                	mov    ebx,edx
 804a061:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
 804a064:	0f af d9             	imul   ebx,ecx
 804a067:	89 d9                	mov    ecx,ebx
 804a069:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
 804a06c:	89 55 dc             	mov    DWORD PTR [ebp-0x24],edx
 804a06f:	89 c3                	mov    ebx,eax
 804a071:	8b 45 ec             	mov    eax,DWORD PTR [ebp-0x14]
 804a074:	0f af d8             	imul   ebx,eax
 804a077:	01 d9                	add    ecx,ebx
 804a079:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
 804a07c:	f7 65 e8             	mul    DWORD PTR [ebp-0x18]
 804a07f:	01 ca                	add    edx,ecx
 804a081:	8b 4d e0             	mov    ecx,DWORD PTR [ebp-0x20]
 804a084:	8b 5d e4             	mov    ebx,DWORD PTR [ebp-0x1c]
 804a087:	29 c1                	sub    ecx,eax
 804a089:	19 d3                	sbb    ebx,edx
 804a08b:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 804a08e:	39 c1                	cmp    ecx,eax
 804a090:	89 d8                	mov    eax,ebx
 804a092:	1b 45 ec             	sbb    eax,DWORD PTR [ebp-0x14]
 804a095:	72 37                	jb     804a0ce <udiv64+0x14b>
 804a097:	89 75 d8             	mov    DWORD PTR [ebp-0x28],esi
 804a09a:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
 804a09d:	eb 2f                	jmp    804a0ce <udiv64+0x14b>
 804a09f:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 804a0a2:	8b 7d e8             	mov    edi,DWORD PTR [ebp-0x18]
 804a0a5:	ba 00 00 00 00       	mov    edx,0x0
 804a0aa:	f7 f7                	div    edi
 804a0ac:	89 d1                	mov    ecx,edx
 804a0ae:	89 c7                	mov    edi,eax
 804a0b0:	bb 00 00 00 00       	mov    ebx,0x0
 804a0b5:	89 cb                	mov    ebx,ecx
 804a0b7:	31 c9                	xor    ecx,ecx
 804a0b9:	8b 45 e0             	mov    eax,DWORD PTR [ebp-0x20]
 804a0bc:	ba 00 00 00 00       	mov    edx,0x0
 804a0c1:	01 c8                	add    eax,ecx
 804a0c3:	11 da                	adc    edx,ebx
 804a0c5:	f7 75 e8             	div    DWORD PTR [ebp-0x18]
 804a0c8:	89 45 d8             	mov    DWORD PTR [ebp-0x28],eax
 804a0cb:	89 7d dc             	mov    DWORD PTR [ebp-0x24],edi
 804a0ce:	8b 45 d8             	mov    eax,DWORD PTR [ebp-0x28]
 804a0d1:	8b 55 dc             	mov    edx,DWORD PTR [ebp-0x24]
 804a0d4:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 804a0d7:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 804a0da:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 804a0dd:	89 ec                	mov    esp,ebp
 804a0df:	5d                   	pop    ebp
 804a0e0:	c3                   	ret

0804a0e1 <__divdi3>:
 804a0e1:	55                   	push   ebp
 804a0e2:	89 e5                	mov    ebp,esp
 804a0e4:	83 ec 20             	sub    esp,0x20
 804a0e7:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 804a0ea:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 804a0ed:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 804a0f0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 804a0f3:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 804a0f6:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804a0f9:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
 804a0fc:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
 804a0ff:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
 804a102:	89 f0                	mov    eax,esi
 804a104:	89 fa                	mov    edx,edi
 804a106:	85 ff                	test   edi,edi
 804a108:	78 2a                	js     804a134 <__divdi3+0x53>
 804a10a:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
 804a10d:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
 804a110:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
 804a114:	78 27                	js     804a13d <__divdi3+0x5c>
 804a116:	89 0c 24             	mov    DWORD PTR [esp],ecx
 804a119:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
 804a11d:	e8 61 fe ff ff       	call   8049f83 <udiv64>
 804a122:	33 7d ec             	xor    edi,DWORD PTR [ebp-0x14]
 804a125:	78 1f                	js     804a146 <__divdi3+0x65>
 804a127:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 804a12a:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 804a12d:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 804a130:	89 ec                	mov    esp,ebp
 804a132:	5d                   	pop    ebp
 804a133:	c3                   	ret
 804a134:	f7 d8                	neg    eax
 804a136:	83 d2 00             	adc    edx,0x0
 804a139:	f7 da                	neg    edx
 804a13b:	eb cd                	jmp    804a10a <__divdi3+0x29>
 804a13d:	f7 d9                	neg    ecx
 804a13f:	83 d3 00             	adc    ebx,0x0
 804a142:	f7 db                	neg    ebx
 804a144:	eb d0                	jmp    804a116 <__divdi3+0x35>
 804a146:	f7 d8                	neg    eax
 804a148:	83 d2 00             	adc    edx,0x0
 804a14b:	f7 da                	neg    edx
 804a14d:	eb d8                	jmp    804a127 <__divdi3+0x46>

0804a14f <__moddi3>:
 804a14f:	55                   	push   ebp
 804a150:	89 e5                	mov    ebp,esp
 804a152:	83 ec 28             	sub    esp,0x28
 804a155:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 804a158:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 804a15b:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 804a15e:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
 804a161:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 804a164:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804a167:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
 804a16a:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
 804a16d:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
 804a170:	89 75 e4             	mov    DWORD PTR [ebp-0x1c],esi
 804a173:	89 f1                	mov    ecx,esi
 804a175:	89 fb                	mov    ebx,edi
 804a177:	85 ff                	test   edi,edi
 804a179:	78 3c                	js     804a1b7 <__moddi3+0x68>
 804a17b:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 804a17e:	8b 55 ec             	mov    edx,DWORD PTR [ebp-0x14]
 804a181:	83 7d ec 00          	cmp    DWORD PTR [ebp-0x14],0x0
 804a185:	78 39                	js     804a1c0 <__moddi3+0x71>
 804a187:	89 04 24             	mov    DWORD PTR [esp],eax
 804a18a:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 804a18e:	89 c8                	mov    eax,ecx
 804a190:	89 da                	mov    edx,ebx
 804a192:	e8 ec fd ff ff       	call   8049f83 <udiv64>
 804a197:	33 7d ec             	xor    edi,DWORD PTR [ebp-0x14]
 804a19a:	89 c1                	mov    ecx,eax
 804a19c:	78 2b                	js     804a1c9 <__moddi3+0x7a>
 804a19e:	8b 45 e8             	mov    eax,DWORD PTR [ebp-0x18]
 804a1a1:	0f af c8             	imul   ecx,eax
 804a1a4:	8b 45 e4             	mov    eax,DWORD PTR [ebp-0x1c]
 804a1a7:	29 c8                	sub    eax,ecx
 804a1a9:	99                   	cdq
 804a1aa:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 804a1ad:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 804a1b0:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 804a1b3:	89 ec                	mov    esp,ebp
 804a1b5:	5d                   	pop    ebp
 804a1b6:	c3                   	ret
 804a1b7:	f7 d9                	neg    ecx
 804a1b9:	83 d3 00             	adc    ebx,0x0
 804a1bc:	f7 db                	neg    ebx
 804a1be:	eb bb                	jmp    804a17b <__moddi3+0x2c>
 804a1c0:	f7 d8                	neg    eax
 804a1c2:	83 d2 00             	adc    edx,0x0
 804a1c5:	f7 da                	neg    edx
 804a1c7:	eb be                	jmp    804a187 <__moddi3+0x38>
 804a1c9:	f7 d8                	neg    eax
 804a1cb:	89 c1                	mov    ecx,eax
 804a1cd:	eb cf                	jmp    804a19e <__moddi3+0x4f>

0804a1cf <__udivdi3>:
 804a1cf:	55                   	push   ebp
 804a1d0:	89 e5                	mov    ebp,esp
 804a1d2:	83 ec 08             	sub    esp,0x8
 804a1d5:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 804a1d8:	8b 55 14             	mov    edx,DWORD PTR [ebp+0x14]
 804a1db:	89 04 24             	mov    DWORD PTR [esp],eax
 804a1de:	89 54 24 04          	mov    DWORD PTR [esp+0x4],edx
 804a1e2:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804a1e5:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804a1e8:	e8 96 fd ff ff       	call   8049f83 <udiv64>
 804a1ed:	89 ec                	mov    esp,ebp
 804a1ef:	5d                   	pop    ebp
 804a1f0:	c3                   	ret

0804a1f1 <__umoddi3>:
 804a1f1:	55                   	push   ebp
 804a1f2:	89 e5                	mov    ebp,esp
 804a1f4:	83 ec 10             	sub    esp,0x10
 804a1f7:	89 5d f8             	mov    DWORD PTR [ebp-0x8],ebx
 804a1fa:	89 75 fc             	mov    DWORD PTR [ebp-0x4],esi
 804a1fd:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
 804a200:	8b 75 10             	mov    esi,DWORD PTR [ebp+0x10]
 804a203:	89 34 24             	mov    DWORD PTR [esp],esi
 804a206:	8b 45 14             	mov    eax,DWORD PTR [ebp+0x14]
 804a209:	89 44 24 04          	mov    DWORD PTR [esp+0x4],eax
 804a20d:	89 d8                	mov    eax,ebx
 804a20f:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804a212:	e8 6c fd ff ff       	call   8049f83 <udiv64>
 804a217:	0f af c6             	imul   eax,esi
 804a21a:	89 c2                	mov    edx,eax
 804a21c:	89 d8                	mov    eax,ebx
 804a21e:	29 d0                	sub    eax,edx
 804a220:	ba 00 00 00 00       	mov    edx,0x0
 804a225:	8b 5d f8             	mov    ebx,DWORD PTR [ebp-0x8]
 804a228:	8b 75 fc             	mov    esi,DWORD PTR [ebp-0x4]
 804a22b:	89 ec                	mov    esp,ebp
 804a22d:	5d                   	pop    ebp
 804a22e:	c3                   	ret

0804a22f <__udivmoddi4>:
 804a22f:	55                   	push   ebp
 804a230:	89 e5                	mov    ebp,esp
 804a232:	83 ec 28             	sub    esp,0x28
 804a235:	89 5d f4             	mov    DWORD PTR [ebp-0xc],ebx
 804a238:	89 75 f8             	mov    DWORD PTR [ebp-0x8],esi
 804a23b:	89 7d fc             	mov    DWORD PTR [ebp-0x4],edi
 804a23e:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
 804a241:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
 804a244:	8b 7d 10             	mov    edi,DWORD PTR [ebp+0x10]
 804a247:	8b 5d 14             	mov    ebx,DWORD PTR [ebp+0x14]
 804a24a:	89 3c 24             	mov    DWORD PTR [esp],edi
 804a24d:	89 5c 24 04          	mov    DWORD PTR [esp+0x4],ebx
 804a251:	89 45 e8             	mov    DWORD PTR [ebp-0x18],eax
 804a254:	89 55 ec             	mov    DWORD PTR [ebp-0x14],edx
 804a257:	e8 27 fd ff ff       	call   8049f83 <udiv64>
 804a25c:	89 c6                	mov    esi,eax
 804a25e:	0f af d8             	imul   ebx,eax
 804a261:	89 55 e4             	mov    DWORD PTR [ebp-0x1c],edx
 804a264:	89 d0                	mov    eax,edx
 804a266:	0f af c7             	imul   eax,edi
 804a269:	01 c3                	add    ebx,eax
 804a26b:	89 f8                	mov    eax,edi
 804a26d:	f7 e6                	mul    esi
 804a26f:	01 da                	add    edx,ebx
 804a271:	8b 4d e8             	mov    ecx,DWORD PTR [ebp-0x18]
 804a274:	8b 5d ec             	mov    ebx,DWORD PTR [ebp-0x14]
 804a277:	29 c1                	sub    ecx,eax
 804a279:	19 d3                	sbb    ebx,edx
 804a27b:	8b 45 18             	mov    eax,DWORD PTR [ebp+0x18]
 804a27e:	89 08                	mov    DWORD PTR [eax],ecx
 804a280:	89 58 04             	mov    DWORD PTR [eax+0x4],ebx
 804a283:	89 f0                	mov    eax,esi
 804a285:	8b 55 e4             	mov    edx,DWORD PTR [ebp-0x1c]
 804a288:	8b 5d f4             	mov    ebx,DWORD PTR [ebp-0xc]
 804a28b:	8b 75 f8             	mov    esi,DWORD PTR [ebp-0x8]
 804a28e:	8b 7d fc             	mov    edi,DWORD PTR [ebp-0x4]
 804a291:	89 ec                	mov    esp,ebp
 804a293:	5d                   	pop    ebp
 804a294:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.dx:

0804a295 <__x86.get_pc_thunk.dx>:
 804a295:	8b 14 24             	mov    edx,DWORD PTR [esp]
 804a298:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.bx:

0804a299 <__x86.get_pc_thunk.bx>:
 804a299:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 804a29c:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.di:

0804a29d <__x86.get_pc_thunk.di>:
 804a29d:	8b 3c 24             	mov    edi,DWORD PTR [esp]
 804a2a0:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.ax:

0804a2a1 <__x86.get_pc_thunk.ax>:
 804a2a1:	8b 04 24             	mov    eax,DWORD PTR [esp]
 804a2a4:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.cx:

0804a2a5 <__x86.get_pc_thunk.cx>:
 804a2a5:	8b 0c 24             	mov    ecx,DWORD PTR [esp]
 804a2a8:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.si:

0804a2a9 <__x86.get_pc_thunk.si>:
 804a2a9:	8b 34 24             	mov    esi,DWORD PTR [esp]
 804a2ac:	c3                   	ret

Disassembly of section .rodata:

0804a2b0 <__func__.0>:
 804a2b0:	65 78 69             	gs js  804a31c <__func__.1+0x64>
 804a2b3:	74 00                	je     804a2b5 <__func__.0+0x5>
 804a2b5:	00 00                	add    BYTE PTR [eax],al
	...

0804a2b8 <__func__.1>:
 804a2b8:	68 61 6c 74 00       	push   0x746c61
 804a2bd:	00 00                	add    BYTE PTR [eax],al
 804a2bf:	00 52 db             	add    BYTE PTR [edx-0x25],dl
 804a2c2:	ff                   	(bad)
 804a2c3:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2c6:	ff                   	(bad)
 804a2c7:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2ca:	ff                   	(bad)
 804a2cb:	ff 58 db             	call   FWORD PTR [eax-0x25]
 804a2ce:	ff                   	(bad)
 804a2cf:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2d2:	ff                   	(bad)
 804a2d3:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2d6:	ff                   	(bad)
 804a2d7:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2da:	ff                   	(bad)
 804a2db:	ff 64 db ff          	jmp    DWORD PTR [ebx+ebx*8-0x1]
 804a2df:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2e2:	ff                   	(bad)
 804a2e3:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2e6:	ff                   	(bad)
 804a2e7:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2ea:	ff                   	(bad)
 804a2eb:	ff 4c db ff          	dec    DWORD PTR [ebx+ebx*8-0x1]
 804a2ef:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2f2:	ff                   	(bad)
 804a2f3:	ff 23                	jmp    DWORD PTR [ebx]
 804a2f5:	db ff                	(bad)
 804a2f7:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2fa:	ff                   	(bad)
 804a2fb:	ff 6a db             	jmp    FWORD PTR [edx-0x25]
 804a2fe:	ff                   	(bad)
 804a2ff:	ff 5e db             	call   FWORD PTR [esi-0x25]
 804a302:	ff                   	(bad)
 804a303:	ff 87 dc ff ff a6    	inc    DWORD PTR [edi-0x59000024]
 804a309:	dd ff                	(bad)
 804a30b:	ff                   	call   (bad)
 804a30c:	dc dc                	(bad)
 804a30e:	ff                   	(bad)
 804a30f:	ff a6 dd ff ff 03    	jmp    DWORD PTR [esi+0x3ffffdd]
 804a315:	dd ff                	(bad)
 804a317:	ff a6 dd ff ff a6    	jmp    DWORD PTR [esi-0x59000023]
 804a31d:	dd ff                	(bad)
 804a31f:	ff a6 dd ff ff a6    	jmp    DWORD PTR [esi-0x59000023]
 804a325:	dd ff                	(bad)
 804a327:	ff a6 dd ff ff a6    	jmp    DWORD PTR [esi-0x59000023]
 804a32d:	dd ff                	(bad)
 804a32f:	ff a6 dd ff ff 58    	jmp    DWORD PTR [esi+0x58ffffdd]
 804a335:	dd ff                	(bad)
 804a337:	ff a6 dd ff ff a6    	jmp    DWORD PTR [esi-0x59000023]
 804a33d:	dd ff                	(bad)
 804a33f:	ff a6 dd ff ff a6    	jmp    DWORD PTR [esi-0x59000023]
 804a345:	dd ff                	(bad)
 804a347:	ff a6 dd ff ff 7f    	jmp    DWORD PTR [esi+0x7fffffdd]
 804a34d:	dd ff                	(bad)
 804a34f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a352:	ff                   	(bad)
 804a353:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a356:	ff                   	(bad)
 804a357:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a35a:	ff                   	(bad)
 804a35b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a35e:	ff                   	(bad)
 804a35f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a362:	ff                   	(bad)
 804a363:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a366:	ff                   	(bad)
 804a367:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a36a:	ff                   	(bad)
 804a36b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a36e:	ff                   	(bad)
 804a36f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a372:	ff                   	(bad)
 804a373:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a376:	ff                   	(bad)
 804a377:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a37a:	ff                   	(bad)
 804a37b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a37e:	ff                   	(bad)
 804a37f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a382:	ff                   	(bad)
 804a383:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a386:	ff                   	(bad)
 804a387:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a38a:	ff                   	(bad)
 804a38b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a38e:	ff                   	(bad)
 804a38f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a392:	ff                   	(bad)
 804a393:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a396:	ff                   	(bad)
 804a397:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a39a:	ff                   	(bad)
 804a39b:	ff d0                	call   eax
 804a39d:	df ff                	(bad)
 804a39f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3a2:	ff                   	(bad)
 804a3a3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3a6:	ff                   	(bad)
 804a3a7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3aa:	ff                   	(bad)
 804a3ab:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3ae:	ff                   	(bad)
 804a3af:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3b2:	ff                   	(bad)
 804a3b3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3b6:	ff                   	(bad)
 804a3b7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3ba:	ff                   	(bad)
 804a3bb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3be:	ff                   	(bad)
 804a3bf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3c2:	ff                   	(bad)
 804a3c3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3c6:	ff                   	(bad)
 804a3c7:	ff 05 e1 ff ff c6    	inc    DWORD PTR ds:0xc6ffffe1
 804a3cd:	dd ff                	(bad)
 804a3cf:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a3d2:	ff                   	(bad)
 804a3d3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a3d6:	ff                   	(bad)
 804a3d7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a3da:	ff                   	(bad)
 804a3db:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3de:	ff                   	(bad)
 804a3df:	ff c6                	inc    esi
 804a3e1:	dd ff                	(bad)
 804a3e3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3e6:	ff                   	(bad)
 804a3e7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3ea:	ff                   	(bad)
 804a3eb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3ee:	ff                   	(bad)
 804a3ef:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a3f2:	ff                   	(bad)
 804a3f3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a3f6:	ff                   	(bad)
 804a3f7:	ff d0                	call   eax
 804a3f9:	df ff                	(bad)
 804a3fb:	ff c5                	inc    ebp
 804a3fd:	e1 ff                	loope  804a3fe <__func__.1+0x146>
 804a3ff:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a402:	ff                   	(bad)
 804a403:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a406:	ff                   	(bad)
 804a407:	ff 52 e1             	call   DWORD PTR [edx-0x1f]
 804a40a:	ff                   	(bad)
 804a40b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a40e:	ff                   	(bad)
 804a40f:	ff d0                	call   eax
 804a411:	df ff                	(bad)
 804a413:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a416:	ff                   	(bad)
 804a417:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a41a:	ff                   	(bad)
 804a41b:	ff d0                	call   eax
 804a41d:	df ff                	(bad)
 804a41f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a422:	ff                   	(bad)
 804a423:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a426:	ff                   	(bad)
 804a427:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a42a:	ff                   	(bad)
 804a42b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a42e:	ff                   	(bad)
 804a42f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a432:	ff                   	(bad)
 804a433:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a436:	ff                   	(bad)
 804a437:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a43a:	ff                   	(bad)
 804a43b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a43e:	ff                   	(bad)
 804a43f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a442:	ff                   	(bad)
 804a443:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a446:	ff                   	(bad)
 804a447:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a44a:	ff                   	(bad)
 804a44b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a44e:	ff                   	(bad)
 804a44f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a452:	ff                   	(bad)
 804a453:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a456:	ff                   	(bad)
 804a457:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a45a:	ff                   	(bad)
 804a45b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a45e:	ff                   	(bad)
 804a45f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a462:	ff                   	(bad)
 804a463:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a466:	ff                   	(bad)
 804a467:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a46a:	ff                   	(bad)
 804a46b:	ff b3 df ff ff 58    	push   DWORD PTR [ebx+0x58ffffdf]
 804a471:	e2 ff                	loop   804a472 <__func__.1+0x1ba>
 804a473:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a476:	ff                   	(bad)
 804a477:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a47a:	ff                   	(bad)
 804a47b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a47e:	ff                   	(bad)
 804a47f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a482:	ff                   	(bad)
 804a483:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a486:	ff                   	(bad)
 804a487:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a48a:	ff                   	(bad)
 804a48b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a48e:	ff                   	(bad)
 804a48f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a492:	ff                   	(bad)
 804a493:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a496:	ff                   	(bad)
 804a497:	ff 01                	inc    DWORD PTR [ecx]
 804a499:	e1 ff                	loope  804a49a <__func__.1+0x1e2>
 804a49b:	ff c2                	inc    edx
 804a49d:	dd ff                	(bad)
 804a49f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a4a2:	ff                   	(bad)
 804a4a3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a4a6:	ff                   	(bad)
 804a4a7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a4aa:	ff                   	(bad)
 804a4ab:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4ae:	ff                   	(bad)
 804a4af:	ff c2                	inc    edx
 804a4b1:	dd ff                	(bad)
 804a4b3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4b6:	ff                   	(bad)
 804a4b7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4ba:	ff                   	(bad)
 804a4bb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4be:	ff                   	(bad)
 804a4bf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4c2:	ff                   	(bad)
 804a4c3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a4c6:	ff                   	(bad)
 804a4c7:	ff b3 df ff ff c1    	push   DWORD PTR [ebx-0x3e000021]
 804a4cd:	e1 ff                	loope  804a4ce <__func__.1+0x216>
 804a4cf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4d2:	ff                   	(bad)
 804a4d3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4d6:	ff                   	(bad)
 804a4d7:	ff 4b e1             	dec    DWORD PTR [ebx-0x1f]
 804a4da:	ff                   	(bad)
 804a4db:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4de:	ff                   	(bad)
 804a4df:	ff b3 df ff ff 58    	push   DWORD PTR [ebx+0x58ffffdf]
 804a4e5:	e2 ff                	loop   804a4e6 <__func__.1+0x22e>
 804a4e7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4ea:	ff                   	(bad)
 804a4eb:	ff b3 df ff ff 2c    	push   DWORD PTR [ebx+0x2cffffdf]
 804a4f1:	e2 ff                	loop   804a4f2 <__func__.1+0x23a>
 804a4f3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4f6:	ff                   	(bad)
 804a4f7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a4fa:	ff                   	(bad)
 804a4fb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a4fe:	ff                   	(bad)
 804a4ff:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a502:	ff                   	(bad)
 804a503:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a506:	ff                   	(bad)
 804a507:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a50a:	ff                   	(bad)
 804a50b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a50e:	ff                   	(bad)
 804a50f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a512:	ff                   	(bad)
 804a513:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a516:	ff                   	(bad)
 804a517:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a51a:	ff                   	(bad)
 804a51b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a51e:	ff                   	(bad)
 804a51f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a522:	ff                   	(bad)
 804a523:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a526:	ff                   	(bad)
 804a527:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a52a:	ff                   	(bad)
 804a52b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a52e:	ff                   	(bad)
 804a52f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a532:	ff                   	(bad)
 804a533:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a536:	ff                   	(bad)
 804a537:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a53a:	ff                   	(bad)
 804a53b:	ff                   	jmp    (bad)
 804a53c:	ed                   	in     eax,dx
 804a53d:	df ff                	(bad)
 804a53f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a542:	ff                   	(bad)
 804a543:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a546:	ff                   	(bad)
 804a547:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a54a:	ff                   	(bad)
 804a54b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a54e:	ff                   	(bad)
 804a54f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a552:	ff                   	(bad)
 804a553:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a556:	ff                   	(bad)
 804a557:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a55a:	ff                   	(bad)
 804a55b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a55e:	ff                   	(bad)
 804a55f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a562:	ff                   	(bad)
 804a563:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a566:	ff                   	(bad)
 804a567:	ff 09                	dec    DWORD PTR [ecx]
 804a569:	e1 ff                	loope  804a56a <__func__.1+0x2b2>
 804a56b:	ff ca                	dec    edx
 804a56d:	dd ff                	(bad)
 804a56f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a572:	ff                   	(bad)
 804a573:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a576:	ff                   	(bad)
 804a577:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a57a:	ff                   	(bad)
 804a57b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a57e:	ff                   	(bad)
 804a57f:	ff ca                	dec    edx
 804a581:	dd ff                	(bad)
 804a583:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a586:	ff                   	(bad)
 804a587:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a58a:	ff                   	(bad)
 804a58b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a58e:	ff                   	(bad)
 804a58f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a592:	ff                   	(bad)
 804a593:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a596:	ff                   	(bad)
 804a597:	ff                   	jmp    (bad)
 804a598:	ed                   	in     eax,dx
 804a599:	df ff                	(bad)
 804a59b:	ff c9                	dec    ecx
 804a59d:	e1 ff                	loope  804a59e <__func__.1+0x2e6>
 804a59f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5a2:	ff                   	(bad)
 804a5a3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5a6:	ff                   	(bad)
 804a5a7:	ff 56 e1             	call   DWORD PTR [esi-0x1f]
 804a5aa:	ff                   	(bad)
 804a5ab:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5ae:	ff                   	(bad)
 804a5af:	ff                   	jmp    (bad)
 804a5b0:	ed                   	in     eax,dx
 804a5b1:	df ff                	(bad)
 804a5b3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5b6:	ff                   	(bad)
 804a5b7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5ba:	ff                   	(bad)
 804a5bb:	ff                   	jmp    (bad)
 804a5bc:	ed                   	in     eax,dx
 804a5bd:	df ff                	(bad)
 804a5bf:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a5c2:	ff                   	(bad)
 804a5c3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5c6:	ff                   	(bad)
 804a5c7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a5ca:	ff                   	(bad)
 804a5cb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5ce:	ff                   	(bad)
 804a5cf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5d2:	ff                   	(bad)
 804a5d3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5d6:	ff                   	(bad)
 804a5d7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5da:	ff                   	(bad)
 804a5db:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5de:	ff                   	(bad)
 804a5df:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5e2:	ff                   	(bad)
 804a5e3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5e6:	ff                   	(bad)
 804a5e7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5ea:	ff                   	(bad)
 804a5eb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5ee:	ff                   	(bad)
 804a5ef:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5f2:	ff                   	(bad)
 804a5f3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5f6:	ff                   	(bad)
 804a5f7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5fa:	ff                   	(bad)
 804a5fb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a5fe:	ff                   	(bad)
 804a5ff:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a602:	ff                   	(bad)
 804a603:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a606:	ff                   	(bad)
 804a607:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a60a:	ff                   	(bad)
 804a60b:	ff 08                	dec    DWORD PTR [eax]
 804a60d:	e0 ff                	loopne 804a60e <__func__.1+0x356>
 804a60f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a612:	ff                   	(bad)
 804a613:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a616:	ff                   	(bad)
 804a617:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a61a:	ff                   	(bad)
 804a61b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a61e:	ff                   	(bad)
 804a61f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a622:	ff                   	(bad)
 804a623:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a626:	ff                   	(bad)
 804a627:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a62a:	ff                   	(bad)
 804a62b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a62e:	ff                   	(bad)
 804a62f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a632:	ff                   	(bad)
 804a633:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a636:	ff                   	(bad)
 804a637:	ff                   	(bad)
 804a638:	3f                   	aas
 804a639:	e1 ff                	loope  804a63a <__func__.1+0x382>
 804a63b:	ff                   	jmp    (bad)
 804a63c:	e8 dd ff ff 2c       	call   3504a61e <explained.0+0x2ccff59e>
 804a641:	e2 ff                	loop   804a642 <__func__.1+0x38a>
 804a643:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a646:	ff                   	(bad)
 804a647:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a64a:	ff                   	(bad)
 804a64b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a64e:	ff                   	(bad)
 804a64f:	ff                   	jmp    (bad)
 804a650:	e8 dd ff ff 58       	call   6104a632 <explained.0+0x58cff5b2>
 804a655:	e2 ff                	loop   804a656 <__func__.1+0x39e>
 804a657:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a65a:	ff                   	(bad)
 804a65b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a65e:	ff                   	(bad)
 804a65f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a662:	ff                   	(bad)
 804a663:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a666:	ff                   	(bad)
 804a667:	ff 08                	dec    DWORD PTR [eax]
 804a669:	e0 ff                	loopne 804a66a <__func__.1+0x3b2>
 804a66b:	ff 1b                	call   FWORD PTR [ebx]
 804a66d:	e2 ff                	loop   804a66e <__func__.1+0x3b6>
 804a66f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a672:	ff                   	(bad)
 804a673:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a676:	ff                   	(bad)
 804a677:	ff aa e1 ff ff 58    	jmp    FWORD PTR [edx+0x58ffffe1]
 804a67d:	e2 ff                	loop   804a67e <__func__.1+0x3c6>
 804a67f:	ff 08                	dec    DWORD PTR [eax]
 804a681:	e0 ff                	loopne 804a682 <__func__.1+0x3ca>
 804a683:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a686:	ff                   	(bad)
 804a687:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a68a:	ff                   	(bad)
 804a68b:	ff 08                	dec    DWORD PTR [eax]
 804a68d:	e0 ff                	loopne 804a68e <__func__.1+0x3d6>
 804a68f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a692:	ff                   	(bad)
 804a693:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a696:	ff                   	(bad)
 804a697:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a69a:	ff                   	(bad)
 804a69b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a69e:	ff                   	(bad)
 804a69f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6a2:	ff                   	(bad)
 804a6a3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6a6:	ff                   	(bad)
 804a6a7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6aa:	ff                   	(bad)
 804a6ab:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ae:	ff                   	(bad)
 804a6af:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6b2:	ff                   	(bad)
 804a6b3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6b6:	ff                   	(bad)
 804a6b7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ba:	ff                   	(bad)
 804a6bb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6be:	ff                   	(bad)
 804a6bf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6c2:	ff                   	(bad)
 804a6c3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6c6:	ff                   	(bad)
 804a6c7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ca:	ff                   	(bad)
 804a6cb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ce:	ff                   	(bad)
 804a6cf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6d2:	ff                   	(bad)
 804a6d3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6d6:	ff                   	(bad)
 804a6d7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6da:	ff                   	(bad)
 804a6db:	ff 28                	jmp    FWORD PTR [eax]
 804a6dd:	e0 ff                	loopne 804a6de <__func__.1+0x426>
 804a6df:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6e2:	ff                   	(bad)
 804a6e3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6e6:	ff                   	(bad)
 804a6e7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ea:	ff                   	(bad)
 804a6eb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6ee:	ff                   	(bad)
 804a6ef:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6f2:	ff                   	(bad)
 804a6f3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6f6:	ff                   	(bad)
 804a6f7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6fa:	ff                   	(bad)
 804a6fb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a6fe:	ff                   	(bad)
 804a6ff:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a702:	ff                   	(bad)
 804a703:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a706:	ff                   	(bad)
 804a707:	ff                   	(bad)
 804a708:	3b e1                	cmp    esp,ecx
 804a70a:	ff                   	(bad)
 804a70b:	ff e4                	jmp    esp
 804a70d:	dd ff                	(bad)
 804a70f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a712:	ff                   	(bad)
 804a713:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a716:	ff                   	(bad)
 804a717:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a71a:	ff                   	(bad)
 804a71b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a71e:	ff                   	(bad)
 804a71f:	ff e4                	jmp    esp
 804a721:	dd ff                	(bad)
 804a723:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a726:	ff                   	(bad)
 804a727:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a72a:	ff                   	(bad)
 804a72b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a72e:	ff                   	(bad)
 804a72f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a732:	ff                   	(bad)
 804a733:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a736:	ff                   	(bad)
 804a737:	ff 28                	jmp    FWORD PTR [eax]
 804a739:	e0 ff                	loopne 804a73a <__func__.1+0x482>
 804a73b:	ff 17                	call   DWORD PTR [edi]
 804a73d:	e2 ff                	loop   804a73e <__func__.1+0x486>
 804a73f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a742:	ff                   	(bad)
 804a743:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a746:	ff                   	(bad)
 804a747:	ff a6 e1 ff ff 58    	jmp    DWORD PTR [esi+0x58ffffe1]
 804a74d:	e2 ff                	loop   804a74e <__func__.1+0x496>
 804a74f:	ff 28                	jmp    FWORD PTR [eax]
 804a751:	e0 ff                	loopne 804a752 <__func__.1+0x49a>
 804a753:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a756:	ff                   	(bad)
 804a757:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a75a:	ff                   	(bad)
 804a75b:	ff 28                	jmp    FWORD PTR [eax]
 804a75d:	e0 ff                	loopne 804a75e <__func__.1+0x4a6>
 804a75f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a762:	ff                   	(bad)
 804a763:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a766:	ff                   	(bad)
 804a767:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a76a:	ff                   	(bad)
 804a76b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a76e:	ff                   	(bad)
 804a76f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a772:	ff                   	(bad)
 804a773:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a776:	ff                   	(bad)
 804a777:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a77a:	ff                   	(bad)
 804a77b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a77e:	ff                   	(bad)
 804a77f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a782:	ff                   	(bad)
 804a783:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a786:	ff                   	(bad)
 804a787:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a78a:	ff                   	(bad)
 804a78b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a78e:	ff                   	(bad)
 804a78f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a792:	ff                   	(bad)
 804a793:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a796:	ff                   	(bad)
 804a797:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a79a:	ff                   	(bad)
 804a79b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a79e:	ff                   	(bad)
 804a79f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7a2:	ff                   	(bad)
 804a7a3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7a6:	ff                   	(bad)
 804a7a7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7aa:	ff                   	(bad)
 804a7ab:	ff 46 e0             	inc    DWORD PTR [esi-0x20]
 804a7ae:	ff                   	(bad)
 804a7af:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7b2:	ff                   	(bad)
 804a7b3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7b6:	ff                   	(bad)
 804a7b7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7ba:	ff                   	(bad)
 804a7bb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7be:	ff                   	(bad)
 804a7bf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7c2:	ff                   	(bad)
 804a7c3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7c6:	ff                   	(bad)
 804a7c7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7ca:	ff                   	(bad)
 804a7cb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7ce:	ff                   	(bad)
 804a7cf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7d2:	ff                   	(bad)
 804a7d3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7d6:	ff                   	(bad)
 804a7d7:	ff 43 e1             	inc    DWORD PTR [ebx-0x1f]
 804a7da:	ff                   	(bad)
 804a7db:	ff                   	jmp    (bad)
 804a7dc:	ec                   	in     al,dx
 804a7dd:	dd ff                	(bad)
 804a7df:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a7e2:	ff                   	(bad)
 804a7e3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a7e6:	ff                   	(bad)
 804a7e7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a7ea:	ff                   	(bad)
 804a7eb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7ee:	ff                   	(bad)
 804a7ef:	ff                   	jmp    (bad)
 804a7f0:	ec                   	in     al,dx
 804a7f1:	dd ff                	(bad)
 804a7f3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7f6:	ff                   	(bad)
 804a7f7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7fa:	ff                   	(bad)
 804a7fb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a7fe:	ff                   	(bad)
 804a7ff:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a802:	ff                   	(bad)
 804a803:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a806:	ff                   	(bad)
 804a807:	ff 46 e0             	inc    DWORD PTR [esi-0x20]
 804a80a:	ff                   	(bad)
 804a80b:	ff 22                	jmp    DWORD PTR [edx]
 804a80d:	e2 ff                	loop   804a80e <__func__.1+0x556>
 804a80f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a812:	ff                   	(bad)
 804a813:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a816:	ff                   	(bad)
 804a817:	ff ae e1 ff ff 58    	jmp    FWORD PTR [esi+0x58ffffe1]
 804a81d:	e2 ff                	loop   804a81e <__func__.1+0x566>
 804a81f:	ff 46 e0             	inc    DWORD PTR [esi-0x20]
 804a822:	ff                   	(bad)
 804a823:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a826:	ff                   	(bad)
 804a827:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a82a:	ff                   	(bad)
 804a82b:	ff 46 e0             	inc    DWORD PTR [esi-0x20]
 804a82e:	ff                   	(bad)
 804a82f:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a832:	ff                   	(bad)
 804a833:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a836:	ff                   	(bad)
 804a837:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a83a:	ff                   	(bad)
 804a83b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a83e:	ff                   	(bad)
 804a83f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a842:	ff                   	(bad)
 804a843:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a846:	ff                   	(bad)
 804a847:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a84a:	ff                   	(bad)
 804a84b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a84e:	ff                   	(bad)
 804a84f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a852:	ff                   	(bad)
 804a853:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a856:	ff                   	(bad)
 804a857:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a85a:	ff                   	(bad)
 804a85b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a85e:	ff                   	(bad)
 804a85f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a862:	ff                   	(bad)
 804a863:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a866:	ff                   	(bad)
 804a867:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a86a:	ff                   	(bad)
 804a86b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a86e:	ff                   	(bad)
 804a86f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a872:	ff                   	(bad)
 804a873:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a876:	ff                   	(bad)
 804a877:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a87a:	ff                   	(bad)
 804a87b:	ff 66 e0             	jmp    DWORD PTR [esi-0x20]
 804a87e:	ff                   	(bad)
 804a87f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a882:	ff                   	(bad)
 804a883:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a886:	ff                   	(bad)
 804a887:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a88a:	ff                   	(bad)
 804a88b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a88e:	ff                   	(bad)
 804a88f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a892:	ff                   	(bad)
 804a893:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a896:	ff                   	(bad)
 804a897:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a89a:	ff                   	(bad)
 804a89b:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a89e:	ff                   	(bad)
 804a89f:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8a2:	ff                   	(bad)
 804a8a3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8a6:	ff                   	(bad)
 804a8a7:	ff 47 e1             	inc    DWORD PTR [edi-0x1f]
 804a8aa:	ff                   	(bad)
 804a8ab:	ff f2                	push   edx
 804a8ad:	dd ff                	(bad)
 804a8af:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a8b2:	ff                   	(bad)
 804a8b3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a8b6:	ff                   	(bad)
 804a8b7:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a8ba:	ff                   	(bad)
 804a8bb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8be:	ff                   	(bad)
 804a8bf:	ff f2                	push   edx
 804a8c1:	dd ff                	(bad)
 804a8c3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8c6:	ff                   	(bad)
 804a8c7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8ca:	ff                   	(bad)
 804a8cb:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8ce:	ff                   	(bad)
 804a8cf:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8d2:	ff                   	(bad)
 804a8d3:	ff 2c e2             	jmp    FWORD PTR [edx+eiz*8]
 804a8d6:	ff                   	(bad)
 804a8d7:	ff 66 e0             	jmp    DWORD PTR [esi-0x20]
 804a8da:	ff                   	(bad)
 804a8db:	ff 26                	jmp    DWORD PTR [esi]
 804a8dd:	e2 ff                	loop   804a8de <__func__.1+0x626>
 804a8df:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8e2:	ff                   	(bad)
 804a8e3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8e6:	ff                   	(bad)
 804a8e7:	ff b2 e1 ff ff 58    	push   DWORD PTR [edx+0x58ffffe1]
 804a8ed:	e2 ff                	loop   804a8ee <__func__.1+0x636>
 804a8ef:	ff 66 e0             	jmp    DWORD PTR [esi-0x20]
 804a8f2:	ff                   	(bad)
 804a8f3:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8f6:	ff                   	(bad)
 804a8f7:	ff 58 e2             	call   FWORD PTR [eax-0x1e]
 804a8fa:	ff                   	(bad)
 804a8fb:	ff 66 e0             	jmp    DWORD PTR [esi-0x20]
 804a8fe:	ff                   	(bad)
 804a8ff:	ff 2a                	jmp    FWORD PTR [edx]
 804a901:	e2 ff                	loop   804a902 <__func__.1+0x64a>
 804a903:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a906:	ff                   	(bad)
 804a907:	ff 2a                	jmp    FWORD PTR [edx]
 804a909:	e2 ff                	loop   804a90a <__func__.1+0x652>
 804a90b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a90e:	ff                   	(bad)
 804a90f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a912:	ff                   	(bad)
 804a913:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a916:	ff                   	(bad)
 804a917:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a91a:	ff                   	(bad)
 804a91b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a91e:	ff                   	(bad)
 804a91f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a922:	ff                   	(bad)
 804a923:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a926:	ff                   	(bad)
 804a927:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a92a:	ff                   	(bad)
 804a92b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a92e:	ff                   	(bad)
 804a92f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a932:	ff                   	(bad)
 804a933:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a936:	ff                   	(bad)
 804a937:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a93a:	ff                   	(bad)
 804a93b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a93e:	ff                   	(bad)
 804a93f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a942:	ff                   	(bad)
 804a943:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a946:	ff                   	(bad)
 804a947:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a94a:	ff                   	(bad)
 804a94b:	ff 6f df             	jmp    FWORD PTR [edi-0x21]
 804a94e:	ff                   	(bad)
 804a94f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a952:	ff                   	(bad)
 804a953:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a956:	ff                   	(bad)
 804a957:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a95a:	ff                   	(bad)
 804a95b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a95e:	ff                   	(bad)
 804a95f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a962:	ff                   	(bad)
 804a963:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a966:	ff                   	(bad)
 804a967:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a96a:	ff                   	(bad)
 804a96b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a96e:	ff                   	(bad)
 804a96f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a972:	ff                   	(bad)
 804a973:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a976:	ff                   	(bad)
 804a977:	ff 0b                	dec    DWORD PTR [ebx]
 804a979:	e1 ff                	loope  804a97a <__func__.1+0x6c2>
 804a97b:	ff cc                	dec    esp
 804a97d:	dd ff                	(bad)
 804a97f:	ff 2a                	jmp    FWORD PTR [edx]
 804a981:	e2 ff                	loop   804a982 <__func__.1+0x6ca>
 804a983:	ff 2a                	jmp    FWORD PTR [edx]
 804a985:	e2 ff                	loop   804a986 <__func__.1+0x6ce>
 804a987:	ff 2a                	jmp    FWORD PTR [edx]
 804a989:	e2 ff                	loop   804a98a <__func__.1+0x6d2>
 804a98b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a98e:	ff                   	(bad)
 804a98f:	ff cc                	dec    esp
 804a991:	dd ff                	(bad)
 804a993:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a996:	ff                   	(bad)
 804a997:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a99a:	ff                   	(bad)
 804a99b:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a99e:	ff                   	(bad)
 804a99f:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9a2:	ff                   	(bad)
 804a9a3:	ff 2a                	jmp    FWORD PTR [edx]
 804a9a5:	e2 ff                	loop   804a9a6 <__func__.1+0x6ee>
 804a9a7:	ff 6f df             	jmp    FWORD PTR [edi-0x21]
 804a9aa:	ff                   	(bad)
 804a9ab:	ff cb                	dec    ebx
 804a9ad:	e1 ff                	loope  804a9ae <__func__.1+0x6f6>
 804a9af:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9b2:	ff                   	(bad)
 804a9b3:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9b6:	ff                   	(bad)
 804a9b7:	ff 58 e1             	call   FWORD PTR [eax-0x1f]
 804a9ba:	ff                   	(bad)
 804a9bb:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9be:	ff                   	(bad)
 804a9bf:	ff 6f df             	jmp    FWORD PTR [edi-0x21]
 804a9c2:	ff                   	(bad)
 804a9c3:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9c6:	ff                   	(bad)
 804a9c7:	ff 56 e2             	call   DWORD PTR [esi-0x1e]
 804a9ca:	ff                   	(bad)
 804a9cb:	ff 6f df             	jmp    FWORD PTR [edi-0x21]
 804a9ce:	ff                   	(bad)
 804a9cf:	ff 43 df             	inc    DWORD PTR [ebx-0x21]
 804a9d2:	ff                   	(bad)
 804a9d3:	ff f6                	push   esi
 804a9d5:	dd ff                	(bad)
 804a9d7:	ff 5f de             	call   FWORD PTR [edi-0x22]
 804a9da:	ff                   	(bad)
 804a9db:	ff                   	(bad)
 804a9dc:	7b de                	jnp    804a9bc <__func__.1+0x704>
 804a9de:	ff                   	(bad)
 804a9df:	ff 99 de ff ff b5    	call   FWORD PTR [ecx-0x4a000022]
 804a9e5:	de ff                	fdivp  st(7),st
 804a9e7:	ff d3                	call   ebx
 804a9e9:	de ff                	fdivp  st(7),st
 804a9eb:	ff                   	jmp    (bad)
 804a9ec:	ef                   	out    dx,eax
 804a9ed:	de ff                	fdivp  st(7),st
 804a9ef:	ff 0d df ff ff     	dec    DWORD PTR ds:0x5fffffdf

0804a9f4 <__func__.1>:
 804a9f4:	5f                   	pop    edi
 804a9f5:	5f                   	pop    edi
 804a9f6:	76 70                	jbe    804aa68 <__func__.10+0x14>
 804a9f8:	72 69                	jb     804aa63 <__func__.10+0xf>
 804a9fa:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804a9fb:	74 66                	je     804aa63 <__func__.10+0xf>
 804a9fd:	00 00                	add    BYTE PTR [eax],al
	...

0804aa00 <__func__.0>:
 804aa00:	73 74                	jae    804aa76 <__func__.10+0x22>
 804aa02:	72 6c                	jb     804aa70 <__func__.10+0x1c>
 804aa04:	63 61 74             	arpl   WORD PTR [ecx+0x74],esp
	...

0804aa08 <__func__.1>:
 804aa08:	73 74                	jae    804aa7e <__func__.10+0x2a>
 804aa0a:	72 6c                	jb     804aa78 <__func__.10+0x24>
 804aa0c:	63 70 79             	arpl   WORD PTR [eax+0x79],esi
	...

0804aa10 <__func__.2>:
 804aa10:	73 74                	jae    804aa86 <__func__.10+0x32>
 804aa12:	72 6c                	jb     804aa80 <__func__.10+0x2c>
 804aa14:	65 6e                	outs   dx,BYTE PTR gs:[esi]
	...

0804aa18 <__func__.3>:
 804aa18:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa19:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804aa1b:	73 65                	jae    804aa82 <__func__.10+0x2e>
 804aa1d:	74 00                	je     804aa1f <__func__.3+0x7>
	...

0804aa20 <__func__.4>:
 804aa20:	73 74                	jae    804aa96 <__func__.10+0x42>
 804aa22:	72 74                	jb     804aa98 <__func__.10+0x44>
 804aa24:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804aa25:	6b 5f 72 00          	imul   ebx,DWORD PTR [edi+0x72],0x0
 804aa29:	00 00                	add    BYTE PTR [eax],al
	...

0804aa2c <__func__.5>:
 804aa2c:	73 74                	jae    804aaa2 <__func__.10+0x4e>
 804aa2e:	72 63                	jb     804aa93 <__func__.10+0x3f>
 804aa30:	68 72 00 00        	push   0x6d000072

0804aa34 <__func__.6>:
 804aa34:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa35:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804aa37:	63 68 72             	arpl   WORD PTR [eax+0x72],ebp
	...

0804aa3c <__func__.7>:
 804aa3c:	73 74                	jae    804aab2 <__func__.10+0x5e>
 804aa3e:	72 63                	jb     804aaa3 <__func__.10+0x4f>
 804aa40:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa41:	70 00                	jo     804aa43 <__func__.7+0x7>
	...

0804aa44 <__func__.8>:
 804aa44:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa45:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804aa47:	63 6d 70             	arpl   WORD PTR [ebp+0x70],ebp
	...

0804aa4c <__func__.9>:
 804aa4c:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa4d:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804aa4f:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa50:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804aa51:	76 65                	jbe    804aab8 <__func__.10+0x64>
	...

0804aa54 <__func__.10>:
 804aa54:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa55:	65 6d                	gs ins DWORD PTR es:[edi],dx
 804aa57:	63 70 79             	arpl   WORD PTR [eax+0x79],esi
	...

Disassembly of section .rodata.str1.4:

0804aa5c <.rodata.str1.4>:
 804aa5c:	65 78 65             	gs js  804aac4 <__func__.10+0x70>
 804aa5f:	63 75 74             	arpl   WORD PTR [ebp+0x74],esi
 804aa62:	65 64 20 61 6e       	gs and BYTE PTR fs:[ecx+0x6e],ah
 804aa67:	20 75 6e             	and    BYTE PTR [ebp+0x6e],dh
 804aa6a:	72 65                	jb     804aad1 <__func__.10+0x7d>
 804aa6c:	61                   	popa
 804aa6d:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
 804aa70:	62 6c 65 20          	bound  ebp,QWORD PTR [ebp+eiz*2+0x20]
 804aa74:	73 74                	jae    804aaea <__func__.10+0x96>
 804aa76:	61                   	popa
 804aa77:	74 65                	je     804aade <__func__.10+0x8a>
 804aa79:	6d                   	ins    DWORD PTR es:[edi],dx
 804aa7a:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 804aa7c:	74 00                	je     804aa7e <__func__.10+0x2a>
 804aa7e:	00 00                	add    BYTE PTR [eax],al
 804aa80:	55                   	push   ebp
 804aa81:	73 65                	jae    804aae8 <__func__.10+0x94>
 804aa83:	72 20                	jb     804aaa5 <__func__.10+0x51>
 804aa85:	70 72                	jo     804aaf9 <__func__.10+0xa5>
 804aa87:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804aa88:	63 65 73             	arpl   WORD PTR [ebp+0x73],esp
 804aa8b:	73 20                	jae    804aaad <__func__.10+0x59>
 804aa8d:	41                   	inc    ecx
 804aa8e:	42                   	inc    edx
 804aa8f:	4f                   	dec    edi
 804aa90:	52                   	push   edx
 804aa91:	54                   	push   esp
 804aa92:	20 61 74             	and    BYTE PTR [ecx+0x74],ah
 804aa95:	20 25 73 3a 25 64    	and    BYTE PTR ds:0x64253a73,ah
 804aa9b:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
 804aa9e:	20 25 73 28 29 3a    	and    BYTE PTR ds:0x3a292873,ah
 804aaa4:	20 00                	and    BYTE PTR [eax],al
 804aaa6:	00 00                	add    BYTE PTR [eax],al
 804aaa8:	54                   	push   esp
 804aaa9:	68 65 20 60 62       	push   0x62602065
 804aaae:	61                   	popa
 804aaaf:	63 6b 74             	arpl   WORD PTR [ebx+0x74],ebp
 804aab2:	72 61                	jb     804ab15 <__func__.10+0xc1>
 804aab4:	63 65 27             	arpl   WORD PTR [ebp+0x27],esp
 804aab7:	20 70 72             	and    BYTE PTR [eax+0x72],dh
 804aaba:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804aabb:	67 72 61             	addr16 jb 804ab1f <__func__.10+0xcb>
 804aabe:	6d                   	ins    DWORD PTR es:[edi],dx
 804aabf:	20 63 61             	and    BYTE PTR [ebx+0x61],ah
 804aac2:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804aac3:	20 6d 61             	and    BYTE PTR [ebp+0x61],ch
 804aac6:	6b 65 20 63          	imul   esp,DWORD PTR [ebp+0x20],0x63
 804aaca:	61                   	popa
 804aacb:	6c                   	ins    BYTE PTR es:[edi],dx
 804aacc:	6c                   	ins    BYTE PTR es:[edi],dx
 804aacd:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
 804aad0:	61                   	popa
 804aad1:	63 6b 73             	arpl   WORD PTR [ebx+0x73],ebp
 804aad4:	20 75 73             	and    BYTE PTR [ebp+0x73],dh
 804aad7:	65 66 75 6c          	gs data16 jne 804ab47 <__func__.10+0xf3>
 804aadb:	2e 0a 52 65          	or     dl,BYTE PTR cs:[edx+0x65]
 804aadf:	61                   	popa
 804aae0:	64 20 22             	and    BYTE PTR fs:[edx],ah
 804aae3:	42                   	inc    edx
 804aae4:	61                   	popa
 804aae5:	63 6b 74             	arpl   WORD PTR [ebx+0x74],ebp
 804aae8:	72 61                	jb     804ab4b <__func__.10+0xf7>
 804aaea:	63 65 73             	arpl   WORD PTR [ebp+0x73],esp
 804aaed:	22 20                	and    ah,BYTE PTR [eax]
 804aaef:	69 6e 20 74 68 65 20 	imul   ebp,DWORD PTR [esi+0x20],0x20656874
 804aaf6:	22 44 65 62          	and    al,BYTE PTR [ebp+eiz*2+0x62]
 804aafa:	75 67                	jne    804ab63 <__func__.10+0x10f>
 804aafc:	67 69 6e 67 20 54 6f 	imul   ebp,DWORD PTR [bp+0x67],0x6f6f5420
 804ab03:	6f 
 804ab04:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab05:	73 22                	jae    804ab29 <__func__.10+0xd5>
 804ab07:	20 63 68             	and    BYTE PTR [ebx+0x68],ah
 804ab0a:	61                   	popa
 804ab0b:	70 74                	jo     804ab81 <__func__.10+0x12d>
 804ab0d:	65 72 0a             	gs jb  804ab1a <__func__.10+0xc6>
 804ab10:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab11:	66 20 74 68 65       	data16 and BYTE PTR [eax+ebp*2+0x65],dh
 804ab16:	20 50 69             	and    BYTE PTR [eax+0x69],dl
 804ab19:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab1a:	74 6f                	je     804ab8b <__func__.10+0x137>
 804ab1c:	73 20                	jae    804ab3e <__func__.10+0xea>
 804ab1e:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 804ab20:	63 75 6d             	arpl   WORD PTR [ebp+0x6d],esi
 804ab23:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 804ab25:	74 61                	je     804ab88 <__func__.10+0x134>
 804ab27:	74 69                	je     804ab92 <__func__.10+0x13e>
 804ab29:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab2a:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab2b:	20 66 6f             	and    BYTE PTR [esi+0x6f],ah
 804ab2e:	72 20                	jb     804ab50 <__func__.10+0xfc>
 804ab30:	6d                   	ins    DWORD PTR es:[edi],dx
 804ab31:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab32:	72 65                	jb     804ab99 <__func__.10+0x145>
 804ab34:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
 804ab37:	66 6f                	outs   dx,WORD PTR ds:[esi]
 804ab39:	72 6d                	jb     804aba8 <__func__.10+0x154>
 804ab3b:	61                   	popa
 804ab3c:	74 69                	je     804aba7 <__func__.10+0x153>
 804ab3e:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab3f:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab40:	2e 0a 00             	or     al,BYTE PTR cs:[eax]

Disassembly of section .rodata.str1.1:

0804ab43 <.rodata.str1.1>:
 804ab43:	2e 2e 2f             	cs cs das
 804ab46:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab47:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
 804ab4e:	2f                   	das
 804ab4f:	73 79                	jae    804abca <__func__.10+0x176>
 804ab51:	73 63                	jae    804abb6 <__func__.10+0x162>
 804ab53:	61                   	popa
 804ab54:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab55:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab56:	2e 63 00             	arpl   WORD PTR cs:[eax],eax
 804ab59:	43                   	inc    ebx
 804ab5a:	61                   	popa
 804ab5b:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab5c:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab5d:	20 73 74             	and    BYTE PTR [ebx+0x74],dh
 804ab60:	61                   	popa
 804ab61:	63 6b 3a             	arpl   WORD PTR [ebx+0x3a],ebp
 804ab64:	20 25 70 00 2e 0a    	and    BYTE PTR ds:0xa2e0070,ah
 804ab6a:	00 28                	add    BYTE PTR [eax],ch
 804ab6c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab6d:	75 6c                	jne    804abdb <__func__.10+0x187>
 804ab6f:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab70:	29 00                	sub    DWORD PTR [eax],eax
 804ab72:	2e 2e 2f             	cs cs das
 804ab75:	6c                   	ins    BYTE PTR es:[edi],dx
 804ab76:	69 62 2f 73 74 64 69 	imul   esp,DWORD PTR [edx+0x2f],0x69647473
 804ab7d:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab7e:	2e 63 00             	arpl   WORD PTR cs:[eax],eax
 804ab81:	3c 3c                	cmp    al,0x3c
 804ab83:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab84:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab85:	20 25 25 25 63 20    	and    BYTE PTR ds:0x20632525,ah
 804ab8b:	69 6e 20 6b 65 72 6e 	imul   ebp,DWORD PTR [esi+0x20],0x6e72656b
 804ab92:	65 6c                	gs ins BYTE PTR es:[edi],dx
 804ab94:	3e 3e 00 3c 3c       	ds add BYTE PTR ds:[esp+edi*1],bh
 804ab99:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ab9a:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804ab9b:	20 25 25 25 63 20    	and    BYTE PTR ds:0x20632525,ah
 804aba1:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
 804aba4:	76 65                	jbe    804ac0b <__func__.10+0x1b7>
 804aba6:	72 73                	jb     804ac1b <__func__.10+0x1c7>
 804aba8:	69 6f 6e 3e 3e 00 25 	imul   ebp,DWORD PTR [edi+0x6e],0x25003e3e
 804abaf:	30 38                	xor    BYTE PTR [eax],bh
 804abb1:	6a 78                	push   0x78
 804abb3:	20 20                	and    BYTE PTR [eax],ah
 804abb5:	00 20                	add    BYTE PTR [eax],ah
 804abb7:	20 20                	and    BYTE PTR [eax],ah
 804abb9:	00 25 30 32 68 68    	add    BYTE PTR ds:0x68683230,ah
 804abbf:	78 25                	js     804abe6 <__func__.10+0x192>
 804abc1:	63 00                	arpl   WORD PTR [eax],eax
 804abc3:	7c 00                	jl     804abc5 <__func__.10+0x171>
 804abc5:	31 20                	xor    DWORD PTR [eax],esp
 804abc7:	62 79 74             	bound  edi,QWORD PTR [ecx+0x74]
 804abca:	65 00 25 6c 6c 75 20 	add    BYTE PTR gs:0x20756c6c,ah
 804abd1:	25 73 00 62 79       	and    eax,0x79620073
 804abd6:	74 65                	je     804ac3d <__func__.10+0x1e9>
 804abd8:	73 00                	jae    804abda <__func__.10+0x186>
 804abda:	6b 42 00 4d          	imul   eax,DWORD PTR [edx+0x0],0x4d
 804abde:	42                   	inc    edx
 804abdf:	00 47 42             	add    BYTE PTR [edi+0x42],al
 804abe2:	00 54 42 00          	add    BYTE PTR [edx+eax*2+0x0],dl
 804abe6:	30 31                	xor    BYTE PTR [ecx],dh
 804abe8:	32 33                	xor    dh,BYTE PTR [ebx]
 804abea:	34 35                	xor    al,0x35
 804abec:	36 37                	ss aaa
 804abee:	38 39                	cmp    BYTE PTR [ecx],bh
 804abf0:	41                   	inc    ecx
 804abf1:	42                   	inc    edx
 804abf2:	43                   	inc    ebx
 804abf3:	44                   	inc    esp
 804abf4:	45                   	inc    ebp
 804abf5:	46                   	inc    esi
 804abf6:	00 30                	add    BYTE PTR [eax],dh
 804abf8:	31 32                	xor    DWORD PTR [edx],esi
 804abfa:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
 804ac01:	61                   	popa
 804ac02:	62 63 64             	bound  esp,QWORD PTR [ebx+0x64]
 804ac05:	65 66 00 30          	data16 add BYTE PTR gs:[eax],dh
 804ac09:	31 32                	xor    DWORD PTR [edx],esi
 804ac0b:	33 34 35 36 37 00 30 	xor    esi,DWORD PTR [esi*1+0x30003736]
 804ac12:	31 32                	xor    DWORD PTR [edx],esi
 804ac14:	33 34 35 36 37 38 39 	xor    esi,DWORD PTR [esi*1+0x39383736]
 804ac1b:	00 64 73 74          	add    BYTE PTR [ebx+esi*2+0x74],ah
 804ac1f:	20 21                	and    BYTE PTR [ecx],ah
 804ac21:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804ac26:	4c                   	dec    esp
 804ac27:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
 804ac2b:	73 69                	jae    804ac96 <__func__.10+0x242>
 804ac2d:	7a 65                	jp     804ac94 <__func__.10+0x240>
 804ac2f:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
 804ac35:	61                   	popa
 804ac36:	73 73                	jae    804acab <__func__.10+0x257>
 804ac38:	65 72 74             	gs jb  804acaf <__func__.10+0x25b>
 804ac3b:	69 6f 6e 20 60 25 73 	imul   ebp,DWORD PTR [edi+0x6e],0x73256020
 804ac42:	27                   	daa
 804ac43:	20 66 61             	and    BYTE PTR [esi+0x61],ah
 804ac46:	69 6c 65 64 2e 00 2e 	imul   ebp,DWORD PTR [ebp+eiz*2+0x64],0x2e2e002e
 804ac4d:	2e 
 804ac4e:	2f                   	das
 804ac4f:	6c                   	ins    BYTE PTR es:[edi],dx
 804ac50:	69 62 2f 73 74 72 69 	imul   esp,DWORD PTR [edx+0x2f],0x69727473
 804ac57:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804ac58:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],eax
 804ac5c:	73 72                	jae    804acd0 <__func__.10+0x27c>
 804ac5e:	63 20                	arpl   WORD PTR [eax],esp
 804ac60:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804ac66:	4c                   	dec    esp
 804ac67:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
 804ac6b:	73 69                	jae    804acd6 <__func__.10+0x282>
 804ac6d:	7a 65                	jp     804acd4 <__func__.10+0x280>
 804ac6f:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
 804ac75:	61                   	popa
 804ac76:	20 21                	and    BYTE PTR [ecx],ah
 804ac78:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804ac7d:	4c                   	dec    esp
 804ac7e:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
 804ac82:	73 69                	jae    804aced <__func__.10+0x299>
 804ac84:	7a 65                	jp     804aceb <__func__.10+0x297>
 804ac86:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
 804ac8c:	62 20                	bound  esp,QWORD PTR [eax]
 804ac8e:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804ac94:	4c                   	dec    esp
 804ac95:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
 804ac99:	73 69                	jae    804ad04 <__func__.10+0x2b0>
 804ac9b:	7a 65                	jp     804ad02 <__func__.10+0x2ae>
 804ac9d:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
 804aca3:	61                   	popa
 804aca4:	20 21                	and    BYTE PTR [ecx],ah
 804aca6:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804acab:	4c                   	dec    esp
 804acac:	00 62 20             	add    BYTE PTR [edx+0x20],ah
 804acaf:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804acb5:	4c                   	dec    esp
 804acb6:	00 62 6c             	add    BYTE PTR [edx+0x6c],ah
 804acb9:	6f                   	outs   dx,DWORD PTR ds:[esi]
 804acba:	63 6b 20             	arpl   WORD PTR [ebx+0x20],ebp
 804acbd:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804acc3:	4c                   	dec    esp
 804acc4:	20 7c 7c 20          	and    BYTE PTR [esp+edi*2+0x20],bh
 804acc8:	73 69                	jae    804ad33 <__func__.10+0x2df>
 804acca:	7a 65                	jp     804ad31 <__func__.10+0x2dd>
 804accc:	20 3d 3d 20 30 00    	and    BYTE PTR ds:0x30203d,bh
 804acd2:	73 74                	jae    804ad48 <__func__.10+0x2f4>
 804acd4:	72 69                	jb     804ad3f <__func__.10+0x2eb>
 804acd6:	6e                   	outs   dx,BYTE PTR ds:[esi]
 804acd7:	67 20 21             	and    BYTE PTR [bx+di],ah
 804acda:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804acdf:	4c                   	dec    esp
 804ace0:	00 64 65 6c          	add    BYTE PTR [ebp+eiz*2+0x6c],ah
 804ace4:	69 6d 69 74 65 72 73 	imul   ebp,DWORD PTR [ebp+0x69],0x73726574
 804aceb:	20 21                	and    BYTE PTR [ecx],ah
 804aced:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804acf2:	4c                   	dec    esp
 804acf3:	00 73 61             	add    BYTE PTR [ebx+0x61],dh
 804acf6:	76 65                	jbe    804ad5d <__func__.10+0x309>
 804acf8:	5f                   	pop    edi
 804acf9:	70 74                	jo     804ad6f <__func__.10+0x31b>
 804acfb:	72 20                	jb     804ad1d <__func__.10+0x2c9>
 804acfd:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804ad03:	4c                   	dec    esp
 804ad04:	00 64 73 74          	add    BYTE PTR [ebx+esi*2+0x74],ah
 804ad08:	20 21                	and    BYTE PTR [ecx],ah
 804ad0a:	3d 20 4e 55 4c       	cmp    eax,0x4c554e20
 804ad0f:	4c                   	dec    esp
 804ad10:	00 73 72             	add    BYTE PTR [ebx+0x72],dh
 804ad13:	63 20                	arpl   WORD PTR [eax],esp
 804ad15:	21 3d 20 4e 55 4c    	and    DWORD PTR ds:0x4c554e20,edi
 804ad1b:	4c                   	dec    esp
	...

Disassembly of section .got.plt:

0804b000 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .data.rel.local:

0804b00c <factors.0>:
 804b00c:	d4 ab                	aam    0xab
 804b00e:	04 08                	add    al,0x8
 804b010:	da ab 04 08 dd ab    	fisubr DWORD PTR [ebx-0x5422f7fc]
 804b016:	04 08                	add    al,0x8
 804b018:	e0 ab                	loopne 804afc5 <__func__.10+0x571>
 804b01a:	04 08                	add    al,0x8
 804b01c:	e3 ab                	jecxz  804afc9 <__func__.10+0x575>
 804b01e:	04 08                	add    al,0x8
 804b020:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .data.rel.ro.local:

0804b024 <base_X>:
 804b024:	10 00                	adc    BYTE PTR [eax],al
 804b026:	00 00                	add    BYTE PTR [eax],al
 804b028:	e6 ab                	out    0xab,al
 804b02a:	04 08                	add    al,0x8
 804b02c:	58                   	pop    eax
 804b02d:	00 00                	add    BYTE PTR [eax],al
 804b02f:	00 04 00             	add    BYTE PTR [eax+eax*1],al
	...

0804b034 <base_x>:
 804b034:	10 00                	adc    BYTE PTR [eax],al
 804b036:	00 00                	add    BYTE PTR [eax],al
 804b038:	f7 ab 04 08 78 00    	imul   DWORD PTR [ebx+0x780804]
 804b03e:	00 00                	add    BYTE PTR [eax],al
 804b040:	04 00                	add    al,0x0
	...

0804b044 <base_o>:
 804b044:	08 00                	or     BYTE PTR [eax],al
 804b046:	00 00                	add    BYTE PTR [eax],al
 804b048:	08 ac 04 08 00 00 00 	or     BYTE PTR [esp+eax*1+0x8],ch
 804b04f:	00 03                	add    BYTE PTR [ebx],al
 804b051:	00 00                	add    BYTE PTR [eax],al
	...

0804b054 <base_d>:
 804b054:	0a 00                	or     al,BYTE PTR [eax]
 804b056:	00 00                	add    BYTE PTR [eax],al
 804b058:	11 ac 04 08 00 00 00 	adc    DWORD PTR [esp+eax*1+0x8],ebp
 804b05f:	00 03                	add    BYTE PTR [ebx],al
 804b061:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    edi
   1:	43                   	inc    ebx
   2:	43                   	inc    ebx
   3:	3a 20                	cmp    ah,BYTE PTR [eax]
   5:	28 55 62             	sub    BYTE PTR [ebp+0x62],dl
   8:	75 6e                	jne    78 <__executable_start-0x804801c>
   a:	74 75                	je     81 <__executable_start-0x8048013>
   c:	20 31                	and    BYTE PTR [ecx],dh
   e:	33 2e                	xor    ebp,DWORD PTR [esi]
  10:	33 2e                	xor    ebp,DWORD PTR [esi]
  12:	30 2d 36 75 62 75    	xor    BYTE PTR ds:0x75627536,ch
  18:	6e                   	outs   dx,BYTE PTR ds:[esi]
  19:	74 75                	je     90 <__executable_start-0x8048004>
  1b:	32 7e 32             	xor    bh,BYTE PTR [esi+0x32]
  1e:	34 2e                	xor    al,0x2e
  20:	30 34 29             	xor    BYTE PTR [ecx+ebp*1],dh
  23:	20 31                	and    BYTE PTR [ecx],dh
  25:	33 2e                	xor    ebp,DWORD PTR [esi]
  27:	33 2e                	xor    ebp,DWORD PTR [esi]
  29:	30 00                	xor    BYTE PTR [eax],al

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    al,0x0
   2:	00 00                	add    BYTE PTR [eax],al
   4:	02 00                	add    al,BYTE PTR [eax]
   6:	00 00                	add    BYTE PTR [eax],al
   8:	00 00                	add    BYTE PTR [eax],al
   a:	04 00                	add    al,0x0
   c:	00 00                	add    BYTE PTR [eax],al
   e:	00 00                	add    BYTE PTR [eax],al
  10:	a0 80 04 08 13       	mov    al,ds:0x13080480
  15:	01 00                	add    DWORD PTR [eax],eax
	...
  1f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  22:	00 00                	add    BYTE PTR [eax],al
  24:	02 00                	add    al,BYTE PTR [eax]
  26:	06                   	push   es
  27:	01 00                	add    DWORD PTR [eax],eax
  29:	00 04 00             	add    BYTE PTR [eax+eax*1],al
  2c:	00 00                	add    BYTE PTR [eax],al
  2e:	00 00                	add    BYTE PTR [eax],al
  30:	b3 81                	mov    bl,0x81
  32:	04 08                	add    al,0x8
  34:	2c 00                	sub    al,0x0
	...
  3e:	00 00                	add    BYTE PTR [eax],al
  40:	1c 00                	sbb    al,0x0
  42:	00 00                	add    BYTE PTR [eax],al
  44:	02 00                	add    al,BYTE PTR [eax]
  46:	be 01 00 00 04       	mov    esi,0x4000001
  4b:	00 00                	add    BYTE PTR [eax],al
  4d:	00 00                	add    BYTE PTR [eax],al
  4f:	00 df                	add    bh,bl
  51:	81 04 08 db 01 00 00 	add    DWORD PTR [eax+ecx*1],0x1db
	...
  60:	1c 00                	sbb    al,0x0
  62:	00 00                	add    BYTE PTR [eax],al
  64:	02 00                	add    al,BYTE PTR [eax]
  66:	9f                   	lahf
  67:	08 00                	or     BYTE PTR [eax],al
  69:	00 04 00             	add    BYTE PTR [eax+eax*1],al
  6c:	00 00                	add    BYTE PTR [eax],al
  6e:	00 00                	add    BYTE PTR [eax],al
  70:	ba 83 04 08 66       	mov    edx,0x66080483
	...
  7d:	00 00                	add    BYTE PTR [eax],al
  7f:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
  82:	00 00                	add    BYTE PTR [eax],al
  84:	02 00                	add    al,BYTE PTR [eax]
  86:	2d 0a 00 00 04       	sub    eax,0x400000a
  8b:	00 00                	add    BYTE PTR [eax],al
  8d:	00 00                	add    BYTE PTR [eax],al
  8f:	00 20                	add    BYTE PTR [eax],ah
  91:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
  94:	b0 01                	mov    al,0x1
	...
  9e:	00 00                	add    BYTE PTR [eax],al
  a0:	1c 00                	sbb    al,0x0
  a2:	00 00                	add    BYTE PTR [eax],al
  a4:	02 00                	add    al,BYTE PTR [eax]
  a6:	f6 0d 00 00 04 00 00 	test   BYTE PTR ds:0x40000,0x0
  ad:	00 00                	add    BYTE PTR [eax],al
  af:	00 d0                	add    al,dl
  b1:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
  b4:	8e 00                	mov    es,WORD PTR [eax]
	...
  be:	00 00                	add    BYTE PTR [eax],al
  c0:	1c 00                	sbb    al,0x0
  c2:	00 00                	add    BYTE PTR [eax],al
  c4:	02 00                	add    al,BYTE PTR [eax]
  c6:	37                   	aaa
  c7:	0f 00 00             	sldt   WORD PTR [eax]
  ca:	04 00                	add    al,0x0
  cc:	00 00                	add    BYTE PTR [eax],al
  ce:	00 00                	add    BYTE PTR [eax],al
  d0:	60                   	pusha
  d1:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
  d4:	84 0f                	test   BYTE PTR [edi],cl
	...
  de:	00 00                	add    BYTE PTR [eax],al
  e0:	1c 00                	sbb    al,0x0
  e2:	00 00                	add    BYTE PTR [eax],al
  e4:	02 00                	add    al,BYTE PTR [eax]
  e6:	74 1e                	je     106 <__executable_start-0x8047f8e>
  e8:	00 00                	add    BYTE PTR [eax],al
  ea:	04 00                	add    al,0x0
  ec:	00 00                	add    BYTE PTR [eax],al
  ee:	00 00                	add    BYTE PTR [eax],al
  f0:	f0 95                	lock xchg ebp,eax
  f2:	04 08                	add    al,0x8
  f4:	93                   	xchg   ebx,eax
  f5:	09 00                	or     DWORD PTR [eax],eax
	...
  ff:	00 1c 00             	add    BYTE PTR [eax+eax*1],bl
 102:	00 00                	add    BYTE PTR [eax],al
 104:	02 00                	add    al,BYTE PTR [eax]
 106:	20 2c 00             	and    BYTE PTR [eax+eax*1],ch
 109:	00 04 00             	add    BYTE PTR [eax+eax*1],al
 10c:	00 00                	add    BYTE PTR [eax],al
 10e:	00 00                	add    BYTE PTR [eax],al
 110:	83 9f 04 08 12 03 00 	sbb    DWORD PTR [edi+0x3120804],0x0
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	02 01                	add    al,BYTE PTR [ecx]
       2:	00 00                	add    BYTE PTR [eax],al
       4:	05 00 01 04 00       	add    eax,0x40100
       9:	00 00                	add    BYTE PTR [eax],al
       b:	00 05 0e 00 00 00    	add    BYTE PTR ds:0xe,al
      11:	1d 21 00 00 00       	sbb    eax,0x21
      16:	00 00                	add    BYTE PTR [eax],al
      18:	00 00                	add    BYTE PTR [eax],al
      1a:	a0 80 04 08 13       	mov    al,ds:0x13080480
      1f:	01 00                	add    DWORD PTR [eax],eax
      21:	00 00                	add    BYTE PTR [eax],al
      23:	00 00                	add    BYTE PTR [eax],al
      25:	00 01                	add    BYTE PTR [ecx],al
      27:	01 06                	add    DWORD PTR [esi],eax
      29:	d3 00                	rol    DWORD PTR [eax],cl
      2b:	00 00                	add    BYTE PTR [eax],al
      2d:	06                   	push   es
      2e:	04 05                	add    al,0x5
      30:	69 6e 74 00 01 04 07 	imul   ebp,DWORD PTR [esi+0x74],0x7040100
      37:	bd 00 00 00 01       	mov    ebp,0x1000000
      3c:	01 06                	add    DWORD PTR [esi],eax
      3e:	cc                   	int3
      3f:	00 00                	add    BYTE PTR [eax],al
      41:	00 01                	add    BYTE PTR [ecx],al
      43:	02 05 f5 00 00 00    	add    al,BYTE PTR ds:0xf5
      49:	01 08                	add    DWORD PTR [eax],ecx
      4b:	05 00 00 00 00       	add    eax,0x0
      50:	01 01                	add    DWORD PTR [ecx],eax
      52:	08 ca                	or     dl,cl
      54:	00 00                	add    BYTE PTR [eax],al
      56:	00 01                	add    BYTE PTR [ecx],al
      58:	02 07                	add    al,BYTE PTR [edi]
      5a:	d8 00                	fadd   DWORD PTR [eax]
      5c:	00 00                	add    BYTE PTR [eax],al
      5e:	01 08                	add    DWORD PTR [eax],ecx
      60:	07                   	pop    es
      61:	b3 00                	mov    bl,0x0
      63:	00 00                	add    BYTE PTR [eax],al
      65:	07                   	pop    es
      66:	2d 00 00 00 79       	sub    eax,0x79000000
      6b:	00 00                	add    BYTE PTR [eax],al
      6d:	00 04 34             	add    BYTE PTR [esp+esi*1],al
      70:	00 00                	add    BYTE PTR [eax],al
      72:	00 04 34             	add    BYTE PTR [esp+esi*1],al
      75:	00 00                	add    BYTE PTR [eax],al
      77:	00 00                	add    BYTE PTR [eax],al
      79:	02 41 00             	add    al,BYTE PTR [ecx+0x0]
      7c:	1f                   	pop    ds
      7d:	65 00 00             	add    BYTE PTR gs:[eax],al
      80:	00 05 03 80 b0 24    	add    BYTE PTR ds:0x24b08003,al
      86:	08 02                	or     BYTE PTR [edx],al
      88:	42                   	inc    edx
      89:	00 20                	add    BYTE PTR [eax],ah
      8b:	65 00 00             	add    BYTE PTR gs:[eax],al
      8e:	00 05 03 80 b0 14    	add    BYTE PTR ds:0x14b08003,al
      94:	08 02                	or     BYTE PTR [edx],al
      96:	43                   	inc    ebx
      97:	00 21                	add    BYTE PTR [ecx],ah
      99:	65 00 00             	add    BYTE PTR gs:[eax],al
      9c:	00 05 03 80 b0 04    	add    BYTE PTR ds:0x4b08003,al
      a2:	08 08                	or     BYTE PTR [eax],cl
      a4:	f0 00 00             	lock add BYTE PTR [eax],al
      a7:	00 02                	add    BYTE PTR [edx],al
      a9:	18 06                	sbb    BYTE PTR [esi],al
      ab:	b5 00                	mov    ch,0x0
      ad:	00 00                	add    BYTE PTR [eax],al
      af:	09 2d 00 00 00 00    	or     DWORD PTR ds:0x0,ebp
      b5:	0a eb                	or     ch,bl
      b7:	00 00                	add    BYTE PTR [eax],al
      b9:	00 01                	add    BYTE PTR [ecx],al
      bb:	24 01                	and    al,0x1
      bd:	2d 00 00 00 a0       	sub    eax,0xa0000000
      c2:	80 04 08 13          	add    BYTE PTR [eax+ecx*1],0x13
      c6:	01 00                	add    DWORD PTR [eax],eax
      c8:	00 01                	add    BYTE PTR [ecx],al
      ca:	9c                   	pushf
      cb:	03 69 00             	add    ebp,DWORD PTR [ecx+0x0]
      ce:	07                   	pop    es
      cf:	2d 00 00 00 18       	sub    eax,0x18000000
      d4:	00 00                	add    BYTE PTR [eax],al
      d6:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
      d9:	00 00                	add    BYTE PTR [eax],al
      db:	03 6a 00             	add    ebp,DWORD PTR [edx+0x0]
      de:	0a 2d 00 00 00 4d    	or     ch,BYTE PTR ds:0x4d000000
      e4:	00 00                	add    BYTE PTR [eax],al
      e6:	00 47 00             	add    BYTE PTR [edi+0x0],al
      e9:	00 00                	add    BYTE PTR [eax],al
      eb:	03 6b 00             	add    ebp,DWORD PTR [ebx+0x0]
      ee:	0d 2d 00 00 00       	or     eax,0x2d
      f3:	63 00                	arpl   WORD PTR [eax],eax
      f5:	00 00                	add    BYTE PTR [eax],al
      f7:	61                   	popa
      f8:	00 00                	add    BYTE PTR [eax],al
      fa:	00 0b                	add    BYTE PTR [ebx],cl
      fc:	b3 81                	mov    bl,0x81
      fe:	04 08                	add    al,0x8
     100:	a3 00 00 00 00       	mov    ds:0x0,eax
     105:	00 b4 00 00 00 05 00 	add    BYTE PTR [eax+eax*1+0x50000],dh
     10c:	01 04 ac             	add    DWORD PTR [esp+ebp*4],eax
     10f:	00 00                	add    BYTE PTR [eax],al
     111:	00 04 0e             	add    BYTE PTR [esi+ecx*1],al
     114:	00 00                	add    BYTE PTR [eax],al
     116:	00 1d 41 00 00 00    	add    BYTE PTR ds:0x41,bl
     11c:	00 00                	add    BYTE PTR [eax],al
     11e:	00 00                	add    BYTE PTR [eax],al
     120:	b3 81                	mov    bl,0x81
     122:	04 08                	add    al,0x8
     124:	2c 00                	sub    al,0x0
     126:	00 00                	add    BYTE PTR [eax],al
     128:	12 01                	adc    al,BYTE PTR [ecx]
     12a:	00 00                	add    BYTE PTR [eax],al
     12c:	05 04 05 69 6e       	add    eax,0x6e690504
     131:	74 00                	je     133 <__executable_start-0x8047f61>
     133:	06                   	push   es
     134:	f0 00 00             	lock add BYTE PTR [eax],al
     137:	00 02                	add    BYTE PTR [edx],al
     139:	18 06                	sbb    BYTE PTR [esi],al
     13b:	3f                   	aas
     13c:	00 00                	add    BYTE PTR [eax],al
     13e:	00 01                	add    BYTE PTR [ecx],al
     140:	26 00 00             	add    BYTE PTR es:[eax],al
     143:	00 00                	add    BYTE PTR [eax],al
     145:	07                   	pop    es
     146:	eb 00                	jmp    148 <__executable_start-0x8047f4c>
     148:	00 00                	add    BYTE PTR [eax],al
     14a:	01 03                	add    DWORD PTR [ebx],eax
     14c:	05 26 00 00 00       	add    eax,0x26
     151:	5a                   	pop    edx
     152:	00 00                	add    BYTE PTR [eax],al
     154:	00 01                	add    BYTE PTR [ecx],al
     156:	26 00 00             	add    BYTE PTR es:[eax],al
     159:	00 01                	add    BYTE PTR [ecx],al
     15b:	5a                   	pop    edx
     15c:	00 00                	add    BYTE PTR [eax],al
     15e:	00 00                	add    BYTE PTR [eax],al
     160:	02 5f 00             	add    bl,BYTE PTR [edi+0x0]
     163:	00 00                	add    BYTE PTR [eax],al
     165:	02 64 00 00          	add    ah,BYTE PTR [eax+eax*1+0x0]
     169:	00 08                	add    BYTE PTR [eax],cl
     16b:	01 06                	add    DWORD PTR [esi],eax
     16d:	d3 00                	rol    DWORD PTR [eax],cl
     16f:	00 00                	add    BYTE PTR [eax],al
     171:	09 ff                	or     edi,edi
     173:	00 00                	add    BYTE PTR [eax],al
     175:	00 01                	add    BYTE PTR [ecx],al
     177:	07                   	pop    es
     178:	01 b3 81 04 08 2c    	add    DWORD PTR [ebx+0x2c080481],esi
     17e:	00 00                	add    BYTE PTR [eax],al
     180:	00 01                	add    BYTE PTR [ecx],al
     182:	9c                   	pushf
     183:	03 06                	add    eax,DWORD PTR [esi]
     185:	01 00                	add    DWORD PTR [eax],eax
     187:	00 0d 26 00 00 00    	add    BYTE PTR ds:0x26,cl
     18d:	02 91 00 03 0b 01    	add    dl,BYTE PTR [ecx+0x10b0300]
     193:	00 00                	add    BYTE PTR [eax],al
     195:	19 5a 00             	sbb    DWORD PTR [edx+0x0],ebx
     198:	00 00                	add    BYTE PTR [eax],al
     19a:	02 91 04 0a d7 81    	add    dl,BYTE PTR [ecx-0x7e28f5fc]
     1a0:	04 08                	add    al,0x8
     1a2:	3f                   	aas
     1a3:	00 00                	add    BYTE PTR [eax],al
     1a5:	00 ad 00 00 00 0b    	add    BYTE PTR [ebp+0xb000000],ch
     1ab:	02 74 00 03          	add    dh,BYTE PTR [eax+eax*1+0x3]
     1af:	91                   	xchg   ecx,eax
     1b0:	00 06                	add    BYTE PTR [esi],al
     1b2:	00 0c df             	add    BYTE PTR [edi+ebx*8],cl
     1b5:	81 04 08 2d 00 00 00 	add    DWORD PTR [eax+ecx*1],0x2d
     1bc:	00 00                	add    BYTE PTR [eax],al
     1be:	dd 06                	fld    QWORD PTR [esi]
     1c0:	00 00                	add    BYTE PTR [eax],al
     1c2:	05 00 01 04 5f       	add    eax,0x5f040100
     1c7:	01 00                	add    DWORD PTR [eax],eax
     1c9:	00 12                	add    BYTE PTR [edx],dl
     1cb:	0e                   	push   cs
     1cc:	00 00                	add    BYTE PTR [eax],al
     1ce:	00 1d 55 00 00 00    	add    BYTE PTR ds:0x55,bl
     1d4:	00 00                	add    BYTE PTR [eax],al
     1d6:	00 00                	add    BYTE PTR [eax],al
     1d8:	df 81 04 08 db 01    	fild   WORD PTR [ecx+0x1db0804]
     1de:	00 00                	add    BYTE PTR [eax],al
     1e0:	6e                   	outs   dx,BYTE PTR ds:[esi]
     1e1:	01 00                	add    DWORD PTR [eax],eax
     1e3:	00 0c 5d 02 00 00 08 	add    BYTE PTR [ebx*2+0x8000002],cl
     1ea:	30 00                	xor    BYTE PTR [eax],al
     1ec:	00 00                	add    BYTE PTR [eax],al
     1ee:	13 04 05 69 6e 74 00 	adc    eax,DWORD PTR [eax*1+0x746e69]
     1f5:	0c 5b                	or     al,0x5b
     1f7:	02 00                	add    al,BYTE PTR [eax]
     1f9:	00 0c 30             	add    BYTE PTR [eax+esi*1],cl
     1fc:	00 00                	add    BYTE PTR [eax],al
     1fe:	00 14 07             	add    BYTE PTR [edi+eax*1],dl
     201:	04 c8                	add    al,0xc8
     203:	00 00                	add    BYTE PTR [eax],al
     205:	00 03                	add    BYTE PTR [ebx],al
     207:	06                   	push   es
     208:	03 c8                	add    ecx,eax
     20a:	00 00                	add    BYTE PTR [eax],al
     20c:	00 01                	add    BYTE PTR [ecx],al
     20e:	37                   	aaa
     20f:	02 00                	add    al,BYTE PTR [eax]
     211:	00 00                	add    BYTE PTR [eax],al
     213:	01 c3                	add    ebx,eax
     215:	01 00                	add    DWORD PTR [eax],eax
     217:	00 01                	add    BYTE PTR [ecx],al
     219:	01 5a 01             	add    DWORD PTR [edx+0x1],ebx
     21c:	00 00                	add    BYTE PTR [eax],al
     21e:	02 01                	add    al,BYTE PTR [ecx]
     220:	81 01 00 00 03 01    	add    DWORD PTR [ecx],0x1030000
     226:	9b                   	fwait
     227:	01 00                	add    DWORD PTR [eax],eax
     229:	00 04 01             	add    BYTE PTR [ecx+eax*1],al
     22c:	ff 01                	inc    DWORD PTR [ecx]
     22e:	00 00                	add    BYTE PTR [eax],al
     230:	05 01 0a 02 00       	add    eax,0x20a01
     235:	00 06                	add    BYTE PTR [esi],al
     237:	01 91 02 00 00 07    	add    DWORD PTR [ecx+0x7000002],edx
     23d:	01 71 01             	add    DWORD PTR [ecx+0x1],esi
     240:	00 00                	add    BYTE PTR [eax],al
     242:	08 01                	or     BYTE PTR [ecx],al
     244:	8a 01                	mov    al,BYTE PTR [ecx]
     246:	00 00                	add    BYTE PTR [eax],al
     248:	09 01                	or     DWORD PTR [ecx],eax
     24a:	1f                   	pop    ds
     24b:	02 00                	add    al,BYTE PTR [eax]
     24d:	00 0a                	add    BYTE PTR [edx],cl
     24f:	01 e4                	add    esp,esp
     251:	01 00                	add    DWORD PTR [eax],eax
     253:	00 0b                	add    BYTE PTR [ebx],cl
     255:	01 40 02             	add    DWORD PTR [eax+0x2],eax
     258:	00 00                	add    BYTE PTR [eax],al
     25a:	0c 01                	or     al,0x1
     25c:	28 01                	sub    BYTE PTR [ecx],al
     25e:	00 00                	add    BYTE PTR [eax],al
     260:	0d 01 ac 01 00       	or     eax,0x1ac01
     265:	00 0e                	add    BYTE PTR [esi],cl
     267:	01 75 02             	add    DWORD PTR [ebp+0x2],esi
     26a:	00 00                	add    BYTE PTR [eax],al
     26c:	0f 01 9e 02 00 00 10 	lidtd  [esi+0x10000002]
     273:	01 41 01             	add    DWORD PTR [ecx+0x1],eax
     276:	00 00                	add    BYTE PTR [eax],al
     278:	11 01                	adc    DWORD PTR [ecx],eax
     27a:	2d 02 00 00 12       	sub    eax,0x12000002
     27f:	01 13                	add    DWORD PTR [ebx],edx
     281:	02 00                	add    al,BYTE PTR [eax]
     283:	00 13                	add    BYTE PTR [ebx],dl
     285:	00 09                	add    BYTE PTR [ecx],cl
     287:	04 07                	add    al,0x7
     289:	bd 00 00 00 15       	mov    ebp,0x15000000
     28e:	ed                   	in     eax,dx
     28f:	01 00                	add    DWORD PTR [eax],eax
     291:	00 04 10             	add    BYTE PTR [eax+edx*1],al
     294:	06                   	push   es
     295:	f1                   	int1
     296:	00 00                	add    BYTE PTR [eax],al
     298:	00 08                	add    BYTE PTR [eax],cl
     29a:	f1                   	int1
     29b:	00 00                	add    BYTE PTR [eax],al
     29d:	00 08                	add    BYTE PTR [eax],cl
     29f:	30 00                	xor    BYTE PTR [eax],al
     2a1:	00 00                	add    BYTE PTR [eax],al
     2a3:	08 f1                	or     cl,dh
     2a5:	00 00                	add    BYTE PTR [eax],al
     2a7:	00 08                	add    BYTE PTR [eax],cl
     2a9:	f1                   	int1
     2aa:	00 00                	add    BYTE PTR [eax],al
     2ac:	00 16                	add    BYTE PTR [esi],dl
     2ae:	00 0a                	add    BYTE PTR [edx],cl
     2b0:	fd                   	std
     2b1:	00 00                	add    BYTE PTR [eax],al
     2b3:	00 09                	add    BYTE PTR [ecx],cl
     2b5:	01 06                	add    DWORD PTR [esi],eax
     2b7:	d3 00                	rol    DWORD PTR [eax],cl
     2b9:	00 00                	add    BYTE PTR [eax],al
     2bb:	0d f6 00 00 00       	or     eax,0xf6
     2c0:	03 15 01 00 00 b5    	add    edx,DWORD PTR ds:0xb5000001
     2c6:	30 00                	xor    BYTE PTR [eax],al
     2c8:	00 00                	add    BYTE PTR [eax],al
     2ca:	ab                   	stos   DWORD PTR es:[edi],eax
     2cb:	83 04 08 0f          	add    DWORD PTR [eax+ecx*1],0xf
     2cf:	00 00                	add    BYTE PTR [eax],al
     2d1:	00 01                	add    BYTE PTR [ecx],al
     2d3:	9c                   	pushf
     2d4:	45                   	inc    ebp
     2d5:	01 00                	add    DWORD PTR [eax],eax
     2d7:	00 06                	add    BYTE PTR [esi],al
     2d9:	66 64 00 b5 0e 30 00 	data16 add BYTE PTR fs:[ebp+0x300e],dh
     2e0:	00 
     2e1:	00 02                	add    BYTE PTR [edx],al
     2e3:	91                   	xchg   ecx,eax
     2e4:	00 02                	add    BYTE PTR [edx],al
     2e6:	ae                   	scas   al,BYTE PTR es:[edi]
     2e7:	83 04 08 0a          	add    DWORD PTR [eax+ecx*1],0xa
     2eb:	00 00                	add    BYTE PTR [eax],al
     2ed:	00 04 68             	add    BYTE PTR [eax+ebp*2],al
     2f0:	02 00                	add    al,BYTE PTR [eax]
     2f2:	00 b7 0a 30 00 00    	add    BYTE PTR [edi+0x300a],dh
     2f8:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
     2fb:	00 00                	add    BYTE PTR [eax],al
     2fd:	78 00                	js     2ff <__executable_start-0x8047d95>
     2ff:	00 00                	add    BYTE PTR [eax],al
     301:	00 00                	add    BYTE PTR [eax],al
     303:	03 7f 02             	add    edi,DWORD PTR [edi+0x2]
     306:	00 00                	add    BYTE PTR [eax],al
     308:	af                   	scas   eax,DWORD PTR es:[edi]
     309:	88 01                	mov    BYTE PTR [ecx],al
     30b:	00 00                	add    BYTE PTR [eax],al
     30d:	97                   	xchg   edi,eax
     30e:	83 04 08 14          	add    DWORD PTR [eax+ecx*1],0x14
     312:	00 00                	add    BYTE PTR [eax],al
     314:	00 01                	add    BYTE PTR [ecx],al
     316:	9c                   	pushf
     317:	88 01                	mov    BYTE PTR [ecx],al
     319:	00 00                	add    BYTE PTR [eax],al
     31b:	06                   	push   es
     31c:	66 64 00 af 0c 30 00 	data16 add BYTE PTR fs:[edi+0x300c],ch
     323:	00 
     324:	00 02                	add    BYTE PTR [edx],al
     326:	91                   	xchg   ecx,eax
     327:	00 02                	add    BYTE PTR [edx],al
     329:	9a 83 04 08 0a 00 00 	call   0x0:0xa080483
     330:	00 04 68             	add    BYTE PTR [eax+ebp*2],al
     333:	02 00                	add    al,BYTE PTR [eax]
     335:	00 b1 0a 30 00 00    	add    BYTE PTR [ecx+0x300a],dh
     33b:	00 84 00 00 00 82 00 	add    BYTE PTR [eax+eax*1+0x820000],al
     342:	00 00                	add    BYTE PTR [eax],al
     344:	00 00                	add    BYTE PTR [eax],al
     346:	09 01                	or     DWORD PTR [ecx],eax
     348:	02 22                	add    ah,BYTE PTR [edx]
     34a:	01 00                	add    DWORD PTR [eax],eax
     34c:	00 03                	add    BYTE PTR [ebx],al
     34e:	a8 02                	test   al,0x2
     350:	00 00                	add    BYTE PTR [eax],al
     352:	a9 88 01 00 00       	test   eax,0x188
     357:	7e 83                	jle    2dc <__executable_start-0x8047db8>
     359:	04 08                	add    al,0x8
     35b:	19 00                	sbb    DWORD PTR [eax],eax
     35d:	00 00                	add    BYTE PTR [eax],al
     35f:	01 9c e0 01 00 00 06 	add    DWORD PTR [eax+eiz*8+0x6000001],ebx
     366:	66 64 00 a9 0e 30 00 	data16 add BYTE PTR fs:[ecx+0x300e],ch
     36d:	00 
     36e:	00 02                	add    BYTE PTR [edx],al
     370:	91                   	xchg   ecx,eax
     371:	00 05 51 02 00 00    	add    BYTE PTR ds:0x251,al
     377:	a9 17 e0 01 00       	test   eax,0x1e017
     37c:	00 02                	add    BYTE PTR [edx],al
     37e:	91                   	xchg   ecx,eax
     37f:	04 02                	add    al,0x2
     381:	81 83 04 08 0f 00 00 	add    DWORD PTR [ebx+0xf0804],0x68040000
     388:	00 04 68 
     38b:	02 00                	add    al,BYTE PTR [eax]
     38d:	00 ab 0a 30 00 00    	add    BYTE PTR [ebx+0x300a],ch
     393:	00 8e 00 00 00 8c    	add    BYTE PTR [esi-0x74000000],cl
     399:	00 00                	add    BYTE PTR [eax],al
     39b:	00 00                	add    BYTE PTR [eax],al
     39d:	00 0a                	add    BYTE PTR [edx],cl
     39f:	f6 00 00             	test   BYTE PTR [eax],0x0
     3a2:	00 03                	add    BYTE PTR [ebx],al
     3a4:	85 02                	test   DWORD PTR [edx],eax
     3a6:	00 00                	add    BYTE PTR [eax],al
     3a8:	a3 88 01 00 00       	mov    ds:0x188,eax
     3ad:	6a 83                	push   0xffffff83
     3af:	04 08                	add    al,0x8
     3b1:	14 00                	adc    al,0x0
     3b3:	00 00                	add    BYTE PTR [eax],al
     3b5:	01 9c 29 02 00 00 06 	add    DWORD PTR [ecx+ebp*1+0x6000002],ebx
     3bc:	64 69 72 00 a3 14 f1 	imul   esi,DWORD PTR fs:[edx+0x0],0xf114a3
     3c3:	00 
     3c4:	00 00                	add    BYTE PTR [eax],al
     3c6:	02 91 00 02 6d 83    	add    dl,BYTE PTR [ecx-0x7c92fe00]
     3cc:	04 08                	add    al,0x8
     3ce:	0a 00                	or     al,BYTE PTR [eax]
     3d0:	00 00                	add    BYTE PTR [eax],al
     3d2:	04 68                	add    al,0x68
     3d4:	02 00                	add    al,BYTE PTR [eax]
     3d6:	00 a5 0a 30 00 00    	add    BYTE PTR [ebp+0x300a],ah
     3dc:	00 98 00 00 00 96    	add    BYTE PTR [eax-0x6a000000],bl
     3e2:	00 00                	add    BYTE PTR [eax],al
     3e4:	00 00                	add    BYTE PTR [eax],al
     3e6:	00 03                	add    BYTE PTR [ebx],al
     3e8:	6f                   	outs   dx,DWORD PTR ds:[esi]
     3e9:	02 00                	add    al,BYTE PTR [eax]
     3eb:	00 9d 88 01 00 00    	add    BYTE PTR [ebp+0x188],bl
     3f1:	56                   	push   esi
     3f2:	83 04 08 14          	add    DWORD PTR [eax+ecx*1],0x14
     3f6:	00 00                	add    BYTE PTR [eax],al
     3f8:	00 01                	add    BYTE PTR [ecx],al
     3fa:	9c                   	pushf
     3fb:	6d                   	ins    DWORD PTR es:[edi],dx
     3fc:	02 00                	add    al,BYTE PTR [eax]
     3fe:	00 06                	add    BYTE PTR [esi],al
     400:	64 69 72 00 9d 14 f1 	imul   esi,DWORD PTR fs:[edx+0x0],0xf1149d
     407:	00 
     408:	00 00                	add    BYTE PTR [eax],al
     40a:	02 91 00 02 59 83    	add    dl,BYTE PTR [ecx-0x7ca6fe00]
     410:	04 08                	add    al,0x8
     412:	0a 00                	or     al,BYTE PTR [eax]
     414:	00 00                	add    BYTE PTR [eax],al
     416:	04 68                	add    al,0x68
     418:	02 00                	add    al,BYTE PTR [eax]
     41a:	00 9f 0a 30 00 00    	add    BYTE PTR [edi+0x300a],bl
     420:	00 a2 00 00 00 a0    	add    BYTE PTR [edx-0x60000000],ah
     426:	00 00                	add    BYTE PTR [eax],al
     428:	00 00                	add    BYTE PTR [eax],al
     42a:	00 0b                	add    BYTE PTR [ebx],cl
     42c:	94                   	xchg   esp,eax
     42d:	01 00                	add    DWORD PTR [eax],eax
     42f:	00 97 47 83 04 08    	add    BYTE PTR [edi+0x8048347],dl
     435:	0f 00 00             	sldt   WORD PTR [eax]
     438:	00 01                	add    BYTE PTR [ecx],al
     43a:	9c                   	pushf
     43b:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
     43c:	02 00                	add    al,BYTE PTR [eax]
     43e:	00 05 f9 01 00 00    	add    BYTE PTR ds:0x1f9,al
     444:	97                   	xchg   edi,eax
     445:	11 37                	adc    DWORD PTR [edi],esi
     447:	00 00                	add    BYTE PTR [eax],al
     449:	00 02                	add    BYTE PTR [edx],al
     44b:	91                   	xchg   ecx,eax
     44c:	00 02                	add    BYTE PTR [edx],al
     44e:	4a                   	dec    edx
     44f:	83 04 08 0a          	add    DWORD PTR [eax+ecx*1],0xa
     453:	00 00                	add    BYTE PTR [eax],al
     455:	00 07                	add    BYTE PTR [edi],al
     457:	68 02 00 00 99       	push   0x99000002
     45c:	30 00                	xor    BYTE PTR [eax],al
     45e:	00 00                	add    BYTE PTR [eax],al
     460:	00 00                	add    BYTE PTR [eax],al
     462:	03 be 01 00 00 91    	add    edi,DWORD PTR [esi-0x6effffff]
     468:	37                   	aaa
     469:	00 00                	add    BYTE PTR [eax],al
     46b:	00 33                	add    BYTE PTR [ebx],dh
     46d:	83 04 08 14          	add    DWORD PTR [eax+ecx*1],0x14
     471:	00 00                	add    BYTE PTR [eax],al
     473:	00 01                	add    BYTE PTR [ecx],al
     475:	9c                   	pushf
     476:	f5                   	cmc
     477:	02 00                	add    al,BYTE PTR [eax]
     479:	00 06                	add    BYTE PTR [esi],al
     47b:	66 64 00 91 0b 30 00 	data16 add BYTE PTR fs:[ecx+0x300b],dl
     482:	00 
     483:	00 02                	add    BYTE PTR [edx],al
     485:	91                   	xchg   ecx,eax
     486:	00 05 63 01 00 00    	add    BYTE PTR ds:0x163,al
     48c:	91                   	xchg   ecx,eax
     48d:	15 f5 02 00 00       	adc    eax,0x2f5
     492:	02 91 04 02 36 83    	add    dl,BYTE PTR [ecx-0x7cc9fdfc]
     498:	04 08                	add    al,0x8
     49a:	0f 00 00             	sldt   WORD PTR [eax]
     49d:	00 04 68             	add    BYTE PTR [eax+ebp*2],al
     4a0:	02 00                	add    al,BYTE PTR [eax]
     4a2:	00 93 0a 30 00 00    	add    BYTE PTR [ebx+0x300a],dl
     4a8:	00 ac 00 00 00 aa 00 	add    BYTE PTR [eax+eax*1+0xaa0000],ch
     4af:	00 00                	add    BYTE PTR [eax],al
     4b1:	00 00                	add    BYTE PTR [eax],al
     4b3:	17                   	pop    ss
     4b4:	04 0b                	add    al,0xb
     4b6:	8b 02                	mov    eax,DWORD PTR [edx]
     4b8:	00 00                	add    BYTE PTR [eax],al
     4ba:	8b 24 83             	mov    esp,DWORD PTR [ebx+eax*4]
     4bd:	04 08                	add    al,0x8
     4bf:	0f 00 00             	sldt   WORD PTR [eax]
     4c2:	00 01                	add    BYTE PTR [ecx],al
     4c4:	9c                   	pushf
     4c5:	2d 03 00 00 06       	sub    eax,0x6000003
     4ca:	66 64 00 8b 0c 30 00 	data16 add BYTE PTR fs:[ebx+0x300c],cl
     4d1:	00 
     4d2:	00 02                	add    BYTE PTR [edx],al
     4d4:	91                   	xchg   ecx,eax
     4d5:	00 02                	add    BYTE PTR [edx],al
     4d7:	27                   	daa
     4d8:	83 04 08 0a          	add    DWORD PTR [eax+ecx*1],0xa
     4dc:	00 00                	add    BYTE PTR [eax],al
     4de:	00 07                	add    BYTE PTR [edi],al
     4e0:	68 02 00 00 8d       	push   0x8d000002
     4e5:	30 00                	xor    BYTE PTR [eax],al
     4e7:	00 00                	add    BYTE PTR [eax],al
     4e9:	00 00                	add    BYTE PTR [eax],al
     4eb:	03 63 02             	add    esp,DWORD PTR [ebx+0x2]
     4ee:	00 00                	add    BYTE PTR [eax],al
     4f0:	85 c8                	test   eax,ecx
     4f2:	00 00                	add    BYTE PTR [eax],al
     4f4:	00 15 83 04 08 0f    	add    BYTE PTR ds:0xf080483,dl
     4fa:	00 00                	add    BYTE PTR [eax],al
     4fc:	00 01                	add    BYTE PTR [ecx],al
     4fe:	9c                   	pushf
     4ff:	70 03                	jo     504 <__executable_start-0x8047b90>
     501:	00 00                	add    BYTE PTR [eax],al
     503:	06                   	push   es
     504:	66 64 00 85 0b 30 00 	data16 add BYTE PTR fs:[ebp+0x300b],al
     50b:	00 
     50c:	00 02                	add    BYTE PTR [edx],al
     50e:	91                   	xchg   ecx,eax
     50f:	00 02                	add    BYTE PTR [edx],al
     511:	18 83 04 08 0a 00    	sbb    BYTE PTR [ebx+0xa0804],al
     517:	00 00                	add    BYTE PTR [eax],al
     519:	04 68                	add    al,0x68
     51b:	02 00                	add    al,BYTE PTR [eax]
     51d:	00 87 0a 30 00 00    	add    BYTE PTR [edi+0x300a],al
     523:	00 b6 00 00 00 b4    	add    BYTE PTR [esi-0x4c000000],dh
     529:	00 00                	add    BYTE PTR [eax],al
     52b:	00 00                	add    BYTE PTR [eax],al
     52d:	00 0b                	add    BYTE PTR [ebx],cl
     52f:	28 02                	sub    BYTE PTR [edx],al
     531:	00 00                	add    BYTE PTR [eax],al
     533:	7f 01                	jg     536 <__executable_start-0x8047b5e>
     535:	83 04 08 14          	add    DWORD PTR [eax+ecx*1],0x14
     539:	00 00                	add    BYTE PTR [eax],al
     53b:	00 01                	add    BYTE PTR [ecx],al
     53d:	9c                   	pushf
     53e:	b4 03                	mov    ah,0x3
     540:	00 00                	add    BYTE PTR [eax],al
     542:	06                   	push   es
     543:	66 64 00 7f 0b       	data16 add BYTE PTR fs:[edi+0xb],bh
     548:	30 00                	xor    BYTE PTR [eax],al
     54a:	00 00                	add    BYTE PTR [eax],al
     54c:	02 91 00 05 d1 01    	add    dl,BYTE PTR [ecx+0x1d10500]
     552:	00 00                	add    BYTE PTR [eax],al
     554:	7f 18                	jg     56e <__executable_start-0x8047b26>
     556:	c8 00 00 00          	enter  0x0,0x0
     55a:	02 91 04 02 04 83    	add    dl,BYTE PTR [ecx-0x7cfbfdfc]
     560:	04 08                	add    al,0x8
     562:	0f 00 00             	sldt   WORD PTR [eax]
     565:	00 07                	add    BYTE PTR [edi],al
     567:	68 02 00 00 81       	push   0x81000002
     56c:	30 00                	xor    BYTE PTR [eax],al
     56e:	00 00                	add    BYTE PTR [eax],al
     570:	00 00                	add    BYTE PTR [eax],al
     572:	03 a6 01 00 00 79    	add    esp,DWORD PTR [esi+0x79000001]
     578:	30 00                	xor    BYTE PTR [eax],al
     57a:	00 00                	add    BYTE PTR [eax],al
     57c:	e9 82 04 08 18       	jmp    18080a03 <explained.0+0xfd35983>
     581:	00 00                	add    BYTE PTR [eax],al
     583:	00 01                	add    BYTE PTR [ecx],al
     585:	9c                   	pushf
     586:	13 04 00             	adc    eax,DWORD PTR [eax+eax*1]
     589:	00 06                	add    BYTE PTR [esi],al
     58b:	66 64 00 79 0c       	data16 add BYTE PTR fs:[ecx+0xc],bh
     590:	30 00                	xor    BYTE PTR [eax],al
     592:	00 00                	add    BYTE PTR [eax],al
     594:	02 91 00 05 31 01    	add    dl,BYTE PTR [ecx+0x1310500]
     59a:	00 00                	add    BYTE PTR [eax],al
     59c:	79 1c                	jns    5ba <__executable_start-0x8047ada>
     59e:	13 04 00             	adc    eax,DWORD PTR [eax+eax*1]
     5a1:	00 02                	add    BYTE PTR [edx],al
     5a3:	91                   	xchg   ecx,eax
     5a4:	04 05                	add    al,0x5
     5a6:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
     5a9:	00 79 2d             	add    BYTE PTR [ecx+0x2d],bh
     5ac:	c8 00 00 00          	enter  0x0,0x0
     5b0:	02 91 08 02 ec 82    	add    dl,BYTE PTR [ecx-0x7d13fdf8]
     5b6:	04 08                	add    al,0x8
     5b8:	13 00                	adc    eax,DWORD PTR [eax]
     5ba:	00 00                	add    BYTE PTR [eax],al
     5bc:	04 68                	add    al,0x68
     5be:	02 00                	add    al,BYTE PTR [eax]
     5c0:	00 7b 0a             	add    BYTE PTR [ebx+0xa],bh
     5c3:	30 00                	xor    BYTE PTR [eax],al
     5c5:	00 00                	add    BYTE PTR [eax],al
     5c7:	c0 00 00             	rol    BYTE PTR [eax],0x0
     5ca:	00 be 00 00 00 00    	add    BYTE PTR [esi+0x0],bh
     5d0:	00 0a                	add    BYTE PTR [edx],cl
     5d2:	18 04 00             	sbb    BYTE PTR [eax+eax*1],al
     5d5:	00 18                	add    BYTE PTR [eax],bl
     5d7:	03 cc                	add    ecx,esp
     5d9:	01 00                	add    DWORD PTR [eax],eax
     5db:	00 73 30             	add    BYTE PTR [ebx+0x30],dh
     5de:	00 00                	add    BYTE PTR [eax],al
     5e0:	00 d1                	add    cl,dl
     5e2:	82 04 08 18          	add    BYTE PTR [eax+ecx*1],0x18
     5e6:	00 00                	add    BYTE PTR [eax],al
     5e8:	00 01                	add    BYTE PTR [ecx],al
     5ea:	9c                   	pushf
     5eb:	78 04                	js     5f1 <__executable_start-0x8047aa3>
     5ed:	00 00                	add    BYTE PTR [eax],al
     5ef:	06                   	push   es
     5f0:	66 64 00 73 0b       	data16 add BYTE PTR fs:[ebx+0xb],dh
     5f5:	30 00                	xor    BYTE PTR [eax],al
     5f7:	00 00                	add    BYTE PTR [eax],al
     5f9:	02 91 00 05 31 01    	add    dl,BYTE PTR [ecx+0x1310500]
     5ff:	00 00                	add    BYTE PTR [eax],al
     601:	73 15                	jae    618 <__executable_start-0x8047a7c>
     603:	f5                   	cmc
     604:	02 00                	add    al,BYTE PTR [eax]
     606:	00 02                	add    BYTE PTR [edx],al
     608:	91                   	xchg   ecx,eax
     609:	04 05                	add    al,0x5
     60b:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
     60e:	00 73 26             	add    BYTE PTR [ebx+0x26],dh
     611:	c8 00 00 00          	enter  0x0,0x0
     615:	02 91 08 02 d4 82    	add    dl,BYTE PTR [ecx-0x7d2bfdf8]
     61b:	04 08                	add    al,0x8
     61d:	13 00                	adc    eax,DWORD PTR [eax]
     61f:	00 00                	add    BYTE PTR [eax],al
     621:	04 68                	add    al,0x68
     623:	02 00                	add    al,BYTE PTR [eax]
     625:	00 75 0a             	add    BYTE PTR [ebp+0xa],dh
     628:	30 00                	xor    BYTE PTR [eax],al
     62a:	00 00                	add    BYTE PTR [eax],al
     62c:	ca 00 00             	retf   0x0
     62f:	00 c8                	add    al,cl
     631:	00 00                	add    BYTE PTR [eax],al
     633:	00 00                	add    BYTE PTR [eax],al
     635:	00 03                	add    BYTE PTR [ebx],al
     637:	68 01 00 00 6d       	push   0x6d000001
     63c:	30 00                	xor    BYTE PTR [eax],al
     63e:	00 00                	add    BYTE PTR [eax],al
     640:	c2 82 04             	ret    0x482
     643:	08 0f                	or     BYTE PTR [edi],cl
     645:	00 00                	add    BYTE PTR [eax],al
     647:	00 01                	add    BYTE PTR [ecx],al
     649:	9c                   	pushf
     64a:	bb 04 00 00 06       	mov    ebx,0x6000004
     64f:	66 64 00 6d 0f       	data16 add BYTE PTR fs:[ebp+0xf],ch
     654:	30 00                	xor    BYTE PTR [eax],al
     656:	00 00                	add    BYTE PTR [eax],al
     658:	02 91 00 02 c5 82    	add    dl,BYTE PTR [ecx-0x7d3afe00]
     65e:	04 08                	add    al,0x8
     660:	0a 00                	or     al,BYTE PTR [eax]
     662:	00 00                	add    BYTE PTR [eax],al
     664:	04 68                	add    al,0x68
     666:	02 00                	add    al,BYTE PTR [eax]
     668:	00 6f 0a             	add    BYTE PTR [edi+0xa],ch
     66b:	30 00                	xor    BYTE PTR [eax],al
     66d:	00 00                	add    BYTE PTR [eax],al
     66f:	d4 00                	aam    0x0
     671:	00 00                	add    BYTE PTR [eax],al
     673:	d2 00                	rol    BYTE PTR [eax],cl
     675:	00 00                	add    BYTE PTR [eax],al
     677:	00 00                	add    BYTE PTR [eax],al
     679:	03 10                	add    edx,DWORD PTR [eax]
     67b:	01 00                	add    DWORD PTR [eax],eax
     67d:	00 67 30             	add    BYTE PTR [edi+0x30],ah
     680:	00 00                	add    BYTE PTR [eax],al
     682:	00 b3 82 04 08 0f    	add    BYTE PTR [ebx+0xf080482],dh
     688:	00 00                	add    BYTE PTR [eax],al
     68a:	00 01                	add    BYTE PTR [ecx],al
     68c:	9c                   	pushf
     68d:	ff 04 00             	inc    DWORD PTR [eax+eax*1]
     690:	00 05 56 02 00 00    	add    BYTE PTR ds:0x256,al
     696:	67 13 f1             	addr16 adc esi,ecx
     699:	00 00                	add    BYTE PTR [eax],al
     69b:	00 02                	add    BYTE PTR [edx],al
     69d:	91                   	xchg   ecx,eax
     69e:	00 02                	add    BYTE PTR [edx],al
     6a0:	b6 82                	mov    dh,0x82
     6a2:	04 08                	add    al,0x8
     6a4:	0a 00                	or     al,BYTE PTR [eax]
     6a6:	00 00                	add    BYTE PTR [eax],al
     6a8:	04 68                	add    al,0x68
     6aa:	02 00                	add    al,BYTE PTR [eax]
     6ac:	00 69 0a             	add    BYTE PTR [ecx+0xa],ch
     6af:	30 00                	xor    BYTE PTR [eax],al
     6b1:	00 00                	add    BYTE PTR [eax],al
     6b3:	de 00                	fiadd  WORD PTR [eax]
     6b5:	00 00                	add    BYTE PTR [eax],al
     6b7:	dc 00                	fadd   QWORD PTR [eax]
     6b9:	00 00                	add    BYTE PTR [eax],al
     6bb:	00 00                	add    BYTE PTR [eax],al
     6bd:	03 b7 01 00 00 61    	add    esi,DWORD PTR [edi+0x61000001]
     6c3:	88 01                	mov    BYTE PTR [ecx],al
     6c5:	00 00                	add    BYTE PTR [eax],al
     6c7:	9f                   	lahf
     6c8:	82 04 08 14          	add    BYTE PTR [eax+ecx*1],0x14
     6cc:	00 00                	add    BYTE PTR [eax],al
     6ce:	00 01                	add    BYTE PTR [ecx],al
     6d0:	9c                   	pushf
     6d1:	43                   	inc    ebx
     6d2:	05 00 00 05 56       	add    eax,0x56050000
     6d7:	02 00                	add    al,BYTE PTR [eax]
     6d9:	00 61 15             	add    BYTE PTR [ecx+0x15],ah
     6dc:	f1                   	int1
     6dd:	00 00                	add    BYTE PTR [eax],al
     6df:	00 02                	add    BYTE PTR [edx],al
     6e1:	91                   	xchg   ecx,eax
     6e2:	00 02                	add    BYTE PTR [edx],al
     6e4:	a2 82 04 08 0a       	mov    ds:0xa080482,al
     6e9:	00 00                	add    BYTE PTR [eax],al
     6eb:	00 04 68             	add    BYTE PTR [eax+ebp*2],al
     6ee:	02 00                	add    al,BYTE PTR [eax]
     6f0:	00 63 0a             	add    BYTE PTR [ebx+0xa],ah
     6f3:	30 00                	xor    BYTE PTR [eax],al
     6f5:	00 00                	add    BYTE PTR [eax],al
     6f7:	e8 00 00 00 e6       	call   e60006fc <explained.0+0xddcb567c>
     6fc:	00 00                	add    BYTE PTR [eax],al
     6fe:	00 00                	add    BYTE PTR [eax],al
     700:	00 03                	add    BYTE PTR [ebx],al
     702:	7a 01                	jp     705 <__executable_start-0x804798f>
     704:	00 00                	add    BYTE PTR [eax],al
     706:	5b                   	pop    ebx
     707:	88 01                	mov    BYTE PTR [ecx],al
     709:	00 00                	add    BYTE PTR [eax],al
     70b:	86 82 04 08 19 00    	xchg   BYTE PTR [edx+0x190804],al
     711:	00 00                	add    BYTE PTR [eax],al
     713:	01 9c 95 05 00 00 05 	add    DWORD PTR [ebp+edx*4+0x5000005],ebx
     71a:	56                   	push   esi
     71b:	02 00                	add    al,BYTE PTR [eax]
     71d:	00 5b 15             	add    BYTE PTR [ebx+0x15],bl
     720:	f1                   	int1
     721:	00 00                	add    BYTE PTR [eax],al
     723:	00 02                	add    BYTE PTR [edx],al
     725:	91                   	xchg   ecx,eax
     726:	00 05 4d 01 00 00    	add    BYTE PTR ds:0x14d,al
     72c:	5b                   	pop    ebx
     72d:	24 c8                	and    al,0xc8
     72f:	00 00                	add    BYTE PTR [eax],al
     731:	00 02                	add    BYTE PTR [edx],al
     733:	91                   	xchg   ecx,eax
     734:	04 02                	add    al,0x2
     736:	89 82 04 08 0f 00    	mov    DWORD PTR [edx+0xf0804],eax
     73c:	00 00                	add    BYTE PTR [eax],al
     73e:	04 68                	add    al,0x68
     740:	02 00                	add    al,BYTE PTR [eax]
     742:	00 5d 0a             	add    BYTE PTR [ebp+0xa],bl
     745:	30 00                	xor    BYTE PTR [eax],al
     747:	00 00                	add    BYTE PTR [eax],al
     749:	f2 00 00             	repnz add BYTE PTR [eax],al
     74c:	00 f0                	add    al,dh
     74e:	00 00                	add    BYTE PTR [eax],al
     750:	00 00                	add    BYTE PTR [eax],al
     752:	00 03                	add    BYTE PTR [ebx],al
     754:	da 01                	fiadd  DWORD PTR [ecx]
     756:	00 00                	add    BYTE PTR [eax],al
     758:	55                   	push   ebp
     759:	30 00                	xor    BYTE PTR [eax],al
     75b:	00 00                	add    BYTE PTR [eax],al
     75d:	77 82                	ja     6e1 <__executable_start-0x80479b3>
     75f:	04 08                	add    al,0x8
     761:	0f 00 00             	sldt   WORD PTR [eax]
     764:	00 01                	add    BYTE PTR [ecx],al
     766:	9c                   	pushf
     767:	d9 05 00 00 06 70    	fld    DWORD PTR ds:0x70060000
     76d:	69 64 00 55 0d 26 00 	imul   esp,DWORD PTR [eax+eax*1+0x55],0x260d
     774:	00 
     775:	00 02                	add    BYTE PTR [edx],al
     777:	91                   	xchg   ecx,eax
     778:	00 02                	add    BYTE PTR [edx],al
     77a:	7a 82                	jp     6fe <__executable_start-0x8047996>
     77c:	04 08                	add    al,0x8
     77e:	0a 00                	or     al,BYTE PTR [eax]
     780:	00 00                	add    BYTE PTR [eax],al
     782:	04 68                	add    al,0x68
     784:	02 00                	add    al,BYTE PTR [eax]
     786:	00 57 0a             	add    BYTE PTR [edi+0xa],dl
     789:	30 00                	xor    BYTE PTR [eax],al
     78b:	00 00                	add    BYTE PTR [eax],al
     78d:	fc                   	cld
     78e:	00 00                	add    BYTE PTR [eax],al
     790:	00 fa                	add    dl,bh
     792:	00 00                	add    BYTE PTR [eax],al
     794:	00 00                	add    BYTE PTR [eax],al
     796:	00 03                	add    BYTE PTR [ebx],al
     798:	df 01                	fild   WORD PTR [ecx]
     79a:	00 00                	add    BYTE PTR [eax],al
     79c:	4f                   	dec    edi
     79d:	26 00 00             	add    BYTE PTR es:[eax],al
     7a0:	00 68 82             	add    BYTE PTR [eax-0x7e],ch
     7a3:	04 08                	add    al,0x8
     7a5:	0f 00 00             	sldt   WORD PTR [eax]
     7a8:	00 01                	add    BYTE PTR [ecx],al
     7aa:	9c                   	pushf
     7ab:	1d 06 00 00 05       	sbb    eax,0x5000006
     7b0:	56                   	push   esi
     7b1:	02 00                	add    al,BYTE PTR [eax]
     7b3:	00 4f 13             	add    BYTE PTR [edi+0x13],cl
     7b6:	f1                   	int1
     7b7:	00 00                	add    BYTE PTR [eax],al
     7b9:	00 02                	add    BYTE PTR [edx],al
     7bb:	91                   	xchg   ecx,eax
     7bc:	00 02                	add    BYTE PTR [edx],al
     7be:	6b 82 04 08 0a 00 00 	imul   eax,DWORD PTR [edx+0xa0804],0x0
     7c5:	00 04 68             	add    BYTE PTR [eax+ebp*2],al
     7c8:	02 00                	add    al,BYTE PTR [eax]
     7ca:	00 51 12             	add    BYTE PTR [ecx+0x12],dl
     7cd:	30 00                	xor    BYTE PTR [eax],al
     7cf:	00 00                	add    BYTE PTR [eax],al
     7d1:	06                   	push   es
     7d2:	01 00                	add    DWORD PTR [eax],eax
     7d4:	00 04 01             	add    BYTE PTR [ecx+eax*1],al
     7d7:	00 00                	add    BYTE PTR [eax],al
     7d9:	00 00                	add    BYTE PTR [eax],al
     7db:	19 f0                	sbb    eax,esi
     7dd:	00 00                	add    BYTE PTR [eax],al
     7df:	00 01                	add    BYTE PTR [ecx],al
     7e1:	48                   	dec    eax
     7e2:	01 22                	add    DWORD PTR [edx],esp
     7e4:	82 04 08 46          	add    BYTE PTR [eax+ecx*1],0x46
     7e8:	00 00                	add    BYTE PTR [eax],al
     7ea:	00 01                	add    BYTE PTR [ecx],al
     7ec:	9c                   	pushf
     7ed:	7d 06                	jge    7f5 <__executable_start-0x804789f>
     7ef:	00 00                	add    BYTE PTR [eax],al
     7f1:	05 4a 02 00 00       	add    eax,0x24a
     7f6:	48                   	dec    eax
     7f7:	0b 30                	or     esi,DWORD PTR [eax]
     7f9:	00 00                	add    BYTE PTR [eax],al
     7fb:	00 02                	add    BYTE PTR [edx],al
     7fd:	91                   	xchg   ecx,eax
     7fe:	00 0e                	add    BYTE PTR [esi],cl
     800:	38 01                	cmp    BYTE PTR [ecx],al
     802:	00 00                	add    BYTE PTR [eax],al
     804:	8d 06                	lea    eax,[esi]
     806:	00 00                	add    BYTE PTR [eax],al
     808:	05 03 b0 a2 04       	add    eax,0x4a2b003
     80d:	08 0f                	or     BYTE PTR [edi],cl
     80f:	34 82                	xor    al,0x82
     811:	04 08                	add    al,0x8
     813:	0a 00                	or     al,BYTE PTR [eax]
     815:	00 00                	add    BYTE PTR [eax],al
     817:	68 06 00 00 07       	push   0x7000006
     81c:	68 02 00 00 4a       	push   0x4a000002
     821:	30 00                	xor    BYTE PTR [eax],al
     823:	00 00                	add    BYTE PTR [eax],al
     825:	00 10                	add    BYTE PTR [eax],dl
     827:	68 82 04 08 cf       	push   0xcf080482
     82c:	00 00                	add    BYTE PTR [eax],al
     82e:	00 11                	add    BYTE PTR [ecx],dl
     830:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
     834:	03 43 ab             	add    eax,DWORD PTR [ebx-0x55]
     837:	04 08                	add    al,0x8
     839:	00 00                	add    BYTE PTR [eax],al
     83b:	1a fd                	sbb    bh,ch
     83d:	00 00                	add    BYTE PTR [eax],al
     83f:	00 8d 06 00 00 1b    	add    BYTE PTR [ebp+0x1b000006],cl
     845:	c8 00 00 00          	enter  0x0,0x0
     849:	04 00                	add    al,0x0
     84b:	0d 7d 06 00 00       	or     eax,0x67d
     850:	1c 1d                	sbb    al,0x1d
     852:	01 00                	add    DWORD PTR [eax],eax
     854:	00 01                	add    BYTE PTR [ecx],al
     856:	41                   	inc    ecx
     857:	01 df                	add    edi,ebx
     859:	81 04 08 43 00 00 00 	add    DWORD PTR [eax+ecx*1],0x43
     860:	01 9c 0e 38 01 00 00 	add    DWORD PTR [esi+ecx*1+0x138],ebx
     867:	8d 06                	lea    eax,[esi]
     869:	00 00                	add    BYTE PTR [eax],al
     86b:	05 03 b8 a2 04       	add    eax,0x4a2b803
     870:	08 0f                	or     BYTE PTR [edi],cl
     872:	f1                   	int1
     873:	81 04 08 07 00 00 00 	add    DWORD PTR [eax+ecx*1],0x7
     87a:	cb                   	retf
     87b:	06                   	push   es
     87c:	00 00                	add    BYTE PTR [eax],al
     87e:	07                   	pop    es
     87f:	68 02 00 00 43       	push   0x43000002
     884:	30 00                	xor    BYTE PTR [eax],al
     886:	00 00                	add    BYTE PTR [eax],al
     888:	00 10                	add    BYTE PTR [eax],dl
     88a:	22 82 04 08 cf 00    	and    al,BYTE PTR [edx+0xcf0804]
     890:	00 00                	add    BYTE PTR [eax],al
     892:	11 02                	adc    DWORD PTR [edx],eax
     894:	74 00                	je     896 <__executable_start-0x80477fe>
     896:	05 03 43 ab 04       	add    eax,0x4ab4303
     89b:	08 00                	or     BYTE PTR [eax],al
     89d:	00 00                	add    BYTE PTR [eax],al
     89f:	8a 01                	mov    al,BYTE PTR [ecx]
     8a1:	00 00                	add    BYTE PTR [eax],al
     8a3:	05 00 01 04 fc       	add    eax,0xfc040100
     8a8:	02 00                	add    al,BYTE PTR [eax]
     8aa:	00 08                	add    BYTE PTR [eax],cl
     8ac:	0e                   	push   cs
     8ad:	00 00                	add    BYTE PTR [eax],al
     8af:	00 1d 96 00 00 00    	add    BYTE PTR ds:0x96,bl
     8b5:	00 00                	add    BYTE PTR [eax],al
     8b7:	00 00                	add    BYTE PTR [eax],al
     8b9:	ba 83 04 08 66       	mov    edx,0x66080483
     8be:	00 00                	add    BYTE PTR [eax],al
     8c0:	00 1a                	add    BYTE PTR [edx],bl
     8c2:	03 00                	add    eax,DWORD PTR [eax]
     8c4:	00 09                	add    BYTE PTR [ecx],cl
     8c6:	ca 02 00             	retf   0x2
     8c9:	00 04 07             	add    BYTE PTR [edi+eax*1],al
     8cc:	1b 32                	sbb    esi,DWORD PTR [edx]
     8ce:	00 00                	add    BYTE PTR [eax],al
     8d0:	00 0a                	add    BYTE PTR [edx],cl
     8d2:	04 c0                	add    al,0xc0
     8d4:	02 00                	add    al,BYTE PTR [eax]
     8d6:	00 3c 00             	add    BYTE PTR [eax+eax*1],bh
     8d9:	00 00                	add    BYTE PTR [eax],al
     8db:	01 01                	add    DWORD PTR [ecx],eax
     8dd:	06                   	push   es
     8de:	d3 00                	rol    DWORD PTR [eax],cl
     8e0:	00 00                	add    BYTE PTR [eax],al
     8e2:	0b 3c 00             	or     edi,DWORD PTR [eax+eax*1]
     8e5:	00 00                	add    BYTE PTR [eax],al
     8e7:	0c 04                	or     al,0x4
     8e9:	05 69 6e 74 00       	add    eax,0x746e69
     8ee:	01 04 07             	add    DWORD PTR [edi+eax*1],eax
     8f1:	bd 00 00 00 01       	mov    ebp,0x1000000
     8f6:	01 06                	add    DWORD PTR [esi],eax
     8f8:	cc                   	int3
     8f9:	00 00                	add    BYTE PTR [eax],al
     8fb:	00 01                	add    BYTE PTR [ecx],al
     8fd:	02 05 f5 00 00 00    	add    al,BYTE PTR ds:0xf5
     903:	01 08                	add    DWORD PTR [eax],ecx
     905:	05 00 00 00 00       	add    eax,0x0
     90a:	01 01                	add    DWORD PTR [ecx],eax
     90c:	08 ca                	or     dl,cl
     90e:	00 00                	add    BYTE PTR [eax],al
     910:	00 01                	add    BYTE PTR [ecx],al
     912:	02 07                	add    al,BYTE PTR [edi]
     914:	d8 00                	fadd   DWORD PTR [eax]
     916:	00 00                	add    BYTE PTR [eax],al
     918:	01 08                	add    DWORD PTR [eax],ecx
     91a:	07                   	pop    es
     91b:	b3 00                	mov    bl,0x0
     91d:	00 00                	add    BYTE PTR [eax],al
     91f:	0d f0 00 00 00       	or     eax,0xf0
     924:	02 18                	add    bl,BYTE PTR [eax]
     926:	06                   	push   es
     927:	92                   	xchg   edx,eax
     928:	00 00                	add    BYTE PTR [eax],al
     92a:	00 02                	add    BYTE PTR [edx],al
     92c:	48                   	dec    eax
     92d:	00 00                	add    BYTE PTR [eax],al
     92f:	00 00                	add    BYTE PTR [eax],al
     931:	0e                   	push   cs
     932:	b0 02                	mov    al,0x2
     934:	00 00                	add    BYTE PTR [eax],al
     936:	05 12 06 06 21       	add    eax,0x21060612
     93b:	03 00                	add    eax,DWORD PTR [eax]
     93d:	00 15 48 00 00 00    	add    BYTE PTR ds:0x48,dl
     943:	b3 00                	mov    bl,0x0
     945:	00 00                	add    BYTE PTR [eax],al
     947:	02 b3 00 00 00 02    	add    dh,BYTE PTR [ebx+0x2000000]
     94d:	26 00 00             	add    BYTE PTR es:[eax],al
     950:	00 00                	add    BYTE PTR [eax],al
     952:	0f 04                	(bad)
     954:	43                   	inc    ebx
     955:	00 00                	add    BYTE PTR [eax],al
     957:	00 06                	add    BYTE PTR [esi],al
     959:	46                   	inc    esi
     95a:	05 00 00 13 48       	add    eax,0x48130000
     95f:	00 00                	add    BYTE PTR [eax],al
     961:	00 ce                	add    dh,cl
     963:	00 00                	add    BYTE PTR [eax],al
     965:	00 02                	add    BYTE PTR [edx],al
     967:	b3 00                	mov    bl,0x0
     969:	00 00                	add    BYTE PTR [eax],al
     96b:	07                   	pop    es
     96c:	00 10                	add    BYTE PTR [eax],dl
     96e:	ed                   	in     eax,dx
     96f:	01 00                	add    DWORD PTR [eax],eax
     971:	00 01                	add    BYTE PTR [ecx],al
     973:	0a 01                	or     al,BYTE PTR [ecx]
     975:	ba 83 04 08 66       	mov    edx,0x66080483
     97a:	00 00                	add    BYTE PTR [eax],al
     97c:	00 01                	add    BYTE PTR [ecx],al
     97e:	9c                   	pushf
     97f:	03 56 02             	add    edx,DWORD PTR [esi+0x2]
     982:	00 00                	add    BYTE PTR [eax],al
     984:	0a 1a                	or     bl,BYTE PTR [edx]
     986:	b3 00                	mov    bl,0x0
     988:	00 00                	add    BYTE PTR [eax],al
     98a:	02 91 00 03 88 04    	add    dl,BYTE PTR [ecx+0x4880300]
     990:	00 00                	add    BYTE PTR [eax],al
     992:	0a 24 48             	or     ah,BYTE PTR [eax+ecx*2]
     995:	00 00                	add    BYTE PTR [eax],al
     997:	00 02                	add    BYTE PTR [edx],al
     999:	91                   	xchg   ecx,eax
     99a:	04 03                	add    al,0x3
     99c:	da 02                	fiadd  DWORD PTR [edx]
     99e:	00 00                	add    BYTE PTR [eax],al
     9a0:	0a 36                	or     dh,BYTE PTR [esi]
     9a2:	b3 00                	mov    bl,0x0
     9a4:	00 00                	add    BYTE PTR [eax],al
     9a6:	02 91 08 03 d2 02    	add    dl,BYTE PTR [ecx+0x2d20308]
     9ac:	00 00                	add    BYTE PTR [eax],al
     9ae:	0b 1a                	or     ebx,DWORD PTR [edx]
     9b0:	b3 00                	mov    bl,0x0
     9b2:	00 00                	add    BYTE PTR [eax],al
     9b4:	02 91 0c 07 11 e3    	add    dl,BYTE PTR [ecx-0x1ceef8f4]
     9ba:	02 00                	add    al,BYTE PTR [eax]
     9bc:	00 01                	add    BYTE PTR [ecx],al
     9be:	0d 0b 26 00 00       	or     eax,0x260b
     9c3:	00 1e                	add    BYTE PTR [esi],bl
     9c5:	01 00                	add    DWORD PTR [eax],eax
     9c7:	00 1a                	add    BYTE PTR [edx],bl
     9c9:	01 00                	add    DWORD PTR [eax],eax
     9cb:	00 05 ef 83 04 08    	add    BYTE PTR ds:0x80483ef,al
     9d1:	b9 00 00 00 45       	mov    ecx,0x45000000
     9d6:	01 00                	add    DWORD PTR [eax],eax
     9d8:	00 04 02             	add    BYTE PTR [edx+eax*1],al
     9db:	74 00                	je     9dd <__executable_start-0x80476b7>
     9dd:	05 03 80 aa 04       	add    eax,0x4aa8003
     9e2:	08 00                	or     BYTE PTR [eax],al
     9e4:	05 01 84 04 08       	add    eax,0x8048401
     9e9:	9a 00 00 00 5b 01 00 	call   0x1:0x5b000000
     9f0:	00 04 02             	add    BYTE PTR [edx+eax*1],al
     9f3:	74 00                	je     9f5 <__executable_start-0x804769f>
     9f5:	03 91 0c 06 00 05    	add    edx,DWORD PTR [ecx+0x500060c]
     9fb:	0f 84 04 08 b9 00    	je     b91205 <__executable_start-0x74b6e8f>
     a01:	00 00                	add    BYTE PTR [eax],al
     a03:	73 01                	jae    a06 <__executable_start-0x804768e>
     a05:	00 00                	add    BYTE PTR [eax],al
     a07:	04 02                	add    al,0x2
     a09:	74 00                	je     a0b <__executable_start-0x8047689>
     a0b:	05 03 69 ab 04       	add    eax,0x4ab6903
     a10:	08 00                	or     BYTE PTR [eax],al
     a12:	12 14 84             	adc    dl,BYTE PTR [esp+eax*4]
     a15:	04 08                	add    al,0x8
     a17:	92                   	xchg   edx,eax
     a18:	00 00                	add    BYTE PTR [eax],al
     a1a:	00 13                	add    BYTE PTR [ebx],dl
     a1c:	20 84 04 08 80 00 00 	and    BYTE PTR [esp+eax*1+0x8008],al
     a23:	00 04 02             	add    BYTE PTR [edx+eax*1],al
     a26:	74 00                	je     a28 <__executable_start-0x804766c>
     a28:	01 31                	add    DWORD PTR [ecx],esi
     a2a:	00 00                	add    BYTE PTR [eax],al
     a2c:	00 c5                	add    ch,al
     a2e:	03 00                	add    eax,DWORD PTR [eax]
     a30:	00 05 00 01 04 08    	add    BYTE PTR ds:0x8040100,al
     a36:	04 00                	add    al,0x0
     a38:	00 12                	add    BYTE PTR [edx],dl
     a3a:	0e                   	push   cs
     a3b:	00 00                	add    BYTE PTR [eax],al
     a3d:	00 1d bb 00 00 00    	add    BYTE PTR ds:0xbb,bl
     a43:	00 00                	add    BYTE PTR [eax],al
     a45:	00 00                	add    BYTE PTR [eax],al
     a47:	20 84 04 08 b0 01 00 	and    BYTE PTR [esp+eax*1+0x1b008],al
     a4e:	00 90 03 00 00 03    	add    BYTE PTR [eax+0x3000003],dl
     a54:	08 07                	or     BYTE PTR [edi],al
     a56:	b3 00                	mov    bl,0x0
     a58:	00 00                	add    BYTE PTR [eax],al
     a5a:	03 04 07             	add    eax,DWORD PTR [edi+eax*1]
     a5d:	bd 00 00 00 0b       	mov    ebp,0xb000000
     a62:	ca 02 00             	retf   0x2
     a65:	00 02                	add    BYTE PTR [edx],al
     a67:	07                   	pop    es
     a68:	1b 40 00             	sbb    eax,DWORD PTR [eax+0x0]
     a6b:	00 00                	add    BYTE PTR [eax],al
     a6d:	13 04 c0             	adc    eax,DWORD PTR [eax+eax*8]
     a70:	02 00                	add    al,BYTE PTR [eax]
     a72:	00 4a 00             	add    BYTE PTR [edx+0x0],cl
     a75:	00 00                	add    BYTE PTR [eax],al
     a77:	03 01                	add    eax,DWORD PTR [ecx]
     a79:	06                   	push   es
     a7a:	d3 00                	rol    DWORD PTR [eax],cl
     a7c:	00 00                	add    BYTE PTR [eax],al
     a7e:	14 4a                	adc    al,0x4a
     a80:	00 00                	add    BYTE PTR [eax],al
     a82:	00 15 04 05 69 6e    	add    BYTE PTR ds:0x6e690504,dl
     a88:	74 00                	je     a8a <__executable_start-0x804760a>
     a8a:	0b e8                	or     ebp,eax
     a8c:	02 00                	add    al,BYTE PTR [eax]
     a8e:	00 03                	add    BYTE PTR [ebx],al
     a90:	0a 17                	or     dl,BYTE PTR [edi]
     a92:	2d 00 00 00 03       	sub    eax,0x3000000
     a97:	01 06                	add    DWORD PTR [esi],eax
     a99:	cc                   	int3
     a9a:	00 00                	add    BYTE PTR [eax],al
     a9c:	00 03                	add    BYTE PTR [ebx],al
     a9e:	02 05 f5 00 00 00    	add    al,BYTE PTR ds:0xf5
     aa4:	03 08                	add    ecx,DWORD PTR [eax]
     aa6:	05 00 00 00 00       	add    eax,0x0
     aab:	03 01                	add    eax,DWORD PTR [ecx]
     aad:	08 ca                	or     dl,cl
     aaf:	00 00                	add    BYTE PTR [eax],al
     ab1:	00 03                	add    BYTE PTR [ebx],al
     ab3:	02 07                	add    al,BYTE PTR [edi]
     ab5:	d8 00                	fadd   DWORD PTR [eax]
     ab7:	00 00                	add    BYTE PTR [eax],al
     ab9:	16                   	push   ss
     aba:	2f                   	das
     abb:	03 00                	add    eax,DWORD PTR [eax]
     abd:	00 4c 01 31          	add    BYTE PTR [ecx+eax*1+0x31],cl
     ac1:	08 c6                	or     dh,al
     ac3:	00 00                	add    BYTE PTR [eax],al
     ac5:	00 0c 62             	add    BYTE PTR [edx+eiz*2],cl
     ac8:	75 66                	jne    b30 <__executable_start-0x8047564>
     aca:	00 33                	add    BYTE PTR [ebx],dh
     acc:	0a c6                	or     al,dh
     ace:	00 00                	add    BYTE PTR [eax],al
     ad0:	00 00                	add    BYTE PTR [eax],al
     ad2:	0c 70                	or     al,0x70
     ad4:	00 34 0b             	add    BYTE PTR [ebx+ecx*1],dh
     ad7:	d6                   	(bad)
     ad8:	00 00                	add    BYTE PTR [eax],al
     ada:	00 40 0d             	add    BYTE PTR [eax+0xd],al
     add:	45                   	inc    ebp
     ade:	03 00                	add    eax,DWORD PTR [eax]
     ae0:	00 35 56 00 00 00    	add    BYTE PTR ds:0x56,dh
     ae6:	44                   	inc    esp
     ae7:	0d 07 03 00 00       	or     eax,0x307
     aec:	36 56                	ss push esi
     aee:	00 00                	add    BYTE PTR [eax],al
     af0:	00 48 00             	add    BYTE PTR [eax+0x0],cl
     af3:	17                   	pop    ss
     af4:	4a                   	dec    edx
     af5:	00 00                	add    BYTE PTR [eax],al
     af7:	00 d6                	add    dh,dl
     af9:	00 00                	add    BYTE PTR [eax],al
     afb:	00 18                	add    BYTE PTR [eax],bl
     afd:	2d 00 00 00 3f       	sub    eax,0x3f000000
     b02:	00 05 4a 00 00 00    	add    BYTE PTR ds:0x4a,al
     b08:	19 1f                	sbb    DWORD PTR [edi],ebx
     b0a:	03 00                	add    eax,DWORD PTR [eax]
     b0c:	00 06                	add    BYTE PTR [esi],al
     b0e:	1f                   	pop    ds
     b0f:	06                   	push   es
     b10:	fc                   	cld
     b11:	00 00                	add    BYTE PTR [eax],al
     b13:	00 01                	add    BYTE PTR [ecx],al
     b15:	fc                   	cld
     b16:	00 00                	add    BYTE PTR [eax],al
     b18:	00 01                	add    BYTE PTR [ecx],al
     b1a:	34 00                	xor    al,0x0
     b1c:	00 00                	add    BYTE PTR [eax],al
     b1e:	01 01                	add    DWORD PTR [ecx],eax
     b20:	01 00                	add    DWORD PTR [eax],eax
     b22:	00 01                	add    BYTE PTR [ecx],al
     b24:	16                   	push   ss
     b25:	01 00                	add    DWORD PTR [eax],eax
     b27:	00 00                	add    BYTE PTR [eax],al
     b29:	05 51 00 00 00       	add    eax,0x51
     b2e:	05 06 01 00 00       	add    eax,0x106
     b33:	1a 16                	sbb    dl,BYTE PTR [esi]
     b35:	01 00                	add    DWORD PTR [eax],eax
     b37:	00 01                	add    BYTE PTR [ecx],al
     b39:	4a                   	dec    edx
     b3a:	00 00                	add    BYTE PTR [eax],al
     b3c:	00 01                	add    BYTE PTR [ecx],al
     b3e:	16                   	push   ss
     b3f:	01 00                	add    DWORD PTR [eax],eax
     b41:	00 00                	add    BYTE PTR [eax],al
     b43:	1b 04 0e             	sbb    eax,DWORD PTR [esi+ecx*1]
     b46:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
     b47:	01 00                	add    DWORD PTR [eax],eax
     b49:	00 04 20             	add    BYTE PTR [eax+eiz*1],al
     b4c:	05 56 00 00 00       	add    eax,0x56
     b51:	38 01                	cmp    BYTE PTR [ecx],al
     b53:	00 00                	add    BYTE PTR [eax],al
     b55:	01 56 00             	add    DWORD PTR [esi+0x0],edx
     b58:	00 00                	add    BYTE PTR [eax],al
     b5a:	01 38                	add    DWORD PTR [eax],edi
     b5c:	01 00                	add    DWORD PTR [eax],eax
     b5e:	00 01                	add    BYTE PTR [ecx],al
     b60:	2d 00 00 00 00       	sub    eax,0x0
     b65:	05 3d 01 00 00       	add    eax,0x13d
     b6a:	1c 0e                	sbb    al,0xe
     b6c:	f8                   	clc
     b6d:	02 00                	add    al,BYTE PTR [eax]
     b6f:	00 05 14 08 5d 00    	add    BYTE PTR ds:0x5d0814,al
     b75:	00 00                	add    BYTE PTR [eax],al
     b77:	54                   	push   esp
     b78:	01 00                	add    DWORD PTR [eax],eax
     b7a:	00 01                	add    BYTE PTR [ecx],al
     b7c:	fc                   	cld
     b7d:	00 00                	add    BYTE PTR [eax],al
     b7f:	00 00                	add    BYTE PTR [eax],al
     b81:	0f 29 03             	movaps XMMWORD PTR [ebx],xmm0
     b84:	00 00                	add    BYTE PTR [eax],al
     b86:	59                   	pop    ecx
     b87:	20 84 04 08 44 00 00 	and    BYTE PTR [esp+eax*1+0x4408],al
     b8e:	00 01                	add    BYTE PTR [ecx],al
     b90:	9c                   	pushf
     b91:	8e 01                	mov    es,WORD PTR [ecx]
     b93:	00 00                	add    BYTE PTR [eax],al
     b95:	1d 61 75 78 00       	sbb    eax,0x787561
     b9a:	01 59 1d             	add    DWORD PTR [ecx+0x1d],ebx
     b9d:	8e 01                	mov    es,WORD PTR [ecx]
     b9f:	00 00                	add    BYTE PTR [eax],al
     ba1:	3f                   	aas
     ba2:	01 00                	add    DWORD PTR [eax],eax
     ba4:	00 37                	add    BYTE PTR [edi],dh
     ba6:	01 00                	add    DWORD PTR [eax],eax
     ba8:	00 04 62             	add    BYTE PTR [edx+eiz*2],al
     bab:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
     bae:	18 01                	sbb    BYTE PTR [ecx],al
     bb0:	00 00                	add    BYTE PTR [eax],al
     bb2:	02 02                	add    al,BYTE PTR [edx]
     bb4:	74 04                	je     bba <__executable_start-0x80474da>
     bb6:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
     bb9:	00 00                	add    BYTE PTR [eax],al
     bbb:	05 8c 00 00 00       	add    eax,0x8c
     bc0:	0f 3c                	(bad)
     bc2:	03 00                	add    eax,DWORD PTR [eax]
     bc4:	00 4e 64             	add    BYTE PTR [esi+0x64],cl
     bc7:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
     bca:	36 00 00             	add    BYTE PTR ss:[eax],al
     bcd:	00 01                	add    BYTE PTR [ecx],al
     bcf:	9c                   	pushf
     bd0:	eb 01                	jmp    bd3 <__executable_start-0x80474c1>
     bd2:	00 00                	add    BYTE PTR [eax],al
     bd4:	08 63 00             	or     BYTE PTR [ebx+0x0],ah
     bd7:	4e                   	dec    esi
     bd8:	10 4a 00             	adc    BYTE PTR [edx+0x0],cl
     bdb:	00 00                	add    BYTE PTR [eax],al
     bdd:	02 91 00 06 1a 03    	add    dl,BYTE PTR [ecx+0x31a0600]
     be3:	00 00                	add    BYTE PTR [eax],al
     be5:	4e                   	dec    esi
     be6:	19 16                	sbb    DWORD PTR [esi],edx
     be8:	01 00                	add    DWORD PTR [eax],eax
     bea:	00 63 01             	add    BYTE PTR [ebx+0x1],ah
     bed:	00 00                	add    BYTE PTR [eax],al
     bef:	5d                   	pop    ebp
     bf0:	01 00                	add    DWORD PTR [eax],eax
     bf2:	00 1e                	add    BYTE PTR [esi],bl
     bf4:	61                   	popa
     bf5:	75 78                	jne    c6f <__executable_start-0x8047425>
     bf7:	00 01                	add    BYTE PTR [ecx],al
     bf9:	50                   	push   eax
     bfa:	18 8e 01 00 00 7e    	sbb    BYTE PTR [esi+0x7e000001],cl
     c00:	01 00                	add    DWORD PTR [eax],eax
     c02:	00 76 01             	add    BYTE PTR [esi+0x1],dh
     c05:	00 00                	add    BYTE PTR [eax],al
     c07:	04 98                	add    al,0x98
     c09:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
     c0c:	54                   	push   esp
     c0d:	01 00                	add    DWORD PTR [eax],eax
     c0f:	00 02                	add    BYTE PTR [edx],al
     c11:	01 50 02             	add    DWORD PTR [eax+0x2],edx
     c14:	73 00                	jae    c16 <__executable_start-0x804747e>
     c16:	00 00                	add    BYTE PTR [eax],al
     c18:	07                   	pop    es
     c19:	ef                   	out    dx,eax
     c1a:	02 00                	add    al,BYTE PTR [eax]
     c1c:	00 40 56             	add    BYTE PTR [eax+0x56],al
     c1f:	00 00                	add    BYTE PTR [eax],al
     c21:	00 2b                	add    BYTE PTR [ebx],ch
     c23:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     c26:	5e                   	pop    esi
     c27:	00 00                	add    BYTE PTR [eax],al
     c29:	00 01                	add    BYTE PTR [ecx],al
     c2b:	9c                   	pushf
     c2c:	6d                   	ins    DWORD PTR es:[edi],dx
     c2d:	02 00                	add    al,BYTE PTR [eax]
     c2f:	00 09                	add    BYTE PTR [ecx],cl
     c31:	07                   	pop    es
     c32:	03 00                	add    eax,DWORD PTR [eax]
     c34:	00 40 0f             	add    BYTE PTR [eax+0xf],al
     c37:	56                   	push   esi
     c38:	00 00                	add    BYTE PTR [eax],al
     c3a:	00 02                	add    BYTE PTR [edx],al
     c3c:	91                   	xchg   ecx,eax
     c3d:	00 06                	add    BYTE PTR [esi],al
     c3f:	13 03                	adc    eax,DWORD PTR [ebx]
     c41:	00 00                	add    BYTE PTR [eax],al
     c43:	40                   	inc    eax
     c44:	23 fc                	and    edi,esp
     c46:	00 00                	add    BYTE PTR [eax],al
     c48:	00 99 01 00 00 95    	add    BYTE PTR [ecx-0x6affffff],bl
     c4e:	01 00                	add    DWORD PTR [eax],eax
     c50:	00 06                	add    BYTE PTR [esi],al
     c52:	e3 02                	jecxz  c56 <__executable_start-0x804743e>
     c54:	00 00                	add    BYTE PTR [eax],al
     c56:	40                   	inc    eax
     c57:	33 34 00             	xor    esi,DWORD PTR [eax+eax*1]
     c5a:	00 00                	add    BYTE PTR [eax],al
     c5c:	ae                   	scas   al,BYTE PTR es:[edi]
     c5d:	01 00                	add    DWORD PTR [eax],eax
     c5f:	00 aa 01 00 00 10    	add    BYTE PTR [edx+0x10000001],ch
     c65:	61                   	popa
     c66:	75 78                	jne    ce0 <__executable_start-0x80473b4>
     c68:	00 42 17             	add    BYTE PTR [edx+0x17],al
     c6b:	8c 00                	mov    WORD PTR [eax],es
     c6d:	00 00                	add    BYTE PTR [eax],al
     c6f:	03 91 a4 7f 0a 75    	add    edx,DWORD PTR [ecx+0x750a7fa4]
     c75:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     c78:	db 00                	fild   DWORD PTR [eax]
     c7a:	00 00                	add    BYTE PTR [eax],al
     c7c:	5c                   	pop    esp
     c7d:	02 00                	add    al,BYTE PTR [eax]
     c7f:	00 02                	add    BYTE PTR [edx],al
     c81:	02 74 00 03          	add    dh,BYTE PTR [eax+eax*1+0x3]
     c85:	91                   	xchg   ecx,eax
     c86:	04 06                	add    al,0x6
     c88:	00 04 7c             	add    BYTE PTR [esp+edi*2],al
     c8b:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     c8e:	54                   	push   esp
     c8f:	01 00                	add    DWORD PTR [eax],eax
     c91:	00 02                	add    BYTE PTR [edx],al
     c93:	01 50 02             	add    DWORD PTR [eax+0x2],edx
     c96:	76 00                	jbe    c98 <__executable_start-0x80473fc>
     c98:	00 00                	add    BYTE PTR [eax],al
     c9a:	07                   	pop    es
     c9b:	ff 02                	inc    DWORD PTR [edx]
     c9d:	00 00                	add    BYTE PTR [eax],al
     c9f:	29 56 00             	sub    DWORD PTR [esi+0x0],edx
     ca2:	00 00                	add    BYTE PTR [eax],al
     ca4:	9a 84 04 08 40 00 00 	call   0x0:0x40080484
     cab:	00 01                	add    BYTE PTR [ecx],al
     cad:	9c                   	pushf
     cae:	af                   	scas   eax,DWORD PTR es:[edi]
     caf:	02 00                	add    al,BYTE PTR [eax]
     cb1:	00 08                	add    BYTE PTR [eax],cl
     cb3:	63 00                	arpl   WORD PTR [eax],eax
     cb5:	29 0e                	sub    DWORD PTR [esi],ecx
     cb7:	56                   	push   esi
     cb8:	00 00                	add    BYTE PTR [eax],al
     cba:	00 02                	add    BYTE PTR [edx],al
     cbc:	91                   	xchg   ecx,eax
     cbd:	00 10                	add    BYTE PTR [eax],dl
     cbf:	63 32                	arpl   WORD PTR [edx],esi
     cc1:	00 2b                	add    BYTE PTR [ebx],ch
     cc3:	08 4a 00             	or     BYTE PTR [edx+0x0],cl
     cc6:	00 00                	add    BYTE PTR [eax],al
     cc8:	02 91 6f 04 d0 84    	add    dl,BYTE PTR [ecx-0x7b2ffb91]
     cce:	04 08                	add    al,0x8
     cd0:	18 01                	sbb    BYTE PTR [ecx],al
     cd2:	00 00                	add    BYTE PTR [eax],al
     cd4:	02 02                	add    al,BYTE PTR [edx]
     cd6:	74 00                	je     cd8 <__executable_start-0x80473bc>
     cd8:	01 31                	add    DWORD PTR [ecx],esi
     cda:	00 00                	add    BYTE PTR [eax],al
     cdc:	07                   	pop    es
     cdd:	0e                   	push   cs
     cde:	03 00                	add    eax,DWORD PTR [eax]
     ce0:	00 1f                	add    BYTE PTR [edi],bl
     ce2:	56                   	push   esi
     ce3:	00 00                	add    BYTE PTR [eax],al
     ce5:	00 da                	add    dl,bl
     ce7:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
     cea:	51                   	push   ecx
     ceb:	00 00                	add    BYTE PTR [eax],al
     ced:	00 01                	add    BYTE PTR [ecx],al
     cef:	9c                   	pushf
     cf0:	0d 03 00 00 08       	or     eax,0x8000003
     cf5:	73 00                	jae    cf7 <__executable_start-0x804739d>
     cf7:	1f                   	pop    ds
     cf8:	13 fc                	adc    edi,esp
     cfa:	00 00                	add    BYTE PTR [eax],al
     cfc:	00 02                	add    BYTE PTR [edx],al
     cfe:	91                   	xchg   ecx,eax
     cff:	00 0a                	add    BYTE PTR [edx],cl
     d01:	fc                   	cld
     d02:	84 04 08             	test   BYTE PTR [eax+ecx*1],al
     d05:	3e 01 00             	add    DWORD PTR ds:[eax],eax
     d08:	00 e8                	add    al,ch
     d0a:	02 00                	add    al,BYTE PTR [eax]
     d0c:	00 02                	add    BYTE PTR [edx],al
     d0e:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
     d12:	76 00                	jbe    d14 <__executable_start-0x8047380>
     d14:	00 0a                	add    BYTE PTR [edx],cl
     d16:	10 85 04 08 18 01    	adc    BYTE PTR [ebp+0x1180804],al
     d1c:	00 00                	add    BYTE PTR [eax],al
     d1e:	fc                   	cld
     d1f:	02 00                	add    al,BYTE PTR [eax]
     d21:	00 02                	add    BYTE PTR [edx],al
     d23:	02 74 00 01          	add    dh,BYTE PTR [eax+eax*1+0x1]
     d27:	31 00                	xor    DWORD PTR [eax],eax
     d29:	04 1c                	add    al,0x1c
     d2b:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     d2e:	6d                   	ins    DWORD PTR es:[edi],dx
     d2f:	02 00                	add    al,BYTE PTR [eax]
     d31:	00 02                	add    BYTE PTR [edx],al
     d33:	02 74 00 01          	add    dh,BYTE PTR [eax+eax*1+0x1]
     d37:	3a 00                	cmp    al,BYTE PTR [eax]
     d39:	00 07                	add    BYTE PTR [edi],al
     d3b:	f0 02 00             	lock add al,BYTE PTR [eax]
     d3e:	00 10                	add    BYTE PTR [eax],dl
     d40:	56                   	push   esi
     d41:	00 00                	add    BYTE PTR [eax],al
     d43:	00 ad 85 04 08 23    	add    BYTE PTR [ebp+0x23080485],ch
     d49:	00 00                	add    BYTE PTR [eax],al
     d4b:	00 01                	add    BYTE PTR [ecx],al
     d4d:	9c                   	pushf
     d4e:	80 03 00             	add    BYTE PTR [ebx],0x0
     d51:	00 09                	add    BYTE PTR [ecx],cl
     d53:	07                   	pop    es
     d54:	03 00                	add    eax,DWORD PTR [eax]
     d56:	00 10                	add    BYTE PTR [eax],dl
     d58:	0e                   	push   cs
     d59:	56                   	push   esi
     d5a:	00 00                	add    BYTE PTR [eax],al
     d5c:	00 02                	add    BYTE PTR [edx],al
     d5e:	91                   	xchg   ecx,eax
     d5f:	00 06                	add    BYTE PTR [esi],al
     d61:	13 03                	adc    eax,DWORD PTR [ebx]
     d63:	00 00                	add    BYTE PTR [eax],al
     d65:	10 22                	adc    BYTE PTR [edx],ah
     d67:	fc                   	cld
     d68:	00 00                	add    BYTE PTR [eax],al
     d6a:	00 c3                	add    bl,al
     d6c:	01 00                	add    DWORD PTR [eax],eax
     d6e:	00 bf 01 00 00 1f    	add    BYTE PTR [edi+0x1f000001],bh
     d74:	11 e3                	adc    ebx,esp
     d76:	02 00                	add    al,BYTE PTR [eax]
     d78:	00 12                	add    BYTE PTR [edx],dl
     d7a:	0b 34 00             	or     esi,DWORD PTR [eax+eax*1]
     d7d:	00 00                	add    BYTE PTR [eax],al
     d7f:	d8 01                	fadd   DWORD PTR [ecx]
     d81:	00 00                	add    BYTE PTR [eax],al
     d83:	d4 01                	aam    0x1
     d85:	00 00                	add    BYTE PTR [eax],al
     d87:	11 68 02             	adc    DWORD PTR [eax+0x2],ebp
     d8a:	00 00                	add    BYTE PTR [eax],al
     d8c:	13 07                	adc    eax,DWORD PTR [edi]
     d8e:	56                   	push   esi
     d8f:	00 00                	add    BYTE PTR [eax],al
     d91:	00 eb                	add    bl,ch
     d93:	01 00                	add    DWORD PTR [eax],eax
     d95:	00 e9                	add    cl,ch
     d97:	01 00                	add    DWORD PTR [eax],eax
     d99:	00 04 cc             	add    BYTE PTR [esp+ecx*8],al
     d9c:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     d9f:	eb 01                	jmp    da2 <__executable_start-0x80472f2>
     da1:	00 00                	add    BYTE PTR [eax],al
     da3:	02 02                	add    al,BYTE PTR [edx]
     da5:	74 00                	je     da7 <__executable_start-0x80472ed>
     da7:	03 91 00 06 00 00    	add    edx,DWORD PTR [ecx+0x600]
     dad:	20 21                	and    BYTE PTR [ecx],ah
     daf:	03 00                	add    eax,DWORD PTR [eax]
     db1:	00 01                	add    BYTE PTR [ecx],al
     db3:	09 01                	or     DWORD PTR [ecx],eax
     db5:	56                   	push   esi
     db6:	00 00                	add    BYTE PTR [eax],al
     db8:	00 89 85 04 08 24    	add    BYTE PTR [ecx+0x24080485],cl
     dbe:	00 00                	add    BYTE PTR [eax],al
     dc0:	00 01                	add    BYTE PTR [ecx],al
     dc2:	9c                   	pushf
     dc3:	09 13                	or     DWORD PTR [ebx],edx
     dc5:	03 00                	add    eax,DWORD PTR [eax]
     dc7:	00 09                	add    BYTE PTR [ecx],cl
     dc9:	16                   	push   ss
     dca:	fc                   	cld
     dcb:	00 00                	add    BYTE PTR [eax],al
     dcd:	00 02                	add    BYTE PTR [edx],al
     dcf:	91                   	xchg   ecx,eax
     dd0:	00 06                	add    BYTE PTR [esi],al
     dd2:	e3 02                	jecxz  dd6 <__executable_start-0x80472be>
     dd4:	00 00                	add    BYTE PTR [eax],al
     dd6:	09 26                	or     DWORD PTR [esi],esp
     dd8:	34 00                	xor    al,0x0
     dda:	00 00                	add    BYTE PTR [eax],al
     ddc:	f7 01 00 00 f3 01    	test   DWORD PTR [ecx],0x1f30000
     de2:	00 00                	add    BYTE PTR [eax],al
     de4:	04 a9                	add    al,0xa9
     de6:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     de9:	eb 01                	jmp    dec <__executable_start-0x80472a8>
     deb:	00 00                	add    BYTE PTR [eax],al
     ded:	02 02                	add    al,BYTE PTR [edx]
     def:	74 00                	je     df1 <__executable_start-0x80472a3>
     df1:	01 31                	add    DWORD PTR [ecx],esi
     df3:	00 00                	add    BYTE PTR [eax],al
     df5:	00 3d 01 00 00 05    	add    BYTE PTR ds:0x5000001,bh
     dfb:	00 01                	add    BYTE PTR [ecx],al
     dfd:	04 ec                	add    al,0xec
     dff:	05 00 00 06 0e       	add    eax,0xe060000
     e04:	00 00                	add    BYTE PTR [eax],al
     e06:	00 1d e3 00 00 00    	add    BYTE PTR ds:0xe3,bl
     e0c:	00 00                	add    BYTE PTR [eax],al
     e0e:	00 00                	add    BYTE PTR [eax],al
     e10:	d0 85 04 08 8e 00    	rol    BYTE PTR [ebp+0x8e0804],1
     e16:	00 00                	add    BYTE PTR [eax],al
     e18:	de 04 00             	fiadd  WORD PTR [eax+eax*1]
     e1b:	00 01                	add    BYTE PTR [ecx],al
     e1d:	01 06                	add    DWORD PTR [esi],eax
     e1f:	d3 00                	rol    DWORD PTR [eax],cl
     e21:	00 00                	add    BYTE PTR [eax],al
     e23:	07                   	pop    es
     e24:	26 00 00             	add    BYTE PTR es:[eax],al
     e27:	00 08                	add    BYTE PTR [eax],cl
     e29:	04 05                	add    al,0x5
     e2b:	69 6e 74 00 01 04 07 	imul   ebp,DWORD PTR [esi+0x74],0x7040100
     e32:	bd 00 00 00 01       	mov    ebp,0x1000000
     e37:	01 06                	add    DWORD PTR [esi],eax
     e39:	cc                   	int3
     e3a:	00 00                	add    BYTE PTR [eax],al
     e3c:	00 01                	add    BYTE PTR [ecx],al
     e3e:	02 05 f5 00 00 00    	add    al,BYTE PTR ds:0xf5
     e44:	01 08                	add    DWORD PTR [eax],ecx
     e46:	05 00 00 00 00       	add    eax,0x0
     e4b:	01 01                	add    DWORD PTR [ecx],eax
     e4d:	08 ca                	or     dl,cl
     e4f:	00 00                	add    BYTE PTR [eax],al
     e51:	00 01                	add    BYTE PTR [ecx],al
     e53:	02 07                	add    al,BYTE PTR [edi]
     e55:	d8 00                	fadd   DWORD PTR [eax]
     e57:	00 00                	add    BYTE PTR [eax],al
     e59:	04 58                	add    al,0x58
     e5b:	03 00                	add    eax,DWORD PTR [eax]
     e5d:	00 1a                	add    BYTE PTR [edx],bl
     e5f:	16                   	push   ss
     e60:	39 00                	cmp    DWORD PTR [eax],eax
     e62:	00 00                	add    BYTE PTR [eax],al
     e64:	01 08                	add    DWORD PTR [eax],ecx
     e66:	07                   	pop    es
     e67:	b3 00                	mov    bl,0x0
     e69:	00 00                	add    BYTE PTR [eax],al
     e6b:	04 4e                	add    al,0x4e
     e6d:	03 00                	add    eax,DWORD PTR [eax]
     e6f:	00 24 12             	add    BYTE PTR [edx+edx*1],ah
     e72:	63 00                	arpl   WORD PTR [eax],eax
     e74:	00 00                	add    BYTE PTR [eax],al
     e76:	09 46 05             	or     DWORD PTR [esi+0x5],eax
     e79:	00 00                	add    BYTE PTR [eax],al
     e7b:	03 13                	add    edx,DWORD PTR [ebx]
     e7d:	05 32 00 00 00       	add    eax,0x32
     e82:	97                   	xchg   edi,eax
     e83:	00 00                	add    BYTE PTR [eax],al
     e85:	00 0a                	add    BYTE PTR [edx],cl
     e87:	97                   	xchg   edi,eax
     e88:	00 00                	add    BYTE PTR [eax],al
     e8a:	00 0b                	add    BYTE PTR [ebx],cl
     e8c:	00 05 2d 00 00 00    	add    BYTE PTR ds:0x2d,al
     e92:	0c b0                	or     al,0xb0
     e94:	02 00                	add    al,BYTE PTR [eax]
     e96:	00 01                	add    BYTE PTR [ecx],al
     e98:	0d 01 d0 85 04       	or     eax,0x485d001
     e9d:	08 8e 00 00 00 01    	or     BYTE PTR [esi+0x1000000],cl
     ea3:	9c                   	pushf
     ea4:	32 01                	xor    al,BYTE PTR [ecx]
     ea6:	00 00                	add    BYTE PTR [eax],al
     ea8:	0d 61 03 00 00       	or     eax,0x361
     ead:	01 0f                	add    DWORD PTR [edi],ecx
     eaf:	0f 32                	rdmsr
     eb1:	01 00                	add    DWORD PTR [eax],eax
     eb3:	00 05 03 80 b0 34    	add    BYTE PTR ds:0x34b08003,al
     eb9:	08 0e                	or     BYTE PTR [esi],cl
     ebb:	6b 03 00             	imul   eax,DWORD PTR [ebx],0x0
     ebe:	00 01                	add    BYTE PTR [ecx],al
     ec0:	10 0a                	adc    BYTE PTR [edx],cl
     ec2:	39 01                	cmp    DWORD PTR [ecx],eax
     ec4:	00 00                	add    BYTE PTR [eax],al
     ec6:	18 02                	sbb    BYTE PTR [edx],al
     ec8:	00 00                	add    BYTE PTR [eax],al
     eca:	14 02                	adc    al,0x2
     ecc:	00 00                	add    BYTE PTR [eax],al
     ece:	03 f9                	add    edi,ecx
     ed0:	85 04 08             	test   DWORD PTR [eax+ecx*1],eax
     ed3:	80 00 00             	add    BYTE PTR [eax],0x0
     ed6:	00 f0                	add    al,dh
     ed8:	00 00                	add    BYTE PTR [eax],al
     eda:	00 02                	add    BYTE PTR [edx],al
     edc:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
     ee0:	03 59 ab             	add    ebx,DWORD PTR [ecx-0x55]
     ee3:	04 08                	add    al,0x8
     ee5:	00 03                	add    BYTE PTR [ebx],al
     ee7:	1e                   	push   ds
     ee8:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
     eeb:	80 00 00             	add    BYTE PTR [eax],0x0
     eee:	00 05 01 00 00 02    	add    BYTE PTR ds:0x2000001,al
     ef4:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
     ef8:	77 00                	ja     efa <__executable_start-0x804719a>
     efa:	00 03                	add    BYTE PTR [ebx],al
     efc:	36 86 04 08          	xchg   BYTE PTR ss:[eax+ecx*1],al
     f00:	80 00 00             	add    BYTE PTR [eax],0x0
     f03:	00 1d 01 00 00 02    	add    BYTE PTR ds:0x2000001,bl
     f09:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
     f0d:	03 68 ab             	add    ebp,DWORD PTR [eax-0x55]
     f10:	04 08                	add    al,0x8
     f12:	00 0f                	add    BYTE PTR [edi],cl
     f14:	5c                   	pop    esp
     f15:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
     f18:	80 00 00             	add    BYTE PTR [eax],0x0
     f1b:	00 02                	add    BYTE PTR [edx],al
     f1d:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
     f21:	03 a8 aa 04 08 00    	add    ebp,DWORD PTR [eax+0x804aa]
     f27:	00 01                	add    BYTE PTR [ecx],al
     f29:	01 02                	add    DWORD PTR [edx],eax
     f2b:	22 01                	and    al,BYTE PTR [ecx]
     f2d:	00 00                	add    BYTE PTR [eax],al
     f2f:	05 3e 01 00 00       	add    eax,0x13e
     f34:	10 04 00             	adc    BYTE PTR [eax+eax*1],al
     f37:	39 0f                	cmp    DWORD PTR [edi],ecx
     f39:	00 00                	add    BYTE PTR [eax],al
     f3b:	05 00 01 04 be       	add    eax,0xbe040100
     f40:	06                   	push   es
     f41:	00 00                	add    BYTE PTR [eax],al
     f43:	2c 0e                	sub    al,0xe
     f45:	00 00                	add    BYTE PTR [eax],al
     f47:	00 1d fb 00 00 00    	add    BYTE PTR ds:0xfb,bl
     f4d:	00 00                	add    BYTE PTR [eax],al
     f4f:	00 00                	add    BYTE PTR [eax],al
     f51:	60                   	pusha
     f52:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
     f55:	84 0f                	test   BYTE PTR [edi],cl
     f57:	00 00                	add    BYTE PTR [eax],al
     f59:	7c 05                	jl     f60 <__executable_start-0x8047134>
     f5b:	00 00                	add    BYTE PTR [eax],al
     f5d:	07                   	pop    es
     f5e:	08 07                	or     BYTE PTR [edi],al
     f60:	b3 00                	mov    bl,0x0
     f62:	00 00                	add    BYTE PTR [eax],al
     f64:	07                   	pop    es
     f65:	04 07                	add    al,0x7
     f67:	bd 00 00 00 07       	mov    ebp,0x7000000
     f6c:	01 08                	add    DWORD PTR [eax],ecx
     f6e:	ca 00 00             	retf   0x0
     f71:	00 2d 04 05 69 6e    	add    BYTE PTR ds:0x6e690504,ch
     f77:	74 00                	je     f79 <__executable_start-0x804711b>
     f79:	08 ca                	or     dl,cl
     f7b:	02 00                	add    al,BYTE PTR [eax]
     f7d:	00 03                	add    BYTE PTR [ebx],al
     f7f:	07                   	pop    es
     f80:	1b 4e 00             	sbb    ecx,DWORD PTR [esi+0x0]
     f83:	00 00                	add    BYTE PTR [eax],al
     f85:	2e 04 c0             	cs add al,0xc0
     f88:	02 00                	add    al,BYTE PTR [eax]
     f8a:	00 58 00             	add    BYTE PTR [eax+0x0],bl
     f8d:	00 00                	add    BYTE PTR [eax],al
     f8f:	07                   	pop    es
     f90:	01 06                	add    DWORD PTR [esi],eax
     f92:	d3 00                	rol    DWORD PTR [eax],cl
     f94:	00 00                	add    BYTE PTR [eax],al
     f96:	0d 58 00 00 00       	or     eax,0x58
     f9b:	08 e8                	or     al,ch
     f9d:	02 00                	add    al,BYTE PTR [eax]
     f9f:	00 04 0a             	add    BYTE PTR [edx+ecx*1],al
     fa2:	17                   	pop    ss
     fa3:	2d 00 00 00 0d       	sub    eax,0xd000000
     fa8:	64 00 00             	add    BYTE PTR fs:[eax],al
     fab:	00 07                	add    BYTE PTR [edi],al
     fad:	01 06                	add    DWORD PTR [esi],eax
     faf:	cc                   	int3
     fb0:	00 00                	add    BYTE PTR [eax],al
     fb2:	00 07                	add    BYTE PTR [edi],al
     fb4:	02 05 f5 00 00 00    	add    al,BYTE PTR ds:0xf5
     fba:	08 91 03 00 00 05    	or     BYTE PTR [ecx+0x5000003],dl
     fc0:	10 1e                	adc    BYTE PTR [esi],bl
     fc2:	8f 00                	pop    DWORD PTR [eax]
     fc4:	00 00                	add    BYTE PTR [eax],al
     fc6:	07                   	pop    es
     fc7:	08 05 00 00 00 00    	or     BYTE PTR ds:0x0,al
     fcd:	08 b6 03 00 00 05    	or     BYTE PTR [esi+0x5000003],dh
     fd3:	14 17                	adc    al,0x17
     fd5:	34 00                	xor    al,0x0
     fd7:	00 00                	add    BYTE PTR [eax],al
     fd9:	0d 96 00 00 00       	or     eax,0x96
     fde:	07                   	pop    es
     fdf:	02 07                	add    al,BYTE PTR [edi]
     fe1:	d8 00                	fadd   DWORD PTR [eax]
     fe3:	00 00                	add    BYTE PTR [eax],al
     fe5:	08 58 03             	or     BYTE PTR [eax+0x3],bl
     fe8:	00 00                	add    BYTE PTR [eax],al
     fea:	05 1a 16 2d 00       	add    eax,0x2d161a
     fef:	00 00                	add    BYTE PTR [eax],al
     ff1:	08 90 03 00 00 05    	or     BYTE PTR [eax+0x5000003],dl
     ff7:	1d 20 26 00 00       	sbb    eax,0x2620
     ffc:	00 08                	add    BYTE PTR [eax],cl
     ffe:	4e                   	dec    esi
     fff:	03 00                	add    eax,DWORD PTR [eax]
    1001:	00 05 24 12 ae 00    	add    BYTE PTR ds:0xae1224,al
    1007:	00 00                	add    BYTE PTR [eax],al
    1009:	08 7b 04             	or     BYTE PTR [ebx+0x4],bh
    100c:	00 00                	add    BYTE PTR [eax],al
    100e:	05 27 11 83 00       	add    eax,0x831127
    1013:	00 00                	add    BYTE PTR [eax],al
    1015:	08 7a 04             	or     BYTE PTR [edx+0x4],bh
    1018:	00 00                	add    BYTE PTR [eax],al
    101a:	05 2b 12 ba 00       	add    eax,0xba122b
    101f:	00 00                	add    BYTE PTR [eax],al
    1021:	19 e4                	sbb    esp,esp
    1023:	04 00                	add    al,0x0
    1025:	00 0c 09             	add    BYTE PTR [ecx+ecx*1],cl
    1028:	18 01                	sbb    BYTE PTR [ecx],al
    102a:	00 00                	add    BYTE PTR [eax],al
    102c:	21 70 00             	and    DWORD PTR [eax+0x0],esi
    102f:	0b 0b                	or     ecx,DWORD PTR [ebx]
    1031:	18 01                	sbb    BYTE PTR [ecx],al
    1033:	00 00                	add    BYTE PTR [eax],al
    1035:	00 09                	add    BYTE PTR [ecx],cl
    1037:	3d 05 00 00 0c       	cmp    eax,0xc000005
    103c:	09 3b                	or     DWORD PTR [ebx],edi
    103e:	00 00                	add    BYTE PTR [eax],al
    1040:	00 04 09             	add    BYTE PTR [ecx+ecx*1],al
    1043:	39 05 00 00 0d 09    	cmp    DWORD PTR ds:0x90d0000,eax
    1049:	3b 00                	cmp    eax,DWORD PTR [eax]
    104b:	00 00                	add    BYTE PTR [eax],al
    104d:	08 00                	or     BYTE PTR [eax],al
    104f:	05 58 00 00 00       	add    eax,0x58
    1054:	22 2d 00 00 00 62    	and    ch,BYTE PTR ds:0x62000000
    105a:	4c                   	dec    esp
    105b:	01 00                	add    DWORD PTR [eax],eax
    105d:	00 04 4d 05 00 00 01 	add    BYTE PTR [ecx*2+0x1000005],al
    1064:	04 10                	add    al,0x10
    1066:	04 00                	add    al,0x0
    1068:	00 02                	add    BYTE PTR [edx],al
    106a:	04 52                	add    al,0x52
    106c:	04 00                	add    al,0x0
    106e:	00 04 04             	add    BYTE PTR [esp+eax*1],al
    1071:	de 04 00             	fiadd  WORD PTR [eax+eax*1]
    1074:	00 08                	add    BYTE PTR [eax],cl
    1076:	04 ac                	add    al,0xac
    1078:	03 00                	add    eax,DWORD PTR [eax]
    107a:	00 10                	add    BYTE PTR [eax],dl
    107c:	04 81                	add    al,0x81
    107e:	03 00                	add    eax,DWORD PTR [eax]
    1080:	00 20                	add    BYTE PTR [eax],ah
    1082:	00 22                	add    BYTE PTR [edx],ah
    1084:	2d 00 00 00 75       	sub    eax,0x75000000
    1089:	87 01                	xchg   DWORD PTR [ecx],eax
    108b:	00 00                	add    BYTE PTR [eax],al
    108d:	04 f2                	add    al,0xf2
    108f:	03 00                	add    eax,DWORD PTR [eax]
    1091:	00 01                	add    BYTE PTR [ecx],al
    1093:	04 21                	add    al,0x21
    1095:	05 00 00 02 2f       	add    eax,0x2f020000
    109a:	49                   	dec    ecx
    109b:	4e                   	dec    esi
    109c:	54                   	push   esp
    109d:	00 03                	add    BYTE PTR [ebx],al
    109f:	04 b1                	add    al,0xb1
    10a1:	04 00                	add    al,0x0
    10a3:	00 04 04             	add    BYTE PTR [esp+eax*1],al
    10a6:	c2 04 00             	ret    0x4
    10a9:	00 05 04 be 04 00    	add    BYTE PTR ds:0x4be04,al
    10af:	00 06                	add    BYTE PTR [esi],al
    10b1:	04 03                	add    al,0x3
    10b3:	05 00 00 07 04       	add    eax,0x4070000
    10b8:	0a 04 00             	or     al,BYTE PTR [eax+eax*1]
    10bb:	00 08                	add    BYTE PTR [eax],cl
    10bd:	00 19                	add    BYTE PTR [ecx],bl
    10bf:	27                   	daa
    10c0:	05 00 00 10 5e       	add    eax,0x5e100000
    10c5:	c3                   	ret
    10c6:	01 00                	add    DWORD PTR [eax],eax
    10c8:	00 09                	add    BYTE PTR [ecx],cl
    10ca:	58                   	pop    eax
    10cb:	04 00                	add    al,0x0
    10cd:	00 6a 05             	add    BYTE PTR [edx+0x5],ch
    10d0:	1d 01 00 00 00       	sbb    eax,0x1
    10d5:	09 da                	or     edx,ebx
    10d7:	03 00                	add    eax,DWORD PTR [eax]
    10d9:	00 6d 09             	add    BYTE PTR [ebp+0x9],ch
    10dc:	3b 00                	cmp    eax,DWORD PTR [eax]
    10de:	00 00                	add    BYTE PTR [eax],al
    10e0:	04 09                	add    al,0x9
    10e2:	53                   	push   ebx
    10e3:	05 00 00 71 09       	add    eax,0x9710000
    10e8:	3b 00                	cmp    eax,DWORD PTR [eax]
    10ea:	00 00                	add    BYTE PTR [eax],al
    10ec:	08 09                	or     BYTE PTR [ecx],cl
    10ee:	b1 03                	mov    cl,0x3
    10f0:	00 00                	add    BYTE PTR [eax],al
    10f2:	7f 05                	jg     10f9 <__executable_start-0x8046f9b>
    10f4:	4c                   	dec    esp
    10f5:	01 00                	add    DWORD PTR [eax],eax
    10f7:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
    10fa:	0d 87 01 00 00       	or     eax,0x187
    10ff:	19 36                	sbb    DWORD PTR [esi],esi
    1101:	04 00                	add    al,0x0
    1103:	00 10                	add    BYTE PTR [eax],dl
    1105:	82 02 02             	add    BYTE PTR [edx],0x2
    1108:	00 00                	add    BYTE PTR [eax],al
    110a:	09 3e                	or     DWORD PTR [esi],edi
    110c:	04 00                	add    al,0x0
    110e:	00 84 09 3b 00 00 00 	add    BYTE PTR [ecx+ecx*1+0x3b],al
    1115:	00 09                	add    BYTE PTR [ecx],cl
    1117:	15 04 00 00 85       	adc    eax,0x85000004
    111c:	11 07                	adc    DWORD PTR [edi],eax
    111e:	02 00                	add    al,BYTE PTR [eax]
    1120:	00 04 21             	add    BYTE PTR [ecx+eiz*1],al
    1123:	78 00                	js     1125 <__executable_start-0x8046f6f>
    1125:	86 09                	xchg   BYTE PTR [ecx],cl
    1127:	3b 00                	cmp    eax,DWORD PTR [eax]
    1129:	00 00                	add    BYTE PTR [eax],al
    112b:	08 09                	or     BYTE PTR [ecx],cl
    112d:	99                   	cdq
    112e:	03 00                	add    eax,DWORD PTR [eax]
    1130:	00 87 09 3b 00 00    	add    BYTE PTR [edi+0x3b09],al
    1136:	00 0c 00             	add    BYTE PTR [eax+eax*1],cl
    1139:	0d c8 01 00 00       	or     eax,0x1c8
    113e:	05 5f 00 00 00       	add    eax,0x5f
    1143:	16                   	push   ss
    1144:	eb 03                	jmp    1149 <__executable_start-0x8046f4b>
    1146:	00 00                	add    BYTE PTR [eax],al
    1148:	8a 02                	mov    al,BYTE PTR [edx]
    114a:	02 00                	add    al,BYTE PTR [eax]
    114c:	00 05 03 54 b0 04    	add    BYTE PTR ds:0x4b05403,al
    1152:	08 16                	or     BYTE PTR [esi],dl
    1154:	73 04                	jae    115a <__executable_start-0x8046f3a>
    1156:	00 00                	add    BYTE PTR [eax],al
    1158:	8b 02                	mov    eax,DWORD PTR [edx]
    115a:	02 00                	add    al,BYTE PTR [eax]
    115c:	00 05 03 44 b0 04    	add    BYTE PTR ds:0x4b04403,al
    1162:	08 16                	or     BYTE PTR [esi],dl
    1164:	8d 04 00             	lea    eax,[eax+eax*1]
    1167:	00 8c 02 02 00 00 05 	add    BYTE PTR [edx+eax*1+0x5000002],cl
    116e:	03 34 b0             	add    esi,DWORD PTR [eax+esi*4]
    1171:	04 08                	add    al,0x8
    1173:	16                   	push   ss
    1174:	43                   	inc    ebx
    1175:	04 00                	add    al,0x0
    1177:	00 8d 02 02 00 00    	add    BYTE PTR [ebp+0x202],cl
    117d:	05 03 24 b0 04       	add    eax,0x4b02403
    1182:	08 23                	or     BYTE PTR [ebx],ah
    1184:	71 03                	jno    1189 <__executable_start-0x8046f0b>
    1186:	00 00                	add    BYTE PTR [eax],al
    1188:	06                   	push   es
    1189:	1a 08                	sbb    cl,BYTE PTR [eax]
    118b:	64 00 00             	add    BYTE PTR fs:[eax],al
    118e:	00 67 02             	add    BYTE PTR [edi+0x2],ah
    1191:	00 00                	add    BYTE PTR [eax],al
    1193:	06                   	push   es
    1194:	07                   	pop    es
    1195:	02 00                	add    al,BYTE PTR [eax]
    1197:	00 06                	add    BYTE PTR [esi],al
    1199:	64 00 00             	add    BYTE PTR fs:[eax],al
    119c:	00 00                	add    BYTE PTR [eax],al
    119e:	30 ed                	xor    ch,ch
    11a0:	01 00                	add    DWORD PTR [eax],eax
    11a2:	00 07                	add    BYTE PTR [edi],al
    11a4:	10 06                	adc    BYTE PTR [esi],al
    11a6:	89 02                	mov    DWORD PTR [edx],eax
    11a8:	00 00                	add    BYTE PTR [eax],al
    11aa:	06                   	push   es
    11ab:	07                   	pop    es
    11ac:	02 00                	add    al,BYTE PTR [eax]
    11ae:	00 06                	add    BYTE PTR [esi],al
    11b0:	3b 00                	cmp    eax,DWORD PTR [eax]
    11b2:	00 00                	add    BYTE PTR [eax],al
    11b4:	06                   	push   es
    11b5:	07                   	pop    es
    11b6:	02 00                	add    al,BYTE PTR [eax]
    11b8:	00 06                	add    BYTE PTR [esi],al
    11ba:	07                   	pop    es
    11bb:	02 00                	add    al,BYTE PTR [eax]
    11bd:	00 17                	add    BYTE PTR [edi],dl
    11bf:	00 23                	add    BYTE PTR [ebx],ah
    11c1:	21 03                	and    DWORD PTR [ebx],eax
    11c3:	00 00                	add    BYTE PTR [eax],al
    11c5:	08 15 05 3b 00 00    	or     BYTE PTR ds:0x3b05,dl
    11cb:	00 a4 02 00 00 06 07 	add    BYTE PTR [edx+eax*1+0x7060000],ah
    11d2:	02 00                	add    al,BYTE PTR [eax]
    11d4:	00 06                	add    BYTE PTR [esi],al
    11d6:	42                   	inc    edx
    11d7:	00 00                	add    BYTE PTR [eax],al
    11d9:	00 00                	add    BYTE PTR [eax],al
    11db:	1a 1c 04             	sbb    bl,BYTE PTR [esp+eax*1]
    11de:	00 00                	add    BYTE PTR [eax],al
    11e0:	82 02 40             	add    BYTE PTR [edx],0x40
    11e3:	95                   	xchg   ebp,eax
    11e4:	04 08                	add    al,0x8
    11e6:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    11e7:	00 00                	add    BYTE PTR [eax],al
    11e9:	00 01                	add    BYTE PTR [ecx],al
    11eb:	9c                   	pushf
    11ec:	2e 03 00             	add    eax,DWORD PTR cs:[eax]
    11ef:	00 0a                	add    BYTE PTR [edx],cl
    11f1:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    11f4:	00 82 02 25 ba 00    	add    BYTE PTR [edx+0xba2502],al
    11fa:	00 00                	add    BYTE PTR [eax],al
    11fc:	3a 02                	cmp    al,BYTE PTR [edx]
    11fe:	00 00                	add    BYTE PTR [eax],al
    1200:	30 02                	xor    BYTE PTR [edx],al
    1202:	00 00                	add    BYTE PTR [eax],al
    1204:	0e                   	push   cs
    1205:	b1 00                	mov    cl,0x0
    1207:	00 00                	add    BYTE PTR [eax],al
    1209:	15 03 00 00 31       	adc    eax,0x31000003
    120e:	4a                   	dec    edx
    120f:	04 00                	add    al,0x0
    1211:	00 01                	add    BYTE PTR [ecx],al
    1213:	88 02                	mov    BYTE PTR [edx],al
    1215:	1a 2e                	sbb    ch,BYTE PTR [esi]
    1217:	03 00                	add    eax,DWORD PTR [eax]
    1219:	00 05 03 0c b0 04    	add    BYTE PTR ds:0x4b00c03,al
    121f:	08 0b                	or     BYTE PTR [ebx],cl
    1221:	66 70 00             	data16 jo 1224 <__executable_start-0x8046e70>
    1224:	89 02                	mov    DWORD PTR [edx],eax
    1226:	14 3e                	adc    al,0x3e
    1228:	03 00                	add    eax,DWORD PTR [eax]
    122a:	00 75 02             	add    BYTE PTR [ebp+0x2],dh
    122d:	00 00                	add    BYTE PTR [eax],al
    122f:	6f                   	outs   dx,DWORD PTR ds:[esi]
    1230:	02 00                	add    al,BYTE PTR [eax]
    1232:	00 03                	add    BYTE PTR [ebx],al
    1234:	dc 95 04 08 26 0d    	fcom   QWORD PTR [ebp+0xd260804]
    123a:	00 00                	add    BYTE PTR [eax],al
    123c:	01 02                	add    DWORD PTR [edx],eax
    123e:	74 00                	je     1240 <__executable_start-0x8046e54>
    1240:	09 91 5c 06 03 cc    	or     DWORD PTR [ecx-0x33fcf9a4],edx
    1246:	fb                   	sti
    1247:	ff                   	(bad)
    1248:	ff 22                	jmp    DWORD PTR [edx]
    124a:	00 00                	add    BYTE PTR [eax],al
    124c:	03 b7 95 04 08 26    	add    esi,DWORD PTR [edi+0x26080495]
    1252:	0d 00 00 01 02       	or     eax,0x2010000
    1257:	74 00                	je     1259 <__executable_start-0x8046e3b>
    1259:	09 91 5c 06 03 c5    	or     DWORD PTR [ecx-0x3afcf9a4],edx
    125f:	fb                   	sti
    1260:	ff                   	(bad)
    1261:	ff 22                	jmp    DWORD PTR [edx]
    1263:	00 00                	add    BYTE PTR [eax],al
    1265:	1b 07                	sbb    eax,DWORD PTR [edi]
    1267:	02 00                	add    al,BYTE PTR [eax]
    1269:	00 3e                	add    BYTE PTR [esi],bh
    126b:	03 00                	add    eax,DWORD PTR [eax]
    126d:	00 1c 2d 00 00 00 05 	add    BYTE PTR [ebp*1+0x5000000],bl
    1274:	00 05 07 02 00 00    	add    BYTE PTR ds:0x207,al
    127a:	1a 9e 04 00 00 51    	sbb    bl,BYTE PTR [esi+0x51000004]
    1280:	02 30                	add    dh,BYTE PTR [eax]
    1282:	93                   	xchg   ebx,eax
    1283:	04 08                	add    al,0x8
    1285:	10 02                	adc    BYTE PTR [edx],al
    1287:	00 00                	add    BYTE PTR [eax],al
    1289:	01 9c 33 05 00 00 13 	add    DWORD PTR [ebx+esi*1+0x13000005],ebx
    1290:	6f                   	outs   dx,DWORD PTR ds:[esi]
    1291:	66 73 00             	data16 jae 1294 <__executable_start-0x8046e00>
    1294:	51                   	push   ecx
    1295:	02 15 c6 00 00 00    	add    dl,BYTE PTR ds:0xc6
    129b:	94                   	xchg   esp,eax
    129c:	02 00                	add    al,BYTE PTR [eax]
    129e:	00 90 02 00 00 0a    	add    BYTE PTR [eax+0xa000002],dl
    12a4:	9f                   	lahf
    12a5:	03 00                	add    eax,DWORD PTR [eax]
    12a7:	00 51 02             	add    BYTE PTR [ecx+0x2],dl
    12aa:	26 33 05 00 00 a7 02 	xor    eax,DWORD PTR es:0x2a70000
    12b1:	00 00                	add    BYTE PTR [eax],al
    12b3:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
    12b4:	02 00                	add    al,BYTE PTR [eax]
    12b6:	00 0a                	add    BYTE PTR [edx],cl
    12b8:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    12bb:	00 51 02             	add    BYTE PTR [ecx+0x2],dl
    12be:	33 64 00 00          	xor    esp,DWORD PTR [eax+eax*1+0x0]
    12c2:	00 b8 02 00 00 b0    	add    BYTE PTR [eax-0x4ffffffe],bh
    12c8:	02 00                	add    al,BYTE PTR [eax]
    12ca:	00 14 6d 04 00 00 51 	add    BYTE PTR [ebp*2+0x51000004],dl
    12d1:	02 3e                	add    bh,BYTE PTR [esi]
    12d3:	39 05 00 00 02 91    	cmp    DWORD PTR ds:0x91020000,eax
    12d9:	0c 0b                	or     al,0xb
    12db:	62 75 66             	bound  esi,QWORD PTR [ebp+0x66]
    12de:	00 53 02             	add    BYTE PTR [ebx+0x2],dl
    12e1:	12 40 05             	adc    al,BYTE PTR [eax+0x5]
    12e4:	00 00                	add    BYTE PTR [eax],al
    12e6:	df 02                	fild   WORD PTR [edx]
    12e8:	00 00                	add    BYTE PTR [eax],al
    12ea:	dd 02                	fld    QWORD PTR [edx]
    12ec:	00 00                	add    BYTE PTR [eax],al
    12ee:	32 84 04 00 00 01 54 	xor    al,BYTE PTR [esp+eax*1+0x54010000]
    12f5:	02 10                	add    dl,BYTE PTR [eax]
    12f7:	70 00                	jo     12f9 <__executable_start-0x8046d9b>
    12f9:	00 00                	add    BYTE PTR [eax],al
    12fb:	10 1d a6 00 00 00    	adc    BYTE PTR ds:0xa6,bl
    1301:	0f 00 01             	sldt   WORD PTR [ecx]
    1304:	00 00                	add    BYTE PTR [eax],al
    1306:	58                   	pop    eax
    1307:	02 0e                	add    cl,BYTE PTR [esi]
    1309:	64 00 00             	add    BYTE PTR fs:[eax],al
    130c:	00 00                	add    BYTE PTR [eax],al
    130e:	03 00                	add    eax,DWORD PTR [eax]
    1310:	00 e8                	add    al,ch
    1312:	02 00                	add    al,BYTE PTR [eax]
    1314:	00 0b                	add    BYTE PTR [ebx],cl
    1316:	65 6e                	outs   dx,BYTE PTR gs:[esi]
    1318:	64 00 58 02          	add    BYTE PTR fs:[eax+0x2],bl
    131c:	15 64 00 00 00       	adc    eax,0x64
    1321:	6d                   	ins    DWORD PTR es:[edi],dx
    1322:	03 00                	add    eax,DWORD PTR [eax]
    1324:	00 65 03             	add    BYTE PTR [ebp+0x3],ah
    1327:	00 00                	add    BYTE PTR [eax],al
    1329:	0b 6e 00             	or     ebp,DWORD PTR [esi+0x0]
    132c:	58                   	pop    eax
    132d:	02 1a                	add    bl,BYTE PTR [edx]
    132f:	64 00 00             	add    BYTE PTR fs:[eax],al
    1332:	00 93 03 00 00 8d    	add    BYTE PTR [ebx-0x72fffffd],dl
    1338:	03 00                	add    eax,DWORD PTR [eax]
    133a:	00 0b                	add    BYTE PTR [ebx],cl
    133c:	69 00 59 02 0e 64    	imul   eax,DWORD PTR [eax],0x640e0259
    1342:	00 00                	add    BYTE PTR [eax],al
    1344:	00 c9                	add    cl,cl
    1346:	03 00                	add    eax,DWORD PTR [eax]
    1348:	00 ab 03 00 00 33    	add    BYTE PTR [ebx+0x33000003],ch
    134e:	fc                   	cld
    134f:	0e                   	push   cs
    1350:	00 00                	add    BYTE PTR [eax],al
    1352:	e0 94                	loopne 12e8 <__executable_start-0x8046dac>
    1354:	04 08                	add    al,0x8
    1356:	00 00                	add    BYTE PTR [eax],al
    1358:	e0 94                	loopne 12ee <__executable_start-0x8046da6>
    135a:	04 08                	add    al,0x8
    135c:	06                   	push   es
    135d:	00 00                	add    BYTE PTR [eax],al
    135f:	00 01                	add    BYTE PTR [ecx],al
    1361:	72 02                	jb     1365 <__executable_start-0x8046d2f>
    1363:	15 3f 04 00 00       	adc    eax,0x43f
    1368:	10 0a                	adc    BYTE PTR [edx],cl
    136a:	0f 00 00             	sldt   WORD PTR [eax]
    136d:	5f                   	pop    edi
    136e:	04 00                	add    al,0x0
    1370:	00 5d 04             	add    BYTE PTR [ebp+0x4],bl
    1373:	00 00                	add    BYTE PTR [eax],al
    1375:	00 02                	add    BYTE PTR [edx],al
    1377:	8b 93 04 08 26 0d    	mov    edx,DWORD PTR [ebx+0xd260804]
    137d:	00 00                	add    BYTE PTR [eax],al
    137f:	55                   	push   ebp
    1380:	04 00                	add    al,0x0
    1382:	00 01                	add    BYTE PTR [ecx],al
    1384:	02 74 00 03          	add    dh,BYTE PTR [eax+eax*1+0x3]
    1388:	91                   	xchg   ecx,eax
    1389:	4c                   	dec    esp
    138a:	06                   	push   es
    138b:	00 02                	add    BYTE PTR [edx],al
    138d:	a9 93 04 08 26       	test   eax,0x26080493
    1392:	0d 00 00 6a 04       	or     eax,0x46a0000
    1397:	00 00                	add    BYTE PTR [eax],al
    1399:	01 02                	add    DWORD PTR [edx],eax
    139b:	74 00                	je     139d <__executable_start-0x8046cf7>
    139d:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    13a0:	00 02                	add    BYTE PTR [edx],al
    13a2:	ed                   	in     eax,dx
    13a3:	93                   	xchg   ebx,eax
    13a4:	04 08                	add    al,0x8
    13a6:	26 0d 00 00 91 04    	es or  eax,0x4910000
    13ac:	00 00                	add    BYTE PTR [eax],al
    13ae:	01 02                	add    DWORD PTR [edx],eax
    13b0:	74 00                	je     13b2 <__executable_start-0x8046ce2>
    13b2:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    13b5:	01 02                	add    DWORD PTR [edx],eax
    13b7:	74 08                	je     13c1 <__executable_start-0x8046cd3>
    13b9:	0d 08 20 08 2d       	or     eax,0x2d082008
    13be:	73 00                	jae    13c0 <__executable_start-0x8046cd4>
    13c0:	37                   	aaa
    13c1:	2e 28 01             	sub    BYTE PTR cs:[ecx],al
    13c4:	00 16                	add    BYTE PTR [esi],dl
    13c6:	13 00                	adc    eax,DWORD PTR [eax]
    13c8:	02 0a                	add    cl,BYTE PTR [edx]
    13ca:	94                   	xchg   esp,eax
    13cb:	04 08                	add    al,0x8
    13cd:	26 0d 00 00 ad 04    	es or  eax,0x4ad0000
    13d3:	00 00                	add    BYTE PTR [eax],al
    13d5:	01 02                	add    DWORD PTR [edx],eax
    13d7:	74 00                	je     13d9 <__executable_start-0x8046cbb>
    13d9:	09 91 58 06 03 69    	or     DWORD PTR [ecx+0x69030658],edx
    13df:	fb                   	sti
    13e0:	ff                   	(bad)
    13e1:	ff 22                	jmp    DWORD PTR [edx]
    13e3:	00 02                	add    BYTE PTR [edx],al
    13e5:	6d                   	ins    DWORD PTR es:[edi],dx
    13e6:	94                   	xchg   esp,eax
    13e7:	04 08                	add    al,0x8
    13e9:	26 0d 00 00 c2 04    	es or  eax,0x4c20000
    13ef:	00 00                	add    BYTE PTR [eax],al
    13f1:	01 02                	add    DWORD PTR [edx],eax
    13f3:	74 00                	je     13f5 <__executable_start-0x8046c9f>
    13f5:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    13f8:	00 02                	add    BYTE PTR [edx],al
    13fa:	84 94 04 08 26 0d 00 	test   BYTE PTR [esp+eax*1+0xd2608],dl
    1401:	00 da                	add    dl,bl
    1403:	04 00                	add    al,0x0
    1405:	00 01                	add    BYTE PTR [ecx],al
    1407:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    140b:	03 c3                	add    eax,ebx
    140d:	ab                   	stos   DWORD PTR es:[edi],eax
    140e:	04 08                	add    al,0x8
    1410:	00 02                	add    BYTE PTR [edx],al
    1412:	9b                   	fwait
    1413:	94                   	xchg   esp,eax
    1414:	04 08                	add    al,0x8
    1416:	26 0d 00 00 ef 04    	es or  eax,0x4ef0000
    141c:	00 00                	add    BYTE PTR [eax],al
    141e:	01 02                	add    DWORD PTR [edx],eax
    1420:	74 00                	je     1422 <__executable_start-0x8046c72>
    1422:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    1425:	00 02                	add    BYTE PTR [edx],al
    1427:	d8 94 04 08 26 0d 00 	fcom   DWORD PTR [esp+eax*1+0xd2608]
    142e:	00 04 05 00 00 01 02 	add    BYTE PTR [eax*1+0x2010000],al
    1435:	74 00                	je     1437 <__executable_start-0x8046c5d>
    1437:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    143a:	00 02                	add    BYTE PTR [edx],al
    143c:	0d 95 04 08 26       	or     eax,0x26080495
    1441:	0d 00 00 19 05       	or     eax,0x5190000
    1446:	00 00                	add    BYTE PTR [eax],al
    1448:	01 02                	add    DWORD PTR [edx],eax
    144a:	74 00                	je     144c <__executable_start-0x8046c48>
    144c:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    144f:	00 03                	add    BYTE PTR [ebx],al
    1451:	24 95                	and    al,0x95
    1453:	04 08                	add    al,0x8
    1455:	26 0d 00 00 01 02    	es or  eax,0x2010000
    145b:	74 00                	je     145d <__executable_start-0x8046c37>
    145d:	09 91 58 06 03 c3    	or     DWORD PTR [ecx-0x3cfcf9a8],edx
    1463:	fb                   	sti
    1464:	ff                   	(bad)
    1465:	ff 22                	jmp    DWORD PTR [edx]
    1467:	00 00                	add    BYTE PTR [eax],al
    1469:	00 05 38 05 00 00    	add    BYTE PTR ds:0x538,al
    146f:	34 07                	xor    al,0x7
    1471:	01 02                	add    DWORD PTR [edx],eax
    1473:	22 01                	and    al,BYTE PTR [ecx]
    1475:	00 00                	add    BYTE PTR [eax],al
    1477:	05 a2 00 00 00       	add    eax,0xa2
    147c:	1a 44 05 00          	sbb    al,BYTE PTR [ebp+eax*1+0x0]
    1480:	00 41 02             	add    BYTE PTR [ecx+0x2],al
    1483:	81 8a 04 08 2a 00 00 	or     DWORD PTR [edx+0x2a0804],0x9c010000
    148a:	00 01 9c 
    148d:	b9 05 00 00 14       	mov    ecx,0x14000005
    1492:	13 03                	adc    eax,DWORD PTR [ebx]
    1494:	00 00                	add    BYTE PTR [eax],al
    1496:	41                   	inc    ecx
    1497:	02 17                	add    dl,BYTE PTR [edi]
    1499:	07                   	pop    es
    149a:	02 00                	add    al,BYTE PTR [eax]
    149c:	00 02                	add    BYTE PTR [edx],al
    149e:	91                   	xchg   ecx,eax
    149f:	00 0a                	add    BYTE PTR [edx],cl
    14a1:	1a 05 00 00 42 02    	sbb    al,BYTE PTR ds:0x2420000
    14a7:	12 cb                	adc    cl,bl
    14a9:	05 00 00 70 04       	add    eax,0x4700000
    14ae:	00 00                	add    BYTE PTR [eax],al
    14b0:	6c                   	ins    BYTE PTR es:[edi],dx
    14b1:	04 00                	add    al,0x0
    14b3:	00 13                	add    BYTE PTR [ebx],dl
    14b5:	61                   	popa
    14b6:	75 78                	jne    1530 <__executable_start-0x8046b64>
    14b8:	00 42 02             	add    BYTE PTR [edx+0x2],al
    14bb:	30 c9                	xor    cl,cl
    14bd:	05 00 00 85 04       	add    eax,0x4850000
    14c2:	00 00                	add    BYTE PTR [eax],al
    14c4:	81 04 00 00 17 0f e3 	add    DWORD PTR [eax+eax*1],0xe30f1700
    14cb:	02 00                	add    al,BYTE PTR [eax]
    14cd:	00 44 02 0b          	add    BYTE PTR [edx+eax*1+0xb],al
    14d1:	42                   	inc    edx
    14d2:	00 00                	add    BYTE PTR [eax],al
    14d4:	00 9a 04 00 00 96    	add    BYTE PTR [edx-0x69fffffc],bl
    14da:	04 00                	add    al,0x0
    14dc:	00 03                	add    BYTE PTR [ebx],al
    14de:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
    14df:	8a 04 08             	mov    al,BYTE PTR [eax+ecx*1]
    14e2:	72 09                	jb     14ed <__executable_start-0x8046ba7>
    14e4:	00 00                	add    BYTE PTR [eax],al
    14e6:	01 02                	add    DWORD PTR [edx],eax
    14e8:	74 00                	je     14ea <__executable_start-0x8046baa>
    14ea:	03 91 00 06 00 00    	add    edx,DWORD PTR [ecx+0x600]
    14f0:	35 c9 05 00 00       	xor    eax,0x5c9
    14f5:	06                   	push   es
    14f6:	58                   	pop    eax
    14f7:	00 00                	add    BYTE PTR [eax],al
    14f9:	00 06                	add    BYTE PTR [esi],al
    14fb:	c9                   	leave
    14fc:	05 00 00 00 36       	add    eax,0x36000000
    1501:	04 05                	add    al,0x5
    1503:	b9 05 00 00 1e       	mov    ecx,0x1e000005
    1508:	0c 05                	or     al,0x5
    150a:	00 00                	add    BYTE PTR [eax],al
    150c:	31 02                	xor    DWORD PTR [edx],eax
    150e:	c7                   	(bad)
    150f:	89 04 08             	mov    DWORD PTR [eax+ecx*1],eax
    1512:	8d 00                	lea    eax,[eax]
    1514:	00 00                	add    BYTE PTR [eax],al
    1516:	01 9c a4 06 00 00 0a 	add    DWORD PTR [esp+eiz*4+0xa000006],ebx
    151d:	13 05 00 00 31 02    	adc    eax,DWORD PTR ds:0x2310000
    1523:	1c 07                	sbb    al,0x7
    1525:	02 00                	add    al,BYTE PTR [eax]
    1527:	00 b9 04 00 00 ab    	add    BYTE PTR [ecx-0x54fffffc],bh
    152d:	04 00                	add    al,0x0
    152f:	00 0a                	add    BYTE PTR [edx],cl
    1531:	3d 05 00 00 31       	cmp    eax,0x31000005
    1536:	02 28                	add    ch,BYTE PTR [eax]
    1538:	3b 00                	cmp    eax,DWORD PTR [eax]
    153a:	00 00                	add    BYTE PTR [eax],al
    153c:	fa                   	cli
    153d:	04 00                	add    al,0x0
    153f:	00 f4                	add    ah,dh
    1541:	04 00                	add    al,0x0
    1543:	00 13                	add    BYTE PTR [ebx],dl
    1545:	63 00                	arpl   WORD PTR [eax],eax
    1547:	32 02                	xor    al,BYTE PTR [edx]
    1549:	2a a4 06 00 00 25 05 	sub    ah,BYTE PTR [esi+eax*1+0x5250000]
    1550:	00 00                	add    BYTE PTR [eax],al
    1552:	19 05 00 00 14 1a    	sbb    DWORD PTR ds:0x1a140000,eax
    1558:	05 00 00 33 02       	add    eax,0x2330000
    155d:	17                   	pop    ss
    155e:	cb                   	retf
    155f:	05 00 00 02 91       	add    eax,0x91020000
    1564:	00 15 61 75 78 00    	add    BYTE PTR ds:0x787561,dl
    156a:	33 02                	xor    eax,DWORD PTR [edx]
    156c:	35 c9 05 00 00       	xor    eax,0x5c9
    1571:	02 91 04 0b 69 00    	add    dl,BYTE PTR [ecx+0x690b04]
    1577:	35 02 07 3b 00       	xor    eax,0x3b0702
    157c:	00 00                	add    BYTE PTR [eax],al
    157e:	59                   	pop    ecx
    157f:	05 00 00 53 05       	add    eax,0x5530000
    1584:	00 00                	add    BYTE PTR [eax],al
    1586:	02 fc                	add    bh,ah
    1588:	89 04 08             	mov    DWORD PTR [eax+ecx*1],eax
    158b:	a9 06 00 00 72       	test   eax,0x72000006
    1590:	06                   	push   es
    1591:	00 00                	add    BYTE PTR [eax],al
    1593:	01 01                	add    DWORD PTR [ecx],eax
    1595:	50                   	push   eax
    1596:	02 08                	add    cl,BYTE PTR [eax]
    1598:	20 01                	and    BYTE PTR [ecx],al
    159a:	01 51 03             	add    DWORD PTR [ecx+0x3],edx
    159d:	91                   	xchg   ecx,eax
    159e:	00 06                	add    BYTE PTR [esi],al
    15a0:	01 02                	add    DWORD PTR [edx],eax
    15a2:	74 00                	je     15a4 <__executable_start-0x8046af0>
    15a4:	03 91 04 06 00 02    	add    edx,DWORD PTR [ecx+0x2000604]
    15aa:	13 8a 04 08 a9 06    	adc    ecx,DWORD PTR [edx+0x6a90804]
    15b0:	00 00                	add    BYTE PTR [eax],al
    15b2:	95                   	xchg   ebp,eax
    15b3:	06                   	push   es
    15b4:	00 00                	add    BYTE PTR [eax],al
    15b6:	01 01                	add    DWORD PTR [ecx],eax
    15b8:	50                   	push   eax
    15b9:	02 08                	add    cl,BYTE PTR [eax]
    15bb:	20 01                	and    BYTE PTR [ecx],al
    15bd:	01 51 03             	add    DWORD PTR [ecx+0x3],edx
    15c0:	91                   	xchg   ecx,eax
    15c1:	00 06                	add    BYTE PTR [esi],al
    15c3:	01 02                	add    DWORD PTR [edx],eax
    15c5:	74 00                	je     15c7 <__executable_start-0x8046acd>
    15c7:	03 91 04 06 00 24    	add    edx,DWORD PTR [ecx+0x24000604]
    15cd:	38 8a 04 08 01 02    	cmp    BYTE PTR [edx+0x2010804],cl
    15d3:	74 04                	je     15d9 <__executable_start-0x8046abb>
    15d5:	03 91 04 06 00 00    	add    edx,DWORD PTR [ecx+0x604]
    15db:	05 87 01 00 00       	add    eax,0x187
    15e0:	1e                   	push   ds
    15e1:	be 03 00 00 27       	mov    esi,0x27000003
    15e6:	02 85 86 04 08 30    	add    al,BYTE PTR [ebp+0x30080486]
    15ec:	00 00                	add    BYTE PTR [eax],al
    15ee:	00 01                	add    BYTE PTR [ecx],al
    15f0:	9c                   	pushf
    15f1:	1e                   	push   ds
    15f2:	07                   	pop    es
    15f3:	00 00                	add    BYTE PTR [eax],al
    15f5:	13 63 68             	adc    esp,DWORD PTR [ebx+0x68]
    15f8:	00 27                	add    BYTE PTR [edi],ah
    15fa:	02 12                	add    dl,BYTE PTR [edx]
    15fc:	58                   	pop    eax
    15fd:	00 00                	add    BYTE PTR [eax],al
    15ff:	00 79 05             	add    BYTE PTR [ecx+0x5],bh
    1602:	00 00                	add    BYTE PTR [eax],al
    1604:	71 05                	jno    160b <__executable_start-0x8046a89>
    1606:	00 00                	add    BYTE PTR [eax],al
    1608:	13 63 6e             	adc    esp,DWORD PTR [ebx+0x6e]
    160b:	74 00                	je     160d <__executable_start-0x8046a87>
    160d:	27                   	daa
    160e:	02 1d 64 00 00 00    	add    bl,BYTE PTR ds:0x64
    1614:	9f                   	lahf
    1615:	05 00 00 97 05       	add    eax,0x5970000
    161a:	00 00                	add    BYTE PTR [eax],al
    161c:	0a 1a                	or     bl,BYTE PTR [edx]
    161e:	05 00 00 27 02       	add    eax,0x2270000
    1623:	29 cb                	sub    ebx,ecx
    1625:	05 00 00 c0 05       	add    eax,0x5c00000
    162a:	00 00                	add    BYTE PTR [eax],al
    162c:	b8 05 00 00 15       	mov    eax,0x15000005
    1631:	61                   	popa
    1632:	75 78                	jne    16ac <__executable_start-0x80469e8>
    1634:	00 27                	add    BYTE PTR [edi],ah
    1636:	02 47 c9             	add    al,BYTE PTR [edi-0x37]
    1639:	05 00 00 02 91       	add    eax,0x91020000
    163e:	00 24 a6             	add    BYTE PTR [esi+eiz*4],ah
    1641:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
    1644:	01 02                	add    DWORD PTR [edx],eax
    1646:	74 00                	je     1648 <__executable_start-0x8046a4c>
    1648:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    164b:	01 02                	add    DWORD PTR [edx],eax
    164d:	74 04                	je     1653 <__executable_start-0x8046a41>
    164f:	03 91 00 06 00 00    	add    edx,DWORD PTR [ecx+0x600]
    1655:	1e                   	push   ds
    1656:	5e                   	pop    esi
    1657:	04 00                	add    al,0x0
    1659:	00 d6                	add    dh,dl
    165b:	01 b5 86 04 08 12    	add    DWORD PTR [ebp+0x12080486],esi
    1661:	03 00                	add    eax,DWORD PTR [eax]
    1663:	00 01                	add    BYTE PTR [ecx],al
    1665:	9c                   	pushf
    1666:	14 09                	adc    al,0x9
    1668:	00 00                	add    BYTE PTR [eax],al
    166a:	0a b8 04 00 00 d6    	or     bh,BYTE PTR [eax-0x29fffffc]
    1670:	01 1b                	add    DWORD PTR [ebx],ebx
    1672:	de 00                	fiadd  WORD PTR [eax]
    1674:	00 00                	add    BYTE PTR [eax],al
    1676:	f2 05 00 00 de 05    	repnz add eax,0x5de0000
    167c:	00 00                	add    BYTE PTR [eax],al
    167e:	0a d4                	or     dl,ah
    1680:	04 00                	add    al,0x0
    1682:	00 d6                	add    dh,dl
    1684:	01 27                	add    DWORD PTR [edi],esp
    1686:	39 05 00 00 80 06    	cmp    DWORD PTR ds:0x6800000,eax
    168c:	00 00                	add    BYTE PTR [eax],al
    168e:	7a 06                	jp     1696 <__executable_start-0x80469fe>
    1690:	00 00                	add    BYTE PTR [eax],al
    1692:	14 f7                	adc    al,0xf7
    1694:	03 00                	add    eax,DWORD PTR [eax]
    1696:	00 d6                	add    dh,dl
    1698:	01 37                	add    DWORD PTR [edi],esi
    169a:	39 05 00 00 02 91    	cmp    DWORD PTR ds:0x91020000,eax
    16a0:	00 15 62 00 d7 01    	add    BYTE PTR ds:0x1d70062,dl
    16a6:	2c 14                	sub    al,0x14
    16a8:	09 00                	or     DWORD PTR [eax],eax
    16aa:	00 02                	add    BYTE PTR [edx],al
    16ac:	91                   	xchg   ecx,eax
    16ad:	04 15                	add    al,0x15
    16af:	63 00                	arpl   WORD PTR [eax],eax
    16b1:	d8 01                	fadd   DWORD PTR [ecx]
    16b3:	31 19                	xor    DWORD PTR [ecx],ebx
    16b5:	09 00                	or     DWORD PTR [eax],eax
    16b7:	00 02                	add    BYTE PTR [edx],al
    16b9:	91                   	xchg   ecx,eax
    16ba:	08 14 1a             	or     BYTE PTR [edx+ebx*1],dl
    16bd:	05 00 00 d9 01       	add    eax,0x1d90000
    16c2:	18 cb                	sbb    bl,cl
    16c4:	05 00 00 02 91       	add    eax,0x91020000
    16c9:	0c 15                	or     al,0x15
    16cb:	61                   	popa
    16cc:	75 78                	jne    1746 <__executable_start-0x804694e>
    16ce:	00 d9                	add    cl,bl
    16d0:	01 36                	add    DWORD PTR [esi],esi
    16d2:	c9                   	leave
    16d3:	05 00 00 02 91       	add    eax,0x91020000
    16d8:	10 1f                	adc    BYTE PTR [edi],bl
    16da:	62 75 66             	bound  esi,QWORD PTR [ebp+0x66]
    16dd:	00 db                	add    bl,bl
    16df:	01 08                	add    DWORD PTR [eax],ecx
    16e1:	1e                   	push   ds
    16e2:	09 00                	or     DWORD PTR [eax],eax
    16e4:	00 03                	add    BYTE PTR [ebx],al
    16e6:	91                   	xchg   ecx,eax
    16e7:	a0 7f 0b 63 70       	mov    al,ds:0x70630b7f
    16ec:	00 db                	add    bl,bl
    16ee:	01 12                	add    DWORD PTR [edx],edx
    16f0:	18 01                	sbb    BYTE PTR [ecx],al
    16f2:	00 00                	add    BYTE PTR [eax],al
    16f4:	c2 06 00             	ret    0x6
    16f7:	00 9e 06 00 00 0b    	add    BYTE PTR [esi+0xb000006],bl
    16fd:	78 00                	js     16ff <__executable_start-0x8046995>
    16ff:	dc 01                	fadd   QWORD PTR [ecx]
    1701:	07                   	pop    es
    1702:	3b 00                	cmp    eax,DWORD PTR [eax]
    1704:	00 00                	add    BYTE PTR [eax],al
    1706:	61                   	popa
    1707:	07                   	pop    es
    1708:	00 00                	add    BYTE PTR [eax],al
    170a:	57                   	push   edi
    170b:	07                   	pop    es
    170c:	00 00                	add    BYTE PTR [eax],al
    170e:	0f cf                	bswap  edi
    1710:	04 00                	add    al,0x0
    1712:	00 dd                	add    ch,bl
    1714:	01 07                	add    DWORD PTR [edi],eax
    1716:	3b 00                	cmp    eax,DWORD PTR [eax]
    1718:	00 00                	add    BYTE PTR [eax],al
    171a:	93                   	xchg   ebx,eax
    171b:	07                   	pop    es
    171c:	00 00                	add    BYTE PTR [eax],al
    171e:	8b 07                	mov    eax,DWORD PTR [edi]
    1720:	00 00                	add    BYTE PTR [eax],al
    1722:	0f 53 05 00 00 de 01 	rcpps  xmm0,XMMWORD PTR ds:0x1de0000
    1729:	07                   	pop    es
    172a:	3b 00                	cmp    eax,DWORD PTR [eax]
    172c:	00 00                	add    BYTE PTR [eax],al
    172e:	b7 07                	mov    bh,0x7
    1730:	00 00                	add    BYTE PTR [eax],al
    1732:	b5 07                	mov    ch,0x7
    1734:	00 00                	add    BYTE PTR [eax],al
    1736:	0f a4 03 00          	shld   DWORD PTR [ebx],eax,0x0
    173a:	00 df                	add    bh,bl
    173c:	01 07                	add    DWORD PTR [edi],eax
    173e:	3b 00                	cmp    eax,DWORD PTR [eax]
    1740:	00 00                	add    BYTE PTR [eax],al
    1742:	c7 07 00 00 bf 07    	mov    DWORD PTR [edi],0x7bf0000
    1748:	00 00                	add    BYTE PTR [eax],al
    174a:	0f                   	xstore-rng (bad)
    174b:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
    174c:	04 00                	add    al,0x0
    174e:	00 e0                	add    al,ah
    1750:	01 07                	add    DWORD PTR [edi],eax
    1752:	3b 00                	cmp    eax,DWORD PTR [eax]
    1754:	00 00                	add    BYTE PTR [eax],al
    1756:	13 08                	adc    ecx,DWORD PTR [eax]
    1758:	00 00                	add    BYTE PTR [eax],al
    175a:	0b 08                	or     ecx,DWORD PTR [eax]
    175c:	00 00                	add    BYTE PTR [eax],al
    175e:	25 c1 87 04 08       	and    eax,0x80487c1
    1763:	2a 0f                	sub    cl,BYTE PTR [edi]
    1765:	00 00                	add    BYTE PTR [eax],al
    1767:	25 ea 87 04 08       	and    eax,0x80487ea
    176c:	33 0f                	xor    ecx,DWORD PTR [edi]
    176e:	00 00                	add    BYTE PTR [eax],al
    1770:	11 ca                	adc    edx,ecx
    1772:	88 04 08             	mov    BYTE PTR [eax+ecx*1],al
    1775:	53                   	push   ebx
    1776:	08 00                	or     BYTE PTR [eax],al
    1778:	00 01                	add    BYTE PTR [ecx],al
    177a:	02 74 00 04          	add    dh,BYTE PTR [eax+eax*1+0x4]
    177e:	91                   	xchg   ecx,eax
    177f:	fc                   	cld
    1780:	7e 06                	jle    1788 <__executable_start-0x804690c>
    1782:	01 02                	add    DWORD PTR [edx],eax
    1784:	74 04                	je     178a <__executable_start-0x804690a>
    1786:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    1789:	00 11                	add    BYTE PTR [ecx],dl
    178b:	e1 88                	loope  1715 <__executable_start-0x804697f>
    178d:	04 08                	add    al,0x8
    178f:	6b 08 00             	imul   ecx,DWORD PTR [eax],0x0
    1792:	00 01                	add    BYTE PTR [ecx],al
    1794:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
    1798:	08 30                	or     BYTE PTR [eax],dh
    179a:	01 02                	add    DWORD PTR [edx],eax
    179c:	74 04                	je     17a2 <__executable_start-0x80468f2>
    179e:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    17a1:	00 11                	add    BYTE PTR [ecx],dl
    17a3:	f2 88 04 08          	repnz mov BYTE PTR [eax+ecx*1],al
    17a7:	8a 08                	mov    cl,BYTE PTR [eax]
    17a9:	00 00                	add    BYTE PTR [eax],al
    17ab:	01 02                	add    DWORD PTR [edx],eax
    17ad:	74 00                	je     17af <__executable_start-0x80468e5>
    17af:	09 91 f8 7e 94 01    	or     DWORD PTR [ecx+0x1947ef8],edx
    17b5:	48                   	dec    eax
    17b6:	24 48                	and    al,0x48
    17b8:	26 01 02             	add    DWORD PTR es:[edx],eax
    17bb:	74 04                	je     17c1 <__executable_start-0x80468d3>
    17bd:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    17c0:	00 11                	add    BYTE PTR [ecx],dl
    17c2:	19 89 04 08 9c 08    	sbb    DWORD PTR [ecx+0x89c0804],ecx
    17c8:	00 00                	add    BYTE PTR [eax],al
    17ca:	01 02                	add    DWORD PTR [edx],eax
    17cc:	74 04                	je     17d2 <__executable_start-0x80468c2>
    17ce:	03 91 10 06 00 02    	add    edx,DWORD PTR [ecx+0x2000610]
    17d4:	64 89 04 08          	mov    DWORD PTR fs:[eax+ecx*1],eax
    17d8:	a9 06 00 00 c5       	test   eax,0xc5000006
    17dd:	08 00                	or     BYTE PTR [eax],al
    17df:	00 01                	add    BYTE PTR [ecx],al
    17e1:	01 50 02             	add    DWORD PTR [eax+0x2],edx
    17e4:	08 20                	or     BYTE PTR [eax],ah
    17e6:	01 01                	add    DWORD PTR [ecx],eax
    17e8:	52                   	push   edx
    17e9:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    17ec:	01 01                	add    DWORD PTR [ecx],eax
    17ee:	51                   	push   ecx
    17ef:	03 91 0c 06 01 02    	add    edx,DWORD PTR [ecx+0x201060c]
    17f5:	74 00                	je     17f7 <__executable_start-0x804689d>
    17f7:	03 91 10 06 00 02    	add    edx,DWORD PTR [ecx+0x2000610]
    17fd:	7e 89                	jle    1788 <__executable_start-0x804690c>
    17ff:	04 08                	add    al,0x8
    1801:	a9 06 00 00 ee       	test   eax,0xee000006
    1806:	08 00                	or     BYTE PTR [eax],al
    1808:	00 01                	add    BYTE PTR [ecx],al
    180a:	01 50 02             	add    DWORD PTR [eax+0x2],edx
    180d:	08 30                	or     BYTE PTR [eax],dh
    180f:	01 01                	add    DWORD PTR [ecx],eax
    1811:	52                   	push   edx
    1812:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    1815:	01 01                	add    DWORD PTR [ecx],eax
    1817:	51                   	push   ecx
    1818:	03 91 0c 06 01 02    	add    edx,DWORD PTR [ecx+0x201060c]
    181e:	74 00                	je     1820 <__executable_start-0x8046874>
    1820:	03 91 10 06 00 03    	add    edx,DWORD PTR [ecx+0x3000610]
    1826:	98                   	cwde
    1827:	89 04 08             	mov    DWORD PTR [eax+ecx*1],eax
    182a:	a9 06 00 00 01       	test   eax,0x1000006
    182f:	01 50 02             	add    DWORD PTR [eax+0x2],edx
    1832:	08 20                	or     BYTE PTR [eax],ah
    1834:	01 01                	add    DWORD PTR [ecx],eax
    1836:	52                   	push   edx
    1837:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    183a:	01 01                	add    DWORD PTR [ecx],eax
    183c:	51                   	push   ecx
    183d:	03 91 0c 06 01 02    	add    edx,DWORD PTR [ecx+0x201060c]
    1843:	74 00                	je     1845 <__executable_start-0x804684f>
    1845:	03 91 10 06 00 00    	add    edx,DWORD PTR [ecx+0x610]
    184b:	05 02 02 00 00       	add    eax,0x202
    1850:	05 c3 01 00 00       	add    eax,0x1c3
    1855:	1b 58 00             	sbb    ebx,DWORD PTR [eax+0x0]
    1858:	00 00                	add    BYTE PTR [eax],al
    185a:	2e 09 00             	or     DWORD PTR cs:[eax],eax
    185d:	00 1c 2d 00 00 00 3f 	add    BYTE PTR [ebp*1+0x3f000000],bl
    1864:	00 37                	add    BYTE PTR [edi],dh
    1866:	f2 04 00             	repnz add al,0x0
    1869:	00 01                	add    BYTE PTR [ecx],al
    186b:	54                   	push   esp
    186c:	01 01                	add    DWORD PTR [ecx],eax
    186e:	07                   	pop    es
    186f:	02 00                	add    al,BYTE PTR [eax]
    1871:	00 01                	add    BYTE PTR [ecx],al
    1873:	6d                   	ins    DWORD PTR es:[edi],dx
    1874:	09 00                	or     DWORD PTR [eax],eax
    1876:	00 26                	add    BYTE PTR [esi],ah
    1878:	13 03                	adc    eax,DWORD PTR [ebx]
    187a:	00 00                	add    BYTE PTR [eax],al
    187c:	54                   	push   esp
    187d:	01 1f                	add    DWORD PTR [edi],ebx
    187f:	07                   	pop    es
    1880:	02 00                	add    al,BYTE PTR [eax]
    1882:	00 38                	add    BYTE PTR [eax],bh
    1884:	63 00                	arpl   WORD PTR [eax],eax
    1886:	01 54 01 41          	add    DWORD PTR [ecx+eax*1+0x41],edx
    188a:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    188b:	06                   	push   es
    188c:	00 00                	add    BYTE PTR [eax],al
    188e:	26 e3 02             	es jecxz 1893 <__executable_start-0x8046801>
    1891:	00 00                	add    BYTE PTR [eax],al
    1893:	55                   	push   ebp
    1894:	01 1c 6d 09 00 00 39 	add    DWORD PTR [ebp*2+0x39000009],ebx
    189b:	e0 03                	loopne 18a0 <__executable_start-0x80467f4>
    189d:	00 00                	add    BYTE PTR [eax],al
    189f:	01 74 01 02          	add    DWORD PTR [ecx+eax*1+0x2],esi
    18a3:	00 05 42 00 00 00    	add    BYTE PTR ds:0x42,al
    18a9:	3a 1f                	cmp    bl,BYTE PTR [edi]
    18ab:	03 00                	add    eax,DWORD PTR [eax]
    18ad:	00 01                	add    BYTE PTR [ecx],al
    18af:	9d                   	popf
    18b0:	01 ab 8a 04 08 d7    	add    DWORD PTR [ebx-0x28f7fb76],ebp
    18b6:	07                   	pop    es
    18b7:	00 00                	add    BYTE PTR [eax],al
    18b9:	01 9c 11 0d 00 00 18 	add    DWORD PTR [ecx+edx*1+0x1800000d],ebx
    18c0:	13 03                	adc    eax,DWORD PTR [ebx]
    18c2:	00 00                	add    BYTE PTR [eax],al
    18c4:	9d                   	popf
    18c5:	18 07                	sbb    BYTE PTR [edi],al
    18c7:	02 00                	add    al,BYTE PTR [eax]
    18c9:	00 8f 08 00 00 35    	add    BYTE PTR [edi+0x35000008],cl
    18cf:	08 00                	or     BYTE PTR [eax],al
    18d1:	00 18                	add    BYTE PTR [eax],bl
    18d3:	e3 02                	jecxz  18d7 <__executable_start-0x80467bd>
    18d5:	00 00                	add    BYTE PTR [eax],al
    18d7:	9d                   	popf
    18d8:	28 42 00             	sub    BYTE PTR [edx+0x0],al
    18db:	00 00                	add    BYTE PTR [eax],al
    18dd:	50                   	push   eax
    18de:	0a 00                	or     al,BYTE PTR [eax]
    18e0:	00 cc                	add    ah,cl
    18e2:	09 00                	or     DWORD PTR [eax],eax
    18e4:	00 0c 1a             	add    BYTE PTR [edx+ebx*1],cl
    18e7:	05 00 00 9e 13       	add    eax,0x139e0000
    18ec:	cb                   	retf
    18ed:	05 00 00 02 91       	add    eax,0x91020000
    18f2:	08 3b                	or     BYTE PTR [ebx],bh
    18f4:	61                   	popa
    18f5:	75 78                	jne    196f <__executable_start-0x8046725>
    18f7:	00 01                	add    BYTE PTR [ecx],al
    18f9:	9e                   	sahf
    18fa:	31 c9                	xor    ecx,ecx
    18fc:	05 00 00 02 91       	add    eax,0x91020000
    1901:	0c 3c                	or     al,0x3c
    1903:	38 01                	cmp    BYTE PTR [ecx],al
    1905:	00 00                	add    BYTE PTR [eax],al
    1907:	21 0d 00 00 05 03    	and    DWORD PTR ds:0x3050000,ecx
    190d:	f4                   	hlt
    190e:	a9 04 08 1d 0c       	test   eax,0xc1d0804
    1913:	00 00                	add    BYTE PTR [eax],al
    1915:	00 27                	add    BYTE PTR [edi],ah
    1917:	63 00                	arpl   WORD PTR [eax],eax
    1919:	a2 20 87 01 00       	mov    ds:0x18720,al
    191e:	00 02                	add    BYTE PTR [edx],al
    1920:	91                   	xchg   ecx,eax
    1921:	50                   	push   eax
    1922:	0e                   	push   cs
    1923:	65 00 00             	add    BYTE PTR gs:[eax],al
    1926:	00 7e 0a             	add    BYTE PTR [esi+0xa],bh
    1929:	00 00                	add    BYTE PTR [eax],al
    192b:	12 b8 04 00 00 bd    	adc    bh,BYTE PTR [eax-0x42fffffc]
    1931:	16                   	push   ss
    1932:	d2 00                	rol    BYTE PTR [eax],cl
    1934:	00 00                	add    BYTE PTR [eax],al
    1936:	9e                   	sahf
    1937:	0c 00                	or     al,0x0
    1939:	00 92 0c 00 00 02    	add    BYTE PTR [edx+0x200000c],dl
    193f:	5a                   	pop    edx
    1940:	8e 04 08             	mov    es,WORD PTR [eax+ecx*1]
    1943:	1e                   	push   ds
    1944:	07                   	pop    es
    1945:	00 00                	add    BYTE PTR [eax],al
    1947:	45                   	inc    ebp
    1948:	0a 00                	or     al,BYTE PTR [eax]
    194a:	00 01                	add    BYTE PTR [ecx],al
    194c:	01 51 01             	add    DWORD PTR [ecx+0x1],edx
    194f:	31 01                	xor    DWORD PTR [ecx],eax
    1951:	02 74 00 06          	add    dh,BYTE PTR [eax+eax*1+0x6]
    1955:	91                   	xchg   ecx,eax
    1956:	bc 7f 06 4f 25       	mov    esp,0x254f067f
    195b:	01 02                	add    DWORD PTR [edx],eax
    195d:	74 04                	je     1963 <__executable_start-0x8046731>
    195f:	05 03 54 b0 04       	add    eax,0x4b05403
    1964:	08 01                	or     BYTE PTR [ecx],al
    1966:	02 74 08 02          	add    dh,BYTE PTR [eax+ecx*1+0x2]
    196a:	91                   	xchg   ecx,eax
    196b:	50                   	push   eax
    196c:	01 02                	add    DWORD PTR [edx],eax
    196e:	74 0c                	je     197c <__executable_start-0x8046718>
    1970:	02 73 00             	add    dh,BYTE PTR [ebx+0x0]
    1973:	01 02                	add    DWORD PTR [edx],eax
    1975:	74 10                	je     1987 <__executable_start-0x804670d>
    1977:	03 91 0c 06 00 03    	add    edx,DWORD PTR [ecx+0x300060c]
    197d:	6f                   	outs   dx,DWORD PTR ds:[esi]
    197e:	8f 04 08             	pop    DWORD PTR [eax+ecx*1]
    1981:	67 02 00             	add    al,BYTE PTR [bx+si]
    1984:	00 01                	add    BYTE PTR [ecx],al
    1986:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    198a:	73 00                	jae    198c <__executable_start-0x8046708>
    198c:	03 72 fb             	add    esi,DWORD PTR [edx-0x5]
    198f:	ff                   	(bad)
    1990:	ff 22                	jmp    DWORD PTR [edx]
    1992:	01 02                	add    DWORD PTR [edx],eax
    1994:	74 04                	je     199a <__executable_start-0x80466fa>
    1996:	02 08                	add    cl,BYTE PTR [eax]
    1998:	dc 01                	fadd   QWORD PTR [ecx]
    199a:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    199e:	73 00                	jae    19a0 <__executable_start-0x80466f4>
    19a0:	03 f4                	add    esi,esp
    19a2:	f9                   	stc
    19a3:	ff                   	(bad)
    19a4:	ff 22                	jmp    DWORD PTR [edx]
    19a6:	01 02                	add    DWORD PTR [edx],eax
    19a8:	74 0c                	je     19b6 <__executable_start-0x80466de>
    19aa:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    19ad:	03 5c fa ff          	add    ebx,DWORD PTR [edx+edi*8-0x1]
    19b1:	ff 22                	jmp    DWORD PTR [edx]
    19b3:	00 00                	add    BYTE PTR [eax],al
    19b5:	0e                   	push   cs
    19b6:	75 00                	jne    19b8 <__executable_start-0x80466dc>
    19b8:	00 00                	add    BYTE PTR [eax],al
    19ba:	14 0b                	adc    al,0xb
    19bc:	00 00                	add    BYTE PTR [eax],al
    19be:	12 b8 04 00 00 ea    	adc    bh,BYTE PTR [eax-0x15fffffc]
    19c4:	17                   	pop    ss
    19c5:	de 00                	fiadd  WORD PTR [eax]
    19c7:	00 00                	add    BYTE PTR [eax],al
    19c9:	e3 0c                	jecxz  19d7 <__executable_start-0x80466bd>
    19cb:	00 00                	add    BYTE PTR [eax],al
    19cd:	d5 0c                	aad    0xc
    19cf:	00 00                	add    BYTE PTR [eax],al
    19d1:	28 62 00             	sub    BYTE PTR [edx+0x0],ah
    19d4:	eb 28                	jmp    19fe <__executable_start-0x8046696>
    19d6:	14 09                	adc    al,0x9
    19d8:	00 00                	add    BYTE PTR [eax],al
    19da:	2d 0d 00 00 29       	sub    eax,0x2900000d
    19df:	0d 00 00 02 be       	or     eax,0xbe020000
    19e4:	90                   	nop
    19e5:	04 08                	add    al,0x8
    19e7:	67 02 00             	add    al,BYTE PTR [bx+si]
    19ea:	00 e8                	add    al,ch
    19ec:	0a 00                	or     al,BYTE PTR [eax]
    19ee:	00 01                	add    BYTE PTR [ecx],al
    19f0:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    19f4:	73 00                	jae    19f6 <__executable_start-0x804669e>
    19f6:	03 72 fb             	add    esi,DWORD PTR [edx-0x5]
    19f9:	ff                   	(bad)
    19fa:	ff 22                	jmp    DWORD PTR [edx]
    19fc:	01 02                	add    DWORD PTR [edx],eax
    19fe:	74 04                	je     1a04 <__executable_start-0x8046690>
    1a00:	03 0a                	add    ecx,DWORD PTR [edx]
    1a02:	14 01                	adc    al,0x1
    1a04:	01 02                	add    DWORD PTR [edx],eax
    1a06:	74 08                	je     1a10 <__executable_start-0x8046684>
    1a08:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    1a0b:	03 f4                	add    esi,esp
    1a0d:	f9                   	stc
    1a0e:	ff                   	(bad)
    1a0f:	ff 22                	jmp    DWORD PTR [edx]
    1a11:	01 02                	add    DWORD PTR [edx],eax
    1a13:	74 0c                	je     1a21 <__executable_start-0x8046673>
    1a15:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    1a18:	03 5c fa ff          	add    ebx,DWORD PTR [edx+edi*8-0x1]
    1a1c:	ff 22                	jmp    DWORD PTR [edx]
    1a1e:	00 03                	add    BYTE PTR [ebx],al
    1a20:	f4                   	hlt
    1a21:	90                   	nop
    1a22:	04 08                	add    al,0x8
    1a24:	1e                   	push   ds
    1a25:	07                   	pop    es
    1a26:	00 00                	add    BYTE PTR [eax],al
    1a28:	01 01                	add    DWORD PTR [ecx],eax
    1a2a:	51                   	push   ecx
    1a2b:	01 30                	add    DWORD PTR [eax],esi
    1a2d:	01 02                	add    DWORD PTR [edx],eax
    1a2f:	74 00                	je     1a31 <__executable_start-0x8046663>
    1a31:	01 30                	add    DWORD PTR [eax],esi
    1a33:	01 02                	add    DWORD PTR [edx],eax
    1a35:	74 08                	je     1a3f <__executable_start-0x8046655>
    1a37:	02 91 50 01 02 74    	add    dl,BYTE PTR [ecx+0x74020150]
    1a3d:	0c 02                	or     al,0x2
    1a3f:	73 00                	jae    1a41 <__executable_start-0x8046653>
    1a41:	01 02                	add    DWORD PTR [edx],eax
    1a43:	74 10                	je     1a55 <__executable_start-0x804663f>
    1a45:	03 91 0c 06 00 00    	add    edx,DWORD PTR [ecx+0x60c]
    1a4b:	0e                   	push   cs
    1a4c:	80 00 00             	add    BYTE PTR [eax],0x0
    1a4f:	00 57 0b             	add    BYTE PTR [edi+0xb],dl
    1a52:	00 00                	add    BYTE PTR [eax],al
    1a54:	1f                   	pop    ds
    1a55:	63 68 00             	arpl   WORD PTR [eax+0x0],ebp
    1a58:	1e                   	push   ds
    1a59:	01 12                	add    DWORD PTR [edx],edx
    1a5b:	58                   	pop    eax
    1a5c:	00 00                	add    BYTE PTR [eax],al
    1a5e:	00 02                	add    BYTE PTR [edx],al
    1a60:	91                   	xchg   ecx,eax
    1a61:	4f                   	dec    edi
    1a62:	03 33                	add    esi,DWORD PTR [ebx]
    1a64:	91                   	xchg   ecx,eax
    1a65:	04 08                	add    al,0x8
    1a67:	d0 05 00 00 01 01    	rol    BYTE PTR ds:0x1010000,1
    1a6d:	50                   	push   eax
    1a6e:	02 91 4f 01 01 52    	add    dl,BYTE PTR [ecx+0x5201014f]
    1a74:	01 31                	add    DWORD PTR [ecx],esi
    1a76:	01 01                	add    DWORD PTR [ecx],eax
    1a78:	51                   	push   ecx
    1a79:	02 91 50 01 02 74    	add    dl,BYTE PTR [ecx+0x74020150]
    1a7f:	00 03                	add    BYTE PTR [ebx],al
    1a81:	91                   	xchg   ecx,eax
    1a82:	08 06                	or     BYTE PTR [esi],al
    1a84:	01 02                	add    DWORD PTR [edx],eax
    1a86:	74 04                	je     1a8c <__executable_start-0x8046608>
    1a88:	03 91 0c 06 00 00    	add    edx,DWORD PTR [ecx+0x60c]
    1a8e:	0e                   	push   cs
    1a8f:	8b 00                	mov    eax,DWORD PTR [eax]
    1a91:	00 00                	add    BYTE PTR [eax],al
    1a93:	ba 0b 00 00 0b       	mov    edx,0xb00000b
    1a98:	73 00                	jae    1a9a <__executable_start-0x80465fa>
    1a9a:	26 01 19             	add    DWORD PTR es:[ecx],ebx
    1a9d:	07                   	pop    es
    1a9e:	02 00                	add    al,BYTE PTR [eax]
    1aa0:	00 3f                	add    BYTE PTR [edi],bh
    1aa2:	0d 00 00 3d 0d       	or     eax,0xd3d0000
    1aa7:	00 00                	add    BYTE PTR [eax],al
    1aa9:	02 81 91 04 08 4c    	add    al,BYTE PTR [ecx+0x4c080491]
    1aaf:	02 00                	add    al,BYTE PTR [eax]
    1ab1:	00 92 0b 00 00 01    	add    BYTE PTR [edx+0x100000b],dl
    1ab7:	02 74 00 04          	add    dh,BYTE PTR [eax+eax*1+0x4]
    1abb:	91                   	xchg   ecx,eax
    1abc:	b4 7f                	mov    ah,0x7f
    1abe:	06                   	push   es
    1abf:	01 02                	add    DWORD PTR [edx],eax
    1ac1:	74 04                	je     1ac7 <__executable_start-0x80465cd>
    1ac3:	04 91                	add    al,0x91
    1ac5:	b8 7f 06 00 03       	mov    eax,0x300067f
    1aca:	9b                   	fwait
    1acb:	91                   	xchg   ecx,eax
    1acc:	04 08                	add    al,0x8
    1ace:	d0 05 00 00 01 01    	rol    BYTE PTR ds:0x1010000,1
    1ad4:	50                   	push   eax
    1ad5:	04 91                	add    al,0x91
    1ad7:	b4 7f                	mov    ah,0x7f
    1ad9:	06                   	push   es
    1ada:	01 01                	add    DWORD PTR [ecx],eax
    1adc:	51                   	push   ecx
    1add:	02 91 50 01 02 74    	add    dl,BYTE PTR [ecx+0x74020150]
    1ae3:	00 02                	add    BYTE PTR [edx],al
    1ae5:	73 00                	jae    1ae7 <__executable_start-0x80465ad>
    1ae7:	01 02                	add    DWORD PTR [edx],eax
    1ae9:	74 04                	je     1aef <__executable_start-0x80465a5>
    1aeb:	03 91 0c 06 00 00    	add    edx,DWORD PTR [ecx+0x60c]
    1af1:	0e                   	push   cs
    1af2:	9b                   	fwait
    1af3:	00 00                	add    BYTE PTR [eax],al
    1af5:	00 06                	add    BYTE PTR [esi],al
    1af7:	0c 00                	or     al,0x0
    1af9:	00 1f                	add    BYTE PTR [edi],bl
    1afb:	70 00                	jo     1afd <__executable_start-0x8046597>
    1afd:	35 01 13 c9 05       	xor    eax,0x5c91301
    1b02:	00 00                	add    BYTE PTR [eax],al
    1b04:	01 50 03             	add    DWORD PTR [eax+0x3],edx
    1b07:	0f 92 04 08          	setb   BYTE PTR [eax+ecx*1]
    1b0b:	1e                   	push   ds
    1b0c:	07                   	pop    es
    1b0d:	00 00                	add    BYTE PTR [eax],al
    1b0f:	01 01                	add    DWORD PTR [ecx],eax
    1b11:	51                   	push   ecx
    1b12:	01 30                	add    DWORD PTR [eax],esi
    1b14:	01 02                	add    DWORD PTR [edx],eax
    1b16:	74 00                	je     1b18 <__executable_start-0x804657c>
    1b18:	01 30                	add    DWORD PTR [eax],esi
    1b1a:	01 02                	add    DWORD PTR [edx],eax
    1b1c:	74 04                	je     1b22 <__executable_start-0x8046572>
    1b1e:	05 03 34 b0 04       	add    eax,0x4b03403
    1b23:	08 01                	or     BYTE PTR [ecx],al
    1b25:	02 74 08 02          	add    dh,BYTE PTR [eax+ecx*1+0x2]
    1b29:	91                   	xchg   ecx,eax
    1b2a:	50                   	push   eax
    1b2b:	01 02                	add    DWORD PTR [edx],eax
    1b2d:	74 0c                	je     1b3b <__executable_start-0x8046559>
    1b2f:	03 91 08 06 01 02    	add    edx,DWORD PTR [ecx+0x2010608]
    1b35:	74 10                	je     1b47 <__executable_start-0x804654d>
    1b37:	03 91 0c 06 00 00    	add    edx,DWORD PTR [ecx+0x60c]
    1b3d:	3d 2e 09 00 00       	cmp    eax,0x92e
    1b42:	fb                   	sti
    1b43:	8a 04 08             	mov    al,BYTE PTR [eax+ecx*1]
    1b46:	01 00                	add    DWORD PTR [eax],eax
    1b48:	1c 00                	sbb    al,0x0
    1b4a:	00 00                	add    BYTE PTR [eax],al
    1b4c:	01 b4 10 99 0c 00 00 	add    DWORD PTR [eax+edx*1+0xc99],esi
    1b53:	10 57 09             	adc    BYTE PTR [edi+0x9],dl
    1b56:	00 00                	add    BYTE PTR [eax],al
    1b58:	5b                   	pop    ebx
    1b59:	0d 00 00 49 0d       	or     eax,0xd490000
    1b5e:	00 00                	add    BYTE PTR [eax],al
    1b60:	10 4c 09 00          	adc    BYTE PTR [ecx+ecx*1+0x0],cl
    1b64:	00 da                	add    dl,bl
    1b66:	0d 00 00 c8 0d       	or     eax,0xdc80000
    1b6b:	00 00                	add    BYTE PTR [eax],al
    1b6d:	10 40 09             	adc    BYTE PTR [eax+0x9],al
    1b70:	00 00                	add    BYTE PTR [eax],al
    1b72:	58                   	pop    eax
    1b73:	0e                   	push   cs
    1b74:	00 00                	add    BYTE PTR [eax],al
    1b76:	2c 0e                	sub    al,0xe
    1b78:	00 00                	add    BYTE PTR [eax],al
    1b7a:	1d 1c 00 00 00       	sbb    eax,0x1c
    1b7f:	3e 63 09             	arpl   WORD PTR ds:[ecx],ecx
    1b82:	00 00                	add    BYTE PTR [eax],al
    1b84:	76 8b                	jbe    1b11 <__executable_start-0x8046583>
    1b86:	04 08                	add    al,0x8
    1b88:	3f                   	aas
    1b89:	13 0f                	adc    ecx,DWORD PTR [edi]
    1b8b:	00 00                	add    BYTE PTR [eax],al
    1b8d:	9a 8b 04 08 01 00 4f 	call   0x4f00:0x108048b
    1b94:	00 00                	add    BYTE PTR [eax],al
    1b96:	00 01                	add    BYTE PTR [ecx],al
    1b98:	83 01 0e             	add    DWORD PTR [ecx],0xe
    1b9b:	76 0c                	jbe    1ba9 <__executable_start-0x80464eb>
    1b9d:	00 00                	add    BYTE PTR [eax],al
    1b9f:	10 21                	adc    BYTE PTR [ecx],ah
    1ba1:	0f 00 00             	sldt   WORD PTR [eax]
    1ba4:	fb                   	sti
    1ba5:	0e                   	push   cs
    1ba6:	00 00                	add    BYTE PTR [eax],al
    1ba8:	f7 0e 00 00 00 40    	test   DWORD PTR [esi],0x40000000
    1bae:	13 0f                	adc    ecx,DWORD PTR [edi]
    1bb0:	00 00                	add    BYTE PTR [eax],al
    1bb2:	08 8c 04 08 02 00 5a 	or     BYTE PTR [esp+eax*1+0x5a000208],cl
    1bb9:	00 00                	add    BYTE PTR [eax],al
    1bbb:	00 01                	add    BYTE PTR [ecx],al
    1bbd:	99                   	cdq
    1bbe:	01 12                	add    DWORD PTR [edx],edx
    1bc0:	10 21                	adc    BYTE PTR [ecx],ah
    1bc2:	0f 00 00             	sldt   WORD PTR [eax]
    1bc5:	1a 0f                	sbb    cl,BYTE PTR [edi]
    1bc7:	00 00                	add    BYTE PTR [eax],al
    1bc9:	16                   	push   ss
    1bca:	0f 00 00             	sldt   WORD PTR [eax]
    1bcd:	00 00                	add    BYTE PTR [eax],al
    1bcf:	00 11                	add    BYTE PTR [ecx],dl
    1bd1:	e1 8a                	loope  1b5d <__executable_start-0x8046537>
    1bd3:	04 08                	add    al,0x8
    1bd5:	aa                   	stos   BYTE PTR es:[edi],al
    1bd6:	0c 00                	or     al,0x0
    1bd8:	00 01                	add    BYTE PTR [ecx],al
    1bda:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    1bde:	76 00                	jbe    1be0 <__executable_start-0x80464b4>
    1be0:	00 11                	add    BYTE PTR [ecx],dl
    1be2:	21 8b 04 08 c3 0c    	and    DWORD PTR [ebx+0xcc30804],ecx
    1be8:	00 00                	add    BYTE PTR [eax],al
    1bea:	01 02                	add    DWORD PTR [edx],eax
    1bec:	74 00                	je     1bee <__executable_start-0x80464a6>
    1bee:	02 08                	add    cl,BYTE PTR [eax]
    1bf0:	25 01 02 74 04       	and    eax,0x4740201
    1bf5:	03 91 0c 06 00 02    	add    edx,DWORD PTR [ecx+0x200060c]
    1bfb:	4f                   	dec    edi
    1bfc:	92                   	xchg   edx,eax
    1bfd:	04 08                	add    al,0x8
    1bff:	45                   	inc    ebp
    1c00:	05 00 00 eb 0c       	add    eax,0xceb0000
    1c05:	00 00                	add    BYTE PTR [eax],al
    1c07:	01 02                	add    DWORD PTR [edx],eax
    1c09:	74 00                	je     1c0b <__executable_start-0x8046489>
    1c0b:	05 03 81 ab 04       	add    eax,0x4ab8103
    1c10:	08 01                	or     BYTE PTR [ecx],al
    1c12:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    1c16:	91                   	xchg   ecx,eax
    1c17:	08 06                	or     BYTE PTR [esi],al
    1c19:	01 02                	add    DWORD PTR [edx],eax
    1c1b:	74 08                	je     1c25 <__executable_start-0x804646f>
    1c1d:	03 91 0c 06 00 03    	add    edx,DWORD PTR [ecx+0x300060c]
    1c23:	7b 92                	jnp    1bb7 <__executable_start-0x80464dd>
    1c25:	04 08                	add    al,0x8
    1c27:	45                   	inc    ebp
    1c28:	05 00 00 01 02       	add    eax,0x2010000
    1c2d:	74 00                	je     1c2f <__executable_start-0x8046465>
    1c2f:	05 03 97 ab 04       	add    eax,0x4ab9703
    1c34:	08 01                	or     BYTE PTR [ecx],al
    1c36:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    1c3a:	91                   	xchg   ecx,eax
    1c3b:	08 06                	or     BYTE PTR [esi],al
    1c3d:	01 02                	add    DWORD PTR [edx],eax
    1c3f:	74 08                	je     1c49 <__executable_start-0x804644b>
    1c41:	03 91 0c 06 00 00    	add    edx,DWORD PTR [ecx+0x60c]
    1c47:	00 1b                	add    BYTE PTR [ebx],bl
    1c49:	5f                   	pop    edi
    1c4a:	00 00                	add    BYTE PTR [eax],al
    1c4c:	00 21                	add    BYTE PTR [ecx],ah
    1c4e:	0d 00 00 1c 2d       	or     eax,0x2d1c0000
    1c53:	00 00                	add    BYTE PTR [eax],al
    1c55:	00 09                	add    BYTE PTR [ecx],cl
    1c57:	00 0d 11 0d 00 00    	add    BYTE PTR ds:0xd11,cl
    1c5d:	20 46 05             	and    BYTE PTR [esi+0x5],al
    1c60:	00 00                	add    BYTE PTR [eax],al
    1c62:	4f                   	dec    edi
    1c63:	3b 00                	cmp    eax,DWORD PTR [eax]
    1c65:	00 00                	add    BYTE PTR [eax],al
    1c67:	54                   	push   esp
    1c68:	8a 04 08             	mov    al,BYTE PTR [eax+ecx*1]
    1c6b:	2d 00 00 00 01       	sub    eax,0x1000000
    1c70:	9c                   	pushf
    1c71:	86 0d 00 00 0c 13    	xchg   BYTE PTR ds:0x130c0000,cl
    1c77:	03 00                	add    eax,DWORD PTR [eax]
    1c79:	00 4f 15             	add    BYTE PTR [edi+0x15],cl
    1c7c:	07                   	pop    es
    1c7d:	02 00                	add    al,BYTE PTR [eax]
    1c7f:	00 02                	add    BYTE PTR [edx],al
    1c81:	91                   	xchg   ecx,eax
    1c82:	00 17                	add    BYTE PTR [edi],dl
    1c84:	12 e3                	adc    ah,bl
    1c86:	02 00                	add    al,BYTE PTR [eax]
    1c88:	00 51 0b             	add    BYTE PTR [ecx+0xb],dl
    1c8b:	42                   	inc    edx
    1c8c:	00 00                	add    BYTE PTR [eax],al
    1c8e:	00 39                	add    BYTE PTR [ecx],bh
    1c90:	0f 00 00             	sldt   WORD PTR [eax]
    1c93:	35 0f 00 00 12       	xor    eax,0x1200000f
    1c98:	68 02 00 00 52       	push   0x52000002
    1c9d:	07                   	pop    es
    1c9e:	3b 00                	cmp    eax,DWORD PTR [eax]
    1ca0:	00 00                	add    BYTE PTR [eax],al
    1ca2:	4c                   	dec    esp
    1ca3:	0f 00 00             	sldt   WORD PTR [eax]
    1ca6:	4a                   	dec    edx
    1ca7:	0f 00 00             	sldt   WORD PTR [eax]
    1caa:	03 7a 8a             	add    edi,DWORD PTR [edx-0x76]
    1cad:	04 08                	add    al,0x8
    1caf:	89 02                	mov    DWORD PTR [edx],eax
    1cb1:	00 00                	add    BYTE PTR [eax],al
    1cb3:	01 02                	add    DWORD PTR [edx],eax
    1cb5:	74 00                	je     1cb7 <__executable_start-0x80463dd>
    1cb7:	03 91 00 06 00 00    	add    edx,DWORD PTR [ecx+0x600]
    1cbd:	20 95 04 00 00 3e    	and    BYTE PTR [ebp+0x3e000004],dl
    1cc3:	3b 00                	cmp    eax,DWORD PTR [eax]
    1cc5:	00 00                	add    BYTE PTR [eax],al
    1cc7:	06                   	push   es
    1cc8:	93                   	xchg   ebx,eax
    1cc9:	04 08                	add    al,0x8
    1ccb:	2a 00                	sub    al,BYTE PTR [eax]
    1ccd:	00 00                	add    BYTE PTR [eax],al
    1ccf:	01 9c 0c 0e 00 00 0c 	add    DWORD PTR [esp+ecx*1+0xc00000e],ebx
    1cd6:	31 01                	xor    DWORD PTR [ecx],eax
    1cd8:	00 00                	add    BYTE PTR [eax],al
    1cda:	3e 11 18             	adc    DWORD PTR ds:[eax],ebx
    1cdd:	01 00                	add    DWORD PTR [eax],eax
    1cdf:	00 02                	add    BYTE PTR [edx],al
    1ce1:	91                   	xchg   ecx,eax
    1ce2:	00 18                	add    BYTE PTR [eax],bl
    1ce4:	87 03                	xchg   DWORD PTR [ebx],eax
    1ce6:	00 00                	add    BYTE PTR [eax],al
    1ce8:	3e 20 64 00 00       	and    BYTE PTR ds:[eax+eax*1+0x0],ah
    1ced:	00 58 0f             	add    BYTE PTR [eax+0xf],bl
    1cf0:	00 00                	add    BYTE PTR [eax],al
    1cf2:	54                   	push   esp
    1cf3:	0f 00 00             	sldt   WORD PTR [eax]
    1cf6:	18 13                	sbb    BYTE PTR [ebx],dl
    1cf8:	03 00                	add    eax,DWORD PTR [eax]
    1cfa:	00 3e                	add    BYTE PTR [esi],bh
    1cfc:	36 07                	ss pop es
    1cfe:	02 00                	add    al,BYTE PTR [eax]
    1d00:	00 6d 0f             	add    BYTE PTR [ebp+0xf],ch
    1d03:	00 00                	add    BYTE PTR [eax],al
    1d05:	69 0f 00 00 17 12    	imul   ecx,DWORD PTR [edi],0x12170000
    1d0b:	e3 02                	jecxz  1d0f <__executable_start-0x8046385>
    1d0d:	00 00                	add    BYTE PTR [eax],al
    1d0f:	40                   	inc    eax
    1d10:	0b 42 00             	or     eax,DWORD PTR [edx+0x0]
    1d13:	00 00                	add    BYTE PTR [eax],al
    1d15:	82 0f 00             	or     BYTE PTR [edi],0x0
    1d18:	00 7e 0f             	add    BYTE PTR [esi+0xf],bh
    1d1b:	00 00                	add    BYTE PTR [eax],al
    1d1d:	12 68 02             	adc    ch,BYTE PTR [eax+0x2]
    1d20:	00 00                	add    BYTE PTR [eax],al
    1d22:	41                   	inc    ecx
    1d23:	07                   	pop    es
    1d24:	3b 00                	cmp    eax,DWORD PTR [eax]
    1d26:	00 00                	add    BYTE PTR [eax],al
    1d28:	95                   	xchg   ebp,eax
    1d29:	0f 00 00             	sldt   WORD PTR [eax]
    1d2c:	93                   	xchg   ebx,eax
    1d2d:	0f 00 00             	sldt   WORD PTR [eax]
    1d30:	03 2c 93             	add    ebp,DWORD PTR [ebx+edx*4]
    1d33:	04 08                	add    al,0x8
    1d35:	5c                   	pop    esp
    1d36:	0e                   	push   cs
    1d37:	00 00                	add    BYTE PTR [eax],al
    1d39:	01 02                	add    DWORD PTR [edx],eax
    1d3b:	74 00                	je     1d3d <__executable_start-0x8046357>
    1d3d:	03 91 00 06 00 00    	add    edx,DWORD PTR [ecx+0x600]
    1d43:	41                   	inc    ecx
    1d44:	c9                   	leave
    1d45:	03 00                	add    eax,DWORD PTR [eax]
    1d47:	00 01                	add    BYTE PTR [ecx],al
    1d49:	2e 01 60 86          	add    DWORD PTR cs:[eax-0x7a],esp
    1d4d:	04 08                	add    al,0x8
    1d4f:	25 00 00 00 01       	and    eax,0x1000000
    1d54:	9c                   	pushf
    1d55:	57                   	push   edi
    1d56:	0e                   	push   cs
    1d57:	00 00                	add    BYTE PTR [eax],al
    1d59:	42                   	inc    edx
    1d5a:	63 68 00             	arpl   WORD PTR [eax+0x0],ebp
    1d5d:	01 2e                	add    DWORD PTR [esi],ebp
    1d5f:	18 58 00             	sbb    BYTE PTR [eax+0x0],bl
    1d62:	00 00                	add    BYTE PTR [eax],al
    1d64:	a3 0f 00 00 9d       	mov    ds:0x9d00000f,eax
    1d69:	0f 00 00             	sldt   WORD PTR [eax]
    1d6c:	0c 1a                	or     al,0x1a
    1d6e:	03 00                	add    eax,DWORD PTR [eax]
    1d70:	00 2e                	add    BYTE PTR [esi],ch
    1d72:	22 c9                	and    cl,cl
    1d74:	05 00 00 02 91       	add    eax,0x91020000
    1d79:	04 28                	add    al,0x28
    1d7b:	61                   	popa
    1d7c:	75 78                	jne    1df6 <__executable_start-0x804629e>
    1d7e:	00 30                	add    BYTE PTR [eax],dh
    1d80:	19 57 0e             	sbb    DWORD PTR [edi+0xe],edx
    1d83:	00 00                	add    BYTE PTR [eax],al
    1d85:	b7 0f                	mov    bh,0xf
    1d87:	00 00                	add    BYTE PTR [eax],al
    1d89:	b5 0f                	mov    ch,0xf
    1d8b:	00 00                	add    BYTE PTR [eax],al
    1d8d:	00 05 ea 00 00 00    	add    BYTE PTR ds:0xea,al
    1d93:	20 94 04 00 00 1a 3b 	and    BYTE PTR [esp+eax*1+0x3b1a0000],dl
    1d9a:	00 00                	add    BYTE PTR [eax],al
    1d9c:	00 82 92 04 08 84    	add    BYTE PTR [edx-0x7bf7fb6e],al
    1da2:	00 00                	add    BYTE PTR [eax],al
    1da4:	00 01                	add    BYTE PTR [ecx],al
    1da6:	9c                   	pushf
    1da7:	fc                   	cld
    1da8:	0e                   	push   cs
    1da9:	00 00                	add    BYTE PTR [eax],al
    1dab:	0c 31                	or     al,0x31
    1dad:	01 00                	add    DWORD PTR [eax],eax
    1daf:	00 1a                	add    BYTE PTR [edx],bl
    1db1:	12 18                	adc    bl,BYTE PTR [eax]
    1db3:	01 00                	add    DWORD PTR [eax],eax
    1db5:	00 02                	add    BYTE PTR [edx],al
    1db7:	91                   	xchg   ecx,eax
    1db8:	00 0c 87             	add    BYTE PTR [edi+eax*4],cl
    1dbb:	03 00                	add    eax,DWORD PTR [eax]
    1dbd:	00 1a                	add    BYTE PTR [edx],bl
    1dbf:	21 64 00 00          	and    DWORD PTR [eax+eax*1+0x0],esp
    1dc3:	00 02                	add    BYTE PTR [edx],al
    1dc5:	91                   	xchg   ecx,eax
    1dc6:	04 0c                	add    al,0xc
    1dc8:	13 03                	adc    eax,DWORD PTR [ebx]
    1dca:	00 00                	add    BYTE PTR [eax],al
    1dcc:	1a 37                	sbb    dh,BYTE PTR [edi]
    1dce:	07                   	pop    es
    1dcf:	02 00                	add    al,BYTE PTR [eax]
    1dd1:	00 02                	add    BYTE PTR [edx],al
    1dd3:	91                   	xchg   ecx,eax
    1dd4:	08 0c e3             	or     BYTE PTR [ebx+eiz*8],cl
    1dd7:	02 00                	add    al,BYTE PTR [eax]
    1dd9:	00 1a                	add    BYTE PTR [edx],bl
    1ddb:	47                   	inc    edi
    1ddc:	42                   	inc    edx
    1ddd:	00 00                	add    BYTE PTR [eax],al
    1ddf:	00 02                	add    BYTE PTR [edx],al
    1de1:	91                   	xchg   ecx,eax
    1de2:	0c 27                	or     al,0x27
    1de4:	61                   	popa
    1de5:	75 78                	jne    1e5f <__executable_start-0x8046235>
    1de7:	00 1d 18 ea 00 00    	add    BYTE PTR ds:0xea18,bl
    1ded:	00 02                	add    BYTE PTR [edx],al
    1def:	91                   	xchg   ecx,eax
    1df0:	64 02 d0             	fs add dl,al
    1df3:	92                   	xchg   edx,eax
    1df4:	04 08                	add    al,0x8
    1df6:	72 09                	jb     1e01 <__executable_start-0x8046293>
    1df8:	00 00                	add    BYTE PTR [eax],al
    1dfa:	d0 0e                	ror    BYTE PTR [esi],1
    1dfc:	00 00                	add    BYTE PTR [eax],al
    1dfe:	01 02                	add    DWORD PTR [edx],eax
    1e00:	74 00                	je     1e02 <__executable_start-0x8046292>
    1e02:	03 91 08 06 00 03    	add    edx,DWORD PTR [ecx+0x3000608]
    1e08:	04 93                	add    al,0x93
    1e0a:	04 08                	add    al,0x8
    1e0c:	72 09                	jb     1e17 <__executable_start-0x804627d>
    1e0e:	00 00                	add    BYTE PTR [eax],al
    1e10:	01 02                	add    DWORD PTR [edx],eax
    1e12:	74 00                	je     1e14 <__executable_start-0x8046280>
    1e14:	03 91 08 06 01 02    	add    edx,DWORD PTR [ecx+0x2010608]
    1e1a:	74 04                	je     1e20 <__executable_start-0x8046274>
    1e1c:	03 91 0c 06 01 02    	add    edx,DWORD PTR [ecx+0x201060c]
    1e22:	74 08                	je     1e2c <__executable_start-0x8046268>
    1e24:	05 03 60 86 04       	add    eax,0x4866003
    1e29:	08 01                	or     BYTE PTR [ecx],al
    1e2b:	02 74 0c 02          	add    dh,BYTE PTR [esp+ecx*1+0x2]
    1e2f:	91                   	xchg   ecx,eax
    1e30:	64 00 00             	add    BYTE PTR fs:[eax],al
    1e33:	29 c7                	sub    edi,eax
    1e35:	04 00                	add    al,0x0
    1e37:	00 12                	add    BYTE PTR [edx],dl
    1e39:	3b 00                	cmp    eax,DWORD PTR [eax]
    1e3b:	00 00                	add    BYTE PTR [eax],al
    1e3d:	13 0f                	adc    ecx,DWORD PTR [edi]
    1e3f:	00 00                	add    BYTE PTR [eax],al
    1e41:	2a 63 00             	sub    ah,BYTE PTR [ebx+0x0]
    1e44:	12 3b                	adc    bh,BYTE PTR [ebx]
    1e46:	00 00                	add    BYTE PTR [eax],al
    1e48:	00 00                	add    BYTE PTR [eax],al
    1e4a:	29 79 03             	sub    DWORD PTR [ecx+0x3],edi
    1e4d:	00 00                	add    BYTE PTR [eax],al
    1e4f:	07                   	pop    es
    1e50:	3b 00                	cmp    eax,DWORD PTR [eax]
    1e52:	00 00                	add    BYTE PTR [eax],al
    1e54:	2a 0f                	sub    cl,BYTE PTR [edi]
    1e56:	00 00                	add    BYTE PTR [eax],al
    1e58:	2a 63 00             	sub    ah,BYTE PTR [ebx+0x0]
    1e5b:	07                   	pop    es
    1e5c:	3b 00                	cmp    eax,DWORD PTR [eax]
    1e5e:	00 00                	add    BYTE PTR [eax],al
    1e60:	00 2b                	add    BYTE PTR [ebx],ch
    1e62:	00 04 00             	add    BYTE PTR [eax+eax*1],al
    1e65:	00 00                	add    BYTE PTR [eax],al
    1e67:	04 00                	add    al,0x0
    1e69:	00 2b                	add    BYTE PTR [ebx],ch
    1e6b:	5d                   	pop    ebp
    1e6c:	05 00 00 5d 05       	add    eax,0x55d0000
    1e71:	00 00                	add    BYTE PTR [eax],al
    1e73:	00 a8 0d 00 00 05    	add    BYTE PTR [eax+0x500000d],ch
    1e79:	00 01                	add    BYTE PTR [ecx],al
    1e7b:	04 de                	add    al,0xde
    1e7d:	0a 00                	or     al,BYTE PTR [eax]
    1e7f:	00 1a                	add    BYTE PTR [edx],bl
    1e81:	0e                   	push   cs
    1e82:	00 00                	add    BYTE PTR [eax],al
    1e84:	00 1d 12 01 00 00    	add    BYTE PTR ds:0x112,bl
    1e8a:	00 00                	add    BYTE PTR [eax],al
    1e8c:	00 00                	add    BYTE PTR [eax],al
    1e8e:	f0 95                	lock xchg ebp,eax
    1e90:	04 08                	add    al,0x8
    1e92:	93                   	xchg   ebx,eax
    1e93:	09 00                	or     DWORD PTR [eax],eax
    1e95:	00 6a 11             	add    BYTE PTR [edx+0x11],ch
    1e98:	00 00                	add    BYTE PTR [eax],al
    1e9a:	1b 04 05 69 6e 74 00 	sbb    eax,DWORD PTR [eax*1+0x746e69]
    1ea1:	1c e8                	sbb    al,0xe8
    1ea3:	02 00                	add    al,BYTE PTR [eax]
    1ea5:	00 02                	add    BYTE PTR [edx],al
    1ea7:	0a 17                	or     dl,BYTE PTR [edi]
    1ea9:	39 00                	cmp    DWORD PTR [eax],eax
    1eab:	00 00                	add    BYTE PTR [eax],al
    1ead:	12 04 07             	adc    al,BYTE PTR [edi+eax*1]
    1eb0:	bd 00 00 00 1d       	mov    ebp,0x1d000000
    1eb5:	ed                   	in     eax,dx
    1eb6:	01 00                	add    DWORD PTR [eax],eax
    1eb8:	00 03                	add    BYTE PTR [ebx],al
    1eba:	10 06                	adc    BYTE PTR [esi],al
    1ebc:	62 00                	bound  eax,QWORD PTR [eax]
    1ebe:	00 00                	add    BYTE PTR [eax],al
    1ec0:	0f 62 00             	punpckldq mm0,DWORD PTR [eax]
    1ec3:	00 00                	add    BYTE PTR [eax],al
    1ec5:	0f 26 00             	mov    tr0,eax
    1ec8:	00 00                	add    BYTE PTR [eax],al
    1eca:	0f 62 00             	punpckldq mm0,DWORD PTR [eax]
    1ecd:	00 00                	add    BYTE PTR [eax],al
    1ecf:	0f 62 00             	punpckldq mm0,DWORD PTR [eax]
    1ed2:	00 00                	add    BYTE PTR [eax],al
    1ed4:	1e                   	push   ds
    1ed5:	00 09                	add    BYTE PTR [ecx],cl
    1ed7:	6e                   	outs   dx,BYTE PTR ds:[esi]
    1ed8:	00 00                	add    BYTE PTR [eax],al
    1eda:	00 12                	add    BYTE PTR [edx],dl
    1edc:	01 06                	add    DWORD PTR [esi],eax
    1ede:	d3 00                	rol    DWORD PTR [eax],cl
    1ee0:	00 00                	add    BYTE PTR [eax],al
    1ee2:	0b 67 00             	or     esp,DWORD PTR [edi+0x0]
    1ee5:	00 00                	add    BYTE PTR [eax],al
    1ee7:	0c f5                	or     al,0xf5
    1ee9:	05 00 00 64 01       	add    eax,0x1640000
    1eee:	2d 00 00 00 96       	sub    eax,0x96000000
    1ef3:	9e                   	sahf
    1ef4:	04 08                	add    al,0x8
    1ef6:	ed                   	in     eax,dx
    1ef7:	00 00                	add    BYTE PTR [eax],al
    1ef9:	00 01                	add    BYTE PTR [ecx],al
    1efb:	9c                   	pushf
    1efc:	e2 01                	loop   1eff <__executable_start-0x8046195>
    1efe:	00 00                	add    BYTE PTR [eax],al
    1f00:	17                   	pop    ss
    1f01:	64 73 74             	fs jae 1f78 <__executable_start-0x804611c>
    1f04:	00 64 01 e2          	add    BYTE PTR [ecx+eax*1-0x1e],ah
    1f08:	01 00                	add    DWORD PTR [eax],eax
    1f0a:	00 02                	add    BYTE PTR [edx],al
    1f0c:	91                   	xchg   ecx,eax
    1f0d:	00 18                	add    BYTE PTR [eax],bl
    1f0f:	73 72                	jae    1f83 <__executable_start-0x8046111>
    1f11:	63 00                	arpl   WORD PTR [eax],eax
    1f13:	64 01 62 00          	add    DWORD PTR fs:[edx+0x0],esp
    1f17:	00 00                	add    BYTE PTR [eax],al
    1f19:	d0 0f                	ror    BYTE PTR [edi],1
    1f1b:	00 00                	add    BYTE PTR [eax],al
    1f1d:	ca 0f 00             	retf   0xf
    1f20:	00 13                	add    BYTE PTR [ebx],dl
    1f22:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    1f25:	00 64 01 2d          	add    BYTE PTR [ecx+eax*1+0x2d],ah
    1f29:	2d 00 00 00 ef       	sub    eax,0xef000000
    1f2e:	0f 00 00             	sldt   WORD PTR [eax]
    1f31:	e9 0f 00 00 0a       	jmp    a001f45 <explained.0+0x1cb6ec5>
    1f36:	91                   	xchg   ecx,eax
    1f37:	05 00 00 66 01       	add    eax,0x1660000
    1f3c:	0a 2d 00 00 00 0e    	or     ch,BYTE PTR ds:0xe000000
    1f42:	10 00                	adc    BYTE PTR [eax],al
    1f44:	00 08                	add    BYTE PTR [eax],cl
    1f46:	10 00                	adc    BYTE PTR [eax],al
    1f48:	00 0a                	add    BYTE PTR [edx],cl
    1f4a:	ae                   	scas   al,BYTE PTR es:[edi]
    1f4b:	05 00 00 66 01       	add    eax,0x1660000
    1f50:	13 2d 00 00 00 2c    	adc    ebp,DWORD PTR ds:0x2c000000
    1f56:	10 00                	adc    BYTE PTR [eax],al
    1f58:	00 24 10             	add    BYTE PTR [eax+edx*1],ah
    1f5b:	00 00                	add    BYTE PTR [eax],al
    1f5d:	06                   	push   es
    1f5e:	38 01                	cmp    BYTE PTR [ecx],al
    1f60:	00 00                	add    BYTE PTR [eax],al
    1f62:	f7 01 00 00 05 03    	test   DWORD PTR [ecx],0x3050000
    1f68:	00 aa 04 08 14 51    	add    BYTE PTR [edx+0x51140804],ch
    1f6e:	9f                   	lahf
    1f6f:	04 08                	add    al,0x8
    1f71:	32 00                	xor    al,BYTE PTR [eax]
    1f73:	00 00                	add    BYTE PTR [eax],al
    1f75:	3e 01 00             	add    DWORD PTR ds:[eax],eax
    1f78:	00 0a                	add    BYTE PTR [edx],cl
    1f7a:	4a                   	dec    edx
    1f7b:	06                   	push   es
    1f7c:	00 00                	add    BYTE PTR [eax],al
    1f7e:	6f                   	outs   dx,DWORD PTR ds:[esi]
    1f7f:	01 0e                	add    DWORD PTR [esi],ecx
    1f81:	2d 00 00 00 51       	sub    eax,0x51000000
    1f86:	10 00                	adc    BYTE PTR [eax],al
    1f88:	00 49 10             	add    BYTE PTR [ecx+0x10],cl
    1f8b:	00 00                	add    BYTE PTR [eax],al
    1f8d:	02 75 9f             	add    dh,BYTE PTR [ebp-0x61]
    1f90:	04 08                	add    al,0x8
    1f92:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    1f93:	0c 00                	or     al,0x0
    1f95:	00 01                	add    BYTE PTR [ecx],al
    1f97:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    1f9b:	77 00                	ja     1f9d <__executable_start-0x80460f7>
    1f9d:	76 00                	jbe    1f9f <__executable_start-0x80460f5>
    1f9f:	22 01                	and    al,BYTE PTR [ecx]
    1fa1:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    1fa5:	91                   	xchg   ecx,eax
    1fa6:	04 06                	add    al,0x6
    1fa8:	01 02                	add    DWORD PTR [edx],eax
    1faa:	74 08                	je     1fb4 <__executable_start-0x80460e0>
    1fac:	03 91 5c 06 00 00    	add    edx,DWORD PTR [ecx+0x65c]
    1fb2:	03 c8                	add    ecx,eax
    1fb4:	9e                   	sahf
    1fb5:	04 08                	add    al,0x8
    1fb7:	89 03                	mov    DWORD PTR [ebx],eax
    1fb9:	00 00                	add    BYTE PTR [eax],al
    1fbb:	54                   	push   esp
    1fbc:	01 00                	add    DWORD PTR [eax],eax
    1fbe:	00 01                	add    BYTE PTR [ecx],al
    1fc0:	02 74 00 03          	add    dh,BYTE PTR [eax+eax*1+0x3]
    1fc4:	91                   	xchg   ecx,eax
    1fc5:	04 06                	add    al,0x6
    1fc7:	00 03                	add    BYTE PTR [ebx],al
    1fc9:	d2 9e 04 08 89 03    	rcr    BYTE PTR [esi+0x3890804],cl
    1fcf:	00 00                	add    BYTE PTR [eax],al
    1fd1:	69 01 00 00 01 02    	imul   eax,DWORD PTR [ecx],0x2010000
    1fd7:	74 00                	je     1fd9 <__executable_start-0x80460bb>
    1fd9:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    1fdc:	00 03                	add    BYTE PTR [ebx],al
    1fde:	1d 9f 04 08 40       	sbb    eax,0x4008049f
    1fe3:	00 00                	add    BYTE PTR [eax],al
    1fe5:	00 a7 01 00 00 01    	add    BYTE PTR [edi+0x1000001],ah
    1feb:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    1fef:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    1ff3:	08 01                	or     BYTE PTR [ecx],al
    1ff5:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    1ff9:	0a 68 01             	or     ch,BYTE PTR [eax+0x1]
    1ffc:	01 02                	add    DWORD PTR [edx],eax
    1ffe:	74 08                	je     2008 <__executable_start-0x804608c>
    2000:	05 03 00 aa 04       	add    eax,0x4aa0003
    2005:	08 01                	or     BYTE PTR [ecx],al
    2007:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    200b:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    2011:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    2015:	03 05 ad 04 08 00    	add    eax,DWORD PTR ds:0x804ad
    201b:	02 51 9f             	add    dl,BYTE PTR [ecx-0x61]
    201e:	04 08                	add    al,0x8
    2020:	40                   	inc    eax
    2021:	00 00                	add    BYTE PTR [eax],al
    2023:	00 01                	add    BYTE PTR [ecx],al
    2025:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    2029:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    202d:	08 01                	or     BYTE PTR [ecx],al
    202f:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    2033:	0a 69 01             	or     ch,BYTE PTR [ecx+0x1]
    2036:	01 02                	add    DWORD PTR [edx],eax
    2038:	74 08                	je     2042 <__executable_start-0x8046052>
    203a:	05 03 00 aa 04       	add    eax,0x4aa0003
    203f:	08 01                	or     BYTE PTR [ecx],al
    2041:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    2045:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    204b:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    204f:	03 11                	add    edx,DWORD PTR [ecx]
    2051:	ad                   	lods   eax,DWORD PTR ds:[esi]
    2052:	04 08                	add    al,0x8
    2054:	00 00                	add    BYTE PTR [eax],al
    2056:	09 67 00             	or     DWORD PTR [edi+0x0],esp
    2059:	00 00                	add    BYTE PTR [eax],al
    205b:	15 6e 00 00 00       	adc    eax,0x6e
    2060:	f7 01 00 00 16 39    	test   DWORD PTR [ecx],0x39160000
    2066:	00 00                	add    BYTE PTR [eax],al
    2068:	00 07                	add    BYTE PTR [edi],al
    206a:	00 0b                	add    BYTE PTR [ebx],cl
    206c:	e7 01                	out    0x1,eax
    206e:	00 00                	add    BYTE PTR [eax],al
    2070:	0c 53                	or     al,0x53
    2072:	06                   	push   es
    2073:	00 00                	add    BYTE PTR [eax],al
    2075:	46                   	inc    esi
    2076:	01 2d 00 00 00 c2    	add    DWORD PTR ds:0xc2000000,ebp
    207c:	9d                   	popf
    207d:	04 08                	add    al,0x8
    207f:	d4 00                	aam    0x0
    2081:	00 00                	add    BYTE PTR [eax],al
    2083:	01 9c 3d 03 00 00 17 	add    DWORD PTR [ebp+edi*1+0x17000003],ebx
    208a:	64 73 74             	fs jae 2101 <__executable_start-0x8045f93>
    208d:	00 46 01             	add    BYTE PTR [esi+0x1],al
    2090:	e2 01                	loop   2093 <__executable_start-0x8046001>
    2092:	00 00                	add    BYTE PTR [eax],al
    2094:	02 91 00 18 73 72    	add    dl,BYTE PTR [ecx+0x72731800]
    209a:	63 00                	arpl   WORD PTR [eax],eax
    209c:	46                   	inc    esi
    209d:	01 62 00             	add    DWORD PTR [edx+0x0],esp
    20a0:	00 00                	add    BYTE PTR [eax],al
    20a2:	83 10 00             	adc    DWORD PTR [eax],0x0
    20a5:	00 7d 10             	add    BYTE PTR [ebp+0x10],bh
    20a8:	00 00                	add    BYTE PTR [eax],al
    20aa:	13 31                	adc    esi,DWORD PTR [ecx]
    20ac:	04 00                	add    al,0x0
    20ae:	00 46 01             	add    BYTE PTR [esi+0x1],al
    20b1:	2d 2d 00 00 00       	sub    eax,0x2d
    20b6:	a2 10 00 00 9c       	mov    ds:0x9c000010,al
    20bb:	10 00                	adc    BYTE PTR [eax],al
    20bd:	00 0a                	add    BYTE PTR [edx],cl
    20bf:	91                   	xchg   ecx,eax
    20c0:	05 00 00 48 01       	add    eax,0x1480000
    20c5:	0a 2d 00 00 00 c5    	or     ch,BYTE PTR ds:0xc5000000
    20cb:	10 00                	adc    BYTE PTR [eax],al
    20cd:	00 bb 10 00 00 06    	add    BYTE PTR [ebx+0x6000010],bh
    20d3:	38 01                	cmp    BYTE PTR [ecx],al
    20d5:	00 00                	add    BYTE PTR [eax],al
    20d7:	f7 01 00 00 05 03    	test   DWORD PTR [ecx],0x3050000
    20dd:	08 aa 04 08 14 71    	or     BYTE PTR [edx+0x71140804],ch
    20e3:	9e                   	sahf
    20e4:	04 08                	add    al,0x8
    20e6:	20 00                	and    BYTE PTR [eax],al
    20e8:	00 00                	add    BYTE PTR [eax],al
    20ea:	af                   	scas   eax,DWORD PTR es:[edi]
    20eb:	02 00                	add    al,BYTE PTR [eax]
    20ed:	00 0a                	add    BYTE PTR [edx],cl
    20ef:	ae                   	scas   al,BYTE PTR es:[edi]
    20f0:	05 00 00 50 01       	add    eax,0x1500000
    20f5:	0e                   	push   cs
    20f6:	2d 00 00 00 ed       	sub    eax,0xed000000
    20fb:	10 00                	adc    BYTE PTR [eax],al
    20fd:	00 e9                	add    cl,ch
    20ff:	10 00                	adc    BYTE PTR [eax],al
    2101:	00 02                	add    BYTE PTR [edx],al
    2103:	8a 9e 04 08 a4 0c    	mov    bl,BYTE PTR [esi+0xca40804]
    2109:	00 00                	add    BYTE PTR [eax],al
    210b:	01 02                	add    DWORD PTR [edx],eax
    210d:	74 00                	je     210f <__executable_start-0x8045f85>
    210f:	03 91 00 06 01 02    	add    edx,DWORD PTR [ecx+0x2010600]
    2115:	74 04                	je     211b <__executable_start-0x8045f79>
    2117:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    211a:	01 02                	add    DWORD PTR [edx],eax
    211c:	74 08                	je     2126 <__executable_start-0x8045f6e>
    211e:	02 76 00             	add    dh,BYTE PTR [esi+0x0]
    2121:	00 00                	add    BYTE PTR [eax],al
    2123:	03 f4                	add    esi,esp
    2125:	9d                   	popf
    2126:	04 08                	add    al,0x8
    2128:	89 03                	mov    DWORD PTR [ebx],eax
    212a:	00 00                	add    BYTE PTR [eax],al
    212c:	c4 02                	les    eax,FWORD PTR [edx]
    212e:	00 00                	add    BYTE PTR [eax],al
    2130:	01 02                	add    DWORD PTR [edx],eax
    2132:	74 00                	je     2134 <__executable_start-0x8045f60>
    2134:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    2137:	00 03                	add    BYTE PTR [ebx],al
    2139:	3d 9e 04 08 40       	cmp    eax,0x4008049e
    213e:	00 00                	add    BYTE PTR [eax],al
    2140:	00 02                	add    BYTE PTR [edx],al
    2142:	03 00                	add    eax,DWORD PTR [eax]
    2144:	00 01                	add    BYTE PTR [ecx],al
    2146:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    214a:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    214e:	08 01                	or     BYTE PTR [ecx],al
    2150:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    2154:	0a 4a 01             	or     cl,BYTE PTR [edx+0x1]
    2157:	01 02                	add    DWORD PTR [edx],eax
    2159:	74 08                	je     2163 <__executable_start-0x8045f31>
    215b:	05 03 08 aa 04       	add    eax,0x4aa0803
    2160:	08 01                	or     BYTE PTR [ecx],al
    2162:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    2166:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    216c:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    2170:	03 05 ad 04 08 00    	add    eax,DWORD PTR ds:0x804ad
    2176:	02 71 9e             	add    dh,BYTE PTR [ecx-0x62]
    2179:	04 08                	add    al,0x8
    217b:	40                   	inc    eax
    217c:	00 00                	add    BYTE PTR [eax],al
    217e:	00 01                	add    BYTE PTR [ecx],al
    2180:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    2184:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    2188:	08 01                	or     BYTE PTR [ecx],al
    218a:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    218e:	0a 4b 01             	or     cl,BYTE PTR [ebx+0x1]
    2191:	01 02                	add    DWORD PTR [edx],eax
    2193:	74 08                	je     219d <__executable_start-0x8045ef7>
    2195:	05 03 08 aa 04       	add    eax,0x4aa0803
    219a:	08 01                	or     BYTE PTR [ecx],al
    219c:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    21a0:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    21a6:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    21aa:	03 11                	add    edx,DWORD PTR [ecx]
    21ac:	ad                   	lods   eax,DWORD PTR ds:[esi]
    21ad:	04 08                	add    al,0x8
    21af:	00 00                	add    BYTE PTR [eax],al
    21b1:	0c 71                	or     al,0x71
    21b3:	03 00                	add    eax,DWORD PTR [eax]
    21b5:	00 33                	add    BYTE PTR [ebx],dh
    21b7:	01 2d 00 00 00 97    	add    DWORD PTR ds:0x97000000,ebp
    21bd:	9d                   	popf
    21be:	04 08                	add    al,0x8
    21c0:	2b 00                	sub    eax,DWORD PTR [eax]
    21c2:	00 00                	add    BYTE PTR [eax],al
    21c4:	01 9c 89 03 00 00 0d 	add    DWORD PTR [ecx+ecx*4+0xd000003],ebx
    21cb:	13 05 00 00 33 01    	adc    eax,DWORD PTR ds:0x1330000
    21d1:	16                   	push   ss
    21d2:	62 00                	bound  eax,QWORD PTR [eax]
    21d4:	00 00                	add    BYTE PTR [eax],al
    21d6:	02 91 00 0d 9e 05    	add    dl,BYTE PTR [ecx+0x59e0d00]
    21dc:	00 00                	add    BYTE PTR [eax],al
    21de:	33 01                	xor    eax,DWORD PTR [ecx]
    21e0:	25 2d 00 00 00       	and    eax,0x2d
    21e5:	02 91 04 0a 3d 05    	add    dl,BYTE PTR [ecx+0x53d0a04]
    21eb:	00 00                	add    BYTE PTR [eax],al
    21ed:	35 01 0a 2d 00       	xor    eax,0x2d0a01
    21f2:	00 00                	add    BYTE PTR [eax],al
    21f4:	04 11                	add    al,0x11
    21f6:	00 00                	add    BYTE PTR [eax],al
    21f8:	fe                   	(bad)
    21f9:	10 00                	adc    BYTE PTR [eax],al
    21fb:	00 00                	add    BYTE PTR [eax],al
    21fd:	0c f8                	or     al,0xf8
    21ff:	02 00                	add    al,BYTE PTR [eax]
    2201:	00 25 01 2d 00 00    	add    BYTE PTR ds:0x2d01,ah
    2207:	00 c5                	add    ch,al
    2209:	9c                   	pushf
    220a:	04 08                	add    al,0x8
    220c:	69 00 00 00 01 9c    	imul   eax,DWORD PTR [eax],0x9c010000
    2212:	0d 04 00 00 0d       	or     eax,0xd000004
    2217:	13 05 00 00 25 01    	adc    eax,DWORD PTR ds:0x1250000
    221d:	15 62 00 00 00       	adc    eax,0x62
    2222:	02 91 00 19 70 00    	add    dl,BYTE PTR [ecx+0x701900]
    2228:	27                   	daa
    2229:	01 0f                	add    DWORD PTR [edi],ecx
    222b:	62 00                	bound  eax,QWORD PTR [eax]
    222d:	00 00                	add    BYTE PTR [eax],al
    222f:	24 11                	and    al,0x11
    2231:	00 00                	add    BYTE PTR [eax],al
    2233:	1c 11                	sbb    al,0x11
    2235:	00 00                	add    BYTE PTR [eax],al
    2237:	06                   	push   es
    2238:	38 01                	cmp    BYTE PTR [ecx],al
    223a:	00 00                	add    BYTE PTR [eax],al
    223c:	1d 04 00 00 05       	sbb    eax,0x5000004
    2241:	03 10                	add    edx,DWORD PTR [eax]
    2243:	aa                   	stos   BYTE PTR es:[edi],al
    2244:	04 08                	add    al,0x8
    2246:	02 24 9d 04 08 40 00 	add    ah,BYTE PTR [ebx*4+0x400804]
    224d:	00 00                	add    BYTE PTR [eax],al
    224f:	01 02                	add    DWORD PTR [edx],eax
    2251:	74 00                	je     2253 <__executable_start-0x8045e41>
    2253:	05 03 4c ac 04       	add    eax,0x4ac4c03
    2258:	08 01                	or     BYTE PTR [ecx],al
    225a:	02 74 04 03          	add    dh,BYTE PTR [esp+eax*1+0x3]
    225e:	0a 29                	or     ch,BYTE PTR [ecx]
    2260:	01 01                	add    DWORD PTR [ecx],eax
    2262:	02 74 08 05          	add    dh,BYTE PTR [eax+ecx*1+0x5]
    2266:	03 10                	add    edx,DWORD PTR [eax]
    2268:	aa                   	stos   BYTE PTR es:[edi],al
    2269:	04 08                	add    al,0x8
    226b:	01 02                	add    DWORD PTR [edx],eax
    226d:	74 0c                	je     227b <__executable_start-0x8045e19>
    226f:	05 03 35 ac 04       	add    eax,0x4ac3503
    2274:	08 01                	or     BYTE PTR [ecx],al
    2276:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    227a:	03 d2                	add    edx,edx
    227c:	ac                   	lods   al,BYTE PTR ds:[esi]
    227d:	04 08                	add    al,0x8
    227f:	00 00                	add    BYTE PTR [eax],al
    2281:	15 6e 00 00 00       	adc    eax,0x6e
    2286:	1d 04 00 00 16       	sbb    eax,0x16000004
    228b:	39 00                	cmp    DWORD PTR [eax],eax
    228d:	00 00                	add    BYTE PTR [eax],al
    228f:	06                   	push   es
    2290:	00 0b                	add    BYTE PTR [ebx],cl
    2292:	0d 04 00 00 0c       	or     eax,0xc000004
    2297:	b6 05                	mov    dh,0x5
    2299:	00 00                	add    BYTE PTR [eax],al
    229b:	17                   	pop    ss
    229c:	01 d7                	add    edi,edx
    229e:	04 00                	add    al,0x0
    22a0:	00 52 9c             	add    BYTE PTR [edx-0x64],dl
    22a3:	04 08                	add    al,0x8
    22a5:	73 00                	jae    22a7 <__executable_start-0x8045ded>
    22a7:	00 00                	add    BYTE PTR [eax],al
    22a9:	01 9c d7 04 00 00 0d 	add    DWORD PTR [edi+edx*8+0xd000004],ebx
    22b0:	cb                   	retf
    22b1:	05 00 00 17 01       	add    eax,0x1170000
    22b6:	0f                   	pmovmskb eax,(bad)
    22b7:	d7                   	xlat   BYTE PTR ds:[ebx]
    22b8:	04 00                	add    al,0x0
    22ba:	00 02                	add    BYTE PTR [edx],al
    22bc:	91                   	xchg   ecx,eax
    22bd:	00 0d b8 04 00 00    	add    BYTE PTR ds:0x4b8,cl
    22c3:	17                   	pop    ss
    22c4:	01 19                	add    DWORD PTR [ecx],ebx
    22c6:	26 00 00             	add    BYTE PTR es:[eax],al
    22c9:	00 02                	add    BYTE PTR [edx],al
    22cb:	91                   	xchg   ecx,eax
    22cc:	04 13                	add    al,0x13
    22ce:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    22d1:	00 17                	add    BYTE PTR [edi],dl
    22d3:	01 27                	add    DWORD PTR [edi],esp
    22d5:	2d 00 00 00 4f       	sub    eax,0x4f000000
    22da:	11 00                	adc    DWORD PTR [eax],eax
    22dc:	00 41 11             	add    BYTE PTR [ecx+0x11],al
    22df:	00 00                	add    BYTE PTR [eax],al
    22e1:	19 64 73 74          	sbb    DWORD PTR [ebx+esi*2+0x74],esp
    22e5:	00 19                	add    BYTE PTR [ecx],bl
    22e7:	01 12                	add    DWORD PTR [edx],edx
    22e9:	d9 04 00             	fld    DWORD PTR [eax+eax*1]
    22ec:	00 a7 11 00 00 9f    	add    BYTE PTR [edi-0x60ffffef],ah
    22f2:	11 00                	adc    DWORD PTR [eax],eax
    22f4:	00 06                	add    BYTE PTR [esi],al
    22f6:	38 01                	cmp    BYTE PTR [ecx],al
    22f8:	00 00                	add    BYTE PTR [eax],al
    22fa:	1d 04 00 00 05       	sbb    eax,0x5000004
    22ff:	03 18                	add    ebx,DWORD PTR [eax]
    2301:	aa                   	stos   BYTE PTR es:[edi],al
    2302:	04 08                	add    al,0x8
    2304:	02 c5                	add    al,ch
    2306:	9c                   	pushf
    2307:	04 08                	add    al,0x8
    2309:	40                   	inc    eax
    230a:	00 00                	add    BYTE PTR [eax],al
    230c:	00 01                	add    BYTE PTR [ecx],al
    230e:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    2312:	73 00                	jae    2314 <__executable_start-0x8045d80>
    2314:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2318:	ff 22                	jmp    DWORD PTR [edx]
    231a:	01 02                	add    DWORD PTR [edx],eax
    231c:	74 04                	je     2322 <__executable_start-0x8045d72>
    231e:	03 0a                	add    ecx,DWORD PTR [edx]
    2320:	1b 01                	sbb    eax,DWORD PTR [ecx]
    2322:	01 02                	add    DWORD PTR [edx],eax
    2324:	74 08                	je     232e <__executable_start-0x8045d66>
    2326:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2329:	03 18                	add    ebx,DWORD PTR [eax]
    232b:	fa                   	cli
    232c:	ff                   	(bad)
    232d:	ff 22                	jmp    DWORD PTR [edx]
    232f:	01 02                	add    DWORD PTR [edx],eax
    2331:	74 0c                	je     233f <__executable_start-0x8045d55>
    2333:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2336:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    233c:	01 02                	add    DWORD PTR [edx],eax
    233e:	74 10                	je     2350 <__executable_start-0x8045d44>
    2340:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2343:	03 1c fc             	add    ebx,DWORD PTR [esp+edi*8]
    2346:	ff                   	(bad)
    2347:	ff 22                	jmp    DWORD PTR [edx]
    2349:	00 00                	add    BYTE PTR [eax],al
    234b:	1f                   	pop    ds
    234c:	04 09                	add    al,0x9
    234e:	de 04 00             	fiadd  WORD PTR [eax+eax*1]
    2351:	00 12                	add    BYTE PTR [edx],dl
    2353:	01 08                	add    DWORD PTR [eax],ecx
    2355:	ca 00 00             	retf   0x0
    2358:	00 0b                	add    BYTE PTR [ebx],cl
    235a:	de 04 00             	fiadd  WORD PTR [eax+eax*1]
    235d:	00 07                	add    BYTE PTR [edi],al
    235f:	74 05                	je     2366 <__executable_start-0x8045d2e>
    2361:	00 00                	add    BYTE PTR [eax],al
    2363:	eb e2                	jmp    2347 <__executable_start-0x8045d4d>
    2365:	01 00                	add    DWORD PTR [eax],eax
    2367:	00 1c 9b             	add    BYTE PTR [ebx+ebx*4],bl
    236a:	04 08                	add    al,0x8
    236c:	36 01 00             	add    DWORD PTR ss:[eax],eax
    236f:	00 01                	add    BYTE PTR [ecx],al
    2371:	9c                   	pushf
    2372:	1b 06                	sbb    eax,DWORD PTR [esi]
    2374:	00 00                	add    BYTE PTR [eax],al
    2376:	10 73 00             	adc    BYTE PTR [ebx+0x0],dh
    2379:	eb 11                	jmp    238c <__executable_start-0x8045d08>
    237b:	e2 01                	loop   237e <__executable_start-0x8045d16>
    237d:	00 00                	add    BYTE PTR [eax],al
    237f:	d1 11                	rcl    DWORD PTR [ecx],1
    2381:	00 00                	add    BYTE PTR [eax],al
    2383:	c5 11                	lds    edx,FWORD PTR [ecx]
    2385:	00 00                	add    BYTE PTR [eax],al
    2387:	04 ea                	add    al,0xea
    2389:	05 00 00 eb 20       	add    eax,0x20eb0000
    238e:	62 00                	bound  eax,QWORD PTR [eax]
    2390:	00 00                	add    BYTE PTR [eax],al
    2392:	02 91 04 04 a5 05    	add    dl,BYTE PTR [ecx+0x5a50404]
    2398:	00 00                	add    BYTE PTR [eax],al
    239a:	eb 33                	jmp    23cf <__executable_start-0x8045cc5>
    239c:	1b 06                	sbb    eax,DWORD PTR [esi]
    239e:	00 00                	add    BYTE PTR [eax],al
    23a0:	02 91 08 20 2c 06    	add    dl,BYTE PTR [ecx+0x62c2008]
    23a6:	00 00                	add    BYTE PTR [eax],al
    23a8:	01 ed                	add    ebp,ebp
    23aa:	09 e2                	or     edx,esp
    23ac:	01 00                	add    DWORD PTR [eax],eax
    23ae:	00 06                	add    BYTE PTR [esi],al
    23b0:	38 01                	cmp    BYTE PTR [ecx],al
    23b2:	00 00                	add    BYTE PTR [eax],al
    23b4:	30 06                	xor    BYTE PTR [esi],al
    23b6:	00 00                	add    BYTE PTR [eax],al
    23b8:	05 03 20 aa 04       	add    eax,0x4aa2003
    23bd:	08 03                	or     BYTE PTR [ebx],al
    23bf:	89 9b 04 08 40 00    	mov    DWORD PTR [ebx+0x400804],ebx
    23c5:	00 00                	add    BYTE PTR [eax],al
    23c7:	62 05 00 00 01 02    	bound  eax,QWORD PTR ds:0x2010000
    23cd:	74 00                	je     23cf <__executable_start-0x8045cc5>
    23cf:	05 03 4c ac 04       	add    eax,0x4ac4c03
    23d4:	08 00                	or     BYTE PTR [eax],al
    23d6:	03 bd 9b 04 08 40    	add    edi,DWORD PTR [ebp+0x4008049b]
    23dc:	00 00                	add    BYTE PTR [eax],al
    23de:	00 9f 05 00 00 01    	add    BYTE PTR [edi+0x1000005],bl
    23e4:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    23e8:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    23ec:	08 01                	or     BYTE PTR [ecx],al
    23ee:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    23f2:	08 ef                	or     bh,ch
    23f4:	01 02                	add    DWORD PTR [edx],eax
    23f6:	74 08                	je     2400 <__executable_start-0x8045c94>
    23f8:	05 03 20 aa 04       	add    eax,0x4aa2003
    23fd:	08 01                	or     BYTE PTR [ecx],al
    23ff:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    2403:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    2409:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    240d:	03 e1                	add    esp,ecx
    240f:	ac                   	lods   al,BYTE PTR ds:[esi]
    2410:	04 08                	add    al,0x8
    2412:	00 03                	add    BYTE PTR [ebx],al
    2414:	f1                   	int1
    2415:	9b                   	fwait
    2416:	04 08                	add    al,0x8
    2418:	40                   	inc    eax
    2419:	00 00                	add    BYTE PTR [eax],al
    241b:	00 dc                	add    ah,bl
    241d:	05 00 00 01 02       	add    eax,0x2010000
    2422:	74 00                	je     2424 <__executable_start-0x8045c70>
    2424:	05 03 4c ac 04       	add    eax,0x4ac4c03
    2429:	08 01                	or     BYTE PTR [ecx],al
    242b:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    242f:	08 f0                	or     al,dh
    2431:	01 02                	add    DWORD PTR [edx],eax
    2433:	74 08                	je     243d <__executable_start-0x8045c57>
    2435:	05 03 20 aa 04       	add    eax,0x4aa2003
    243a:	08 01                	or     BYTE PTR [ecx],al
    243c:	02 74 0c 05          	add    dh,BYTE PTR [esp+ecx*1+0x5]
    2440:	03 35 ac 04 08 01    	add    esi,DWORD PTR ds:0x10804ac
    2446:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    244a:	03 f4                	add    esi,esp
    244c:	ac                   	lods   al,BYTE PTR ds:[esi]
    244d:	04 08                	add    al,0x8
    244f:	00 03                	add    BYTE PTR [ebx],al
    2451:	04 9c                	add    al,0x9c
    2453:	04 08                	add    al,0x8
    2455:	4f                   	dec    edi
    2456:	08 00                	or     BYTE PTR [eax],al
    2458:	00 fc                	add    ah,bh
    245a:	05 00 00 01 02       	add    eax,0x2010000
    245f:	74 00                	je     2461 <__executable_start-0x8045c33>
    2461:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    2464:	01 02                	add    DWORD PTR [edx],eax
    2466:	74 04                	je     246c <__executable_start-0x8045c28>
    2468:	06                   	push   es
    2469:	73 00                	jae    246b <__executable_start-0x8045c29>
    246b:	48                   	dec    eax
    246c:	24 48                	and    al,0x48
    246e:	26 00 02             	add    BYTE PTR es:[edx],al
    2471:	35 9c 04 08 4f       	xor    eax,0x4f08049c
    2476:	08 00                	or     BYTE PTR [eax],al
    2478:	00 01                	add    BYTE PTR [ecx],al
    247a:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
    247e:	77 00                	ja     2480 <__executable_start-0x8045c14>
    2480:	01 02                	add    DWORD PTR [edx],eax
    2482:	74 04                	je     2488 <__executable_start-0x8045c0c>
    2484:	08 91 5f 94 01 48    	or     BYTE PTR [ecx+0x4801945f],dl
    248a:	24 48                	and    al,0x48
    248c:	26 00 00             	add    BYTE PTR es:[eax],al
    248f:	09 e2                	or     edx,esp
    2491:	01 00                	add    DWORD PTR [eax],eax
    2493:	00 15 6e 00 00 00    	add    BYTE PTR ds:0x6e,dl
    2499:	30 06                	xor    BYTE PTR [esi],al
    249b:	00 00                	add    BYTE PTR [eax],al
    249d:	16                   	push   ss
    249e:	39 00                	cmp    DWORD PTR [eax],eax
    24a0:	00 00                	add    BYTE PTR [eax],al
    24a2:	08 00                	or     BYTE PTR [eax],al
    24a4:	0b 20                	or     esp,DWORD PTR [eax]
    24a6:	06                   	push   es
    24a7:	00 00                	add    BYTE PTR [eax],al
    24a9:	07                   	pop    es
    24aa:	3a 06                	cmp    al,BYTE PTR [esi]
    24ac:	00 00                	add    BYTE PTR [eax],al
    24ae:	b8 e2 01 00 00       	mov    eax,0x1e2
    24b3:	2e 9d                	cs popf
    24b5:	04 08                	add    al,0x8
    24b7:	69 00 00 00 01 9c    	imul   eax,DWORD PTR [eax],0x9c010000
    24bd:	f7 06 00 00 04 41    	test   DWORD PTR [esi],0x41040000
    24c3:	06                   	push   es
    24c4:	00 00                	add    BYTE PTR [eax],al
    24c6:	b8 15 62 00 00       	mov    eax,0x6215
    24cb:	00 02                	add    BYTE PTR [edx],al
    24cd:	91                   	xchg   ecx,eax
    24ce:	00 04 c4             	add    BYTE PTR [esp+eax*8],al
    24d1:	05 00 00 b8 2b       	add    eax,0x2bb80000
    24d6:	62 00                	bound  eax,QWORD PTR [eax]
    24d8:	00 00                	add    BYTE PTR [eax],al
    24da:	02 91 04 0e 1f 06    	add    dl,BYTE PTR [ecx+0x61f0e04]
    24e0:	00 00                	add    BYTE PTR [eax],al
    24e2:	ba 0a 2d 00 00       	mov    edx,0x2d0a
    24e7:	00 04 12             	add    BYTE PTR [edx+edx*1],al
    24ea:	00 00                	add    BYTE PTR [eax],al
    24ec:	fe                   	(bad)
    24ed:	11 00                	adc    DWORD PTR [eax],eax
    24ef:	00 0e                	add    BYTE PTR [esi],cl
    24f1:	df 05 00 00 bb 0a    	fild   WORD PTR ds:0xabb0000
    24f7:	2d 00 00 00 20       	sub    eax,0x20000000
    24fc:	12 00                	adc    al,BYTE PTR [eax]
    24fe:	00 1a                	add    BYTE PTR [edx],bl
    2500:	12 00                	adc    al,BYTE PTR [eax]
    2502:	00 14 55 9d 04 08 2c 	add    BYTE PTR [edx*2+0x2c08049d],dl
    2509:	00 00                	add    BYTE PTR [eax],al
    250b:	00 ce                	add    dh,cl
    250d:	06                   	push   es
    250e:	00 00                	add    BYTE PTR [eax],al
    2510:	05 69 00 bf 0e       	add    eax,0xebf0069
    2515:	2d 00 00 00 3a       	sub    eax,0x3a000000
    251a:	12 00                	adc    al,BYTE PTR [eax]
    251c:	00 36                	add    BYTE PTR [esi],dh
    251e:	12 00                	adc    al,BYTE PTR [eax]
    2520:	00 02                	add    BYTE PTR [edx],al
    2522:	77 9d                	ja     24c1 <__executable_start-0x8045bd3>
    2524:	04 08                	add    al,0x8
    2526:	96                   	xchg   esi,eax
    2527:	0a 00                	or     al,BYTE PTR [eax]
    2529:	00 01                	add    BYTE PTR [ecx],al
    252b:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
    252f:	76 00                	jbe    2531 <__executable_start-0x8045b63>
    2531:	01 02                	add    DWORD PTR [edx],eax
    2533:	74 04                	je     2539 <__executable_start-0x8045b5b>
    2535:	03 91 04 06 01 02    	add    edx,DWORD PTR [ecx+0x2010604]
    253b:	74 08                	je     2545 <__executable_start-0x8045b4f>
    253d:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    2540:	00 00                	add    BYTE PTR [eax],al
    2542:	03 42 9d             	add    eax,DWORD PTR [edx-0x63]
    2545:	04 08                	add    al,0x8
    2547:	89 03                	mov    DWORD PTR [ebx],eax
    2549:	00 00                	add    BYTE PTR [eax],al
    254b:	e4 06                	in     al,0x6
    254d:	00 00                	add    BYTE PTR [eax],al
    254f:	01 02                	add    DWORD PTR [edx],eax
    2551:	74 00                	je     2553 <__executable_start-0x8045b41>
    2553:	03 91 00 06 00 02    	add    edx,DWORD PTR [ecx+0x2000600]
    2559:	4f                   	dec    edi
    255a:	9d                   	popf
    255b:	04 08                	add    al,0x8
    255d:	89 03                	mov    DWORD PTR [ebx],eax
    255f:	00 00                	add    BYTE PTR [eax],al
    2561:	01 02                	add    DWORD PTR [edx],eax
    2563:	74 00                	je     2565 <__executable_start-0x8045b2f>
    2565:	03 91 04 06 00 00    	add    edx,DWORD PTR [ecx+0x604]
    256b:	07                   	pop    es
    256c:	18 06                	sbb    BYTE PTR [esi],al
    256e:	00 00                	add    BYTE PTR [eax],al
    2570:	aa                   	stos   BYTE PTR es:[edi],al
    2571:	2d 00 00 00 d4       	sub    eax,0xd4000000
    2576:	9a 04 08 48 00 00 00 	call   0x0:0x480804
    257d:	01 9c 50 07 00 00 04 	add    DWORD PTR [eax+edx*2+0x4000007],ebx
    2584:	13 05 00 00 aa 15    	adc    eax,DWORD PTR ds:0x15aa0000
    258a:	62 00                	bound  eax,QWORD PTR [eax]
    258c:	00 00                	add    BYTE PTR [eax],al
    258e:	02 91 00 04 67 05    	add    dl,BYTE PTR [ecx+0x5670400]
    2594:	00 00                	add    BYTE PTR [eax],al
    2596:	aa                   	stos   BYTE PTR es:[edi],al
    2597:	29 62 00             	sub    DWORD PTR [edx+0x0],esp
    259a:	00 00                	add    BYTE PTR [eax],al
    259c:	02 91 04 0e 3d 05    	add    dl,BYTE PTR [ecx+0x53d0e04]
    25a2:	00 00                	add    BYTE PTR [eax],al
    25a4:	ac                   	lods   al,BYTE PTR ds:[esi]
    25a5:	0a 2d 00 00 00 50    	or     ch,BYTE PTR ds:0x50000000
    25ab:	12 00                	adc    al,BYTE PTR [eax]
    25ad:	00 4a 12             	add    BYTE PTR [edx+0x12],cl
    25b0:	00 00                	add    BYTE PTR [eax],al
    25b2:	02 fe                	add    bh,dh
    25b4:	9a 04 08 4f 08 00 00 	call   0x0:0x84f0804
    25bb:	01 02                	add    DWORD PTR [edx],eax
    25bd:	74 00                	je     25bf <__executable_start-0x8045ad5>
    25bf:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    25c2:	00 00                	add    BYTE PTR [eax],al
    25c4:	07                   	pop    es
    25c5:	32 06                	xor    al,BYTE PTR [esi]
    25c7:	00 00                	add    BYTE PTR [eax],al
    25c9:	9c                   	pushf
    25ca:	e2 01                	loop   25cd <__executable_start-0x8045ac7>
    25cc:	00 00                	add    BYTE PTR [eax],al
    25ce:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    25cf:	9a 04 08 30 00 00 00 	call   0x0:0x300804
    25d6:	01 9c ab 07 00 00 08 	add    DWORD PTR [ebx+ebp*4+0x8000007],ebx
    25dd:	13 05 00 00 9c 16    	adc    eax,DWORD PTR ds:0x169c0000
    25e3:	62 00                	bound  eax,QWORD PTR [eax]
    25e5:	00 00                	add    BYTE PTR [eax],al
    25e7:	6e                   	outs   dx,BYTE PTR ds:[esi]
    25e8:	12 00                	adc    al,BYTE PTR [eax]
    25ea:	00 68 12             	add    BYTE PTR [eax+0x12],ch
    25ed:	00 00                	add    BYTE PTR [eax],al
    25ef:	11 63 5f             	adc    DWORD PTR [ebx+0x5f],esp
    25f2:	00 9c 22 26 00 00 00 	add    BYTE PTR [edx+eiz*1+0x26],bl
    25f9:	02 91 04 05 63 00    	add    dl,BYTE PTR [ecx+0x630504]
    25ff:	9e                   	sahf
    2600:	08 67 00             	or     BYTE PTR [edi+0x0],ah
    2603:	00 00                	add    BYTE PTR [eax],al
    2605:	8b 12                	mov    edx,DWORD PTR [edx]
    2607:	00 00                	add    BYTE PTR [eax],al
    2609:	85 12                	test   DWORD PTR [edx],edx
    260b:	00 00                	add    BYTE PTR [eax],al
    260d:	05 70 00 9f 0f       	add    eax,0xf9f0070
    2612:	62 00                	bound  eax,QWORD PTR [eax]
    2614:	00 00                	add    BYTE PTR [eax],al
    2616:	a8 12                	test   al,0x12
    2618:	00 00                	add    BYTE PTR [eax],al
    261a:	a2 12 00 00 00       	mov    ds:0x12,al
    261f:	07                   	pop    es
    2620:	04 06                	add    al,0x6
    2622:	00 00                	add    BYTE PTR [eax],al
    2624:	91                   	xchg   ecx,eax
    2625:	e2 01                	loop   2628 <__executable_start-0x8045a6c>
    2627:	00 00                	add    BYTE PTR [eax],al
    2629:	62 9a 04 08 42 00    	bound  ebx,QWORD PTR [edx+0x420804]
    262f:	00 00                	add    BYTE PTR [eax],al
    2631:	01 9c f6 07 00 00 08 	add    DWORD PTR [esi+esi*8+0x8000007],ebx
    2638:	13 05 00 00 91 16    	adc    eax,DWORD PTR ds:0x16910000
    263e:	62 00                	bound  eax,QWORD PTR [eax]
    2640:	00 00                	add    BYTE PTR [eax],al
    2642:	c4 12                	les    edx,FWORD PTR [edx]
    2644:	00 00                	add    BYTE PTR [eax],al
    2646:	c0 12 00             	rcl    BYTE PTR [edx],0x0
    2649:	00 04 99             	add    BYTE PTR [ecx+ebx*4],al
    264c:	05 00 00 91 2a       	add    eax,0x2a910000
    2651:	62 00                	bound  eax,QWORD PTR [eax]
    2653:	00 00                	add    BYTE PTR [eax],al
    2655:	02 91 04 02 86 9a    	add    dl,BYTE PTR [ecx-0x6579fdfc]
    265b:	04 08                	add    al,0x8
    265d:	4f                   	dec    edi
    265e:	08 00                	or     BYTE PTR [eax],al
    2660:	00 01                	add    BYTE PTR [ecx],al
    2662:	02 74 00 02          	add    dh,BYTE PTR [eax+eax*1+0x2]
    2666:	76 00                	jbe    2668 <__executable_start-0x8045a2c>
    2668:	00 00                	add    BYTE PTR [eax],al
    266a:	07                   	pop    es
    266b:	d7                   	xlat   BYTE PTR ds:[ebx]
    266c:	05 00 00 83 2d       	add    eax,0x2d830000
    2671:	00 00                	add    BYTE PTR [eax],al
    2673:	00 1a                	add    BYTE PTR [edx],bl
    2675:	9a 04 08 48 00 00 00 	call   0x0:0x480804
    267c:	01 9c 4f 08 00 00 04 	add    DWORD PTR [edi+ecx*2+0x4000008],ebx
    2683:	13 05 00 00 83 16    	adc    eax,DWORD PTR ds:0x16830000
    2689:	62 00                	bound  eax,QWORD PTR [eax]
    268b:	00 00                	add    BYTE PTR [eax],al
    268d:	02 91 00 04 99 05    	add    dl,BYTE PTR [ecx+0x5990400]
    2693:	00 00                	add    BYTE PTR [eax],al
    2695:	83 2a 62             	sub    DWORD PTR [edx],0x62
    2698:	00 00                	add    BYTE PTR [eax],al
    269a:	00 02                	add    BYTE PTR [edx],al
    269c:	91                   	xchg   ecx,eax
    269d:	04 0e                	add    al,0xe
    269f:	3d 05 00 00 85       	cmp    eax,0x85000005
    26a4:	0a 2d 00 00 00 da    	or     ch,BYTE PTR ds:0xda000000
    26aa:	12 00                	adc    al,BYTE PTR [eax]
    26ac:	00 d4                	add    ah,dl
    26ae:	12 00                	adc    al,BYTE PTR [eax]
    26b0:	00 02                	add    BYTE PTR [edx],al
    26b2:	44                   	inc    esp
    26b3:	9a 04 08 4f 08 00 00 	call   0x0:0x84f0804
    26ba:	01 02                	add    DWORD PTR [edx],eax
    26bc:	74 00                	je     26be <__executable_start-0x80459d6>
    26be:	02 77 00             	add    dh,BYTE PTR [edi+0x0]
    26c1:	00 00                	add    BYTE PTR [eax],al
    26c3:	07                   	pop    es
    26c4:	8a 05 00 00 71 e2    	mov    al,BYTE PTR ds:0xe2710000
    26ca:	01 00                	add    DWORD PTR [eax],eax
    26cc:	00 a6 99 04 08 74    	add    BYTE PTR [esi+0x74080499],ah
    26d2:	00 00                	add    BYTE PTR [eax],al
    26d4:	00 01                	add    BYTE PTR [ecx],al
    26d6:	9c                   	pushf
    26d7:	e6 08                	out    0x8,al
    26d9:	00 00                	add    BYTE PTR [eax],al
    26db:	08 13                	or     BYTE PTR [ebx],dl
    26dd:	05 00 00 71 15       	add    eax,0x15710000
    26e2:	62 00                	bound  eax,QWORD PTR [eax]
    26e4:	00 00                	add    BYTE PTR [eax],al
    26e6:	fa                   	cli
    26e7:	12 00                	adc    al,BYTE PTR [eax]
    26e9:	00 f2                	add    dl,dh
    26eb:	12 00                	adc    al,BYTE PTR [eax]
    26ed:	00 10                	add    BYTE PTR [eax],dl
    26ef:	63 5f 00             	arpl   WORD PTR [edi+0x0],ebx
    26f2:	71 21                	jno    2715 <__executable_start-0x804597f>
    26f4:	26 00 00             	add    BYTE PTR es:[eax],al
    26f7:	00 1d 13 00 00 19    	add    BYTE PTR ds:0x19000013,bl
    26fd:	13 00                	adc    eax,DWORD PTR [eax]
    26ff:	00 05 63 00 73 08    	add    BYTE PTR ds:0x8730063,al
    2705:	67 00 00             	add    BYTE PTR [bx+si],al
    2708:	00 34 13             	add    BYTE PTR [ebx+edx*1],dh
    270b:	00 00                	add    BYTE PTR [eax],al
    270d:	2e 13 00             	adc    eax,DWORD PTR cs:[eax]
    2710:	00 06                	add    BYTE PTR [esi],al
    2712:	38 01                	cmp    BYTE PTR [ecx],al
    2714:	00 00                	add    BYTE PTR [eax],al
    2716:	1d 04 00 00 05       	sbb    eax,0x5000004
    271b:	03 2c aa             	add    ebp,DWORD PTR [edx+ebp*4]
    271e:	04 08                	add    al,0x8
    2720:	02 0e                	add    cl,BYTE PTR [esi]
    2722:	9a 04 08 40 00 00 00 	call   0x0:0x400804
    2729:	01 02                	add    DWORD PTR [edx],eax
    272b:	74 00                	je     272d <__executable_start-0x8045967>
    272d:	05 03 4c ac 04       	add    eax,0x4ac4c03
    2732:	08 01                	or     BYTE PTR [ecx],al
    2734:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    2738:	08 75 01             	or     BYTE PTR [ebp+0x1],dh
    273b:	02 74 08 05          	add    dh,BYTE PTR [eax+ecx*1+0x5]
    273f:	03 2c aa             	add    ebp,DWORD PTR [edx+ebp*4]
    2742:	04 08                	add    al,0x8
    2744:	01 02                	add    DWORD PTR [edx],eax
    2746:	74 0c                	je     2754 <__executable_start-0x8045940>
    2748:	05 03 35 ac 04       	add    eax,0x4ac3503
    274d:	08 01                	or     BYTE PTR [ecx],al
    274f:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    2753:	03 d2                	add    edx,edx
    2755:	ac                   	lods   al,BYTE PTR ds:[esi]
    2756:	04 08                	add    al,0x8
    2758:	00 00                	add    BYTE PTR [eax],al
    275a:	07                   	pop    es
    275b:	bd 05 00 00 5e       	mov    ebp,0x5e000005
    2760:	d7                   	xlat   BYTE PTR ds:[ebx]
    2761:	04 00                	add    al,0x0
    2763:	00 27                	add    BYTE PTR [edi],ah
    2765:	99                   	cdq
    2766:	04 08                	add    al,0x8
    2768:	7f 00                	jg     276a <__executable_start-0x804592a>
    276a:	00 00                	add    BYTE PTR [eax],al
    276c:	01 9c ac 09 00 00 04 	add    DWORD PTR [esp+ebp*4+0x4000009],ebx
    2773:	d0 05 00 00 5e 15    	rol    BYTE PTR ds:0x155e0000,1
    2779:	ac                   	lods   al,BYTE PTR ds:[esi]
    277a:	09 00                	or     DWORD PTR [eax],eax
    277c:	00 02                	add    BYTE PTR [edx],al
    277e:	91                   	xchg   ecx,eax
    277f:	00 10                	add    BYTE PTR [eax],dl
    2781:	63 68 5f             	arpl   WORD PTR [eax+0x5f],ebp
    2784:	00 5e 21             	add    BYTE PTR [esi+0x21],bl
    2787:	26 00 00             	add    BYTE PTR es:[eax],al
    278a:	00 51 13             	add    BYTE PTR [ecx+0x13],dl
    278d:	00 00                	add    BYTE PTR [eax],al
    278f:	4b                   	dec    ebx
    2790:	13 00                	adc    eax,DWORD PTR [eax]
    2792:	00 08                	add    BYTE PTR [eax],cl
    2794:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    2797:	00 5e 2d             	add    BYTE PTR [esi+0x2d],bl
    279a:	2d 00 00 00 7a       	sub    eax,0x7a000000
    279f:	13 00                	adc    eax,DWORD PTR [eax]
    27a1:	00 6a 13             	add    BYTE PTR [edx+0x13],ch
    27a4:	00 00                	add    BYTE PTR [eax],al
    27a6:	0e                   	push   cs
    27a7:	84 05 00 00 60 18    	test   BYTE PTR ds:0x18600000,al
    27ad:	b2 09                	mov    dl,0x9
    27af:	00 00                	add    BYTE PTR [eax],al
    27b1:	e0 13                	loopne 27c6 <__executable_start-0x80458ce>
    27b3:	00 00                	add    BYTE PTR [eax],al
    27b5:	d6                   	(bad)
    27b6:	13 00                	adc    eax,DWORD PTR [eax]
    27b8:	00 05 63 68 00 61    	add    BYTE PTR ds:0x61006863,al
    27be:	11 de                	adc    esi,ebx
    27c0:	04 00                	add    al,0x0
    27c2:	00 0a                	add    BYTE PTR [edx],cl
    27c4:	14 00                	adc    al,0x0
    27c6:	00 06                	add    BYTE PTR [esi],al
    27c8:	14 00                	adc    al,0x0
    27ca:	00 06                	add    BYTE PTR [esi],al
    27cc:	38 01                	cmp    BYTE PTR [ecx],al
    27ce:	00 00                	add    BYTE PTR [eax],al
    27d0:	1d 04 00 00 05       	sbb    eax,0x5000004
    27d5:	03 34 aa             	add    esi,DWORD PTR [edx+ebp*4]
    27d8:	04 08                	add    al,0x8
    27da:	02 a6 99 04 08 40    	add    ah,BYTE PTR [esi+0x40080499]
    27e0:	00 00                	add    BYTE PTR [eax],al
    27e2:	00 01                	add    BYTE PTR [ecx],al
    27e4:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    27e8:	73 00                	jae    27ea <__executable_start-0x80458aa>
    27ea:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    27ee:	ff 22                	jmp    DWORD PTR [edx]
    27f0:	01 02                	add    DWORD PTR [edx],eax
    27f2:	74 04                	je     27f8 <__executable_start-0x804589c>
    27f4:	02 08                	add    cl,BYTE PTR [eax]
    27f6:	63 01                	arpl   WORD PTR [ecx],eax
    27f8:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    27fc:	73 00                	jae    27fe <__executable_start-0x8045896>
    27fe:	03 34 fa             	add    esi,DWORD PTR [edx+edi*8]
    2801:	ff                   	(bad)
    2802:	ff 22                	jmp    DWORD PTR [edx]
    2804:	01 02                	add    DWORD PTR [edx],eax
    2806:	74 0c                	je     2814 <__executable_start-0x8045880>
    2808:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    280b:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2811:	01 02                	add    DWORD PTR [edx],eax
    2813:	74 10                	je     2825 <__executable_start-0x804586f>
    2815:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2818:	03 b7 fc ff ff 22    	add    esi,DWORD PTR [edi+0x22fffffc]
    281e:	00 00                	add    BYTE PTR [eax],al
    2820:	09 b1 09 00 00 21    	or     DWORD PTR [ecx+0x21000009],esi
    2826:	09 e5                	or     ebp,esp
    2828:	04 00                	add    al,0x0
    282a:	00 07                	add    BYTE PTR [edi],al
    282c:	fd                   	std
    282d:	05 00 00 49 26       	add    eax,0x26490000
    2832:	00 00                	add    BYTE PTR [eax],al
    2834:	00 6c 98 04          	add    BYTE PTR [eax+ebx*4+0x4],ch
    2838:	08 bb 00 00 00 01    	or     BYTE PTR [ebx+0x1000000],bh
    283e:	9c                   	pushf
    283f:	96                   	xchg   esi,eax
    2840:	0a 00                	or     al,BYTE PTR [eax]
    2842:	00 11                	add    BYTE PTR [ecx],dl
    2844:	61                   	popa
    2845:	5f                   	pop    edi
    2846:	00 49 15             	add    BYTE PTR [ecx+0x15],cl
    2849:	62 00                	bound  eax,QWORD PTR [eax]
    284b:	00 00                	add    BYTE PTR [eax],al
    284d:	02 91 00 10 62 5f    	add    dl,BYTE PTR [ecx+0x5f621000]
    2853:	00 49 25             	add    BYTE PTR [ecx+0x25],cl
    2856:	62 00                	bound  eax,QWORD PTR [eax]
    2858:	00 00                	add    BYTE PTR [eax],al
    285a:	20 14 00             	and    BYTE PTR [eax+eax*1],dl
    285d:	00 1a                	add    BYTE PTR [edx],bl
    285f:	14 00                	adc    al,0x0
    2861:	00 05 61 00 4b 18    	add    BYTE PTR ds:0x184b0061,al
    2867:	b2 09                	mov    dl,0x9
    2869:	00 00                	add    BYTE PTR [eax],al
    286b:	43                   	inc    ebx
    286c:	14 00                	adc    al,0x0
    286e:	00 39                	add    BYTE PTR [ecx],bh
    2870:	14 00                	adc    al,0x0
    2872:	00 05 62 00 4c 18    	add    BYTE PTR ds:0x184c0062,al
    2878:	b2 09                	mov    dl,0x9
    287a:	00 00                	add    BYTE PTR [eax],al
    287c:	73 14                	jae    2892 <__executable_start-0x8045802>
    287e:	00 00                	add    BYTE PTR [eax],al
    2880:	69 14 00 00 06 38 01 	imul   edx,DWORD PTR [eax+eax*1],0x1380600
    2887:	00 00                	add    BYTE PTR [eax],al
    2889:	1d 04 00 00 05       	sbb    eax,0x5000004
    288e:	03 3c aa             	add    edi,DWORD PTR [edx+ebp*4]
    2891:	04 08                	add    al,0x8
    2893:	03 f3                	add    esi,ebx
    2895:	98                   	cwde
    2896:	04 08                	add    al,0x8
    2898:	40                   	inc    eax
    2899:	00 00                	add    BYTE PTR [eax],al
    289b:	00 5c 0a 00          	add    BYTE PTR [edx+ecx*1+0x0],bl
    289f:	00 01                	add    BYTE PTR [ecx],al
    28a1:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    28a5:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    28a9:	08 01                	or     BYTE PTR [ecx],al
    28ab:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    28af:	08 4e 01             	or     BYTE PTR [esi+0x1],cl
    28b2:	02 74 08 05          	add    dh,BYTE PTR [eax+ecx*1+0x5]
    28b6:	03 3c aa             	add    edi,DWORD PTR [edx+ebp*4]
    28b9:	04 08                	add    al,0x8
    28bb:	01 02                	add    DWORD PTR [edx],eax
    28bd:	74 0c                	je     28cb <__executable_start-0x80457c9>
    28bf:	05 03 35 ac 04       	add    eax,0x4ac3503
    28c4:	08 01                	or     BYTE PTR [ecx],al
    28c6:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    28ca:	03 a3 ac 04 08 00    	add    esp,DWORD PTR [ebx+0x804ac]
    28d0:	02 27                	add    ah,BYTE PTR [edi]
    28d2:	99                   	cdq
    28d3:	04 08                	add    al,0x8
    28d5:	40                   	inc    eax
    28d6:	00 00                	add    BYTE PTR [eax],al
    28d8:	00 01                	add    BYTE PTR [ecx],al
    28da:	02 74 00 05          	add    dh,BYTE PTR [eax+eax*1+0x5]
    28de:	03 4c ac 04          	add    ecx,DWORD PTR [esp+ebp*4+0x4]
    28e2:	08 01                	or     BYTE PTR [ecx],al
    28e4:	02 74 04 02          	add    dh,BYTE PTR [esp+eax*1+0x2]
    28e8:	08 4f 01             	or     BYTE PTR [edi+0x1],cl
    28eb:	02 74 08 05          	add    dh,BYTE PTR [eax+ecx*1+0x5]
    28ef:	03 3c aa             	add    edi,DWORD PTR [edx+ebp*4]
    28f2:	04 08                	add    al,0x8
    28f4:	01 02                	add    DWORD PTR [edx],eax
    28f6:	74 0c                	je     2904 <__executable_start-0x8045790>
    28f8:	05 03 35 ac 04       	add    eax,0x4ac3503
    28fd:	08 01                	or     BYTE PTR [ecx],al
    28ff:	02 74 10 05          	add    dh,BYTE PTR [eax+edx*1+0x5]
    2903:	03 ad ac 04 08 00    	add    ebp,DWORD PTR [ebp+0x804ac]
    2909:	00 07                	add    BYTE PTR [edi],al
    290b:	7d 05                	jge    2912 <__executable_start-0x8045782>
    290d:	00 00                	add    BYTE PTR [eax],al
    290f:	35 26 00 00 00       	xor    eax,0x26
    2914:	97                   	xchg   edi,eax
    2915:	97                   	xchg   edi,eax
    2916:	04 08                	add    al,0x8
    2918:	d5 00                	aad    0x0
    291a:	00 00                	add    BYTE PTR [eax],al
    291c:	01 9c 9b 0b 00 00 11 	add    DWORD PTR [ebx+ebx*4+0x1100000b],ebx
    2923:	61                   	popa
    2924:	5f                   	pop    edi
    2925:	00 35 15 ac 09 00    	add    BYTE PTR ds:0x9ac15,dh
    292b:	00 02                	add    BYTE PTR [edx],al
    292d:	91                   	xchg   ecx,eax
    292e:	00 11                	add    BYTE PTR [ecx],dl
    2930:	62 5f 00             	bound  ebx,QWORD PTR [edi+0x0]
    2933:	35 25 ac 09 00       	xor    eax,0x9ac25
    2938:	00 02                	add    BYTE PTR [edx],al
    293a:	91                   	xchg   ecx,eax
    293b:	04 08                	add    al,0x8
    293d:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    2940:	00 35 30 2d 00 00    	add    BYTE PTR ds:0x2d30,dh
    2946:	00 a9 14 00 00 99    	add    BYTE PTR [ecx-0x66ffffec],ch
    294c:	14 00                	adc    al,0x0
    294e:	00 05 61 00 37 18    	add    BYTE PTR ds:0x18370061,al
    2954:	b2 09                	mov    dl,0x9
    2956:	00 00                	add    BYTE PTR [eax],al
    2958:	03 15 00 00 f3 14    	add    edx,DWORD PTR ds:0x14f30000
    295e:	00 00                	add    BYTE PTR [eax],al
    2960:	05 62 00 38 18       	add    eax,0x18380062
    2965:	b2 09                	mov    dl,0x9
    2967:	00 00                	add    BYTE PTR [eax],al
    2969:	49                   	dec    ecx
    296a:	15 00 00 3f 15       	adc    eax,0x153f0000
    296f:	00 00                	add    BYTE PTR [eax],al
    2971:	06                   	push   es
    2972:	38 01                	cmp    BYTE PTR [ecx],al
    2974:	00 00                	add    BYTE PTR [eax],al
    2976:	1d 04 00 00 05       	sbb    eax,0x5000004
    297b:	03 44 aa 04          	add    eax,DWORD PTR [edx+ebp*4+0x4]
    297f:	08 03                	or     BYTE PTR [ebx],al
    2981:	20 98 04 08 40 00    	and    BYTE PTR [eax+0x400804],bl
    2987:	00 00                	add    BYTE PTR [eax],al
    2989:	55                   	push   ebp
    298a:	0b 00                	or     eax,DWORD PTR [eax]
    298c:	00 01                	add    BYTE PTR [ecx],al
    298e:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    2992:	73 00                	jae    2994 <__executable_start-0x8045700>
    2994:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2998:	ff 22                	jmp    DWORD PTR [edx]
    299a:	01 02                	add    DWORD PTR [edx],eax
    299c:	74 04                	je     29a2 <__executable_start-0x80456f2>
    299e:	02 08                	add    cl,BYTE PTR [eax]
    29a0:	3a 01                	cmp    al,BYTE PTR [ecx]
    29a2:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    29a6:	73 00                	jae    29a8 <__executable_start-0x80456ec>
    29a8:	03 44 fa ff          	add    eax,DWORD PTR [edx+edi*8-0x1]
    29ac:	ff 22                	jmp    DWORD PTR [edx]
    29ae:	01 02                	add    DWORD PTR [edx],eax
    29b0:	74 0c                	je     29be <__executable_start-0x80456d6>
    29b2:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    29b5:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    29bb:	01 02                	add    DWORD PTR [edx],eax
    29bd:	74 10                	je     29cf <__executable_start-0x80456c5>
    29bf:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    29c2:	03 75 fc             	add    esi,DWORD PTR [ebp-0x4]
    29c5:	ff                   	(bad)
    29c6:	ff 22                	jmp    DWORD PTR [edx]
    29c8:	00 02                	add    BYTE PTR [edx],al
    29ca:	5d                   	pop    ebp
    29cb:	98                   	cwde
    29cc:	04 08                	add    al,0x8
    29ce:	40                   	inc    eax
    29cf:	00 00                	add    BYTE PTR [eax],al
    29d1:	00 01                	add    BYTE PTR [ecx],al
    29d3:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    29d7:	73 00                	jae    29d9 <__executable_start-0x80456bb>
    29d9:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    29dd:	ff 22                	jmp    DWORD PTR [edx]
    29df:	01 02                	add    DWORD PTR [edx],eax
    29e1:	74 04                	je     29e7 <__executable_start-0x80456ad>
    29e3:	02 08                	add    cl,BYTE PTR [eax]
    29e5:	3b 01                	cmp    eax,DWORD PTR [ecx]
    29e7:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    29eb:	73 00                	jae    29ed <__executable_start-0x80456a7>
    29ed:	03 44 fa ff          	add    eax,DWORD PTR [edx+edi*8-0x1]
    29f1:	ff 22                	jmp    DWORD PTR [edx]
    29f3:	01 02                	add    DWORD PTR [edx],eax
    29f5:	74 0c                	je     2a03 <__executable_start-0x8045691>
    29f7:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    29fa:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2a00:	01 02                	add    DWORD PTR [edx],eax
    2a02:	74 10                	je     2a14 <__executable_start-0x8045680>
    2a04:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2a07:	03 8c fc ff ff 22 00 	add    ecx,DWORD PTR [esp+edi*8+0x22ffff]
    2a0e:	00 07                	add    BYTE PTR [edi],al
    2a10:	6c                   	ins    BYTE PTR es:[edi],dx
    2a11:	05 00 00 18 d7       	add    eax,0xd7180000
    2a16:	04 00                	add    al,0x0
    2a18:	00 ae 96 04 08 e9    	add    BYTE PTR [esi-0x16f7fb6a],ch
    2a1e:	00 00                	add    BYTE PTR [eax],al
    2a20:	00 01                	add    BYTE PTR [ecx],al
    2a22:	9c                   	pushf
    2a23:	a4                   	movs   BYTE PTR es:[edi],BYTE PTR ds:[esi]
    2a24:	0c 00                	or     al,0x0
    2a26:	00 04 cb             	add    BYTE PTR [ebx+ecx*8],al
    2a29:	05 00 00 18 10       	add    eax,0x10180000
    2a2e:	d7                   	xlat   BYTE PTR ds:[ebx]
    2a2f:	04 00                	add    al,0x0
    2a31:	00 02                	add    BYTE PTR [edx],al
    2a33:	91                   	xchg   ecx,eax
    2a34:	00 04 0c             	add    BYTE PTR [esp+ecx*1],al
    2a37:	06                   	push   es
    2a38:	00 00                	add    BYTE PTR [eax],al
    2a3a:	18 22                	sbb    BYTE PTR [edx],ah
    2a3c:	ac                   	lods   al,BYTE PTR ds:[esi]
    2a3d:	09 00                	or     DWORD PTR [eax],eax
    2a3f:	00 02                	add    BYTE PTR [edx],al
    2a41:	91                   	xchg   ecx,eax
    2a42:	04 08                	add    al,0x8
    2a44:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    2a47:	00 18                	add    BYTE PTR [eax],bl
    2a49:	2f                   	das
    2a4a:	2d 00 00 00 7d       	sub    eax,0x7d000000
    2a4f:	15 00 00 6f 15       	adc    eax,0x156f0000
    2a54:	00 00                	add    BYTE PTR [eax],al
    2a56:	05 64 73 74 00       	add    eax,0x747364
    2a5b:	1a 12                	sbb    dl,BYTE PTR [edx]
    2a5d:	d9 04 00             	fld    DWORD PTR [eax+eax*1]
    2a60:	00 ce                	add    dh,cl
    2a62:	15 00 00 b8 15       	adc    eax,0x15b80000
    2a67:	00 00                	add    BYTE PTR [eax],al
    2a69:	05 73 72 63 00       	add    eax,0x637273
    2a6e:	1b 18                	sbb    ebx,DWORD PTR [eax]
    2a70:	b2 09                	mov    dl,0x9
    2a72:	00 00                	add    BYTE PTR [eax],al
    2a74:	57                   	push   edi
    2a75:	16                   	push   ss
    2a76:	00 00                	add    BYTE PTR [eax],al
    2a78:	41                   	inc    ecx
    2a79:	16                   	push   ss
    2a7a:	00 00                	add    BYTE PTR [eax],al
    2a7c:	06                   	push   es
    2a7d:	38 01                	cmp    BYTE PTR [ecx],al
    2a7f:	00 00                	add    BYTE PTR [eax],al
    2a81:	f7 01 00 00 05 03    	test   DWORD PTR [ecx],0x3050000
    2a87:	4c                   	dec    esp
    2a88:	aa                   	stos   BYTE PTR es:[edi],al
    2a89:	04 08                	add    al,0x8
    2a8b:	03 41 97             	add    eax,DWORD PTR [ecx-0x69]
    2a8e:	04 08                	add    al,0x8
    2a90:	40                   	inc    eax
    2a91:	00 00                	add    BYTE PTR [eax],al
    2a93:	00 5f 0c             	add    BYTE PTR [edi+0xc],bl
    2a96:	00 00                	add    BYTE PTR [eax],al
    2a98:	01 02                	add    DWORD PTR [edx],eax
    2a9a:	74 00                	je     2a9c <__executable_start-0x80455f8>
    2a9c:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2a9f:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2aa3:	ff 22                	jmp    DWORD PTR [edx]
    2aa5:	01 02                	add    DWORD PTR [edx],eax
    2aa7:	74 04                	je     2aad <__executable_start-0x80455e7>
    2aa9:	01 4d 01             	add    DWORD PTR [ebp+0x1],ecx
    2aac:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    2ab0:	73 00                	jae    2ab2 <__executable_start-0x80455e2>
    2ab2:	03 4c fa ff          	add    ecx,DWORD PTR [edx+edi*8-0x1]
    2ab6:	ff 22                	jmp    DWORD PTR [edx]
    2ab8:	01 02                	add    DWORD PTR [edx],eax
    2aba:	74 0c                	je     2ac8 <__executable_start-0x80455cc>
    2abc:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2abf:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2ac5:	01 02                	add    DWORD PTR [edx],eax
    2ac7:	74 10                	je     2ad9 <__executable_start-0x80455bb>
    2ac9:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2acc:	03 1c fc             	add    ebx,DWORD PTR [esp+edi*8]
    2acf:	ff                   	(bad)
    2ad0:	ff 22                	jmp    DWORD PTR [edx]
    2ad2:	00 02                	add    BYTE PTR [edx],al
    2ad4:	77 97                	ja     2a6d <__executable_start-0x8045627>
    2ad6:	04 08                	add    al,0x8
    2ad8:	40                   	inc    eax
    2ad9:	00 00                	add    BYTE PTR [eax],al
    2adb:	00 01                	add    BYTE PTR [ecx],al
    2add:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    2ae1:	73 00                	jae    2ae3 <__executable_start-0x80455b1>
    2ae3:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2ae7:	ff 22                	jmp    DWORD PTR [edx]
    2ae9:	01 02                	add    DWORD PTR [edx],eax
    2aeb:	74 04                	je     2af1 <__executable_start-0x80455a3>
    2aed:	01 4e 01             	add    DWORD PTR [esi+0x1],ecx
    2af0:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    2af4:	73 00                	jae    2af6 <__executable_start-0x804559e>
    2af6:	03 4c fa ff          	add    ecx,DWORD PTR [edx+edi*8-0x1]
    2afa:	ff 22                	jmp    DWORD PTR [edx]
    2afc:	01 02                	add    DWORD PTR [edx],eax
    2afe:	74 0c                	je     2b0c <__executable_start-0x8045588>
    2b00:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2b03:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2b09:	01 02                	add    DWORD PTR [edx],eax
    2b0b:	74 10                	je     2b1d <__executable_start-0x8045577>
    2b0d:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2b10:	03 5c fc ff          	add    ebx,DWORD PTR [esp+edi*8-0x1]
    2b14:	ff 22                	jmp    DWORD PTR [edx]
    2b16:	00 00                	add    BYTE PTR [eax],al
    2b18:	22 11                	and    dl,BYTE PTR [ecx]
    2b1a:	06                   	push   es
    2b1b:	00 00                	add    BYTE PTR [eax],al
    2b1d:	01 07                	add    DWORD PTR [edi],eax
    2b1f:	01 d7                	add    edi,edx
    2b21:	04 00                	add    al,0x0
    2b23:	00 f0                	add    al,dh
    2b25:	95                   	xchg   ebp,eax
    2b26:	04 08                	add    al,0x8
    2b28:	be 00 00 00 01       	mov    esi,0x1000000
    2b2d:	9c                   	pushf
    2b2e:	04 cb                	add    al,0xcb
    2b30:	05 00 00 07 0f       	add    eax,0xf070000
    2b35:	d7                   	xlat   BYTE PTR ds:[ebx]
    2b36:	04 00                	add    al,0x0
    2b38:	00 02                	add    BYTE PTR [edx],al
    2b3a:	91                   	xchg   ecx,eax
    2b3b:	00 04 0c             	add    BYTE PTR [esp+ecx*1],al
    2b3e:	06                   	push   es
    2b3f:	00 00                	add    BYTE PTR [eax],al
    2b41:	07                   	pop    es
    2b42:	21 ac 09 00 00 02 91 	and    DWORD PTR [ecx+ecx*1-0x6efe0000],ebp
    2b49:	04 08                	add    al,0x8
    2b4b:	31 04 00             	xor    DWORD PTR [eax+eax*1],eax
    2b4e:	00 07                	add    BYTE PTR [edi],al
    2b50:	2e 2d 00 00 00 cc    	cs sub eax,0xcc000000
    2b56:	16                   	push   ss
    2b57:	00 00                	add    BYTE PTR [eax],al
    2b59:	c4 16                	les    edx,FWORD PTR [esi]
    2b5b:	00 00                	add    BYTE PTR [eax],al
    2b5d:	05 64 73 74 00       	add    eax,0x747364
    2b62:	09 12                	or     DWORD PTR [edx],edx
    2b64:	d9 04 00             	fld    DWORD PTR [eax+eax*1]
    2b67:	00 ec                	add    ah,ch
    2b69:	16                   	push   ss
    2b6a:	00 00                	add    BYTE PTR [eax],al
    2b6c:	e6 16                	out    0x16,al
    2b6e:	00 00                	add    BYTE PTR [eax],al
    2b70:	05 73 72 63 00       	add    eax,0x637273
    2b75:	0a 18                	or     bl,BYTE PTR [eax]
    2b77:	b2 09                	mov    dl,0x9
    2b79:	00 00                	add    BYTE PTR [eax],al
    2b7b:	05 17 00 00 fd       	add    eax,0xfd000017
    2b80:	16                   	push   ss
    2b81:	00 00                	add    BYTE PTR [eax],al
    2b83:	06                   	push   es
    2b84:	38 01                	cmp    BYTE PTR [ecx],al
    2b86:	00 00                	add    BYTE PTR [eax],al
    2b88:	1d 04 00 00 05       	sbb    eax,0x5000004
    2b8d:	03 54 aa 04          	add    edx,DWORD PTR [edx+ebp*4+0x4]
    2b91:	08 03                	or     BYTE PTR [ebx],al
    2b93:	78 96                	js     2b2b <__executable_start-0x8045569>
    2b95:	04 08                	add    al,0x8
    2b97:	40                   	inc    eax
    2b98:	00 00                	add    BYTE PTR [eax],al
    2b9a:	00 66 0d             	add    BYTE PTR [esi+0xd],ah
    2b9d:	00 00                	add    BYTE PTR [eax],al
    2b9f:	01 02                	add    DWORD PTR [edx],eax
    2ba1:	74 00                	je     2ba3 <__executable_start-0x80454f1>
    2ba3:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2ba6:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2baa:	ff 22                	jmp    DWORD PTR [edx]
    2bac:	01 02                	add    DWORD PTR [edx],eax
    2bae:	74 04                	je     2bb4 <__executable_start-0x80454e0>
    2bb0:	01 3c 01             	add    DWORD PTR [ecx+eax*1],edi
    2bb3:	02 74 08 08          	add    dh,BYTE PTR [eax+ecx*1+0x8]
    2bb7:	73 00                	jae    2bb9 <__executable_start-0x80454db>
    2bb9:	03 54 fa ff          	add    edx,DWORD PTR [edx+edi*8-0x1]
    2bbd:	ff 22                	jmp    DWORD PTR [edx]
    2bbf:	01 02                	add    DWORD PTR [edx],eax
    2bc1:	74 0c                	je     2bcf <__executable_start-0x80454c5>
    2bc3:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2bc6:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2bcc:	01 02                	add    DWORD PTR [edx],eax
    2bce:	74 10                	je     2be0 <__executable_start-0x80454b4>
    2bd0:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2bd3:	03 1c fc             	add    ebx,DWORD PTR [esp+edi*8]
    2bd6:	ff                   	(bad)
    2bd7:	ff 22                	jmp    DWORD PTR [edx]
    2bd9:	00 02                	add    BYTE PTR [edx],al
    2bdb:	ae                   	scas   al,BYTE PTR es:[edi]
    2bdc:	96                   	xchg   esi,eax
    2bdd:	04 08                	add    al,0x8
    2bdf:	40                   	inc    eax
    2be0:	00 00                	add    BYTE PTR [eax],al
    2be2:	00 01                	add    BYTE PTR [ecx],al
    2be4:	02 74 00 08          	add    dh,BYTE PTR [eax+eax*1+0x8]
    2be8:	73 00                	jae    2bea <__executable_start-0x80454aa>
    2bea:	03 4c fc ff          	add    ecx,DWORD PTR [esp+edi*8-0x1]
    2bee:	ff 22                	jmp    DWORD PTR [edx]
    2bf0:	01 02                	add    DWORD PTR [edx],eax
    2bf2:	74 04                	je     2bf8 <__executable_start-0x804549c>
    2bf4:	01 3d 01 02 74 08    	add    DWORD PTR ds:0x8740201,edi
    2bfa:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2bfd:	03 54 fa ff          	add    edx,DWORD PTR [edx+edi*8-0x1]
    2c01:	ff 22                	jmp    DWORD PTR [edx]
    2c03:	01 02                	add    DWORD PTR [edx],eax
    2c05:	74 0c                	je     2c13 <__executable_start-0x8045481>
    2c07:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2c0a:	03 35 fc ff ff 22    	add    esi,DWORD PTR ds:0x22fffffc
    2c10:	01 02                	add    DWORD PTR [edx],eax
    2c12:	74 10                	je     2c24 <__executable_start-0x8045470>
    2c14:	08 73 00             	or     BYTE PTR [ebx+0x0],dh
    2c17:	03 5c fc ff          	add    ebx,DWORD PTR [esp+edi*8-0x1]
    2c1b:	ff 22                	jmp    DWORD PTR [edx]
    2c1d:	00 00                	add    BYTE PTR [eax],al
    2c1f:	00 75 05             	add    BYTE PTR [ebp+0x5],dh
    2c22:	00 00                	add    BYTE PTR [eax],al
    2c24:	05 00 01 04 f9       	add    eax,0xf9040100
    2c29:	0c 00                	or     al,0x0
    2c2b:	00 13                	add    BYTE PTR [ebx],dl
    2c2d:	0e                   	push   cs
    2c2e:	00 00                	add    BYTE PTR [eax],al
    2c30:	00 1d 22 01 00 00    	add    BYTE PTR ds:0x122,bl
    2c36:	00 00                	add    BYTE PTR [eax],al
    2c38:	00 00                	add    BYTE PTR [eax],al
    2c3a:	83 9f 04 08 12 03 00 	sbb    DWORD PTR [edi+0x3120804],0x0
    2c41:	00 a8 18 00 00 04    	add    BYTE PTR [eax+0x4000018],ch
    2c47:	08 07                	or     BYTE PTR [edi],al
    2c49:	b3 00                	mov    bl,0x0
    2c4b:	00 00                	add    BYTE PTR [eax],al
    2c4d:	04 04                	add    al,0x4
    2c4f:	07                   	pop    es
    2c50:	bd 00 00 00 04       	mov    ebp,0x4000000
    2c55:	01 06                	add    DWORD PTR [esi],eax
    2c57:	cc                   	int3
    2c58:	00 00                	add    BYTE PTR [eax],al
    2c5a:	00 04 02             	add    BYTE PTR [edx+eax*1],al
    2c5d:	05 f5 00 00 00       	add    eax,0xf5
    2c62:	0b 59 03             	or     ebx,DWORD PTR [ecx+0x3]
    2c65:	00 00                	add    BYTE PTR [eax],al
    2c67:	0c 14                	or     al,0x14
    2c69:	4d                   	dec    ebp
    2c6a:	00 00                	add    BYTE PTR [eax],al
    2c6c:	00 14 04             	add    BYTE PTR [esp+eax*1],dl
    2c6f:	05 69 6e 74 00       	add    eax,0x746e69
    2c74:	0b 91 03 00 00 10    	or     edx,DWORD PTR [ecx+0x10000003]
    2c7a:	1e                   	push   ds
    2c7b:	5f                   	pop    edi
    2c7c:	00 00                	add    BYTE PTR [eax],al
    2c7e:	00 04 08             	add    BYTE PTR [eax+ecx*1],al
    2c81:	05 00 00 00 00       	add    eax,0x0
    2c86:	04 01                	add    al,0x1
    2c88:	08 ca                	or     dl,cl
    2c8a:	00 00                	add    BYTE PTR [eax],al
    2c8c:	00 04 02             	add    BYTE PTR [edx+eax*1],al
    2c8f:	07                   	pop    es
    2c90:	d8 00                	fadd   DWORD PTR [eax]
    2c92:	00 00                	add    BYTE PTR [eax],al
    2c94:	0b 58 03             	or     ebx,DWORD PTR [eax+0x3]
    2c97:	00 00                	add    BYTE PTR [eax],al
    2c99:	1a 16                	sbb    dl,BYTE PTR [esi]
    2c9b:	2d 00 00 00 0b       	sub    eax,0xb000000
    2ca0:	90                   	nop
    2ca1:	03 00                	add    eax,DWORD PTR [eax]
    2ca3:	00 1d 20 26 00 00    	add    BYTE PTR ds:0x2620,bl
    2ca9:	00 09                	add    BYTE PTR [ecx],cl
    2cab:	61                   	popa
    2cac:	06                   	push   es
    2cad:	00 00                	add    BYTE PTR [eax],al
    2caf:	c2 26 00             	ret    0x26
    2cb2:	00 00                	add    BYTE PTR [eax],al
    2cb4:	2f                   	das
    2cb5:	a2 04 08 66 00       	mov    ds:0x660804,al
    2cba:	00 00                	add    BYTE PTR [eax],al
    2cbc:	01 9c eb 00 00 00 07 	add    DWORD PTR [ebx+ebp*8+0x7000000],ebx
    2cc3:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2cc4:	00 c2                	add    dl,al
    2cc6:	22 26                	and    ah,BYTE PTR [esi]
    2cc8:	00 00                	add    BYTE PTR [eax],al
    2cca:	00 02                	add    BYTE PTR [edx],al
    2ccc:	91                   	xchg   ecx,eax
    2ccd:	00 05 64 00 c2 38    	add    BYTE PTR ds:0x38c20064,al
    2cd3:	26 00 00             	add    BYTE PTR es:[eax],al
    2cd6:	00 33                	add    BYTE PTR [ebx],dh
    2cd8:	17                   	pop    ss
    2cd9:	00 00                	add    BYTE PTR [eax],al
    2cdb:	2f                   	das
    2cdc:	17                   	pop    ss
    2cdd:	00 00                	add    BYTE PTR [eax],al
    2cdf:	05 72 00 c2 4f       	add    eax,0x4fc20072
    2ce4:	eb 00                	jmp    2ce6 <__executable_start-0x80453ae>
    2ce6:	00 00                	add    BYTE PTR [eax],al
    2ce8:	48                   	dec    eax
    2ce9:	17                   	pop    ss
    2cea:	00 00                	add    BYTE PTR [eax],al
    2cec:	44                   	inc    esp
    2ced:	17                   	pop    ss
    2cee:	00 00                	add    BYTE PTR [eax],al
    2cf0:	06                   	push   es
    2cf1:	71 00                	jno    2cf3 <__executable_start-0x80453a1>
    2cf3:	c4 16                	les    edx,FWORD PTR [esi]
    2cf5:	26 00 00             	add    BYTE PTR es:[eax],al
    2cf8:	00 63 17             	add    BYTE PTR [ebx+0x17],ah
    2cfb:	00 00                	add    BYTE PTR [eax],al
    2cfd:	59                   	pop    ecx
    2cfe:	17                   	pop    ss
    2cff:	00 00                	add    BYTE PTR [eax],al
    2d01:	0a 5c a2 04          	or     bl,BYTE PTR [edx+eiz*4+0x4]
    2d05:	08 6f 03             	or     BYTE PTR [edi+0x3],ch
    2d08:	00 00                	add    BYTE PTR [eax],al
    2d0a:	00 15 04 26 00 00    	add    BYTE PTR ds:0x2604,dl
    2d10:	00 09                	add    BYTE PTR [ecx],cl
    2d12:	00 04 00             	add    BYTE PTR [eax+eax*1],al
    2d15:	00 bb 26 00 00 00    	add    BYTE PTR [ebx+0x26],bh
    2d1b:	f1                   	int1
    2d1c:	a1 04 08 3e 00       	mov    eax,ds:0x3e0804
    2d21:	00 00                	add    BYTE PTR [eax],al
    2d23:	01 9c 5f 01 00 00 07 	add    DWORD PTR [edi+ebx*2+0x7000001],ebx
    2d2a:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2d2b:	00 bb 1f 26 00 00    	add    BYTE PTR [ebx+0x261f],bh
    2d31:	00 02                	add    BYTE PTR [edx],al
    2d33:	91                   	xchg   ecx,eax
    2d34:	00 05 64 00 bb 35    	add    BYTE PTR ds:0x35bb0064,al
    2d3a:	26 00 00             	add    BYTE PTR es:[eax],al
    2d3d:	00 a6 17 00 00 a2    	add    BYTE PTR [esi-0x5dffffe9],ah
    2d43:	17                   	pop    ss
    2d44:	00 00                	add    BYTE PTR [eax],al
    2d46:	11 4e 03             	adc    DWORD PTR [esi+0x3],ecx
    2d49:	00 00                	add    BYTE PTR [eax],al
    2d4b:	03 a2 04 08 01 03    	add    esp,DWORD PTR [edx+0x3010804]
    2d51:	a2 04 08 1d 00       	mov    ds:0x1d0804,al
    2d56:	00 00                	add    BYTE PTR [eax],al
    2d58:	bd 0a 01 65 03       	mov    ebp,0x365010a
    2d5d:	00 00                	add    BYTE PTR [eax],al
    2d5f:	b9 17 00 00 b7       	mov    ecx,0xb7000017
    2d64:	17                   	pop    ss
    2d65:	00 00                	add    BYTE PTR [eax],al
    2d67:	01 5c 03 00          	add    DWORD PTR [ebx+eax*1+0x0],ebx
    2d6b:	00 c9                	add    cl,cl
    2d6d:	17                   	pop    ss
    2d6e:	00 00                	add    BYTE PTR [eax],al
    2d70:	c7                   	(bad)
    2d71:	17                   	pop    ss
    2d72:	00 00                	add    BYTE PTR [eax],al
    2d74:	0a 17                	or     dl,BYTE PTR [edi]
    2d76:	a2 04 08 6f 03       	mov    ds:0x36f0804,al
    2d7b:	00 00                	add    BYTE PTR [eax],al
    2d7d:	00 00                	add    BYTE PTR [eax],al
    2d7f:	09 5d 05             	or     DWORD PTR [ebp+0x5],ebx
    2d82:	00 00                	add    BYTE PTR [eax],al
    2d84:	b4 26                	mov    ah,0x26
    2d86:	00 00                	add    BYTE PTR [eax],al
    2d88:	00 cf                	add    bh,cl
    2d8a:	a1 04 08 22 00       	mov    eax,ds:0x220804
    2d8f:	00 00                	add    BYTE PTR [eax],al
    2d91:	01 9c 9e 01 00 00 07 	add    DWORD PTR [esi+ebx*4+0x7000001],ebx
    2d98:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2d99:	00 b4 1f 26 00 00 00 	add    BYTE PTR [edi+ebx*1+0x26],dh
    2da0:	02 91 00 05 64 00    	add    dl,BYTE PTR [ecx+0x640500]
    2da6:	b4 35                	mov    ah,0x35
    2da8:	26 00 00             	add    BYTE PTR es:[eax],al
    2dab:	00 db                	add    bl,bl
    2dad:	17                   	pop    ss
    2dae:	00 00                	add    BYTE PTR [eax],al
    2db0:	d7                   	xlat   BYTE PTR ds:[ebx]
    2db1:	17                   	pop    ss
    2db2:	00 00                	add    BYTE PTR [eax],al
    2db4:	0a ed                	or     ch,ch
    2db6:	a1 04 08 6f 03       	mov    eax,ds:0x36f0804
    2dbb:	00 00                	add    BYTE PTR [eax],al
    2dbd:	00 09                	add    BYTE PTR [ecx],cl
    2dbf:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2dc0:	06                   	push   es
    2dc1:	00 00                	add    BYTE PTR [eax],al
    2dc3:	ad                   	lods   eax,DWORD PTR ds:[esi]
    2dc4:	5f                   	pop    edi
    2dc5:	00 00                	add    BYTE PTR [eax],al
    2dc7:	00 4f a1             	add    BYTE PTR [edi-0x5f],cl
    2dca:	04 08                	add    al,0x8
    2dcc:	80 00 00             	add    BYTE PTR [eax],0x0
    2dcf:	00 01                	add    BYTE PTR [ecx],al
    2dd1:	9c                   	pushf
    2dd2:	58                   	pop    eax
    2dd3:	02 00                	add    al,BYTE PTR [eax]
    2dd5:	00 07                	add    BYTE PTR [edi],al
    2dd7:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2dd8:	00 ad 15 5f 00 00    	add    BYTE PTR [ebp+0x5f15],ch
    2dde:	00 02                	add    BYTE PTR [edx],al
    2de0:	91                   	xchg   ecx,eax
    2de1:	00 05 64 00 ad 22    	add    BYTE PTR ds:0x22ad0064,al
    2de7:	5f                   	pop    edi
    2de8:	00 00                	add    BYTE PTR [eax],al
    2dea:	00 f2                	add    dl,dh
    2dec:	17                   	pop    ss
    2ded:	00 00                	add    BYTE PTR [eax],al
    2def:	ec                   	in     al,dx
    2df0:	17                   	pop    ss
    2df1:	00 00                	add    BYTE PTR [eax],al
    2df3:	0c ee                	or     al,0xee
    2df5:	02 00                	add    al,BYTE PTR [eax]
    2df7:	00 70 a1             	add    BYTE PTR [eax-0x5f],dh
    2dfa:	04 08                	add    al,0x8
    2dfc:	01 de                	add    esi,ebx
    2dfe:	00 00                	add    BYTE PTR [eax],al
    2e00:	00 af 0a 01 05 03    	add    BYTE PTR [edi+0x305010a],ch
    2e06:	00 00                	add    BYTE PTR [eax],al
    2e08:	0f 18 00             	prefetchnta BYTE PTR [eax]
    2e0b:	00 0b                	add    BYTE PTR [ebx],cl
    2e0d:	18 00                	sbb    BYTE PTR [eax],al
    2e0f:	00 01                	add    BYTE PTR [ecx],al
    2e11:	fc                   	cld
    2e12:	02 00                	add    al,BYTE PTR [eax]
    2e14:	00 24 18             	add    BYTE PTR [eax+ebx*1],ah
    2e17:	00 00                	add    BYTE PTR [eax],al
    2e19:	20 18                	and    BYTE PTR [eax],bl
    2e1b:	00 00                	add    BYTE PTR [eax],al
    2e1d:	0c 0f                	or     al,0xf
    2e1f:	03 00                	add    eax,DWORD PTR [eax]
    2e21:	00 73 a1             	add    BYTE PTR [ebx-0x5f],dh
    2e24:	04 08                	add    al,0x8
    2e26:	00 e9                	add    cl,ch
    2e28:	00 00                	add    BYTE PTR [eax],al
    2e2a:	00 99 12 01 26 03    	add    BYTE PTR [ecx+0x3260112],bl
    2e30:	00 00                	add    BYTE PTR [eax],al
    2e32:	41                   	inc    ecx
    2e33:	18 00                	sbb    BYTE PTR [eax],al
    2e35:	00 3d 18 00 00 01    	add    BYTE PTR ds:0x1000018,bh
    2e3b:	1d 03 00 00 56       	sbb    eax,0x56000003
    2e40:	18 00                	sbb    BYTE PTR [eax],al
    2e42:	00 52 18             	add    BYTE PTR [edx+0x18],dl
    2e45:	00 00                	add    BYTE PTR [eax],al
    2e47:	0d e9 00 00 00       	or     eax,0xe9
    2e4c:	02 2f                	add    ch,BYTE PTR [edi]
    2e4e:	03 00                	add    eax,DWORD PTR [eax]
    2e50:	00 73 18             	add    BYTE PTR [ebx+0x18],dh
    2e53:	00 00                	add    BYTE PTR [eax],al
    2e55:	6f                   	outs   dx,DWORD PTR ds:[esi]
    2e56:	18 00                	sbb    BYTE PTR [eax],al
    2e58:	00 02                	add    BYTE PTR [edx],al
    2e5a:	39 03                	cmp    DWORD PTR [ebx],eax
    2e5c:	00 00                	add    BYTE PTR [eax],al
    2e5e:	8e 18                	mov    ds,WORD PTR [eax]
    2e60:	00 00                	add    BYTE PTR [eax],al
    2e62:	8c 18                	mov    WORD PTR [eax],ds
    2e64:	00 00                	add    BYTE PTR [eax],al
    2e66:	0e                   	push   cs
    2e67:	43                   	inc    ebx
    2e68:	03 00                	add    eax,DWORD PTR [eax]
    2e6a:	00 0a                	add    BYTE PTR [edx],cl
    2e6c:	97                   	xchg   edi,eax
    2e6d:	a1 04 08 6f 03       	mov    eax,ds:0x36f0804
    2e72:	00 00                	add    BYTE PTR [eax],al
    2e74:	00 00                	add    BYTE PTR [eax],al
    2e76:	00 00                	add    BYTE PTR [eax],al
    2e78:	09 7c 06 00          	or     DWORD PTR [esi+eax*1+0x0],edi
    2e7c:	00 a6 5f 00 00 00    	add    BYTE PTR [esi+0x5f],ah
    2e82:	e1 a0                	loope  2e24 <__executable_start-0x8045270>
    2e84:	04 08                	add    al,0x8
    2e86:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2e87:	00 00                	add    BYTE PTR [eax],al
    2e89:	00 01                	add    BYTE PTR [ecx],al
    2e8b:	9c                   	pushf
    2e8c:	ee                   	out    dx,al
    2e8d:	02 00                	add    al,BYTE PTR [eax]
    2e8f:	00 07                	add    BYTE PTR [edi],al
    2e91:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2e92:	00 a6 15 5f 00 00    	add    BYTE PTR [esi+0x5f15],ah
    2e98:	00 02                	add    BYTE PTR [edx],al
    2e9a:	91                   	xchg   ecx,eax
    2e9b:	00 05 64 00 a6 22    	add    BYTE PTR ds:0x22a60064,al
    2ea1:	5f                   	pop    edi
    2ea2:	00 00                	add    BYTE PTR [eax],al
    2ea4:	00 a1 18 00 00 9b    	add    BYTE PTR [ecx-0x64ffffe8],ah
    2eaa:	18 00                	sbb    BYTE PTR [eax],al
    2eac:	00 0c 0f             	add    BYTE PTR [edi+ecx*1],cl
    2eaf:	03 00                	add    eax,DWORD PTR [eax]
    2eb1:	00 02                	add    BYTE PTR [edx],al
    2eb3:	a1 04 08 01 d3       	mov    eax,ds:0xd3010804
    2eb8:	00 00                	add    BYTE PTR [eax],al
    2eba:	00 a8 0a 01 26 03    	add    BYTE PTR [eax+0x326010a],ch
    2ec0:	00 00                	add    BYTE PTR [eax],al
    2ec2:	c0 18 00             	rcr    BYTE PTR [eax],0x0
    2ec5:	00 ba 18 00 00 01    	add    BYTE PTR [edx+0x1000018],bh
    2ecb:	1d 03 00 00 dd       	sbb    eax,0xdd000003
    2ed0:	18 00                	sbb    BYTE PTR [eax],al
    2ed2:	00 d9                	add    cl,bl
    2ed4:	18 00                	sbb    BYTE PTR [eax],al
    2ed6:	00 0d d3 00 00 00    	add    BYTE PTR ds:0xd3,cl
    2edc:	02 2f                	add    ch,BYTE PTR [edi]
    2ede:	03 00                	add    eax,DWORD PTR [eax]
    2ee0:	00 fa                	add    dl,bh
    2ee2:	18 00                	sbb    BYTE PTR [eax],al
    2ee4:	00 f6                	add    dh,dh
    2ee6:	18 00                	sbb    BYTE PTR [eax],al
    2ee8:	00 02                	add    BYTE PTR [edx],al
    2eea:	39 03                	cmp    DWORD PTR [ebx],eax
    2eec:	00 00                	add    BYTE PTR [eax],al
    2eee:	15 19 00 00 13       	adc    eax,0x13000019
    2ef3:	19 00                	sbb    DWORD PTR [eax],eax
    2ef5:	00 16                	add    BYTE PTR [esi],dl
    2ef7:	43                   	inc    ebx
    2ef8:	03 00                	add    eax,DWORD PTR [eax]
    2efa:	00 06                	add    BYTE PTR [esi],al
    2efc:	51                   	push   ecx
    2efd:	93                   	xchg   ebx,eax
    2efe:	04 53                	add    al,0x53
    2f00:	93                   	xchg   ebx,eax
    2f01:	04 0a                	add    al,0xa
    2f03:	22 a1 04 08 6f 03    	and    ah,BYTE PTR [ecx+0x36f0804]
    2f09:	00 00                	add    BYTE PTR [eax],al
    2f0b:	00 00                	add    BYTE PTR [eax],al
    2f0d:	00 0f                	add    BYTE PTR [edi],cl
    2f0f:	99                   	cdq
    2f10:	06                   	push   es
    2f11:	00 00                	add    BYTE PTR [eax],al
    2f13:	97                   	xchg   edi,eax
    2f14:	42                   	inc    edx
    2f15:	00 00                	add    BYTE PTR [eax],al
    2f17:	00 0f                	add    BYTE PTR [edi],cl
    2f19:	03 00                	add    eax,DWORD PTR [eax]
    2f1b:	00 03                	add    BYTE PTR [ebx],al
    2f1d:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2f1e:	00 97 11 54 00 00    	add    BYTE PTR [edi+0x5411],dl
    2f24:	00 03                	add    BYTE PTR [ebx],al
    2f26:	64 00 97 1c 54 00 00 	add    BYTE PTR fs:[edi+0x541c],dl
    2f2d:	00 00                	add    BYTE PTR [eax],al
    2f2f:	0f a0                	push   fs
    2f31:	06                   	push   es
    2f32:	00 00                	add    BYTE PTR [eax],al
    2f34:	8c 54 00 00          	mov    WORD PTR [eax+eax*1+0x0],ss
    2f38:	00 4e 03             	add    BYTE PTR [esi+0x3],cl
    2f3b:	00 00                	add    BYTE PTR [eax],al
    2f3d:	03 6e 00             	add    ebp,DWORD PTR [esi+0x0]
    2f40:	8c 11                	mov    WORD PTR [ecx],ss
    2f42:	54                   	push   esp
    2f43:	00 00                	add    BYTE PTR [eax],al
    2f45:	00 03                	add    BYTE PTR [ebx],al
    2f47:	64 00 8c 1c 54 00 00 	add    BYTE PTR fs:[esp+ebx*1+0x54],cl
    2f4e:	00 
    2f4f:	10 5b 06             	adc    BYTE PTR [ebx+0x6],bl
    2f52:	00 00                	add    BYTE PTR [eax],al
    2f54:	8e 7f 00             	mov    ?,WORD PTR [edi+0x0]
    2f57:	00 00                	add    BYTE PTR [eax],al
    2f59:	10 a7 06 00 00 8f    	adc    BYTE PTR [edi-0x70fffffa],ah
    2f5f:	7f 00                	jg     2f61 <__executable_start-0x8045133>
    2f61:	00 00                	add    BYTE PTR [eax],al
    2f63:	10 8c 06 00 00 90 7f 	adc    BYTE PTR [esi+eax*1+0x7f900000],cl
    2f6a:	00 00                	add    BYTE PTR [eax],al
    2f6c:	00 00                	add    BYTE PTR [eax],al
    2f6e:	0f 92 06             	setb   BYTE PTR [esi]
    2f71:	00 00                	add    BYTE PTR [eax],al
    2f73:	84 74 00 00          	test   BYTE PTR [eax+eax*1+0x0],dh
    2f77:	00 6f 03             	add    BYTE PTR [edi+0x3],ch
    2f7a:	00 00                	add    BYTE PTR [eax],al
    2f7c:	03 6e 00             	add    ebp,DWORD PTR [esi+0x0]
    2f7f:	84 12                	test   BYTE PTR [edx],dl
    2f81:	7f 00                	jg     2f83 <__executable_start-0x8045111>
    2f83:	00 00                	add    BYTE PTR [eax],al
    2f85:	03 64 00 84          	add    esp,DWORD PTR [eax+eax*1-0x7c]
    2f89:	1e                   	push   ds
    2f8a:	7f 00                	jg     2f8c <__executable_start-0x8045108>
    2f8c:	00 00                	add    BYTE PTR [eax],al
    2f8e:	00 17                	add    BYTE PTR [edi],dl
    2f90:	85 06                	test   DWORD PTR [esi],eax
    2f92:	00 00                	add    BYTE PTR [eax],al
    2f94:	01 4e 01             	add    DWORD PTR [esi+0x1],ecx
    2f97:	7f 00                	jg     2f99 <__executable_start-0x80450fb>
    2f99:	00 00                	add    BYTE PTR [eax],al
    2f9b:	83 9f 04 08 5e 01 00 	sbb    DWORD PTR [edi+0x15e0804],0x0
    2fa2:	00 01                	add    BYTE PTR [ecx],al
    2fa4:	9c                   	pushf
    2fa5:	0e                   	push   cs
    2fa6:	05 00 00 05 6e       	add    eax,0x6e050000
    2fab:	00 4e 12             	add    BYTE PTR [esi+0x12],cl
    2fae:	7f 00                	jg     2fb0 <__executable_start-0x80450e4>
    2fb0:	00 00                	add    BYTE PTR [eax],al
    2fb2:	26 19 00             	sbb    DWORD PTR es:[eax],eax
    2fb5:	00 22                	add    BYTE PTR [edx],ah
    2fb7:	19 00                	sbb    DWORD PTR [eax],eax
    2fb9:	00 07                	add    BYTE PTR [edi],al
    2fbb:	64 00 4e 1e          	add    BYTE PTR fs:[esi+0x1e],cl
    2fbf:	7f 00                	jg     2fc1 <__executable_start-0x80450d3>
    2fc1:	00 00                	add    BYTE PTR [eax],al
    2fc3:	02 91 00 18 9f a0    	add    dl,BYTE PTR [ecx-0x5f60e800]
    2fc9:	04 08                	add    al,0x8
    2fcb:	2f                   	das
    2fcc:	00 00                	add    BYTE PTR [eax],al
    2fce:	00 4e 04             	add    BYTE PTR [esi+0x4],cl
    2fd1:	00 00                	add    BYTE PTR [eax],al
    2fd3:	06                   	push   es
    2fd4:	62 00                	bound  eax,QWORD PTR [eax]
    2fd6:	6a 10                	push   0x10
    2fd8:	7f 00                	jg     2fda <__executable_start-0x80450ba>
    2fda:	00 00                	add    BYTE PTR [eax],al
    2fdc:	3e 19 00             	sbb    DWORD PTR ds:[eax],eax
    2fdf:	00 3c 19             	add    BYTE PTR [ecx+ebx*1],bh
    2fe2:	00 00                	add    BYTE PTR [eax],al
    2fe4:	06                   	push   es
    2fe5:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2fe6:	31 00                	xor    DWORD PTR [eax],eax
    2fe8:	6b 10 74             	imul   edx,DWORD PTR [eax],0x74
    2feb:	00 00                	add    BYTE PTR [eax],al
    2fed:	00 53 19             	add    BYTE PTR [ebx+0x19],dl
    2ff0:	00 00                	add    BYTE PTR [eax],al
    2ff2:	4f                   	dec    edi
    2ff3:	19 00                	sbb    DWORD PTR [eax],eax
    2ff5:	00 06                	add    BYTE PTR [esi],al
    2ff7:	6e                   	outs   dx,BYTE PTR ds:[esi]
    2ff8:	30 00                	xor    BYTE PTR [eax],al
    2ffa:	6c                   	ins    BYTE PTR es:[edi],dx
    2ffb:	10 74 00 00          	adc    BYTE PTR [eax+eax*1+0x0],dh
    2fff:	00 65 19             	add    BYTE PTR [ebp+0x19],ah
    3002:	00 00                	add    BYTE PTR [eax],al
    3004:	63 19                	arpl   WORD PTR [ecx],ebx
    3006:	00 00                	add    BYTE PTR [eax],al
    3008:	06                   	push   es
    3009:	64 30 00             	xor    BYTE PTR fs:[eax],al
    300c:	6d                   	ins    DWORD PTR es:[edi],dx
    300d:	10 74 00 00          	adc    BYTE PTR [eax+eax*1+0x0],dh
    3011:	00 72 19             	add    BYTE PTR [edx+0x19],dh
    3014:	00 00                	add    BYTE PTR [eax],al
    3016:	6e                   	outs   dx,BYTE PTR ds:[esi]
    3017:	19 00                	sbb    DWORD PTR [eax],eax
    3019:	00 11                	add    BYTE PTR [ecx],dl
    301b:	32 05 00 00 c5 a0    	xor    al,BYTE PTR ds:0xa0c50000
    3021:	04 08                	add    al,0x8
    3023:	00 c5                	add    ch,al
    3025:	a0 04 08 03 00       	mov    al,ds:0x30804
    302a:	00 00                	add    BYTE PTR [eax],al
    302c:	6f                   	outs   dx,DWORD PTR ds:[esi]
    302d:	0e                   	push   cs
    302e:	01 48 05             	add    DWORD PTR [eax+0x5],ecx
    3031:	00 00                	add    BYTE PTR [eax],al
    3033:	84 19                	test   BYTE PTR [ecx],bl
    3035:	00 00                	add    BYTE PTR [eax],al
    3037:	82 19 00             	sbb    BYTE PTR [ecx],0x0
    303a:	00 12                	add    BYTE PTR [edx],dl
    303c:	3f                   	aas
    303d:	05 00 00 02 51       	add    eax,0x51020000
    3042:	05 00 00 8f 19       	add    eax,0x198f0000
    3047:	00 00                	add    BYTE PTR [eax],al
    3049:	8d 19                	lea    ebx,[ecx]
    304b:	00 00                	add    BYTE PTR [eax],al
    304d:	02 5b 05             	add    bl,BYTE PTR [ebx+0x5]
    3050:	00 00                	add    BYTE PTR [eax],al
    3052:	9b                   	fwait
    3053:	19 00                	sbb    DWORD PTR [eax],eax
    3055:	00 97 19 00 00 02    	add    BYTE PTR [edi+0x2000019],dl
    305b:	65 05 00 00 ad 19    	gs add eax,0x19ad0000
    3061:	00 00                	add    BYTE PTR [eax],al
    3063:	ab                   	stos   DWORD PTR es:[edi],eax
    3064:	19 00                	sbb    DWORD PTR [eax],eax
    3066:	00 0e                	add    BYTE PTR [esi],cl
    3068:	6e                   	outs   dx,BYTE PTR ds:[esi]
    3069:	05 00 00 00 00       	add    eax,0x0
    306e:	19 d7                	sbb    edi,edx
    3070:	9f                   	lahf
    3071:	04 08                	add    al,0x8
    3073:	c8 00 00 00          	enter  0x0,0x0
    3077:	08 64 31 00          	or     BYTE PTR [ecx+esi*1+0x0],ah
    307b:	79 14                	jns    3091 <__executable_start-0x8045003>
    307d:	74 00                	je     307f <__executable_start-0x8045015>
    307f:	00 00                	add    BYTE PTR [eax],al
    3081:	06                   	push   es
    3082:	73 00                	jae    3084 <__executable_start-0x8045010>
    3084:	7a 0f                	jp     3095 <__executable_start-0x8044fff>
    3086:	4d                   	dec    ebp
    3087:	00 00                	add    BYTE PTR [eax],al
    3089:	00 b7 19 00 00 b5    	add    BYTE PTR [edi-0x4affffe7],dh
    308f:	19 00                	sbb    DWORD PTR [eax],eax
    3091:	00 06                	add    BYTE PTR [esi],al
    3093:	71 00                	jno    3095 <__executable_start-0x8044fff>
    3095:	7b 14                	jnp    30ab <__executable_start-0x8044fe9>
    3097:	7f 00                	jg     3099 <__executable_start-0x8044ffb>
    3099:	00 00                	add    BYTE PTR [eax],al
    309b:	c1 19 00             	rcr    DWORD PTR [ecx],0x0
    309e:	00 bf 19 00 00 1a    	add    BYTE PTR [edi+0x1a000019],bh
    30a4:	0e                   	push   cs
    30a5:	05 00 00 d9 9f       	add    eax,0x9fd90000
    30aa:	04 08                	add    al,0x8
    30ac:	01 d9                	add    ecx,ebx
    30ae:	9f                   	lahf
    30af:	04 08                	add    al,0x8
    30b1:	44                   	inc    esp
    30b2:	00 00                	add    BYTE PTR [eax],al
    30b4:	00 01                	add    BYTE PTR [ecx],al
    30b6:	7a 13                	jp     30cb <__executable_start-0x8044fc9>
    30b8:	b7 04                	mov    bh,0x4
    30ba:	00 00                	add    BYTE PTR [eax],al
    30bc:	01 1f                	add    DWORD PTR [edi],ebx
    30be:	05 00 00 d0 19       	add    eax,0x19d00000
    30c3:	00 00                	add    BYTE PTR [eax],al
    30c5:	ce                   	into
    30c6:	19 00                	sbb    DWORD PTR [eax],eax
    30c8:	00 02                	add    BYTE PTR [edx],al
    30ca:	28 05 00 00 dd 19    	sub    BYTE PTR ds:0x19dd0000,al
    30d0:	00 00                	add    BYTE PTR [eax],al
    30d2:	d7                   	xlat   BYTE PTR ds:[ebx]
    30d3:	19 00                	sbb    DWORD PTR [eax],eax
    30d5:	00 00                	add    BYTE PTR [eax],al
    30d7:	0c 32                	or     al,0x32
    30d9:	05 00 00 1d a0       	add    eax,0xa01d0000
    30de:	04 08                	add    al,0x8
    30e0:	03 c8                	add    ecx,eax
    30e2:	00 00                	add    BYTE PTR [eax],al
    30e4:	00 7b 18             	add    BYTE PTR [ebx+0x18],bh
    30e7:	12 48 05             	adc    cl,BYTE PTR [eax+0x5]
    30ea:	00 00                	add    BYTE PTR [eax],al
    30ec:	01 3f                	add    DWORD PTR [edi],edi
    30ee:	05 00 00 f2 19       	add    eax,0x19f20000
    30f3:	00 00                	add    BYTE PTR [eax],al
    30f5:	f0 19 00             	lock sbb DWORD PTR [eax],eax
    30f8:	00 0d c8 00 00 00    	add    BYTE PTR ds:0xc8,cl
    30fe:	02 51 05             	add    dl,BYTE PTR [ecx+0x5]
    3101:	00 00                	add    BYTE PTR [eax],al
    3103:	05 1a 00 00 03       	add    eax,0x300001a
    3108:	1a 00                	sbb    al,BYTE PTR [eax]
    310a:	00 02                	add    BYTE PTR [edx],al
    310c:	5b                   	pop    ebx
    310d:	05 00 00 1d 1a       	add    eax,0x1a1d0000
    3112:	00 00                	add    BYTE PTR [eax],al
    3114:	1b 1a                	sbb    ebx,DWORD PTR [edx]
    3116:	00 00                	add    BYTE PTR [eax],al
    3118:	02 65 05             	add    ah,BYTE PTR [ebp+0x5]
    311b:	00 00                	add    BYTE PTR [eax],al
    311d:	34 1a                	xor    al,0x1a
    311f:	00 00                	add    BYTE PTR [eax],al
    3121:	32 1a                	xor    bl,BYTE PTR [edx]
    3123:	00 00                	add    BYTE PTR [eax],al
    3125:	0e                   	push   cs
    3126:	6e                   	outs   dx,BYTE PTR ds:[esi]
    3127:	05 00 00 00 00       	add    eax,0x0
    312c:	00 00                	add    BYTE PTR [eax],al
    312e:	1b 6e 6c             	sbb    ebp,DWORD PTR [esi+0x6c]
    3131:	7a 00                	jp     3133 <__executable_start-0x8044f61>
    3133:	01 2a                	add    DWORD PTR [edx],ebp
    3135:	01 4d 00             	add    DWORD PTR [ebp+0x0],ecx
    3138:	00 00                	add    BYTE PTR [eax],al
    313a:	01 32                	add    DWORD PTR [edx],esi
    313c:	05 00 00 03 78       	add    eax,0x78030000
    3141:	00 2a                	add    BYTE PTR [edx],ch
    3143:	0f 74 00             	pcmpeqb mm0,QWORD PTR [eax]
    3146:	00 00                	add    BYTE PTR [eax],al
    3148:	08 6e 00             	or     BYTE PTR [esi+0x0],ch
    314b:	31 07                	xor    DWORD PTR [edi],eax
    314d:	4d                   	dec    ebp
    314e:	00 00                	add    BYTE PTR [eax],al
    3150:	00 00                	add    BYTE PTR [eax],al
    3152:	1c 77                	sbb    al,0x77
    3154:	06                   	push   es
    3155:	00 00                	add    BYTE PTR [eax],al
    3157:	01 1a                	add    DWORD PTR [edx],ebx
    3159:	01 74 00 00          	add    DWORD PTR [eax+eax*1+0x0],esi
    315d:	00 03                	add    BYTE PTR [ebx],al
    315f:	03 6e 00             	add    ebp,DWORD PTR [esi+0x0]
    3162:	1a 10                	sbb    dl,BYTE PTR [eax]
    3164:	7f 00                	jg     3166 <__executable_start-0x8044f2e>
    3166:	00 00                	add    BYTE PTR [eax],al
    3168:	03 64 00 1a          	add    esp,DWORD PTR [eax+eax*1+0x1a]
    316c:	1c 74                	sbb    al,0x74
    316e:	00 00                	add    BYTE PTR [eax],al
    3170:	00 08                	add    BYTE PTR [eax],cl
    3172:	6e                   	outs   dx,BYTE PTR ds:[esi]
    3173:	31 00                	xor    DWORD PTR [eax],eax
    3175:	1c 0c                	sbb    al,0xc
    3177:	74 00                	je     3179 <__executable_start-0x8044f1b>
    3179:	00 00                	add    BYTE PTR [eax],al
    317b:	08 6e 30             	or     BYTE PTR [esi+0x30],ch
    317e:	00 1d 0c 74 00 00    	add    BYTE PTR ds:0x740c,bl
    3184:	00 08                	add    BYTE PTR [eax],cl
    3186:	71 00                	jno    3188 <__executable_start-0x8044f0c>
    3188:	1e                   	push   ds
    3189:	0c 74                	or     al,0x74
    318b:	00 00                	add    BYTE PTR [eax],al
    318d:	00 08                	add    BYTE PTR [eax],cl
    318f:	72 00                	jb     3191 <__executable_start-0x8044f03>
    3191:	1e                   	push   ds
    3192:	0f 74 00             	pcmpeqb mm0,QWORD PTR [eax]
    3195:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 24 00             	add    DWORD PTR [eax+eax*1],esp
   3:	0b 0b                	or     ecx,DWORD PTR [ebx]
   5:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
   8:	0e                   	push   cs
   9:	00 00                	add    BYTE PTR [eax],al
   b:	02 34 00             	add    dh,BYTE PTR [eax+eax*1]
   e:	03 08                	add    ecx,DWORD PTR [eax]
  10:	3a 21                	cmp    ah,BYTE PTR [ecx]
  12:	01 3b                	add    DWORD PTR [ebx],edi
  14:	0b 39                	or     edi,DWORD PTR [ecx]
  16:	21 05 49 13 3f 19    	and    DWORD PTR ds:0x193f1349,eax
  1c:	02 18                	add    bl,BYTE PTR [eax]
  1e:	00 00                	add    BYTE PTR [eax],al
  20:	03 34 00             	add    esi,DWORD PTR [eax+eax*1]
  23:	03 08                	add    ecx,DWORD PTR [eax]
  25:	3a 21                	cmp    ah,BYTE PTR [ecx]
  27:	01 3b                	add    DWORD PTR [ebx],edi
  29:	21 26                	and    DWORD PTR [esi],esp
  2b:	39 0b                	cmp    DWORD PTR [ebx],ecx
  2d:	49                   	dec    ecx
  2e:	13 02                	adc    eax,DWORD PTR [edx]
  30:	17                   	pop    ss
  31:	b7 42                	mov    bh,0x42
  33:	17                   	pop    ss
  34:	00 00                	add    BYTE PTR [eax],al
  36:	04 21                	add    al,0x21
  38:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
  3b:	2f                   	das
  3c:	21 ff                	and    edi,edi
  3e:	03 00                	add    eax,DWORD PTR [eax]
  40:	00 05 11 01 25 0e    	add    BYTE PTR ds:0xe250111,al
  46:	13 0b                	adc    ecx,DWORD PTR [ebx]
  48:	03 1f                	add    ebx,DWORD PTR [edi]
  4a:	1b 1f                	sbb    ebx,DWORD PTR [edi]
  4c:	11 01                	adc    DWORD PTR [ecx],eax
  4e:	12 06                	adc    al,BYTE PTR [esi]
  50:	10 17                	adc    BYTE PTR [edi],dl
  52:	00 00                	add    BYTE PTR [eax],al
  54:	06                   	push   es
  55:	24 00                	and    al,0x0
  57:	0b 0b                	or     ecx,DWORD PTR [ebx]
  59:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
  5c:	08 00                	or     BYTE PTR [eax],al
  5e:	00 07                	add    BYTE PTR [edi],al
  60:	01 01                	add    DWORD PTR [ecx],eax
  62:	49                   	dec    ecx
  63:	13 01                	adc    eax,DWORD PTR [ecx]
  65:	13 00                	adc    eax,DWORD PTR [eax]
  67:	00 08                	add    BYTE PTR [eax],cl
  69:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
  6c:	19 03                	sbb    DWORD PTR [ebx],eax
  6e:	0e                   	push   cs
  6f:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  71:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  73:	39 0b                	cmp    DWORD PTR [ebx],ecx
  75:	27                   	daa
  76:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
  7c:	01 13                	add    DWORD PTR [ebx],edx
  7e:	00 00                	add    BYTE PTR [eax],al
  80:	09 05 00 49 13 00    	or     DWORD PTR ds:0x134900,eax
  86:	00 0a                	add    BYTE PTR [edx],cl
  88:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
  8b:	19 03                	sbb    DWORD PTR [ebx],eax
  8d:	0e                   	push   cs
  8e:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  90:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  92:	39 0b                	cmp    DWORD PTR [ebx],ecx
  94:	27                   	daa
  95:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
  98:	11 01                	adc    DWORD PTR [ecx],eax
  9a:	12 06                	adc    al,BYTE PTR [esi]
  9c:	40                   	inc    eax
  9d:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
  a0:	00 00                	add    BYTE PTR [eax],al
  a2:	0b 48 00             	or     ecx,DWORD PTR [eax+0x0]
  a5:	7d 01                	jge    a8 <__executable_start-0x8047fec>
  a7:	7f 13                	jg     bc <__executable_start-0x8047fd8>
  a9:	00 00                	add    BYTE PTR [eax],al
  ab:	00 01                	add    BYTE PTR [ecx],al
  ad:	05 00 49 13 00       	add    eax,0x134900
  b2:	00 02                	add    BYTE PTR [edx],al
  b4:	0f 00 0b             	str    WORD PTR [ebx]
  b7:	21 04 49             	and    DWORD PTR [ecx+ecx*2],eax
  ba:	13 00                	adc    eax,DWORD PTR [eax]
  bc:	00 03                	add    BYTE PTR [ebx],al
  be:	05 00 03 0e 3a       	add    eax,0x3a0e0300
  c3:	21 01                	and    DWORD PTR [ecx],eax
  c5:	3b 21                	cmp    esp,DWORD PTR [ecx]
  c7:	07                   	pop    es
  c8:	39 0b                	cmp    DWORD PTR [ebx],ecx
  ca:	49                   	dec    ecx
  cb:	13 02                	adc    eax,DWORD PTR [edx]
  cd:	18 00                	sbb    BYTE PTR [eax],al
  cf:	00 04 11             	add    BYTE PTR [ecx+edx*1],al
  d2:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
  d8:	1f                   	pop    ds
  d9:	1b 1f                	sbb    ebx,DWORD PTR [edi]
  db:	11 01                	adc    DWORD PTR [ecx],eax
  dd:	12 06                	adc    al,BYTE PTR [esi]
  df:	10 17                	adc    BYTE PTR [edi],dl
  e1:	00 00                	add    BYTE PTR [eax],al
  e3:	05 24 00 0b 0b       	add    eax,0xb0b0024
  e8:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
  eb:	08 00                	or     BYTE PTR [eax],al
  ed:	00 06                	add    BYTE PTR [esi],al
  ef:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
  f2:	19 03                	sbb    DWORD PTR [ebx],eax
  f4:	0e                   	push   cs
  f5:	3a 0b                	cmp    cl,BYTE PTR [ebx]
  f7:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
  f9:	39 0b                	cmp    DWORD PTR [ebx],ecx
  fb:	27                   	daa
  fc:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
 102:	01 13                	add    DWORD PTR [ebx],edx
 104:	00 00                	add    BYTE PTR [eax],al
 106:	07                   	pop    es
 107:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 10a:	19 03                	sbb    DWORD PTR [ebx],eax
 10c:	0e                   	push   cs
 10d:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 10f:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 111:	39 0b                	cmp    DWORD PTR [ebx],ecx
 113:	27                   	daa
 114:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 117:	3c 19                	cmp    al,0x19
 119:	01 13                	add    DWORD PTR [ebx],edx
 11b:	00 00                	add    BYTE PTR [eax],al
 11d:	08 24 00             	or     BYTE PTR [eax+eax*1],ah
 120:	0b 0b                	or     ecx,DWORD PTR [ebx]
 122:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 125:	0e                   	push   cs
 126:	00 00                	add    BYTE PTR [eax],al
 128:	09 2e                	or     DWORD PTR [esi],ebp
 12a:	01 3f                	add    DWORD PTR [edi],edi
 12c:	19 03                	sbb    DWORD PTR [ebx],eax
 12e:	0e                   	push   cs
 12f:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 131:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 133:	39 0b                	cmp    DWORD PTR [ebx],ecx
 135:	27                   	daa
 136:	19 11                	sbb    DWORD PTR [ecx],edx
 138:	01 12                	add    DWORD PTR [edx],edx
 13a:	06                   	push   es
 13b:	40                   	inc    eax
 13c:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 13f:	00 00                	add    BYTE PTR [eax],al
 141:	0a 48 01             	or     cl,BYTE PTR [eax+0x1]
 144:	7d 01                	jge    147 <__executable_start-0x8047f4d>
 146:	7f 13                	jg     15b <__executable_start-0x8047f39>
 148:	01 13                	add    DWORD PTR [ebx],edx
 14a:	00 00                	add    BYTE PTR [eax],al
 14c:	0b 49 00             	or     ecx,DWORD PTR [ecx+0x0]
 14f:	02 18                	add    bl,BYTE PTR [eax]
 151:	7e 18                	jle    16b <__executable_start-0x8047f29>
 153:	00 00                	add    BYTE PTR [eax],al
 155:	0c 48                	or     al,0x48
 157:	00 7d 01             	add    BYTE PTR [ebp+0x1],bh
 15a:	7f 13                	jg     16f <__executable_start-0x8047f25>
 15c:	00 00                	add    BYTE PTR [eax],al
 15e:	00 01                	add    BYTE PTR [ecx],al
 160:	28 00                	sub    BYTE PTR [eax],al
 162:	03 0e                	add    ecx,DWORD PTR [esi]
 164:	1c 0b                	sbb    al,0xb
 166:	00 00                	add    BYTE PTR [eax],al
 168:	02 0b                	add    cl,BYTE PTR [ebx]
 16a:	01 11                	add    DWORD PTR [ecx],edx
 16c:	01 12                	add    DWORD PTR [edx],edx
 16e:	06                   	push   es
 16f:	00 00                	add    BYTE PTR [eax],al
 171:	03 2e                	add    ebp,DWORD PTR [esi]
 173:	01 3f                	add    DWORD PTR [edi],edi
 175:	19 03                	sbb    DWORD PTR [ebx],eax
 177:	0e                   	push   cs
 178:	3a 21                	cmp    ah,BYTE PTR [ecx]
 17a:	01 3b                	add    DWORD PTR [ebx],edi
 17c:	0b 39                	or     edi,DWORD PTR [ecx]
 17e:	21 01                	and    DWORD PTR [ecx],eax
 180:	27                   	daa
 181:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 184:	11 01                	adc    DWORD PTR [ecx],eax
 186:	12 06                	adc    al,BYTE PTR [esi]
 188:	40                   	inc    eax
 189:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 18c:	01 13                	add    DWORD PTR [ebx],edx
 18e:	00 00                	add    BYTE PTR [eax],al
 190:	04 34                	add    al,0x34
 192:	00 03                	add    BYTE PTR [ebx],al
 194:	0e                   	push   cs
 195:	3a 21                	cmp    ah,BYTE PTR [ecx]
 197:	01 3b                	add    DWORD PTR [ebx],edi
 199:	0b 39                	or     edi,DWORD PTR [ecx]
 19b:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 19e:	02 17                	add    dl,BYTE PTR [edi]
 1a0:	b7 42                	mov    bh,0x42
 1a2:	17                   	pop    ss
 1a3:	00 00                	add    BYTE PTR [eax],al
 1a5:	05 05 00 03 0e       	add    eax,0xe030005
 1aa:	3a 21                	cmp    ah,BYTE PTR [ecx]
 1ac:	01 3b                	add    DWORD PTR [ebx],edi
 1ae:	0b 39                	or     edi,DWORD PTR [ecx]
 1b0:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 1b3:	02 18                	add    bl,BYTE PTR [eax]
 1b5:	00 00                	add    BYTE PTR [eax],al
 1b7:	06                   	push   es
 1b8:	05 00 03 08 3a       	add    eax,0x3a080300
 1bd:	21 01                	and    DWORD PTR [ecx],eax
 1bf:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 1c1:	39 0b                	cmp    DWORD PTR [ebx],ecx
 1c3:	49                   	dec    ecx
 1c4:	13 02                	adc    eax,DWORD PTR [edx]
 1c6:	18 00                	sbb    BYTE PTR [eax],al
 1c8:	00 07                	add    BYTE PTR [edi],al
 1ca:	34 00                	xor    al,0x0
 1cc:	03 0e                	add    ecx,DWORD PTR [esi]
 1ce:	3a 21                	cmp    ah,BYTE PTR [ecx]
 1d0:	01 3b                	add    DWORD PTR [ebx],edi
 1d2:	0b 39                	or     edi,DWORD PTR [ecx]
 1d4:	21 03                	and    DWORD PTR [ebx],eax
 1d6:	49                   	dec    ecx
 1d7:	13 00                	adc    eax,DWORD PTR [eax]
 1d9:	00 08                	add    BYTE PTR [eax],cl
 1db:	05 00 49 13 00       	add    eax,0x134900
 1e0:	00 09                	add    BYTE PTR [ecx],cl
 1e2:	24 00                	and    al,0x0
 1e4:	0b 0b                	or     ecx,DWORD PTR [ebx]
 1e6:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 1e9:	0e                   	push   cs
 1ea:	00 00                	add    BYTE PTR [eax],al
 1ec:	0a 0f                	or     cl,BYTE PTR [edi]
 1ee:	00 0b                	add    BYTE PTR [ebx],cl
 1f0:	21 04 49             	and    DWORD PTR [ecx+ecx*2],eax
 1f3:	13 00                	adc    eax,DWORD PTR [eax]
 1f5:	00 0b                	add    BYTE PTR [ebx],cl
 1f7:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 1fa:	19 03                	sbb    DWORD PTR [ebx],eax
 1fc:	0e                   	push   cs
 1fd:	3a 21                	cmp    ah,BYTE PTR [ecx]
 1ff:	01 3b                	add    DWORD PTR [ebx],edi
 201:	0b 39                	or     edi,DWORD PTR [ecx]
 203:	21 01                	and    DWORD PTR [ecx],eax
 205:	27                   	daa
 206:	19 11                	sbb    DWORD PTR [ecx],edx
 208:	01 12                	add    DWORD PTR [edx],edx
 20a:	06                   	push   es
 20b:	40                   	inc    eax
 20c:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 20f:	01 13                	add    DWORD PTR [ebx],edx
 211:	00 00                	add    BYTE PTR [eax],al
 213:	0c 16                	or     al,0x16
 215:	00 03                	add    BYTE PTR [ebx],al
 217:	0e                   	push   cs
 218:	3a 21                	cmp    ah,BYTE PTR [ecx]
 21a:	02 3b                	add    bh,BYTE PTR [ebx]
 21c:	0b 39                	or     edi,DWORD PTR [ecx]
 21e:	21 0d 49 13 00 00    	and    DWORD PTR ds:0x1349,ecx
 224:	0d 26 00 49 13       	or     eax,0x13490026
 229:	00 00                	add    BYTE PTR [eax],al
 22b:	0e                   	push   cs
 22c:	34 00                	xor    al,0x0
 22e:	03 0e                	add    ecx,DWORD PTR [esi]
 230:	49                   	dec    ecx
 231:	13 34 19             	adc    esi,DWORD PTR [ecx+ebx*1]
 234:	02 18                	add    bl,BYTE PTR [eax]
 236:	00 00                	add    BYTE PTR [eax],al
 238:	0f 0b                	ud2
 23a:	01 11                	add    DWORD PTR [ecx],edx
 23c:	01 12                	add    DWORD PTR [edx],edx
 23e:	06                   	push   es
 23f:	01 13                	add    DWORD PTR [ebx],edx
 241:	00 00                	add    BYTE PTR [eax],al
 243:	10 48 01             	adc    BYTE PTR [eax+0x1],cl
 246:	7d 01                	jge    249 <__executable_start-0x8047e4b>
 248:	7f 13                	jg     25d <__executable_start-0x8047e37>
 24a:	00 00                	add    BYTE PTR [eax],al
 24c:	11 49 00             	adc    DWORD PTR [ecx+0x0],ecx
 24f:	02 18                	add    bl,BYTE PTR [eax]
 251:	7e 18                	jle    26b <__executable_start-0x8047e29>
 253:	00 00                	add    BYTE PTR [eax],al
 255:	12 11                	adc    dl,BYTE PTR [ecx]
 257:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
 25d:	1f                   	pop    ds
 25e:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 260:	11 01                	adc    DWORD PTR [ecx],eax
 262:	12 06                	adc    al,BYTE PTR [esi]
 264:	10 17                	adc    BYTE PTR [edi],dl
 266:	00 00                	add    BYTE PTR [eax],al
 268:	13 24 00             	adc    esp,DWORD PTR [eax+eax*1]
 26b:	0b 0b                	or     ecx,DWORD PTR [ebx]
 26d:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 270:	08 00                	or     BYTE PTR [eax],al
 272:	00 14 04             	add    BYTE PTR [esp+eax*1],dl
 275:	01 3e                	add    DWORD PTR [esi],edi
 277:	0b 0b                	or     ecx,DWORD PTR [ebx]
 279:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 27c:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 27e:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 280:	39 0b                	cmp    DWORD PTR [ebx],ecx
 282:	01 13                	add    DWORD PTR [ebx],edx
 284:	00 00                	add    BYTE PTR [eax],al
 286:	15 2e 01 3f 19       	adc    eax,0x193f012e
 28b:	03 0e                	add    ecx,DWORD PTR [esi]
 28d:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 28f:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 291:	39 0b                	cmp    DWORD PTR [ebx],ecx
 293:	27                   	daa
 294:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
 29a:	01 13                	add    DWORD PTR [ebx],edx
 29c:	00 00                	add    BYTE PTR [eax],al
 29e:	16                   	push   ss
 29f:	18 00                	sbb    BYTE PTR [eax],al
 2a1:	00 00                	add    BYTE PTR [eax],al
 2a3:	17                   	pop    ss
 2a4:	0f 00 0b             	str    WORD PTR [ebx]
 2a7:	0b 00                	or     eax,DWORD PTR [eax]
 2a9:	00 18                	add    BYTE PTR [eax],bl
 2ab:	26 00 00             	add    BYTE PTR es:[eax],al
 2ae:	00 19                	add    BYTE PTR [ecx],bl
 2b0:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 2b3:	19 03                	sbb    DWORD PTR [ebx],eax
 2b5:	0e                   	push   cs
 2b6:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 2b8:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 2ba:	39 0b                	cmp    DWORD PTR [ebx],ecx
 2bc:	27                   	daa
 2bd:	19 87 01 19 11 01    	sbb    DWORD PTR [edi+0x1111901],eax
 2c3:	12 06                	adc    al,BYTE PTR [esi]
 2c5:	40                   	inc    eax
 2c6:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 2c9:	01 13                	add    DWORD PTR [ebx],edx
 2cb:	00 00                	add    BYTE PTR [eax],al
 2cd:	1a 01                	sbb    al,BYTE PTR [ecx]
 2cf:	01 49 13             	add    DWORD PTR [ecx+0x13],ecx
 2d2:	01 13                	add    DWORD PTR [ebx],edx
 2d4:	00 00                	add    BYTE PTR [eax],al
 2d6:	1b 21                	sbb    esp,DWORD PTR [ecx]
 2d8:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
 2db:	2f                   	das
 2dc:	0b 00                	or     eax,DWORD PTR [eax]
 2de:	00 1c 2e             	add    BYTE PTR [esi+ebp*1],bl
 2e1:	01 3f                	add    DWORD PTR [edi],edi
 2e3:	19 03                	sbb    DWORD PTR [ebx],eax
 2e5:	0e                   	push   cs
 2e6:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 2e8:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 2ea:	39 0b                	cmp    DWORD PTR [ebx],ecx
 2ec:	27                   	daa
 2ed:	19 87 01 19 11 01    	sbb    DWORD PTR [edi+0x1111901],eax
 2f3:	12 06                	adc    al,BYTE PTR [esi]
 2f5:	40                   	inc    eax
 2f6:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 2f9:	00 00                	add    BYTE PTR [eax],al
 2fb:	00 01                	add    BYTE PTR [ecx],al
 2fd:	24 00                	and    al,0x0
 2ff:	0b 0b                	or     ecx,DWORD PTR [ebx]
 301:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 304:	0e                   	push   cs
 305:	00 00                	add    BYTE PTR [eax],al
 307:	02 05 00 49 13 00    	add    al,BYTE PTR ds:0x134900
 30d:	00 03                	add    BYTE PTR [ebx],al
 30f:	05 00 03 0e 3a       	add    eax,0x3a0e0300
 314:	21 01                	and    DWORD PTR [ecx],eax
 316:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 318:	39 0b                	cmp    DWORD PTR [ebx],ecx
 31a:	49                   	dec    ecx
 31b:	13 02                	adc    eax,DWORD PTR [edx]
 31d:	18 00                	sbb    BYTE PTR [eax],al
 31f:	00 04 49             	add    BYTE PTR [ecx+ecx*2],al
 322:	00 02                	add    BYTE PTR [edx],al
 324:	18 7e 18             	sbb    BYTE PTR [esi+0x18],bh
 327:	00 00                	add    BYTE PTR [eax],al
 329:	05 48 01 7d 01       	add    eax,0x17d0148
 32e:	7f 13                	jg     343 <__executable_start-0x8047d51>
 330:	01 13                	add    DWORD PTR [ebx],edx
 332:	00 00                	add    BYTE PTR [eax],al
 334:	06                   	push   es
 335:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 338:	19 03                	sbb    DWORD PTR [ebx],eax
 33a:	0e                   	push   cs
 33b:	3a 21                	cmp    ah,BYTE PTR [ecx]
 33d:	03 3b                	add    edi,DWORD PTR [ebx]
 33f:	0b 39                	or     edi,DWORD PTR [ecx]
 341:	21 05 27 19 49 13    	and    DWORD PTR ds:0x13491927,eax
 347:	3c 19                	cmp    al,0x19
 349:	01 13                	add    DWORD PTR [ebx],edx
 34b:	00 00                	add    BYTE PTR [eax],al
 34d:	07                   	pop    es
 34e:	18 00                	sbb    BYTE PTR [eax],al
 350:	00 00                	add    BYTE PTR [eax],al
 352:	08 11                	or     BYTE PTR [ecx],dl
 354:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
 35a:	1f                   	pop    ds
 35b:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 35d:	11 01                	adc    DWORD PTR [ecx],eax
 35f:	12 06                	adc    al,BYTE PTR [esi]
 361:	10 17                	adc    BYTE PTR [edi],dl
 363:	00 00                	add    BYTE PTR [eax],al
 365:	09 16                	or     DWORD PTR [esi],edx
 367:	00 03                	add    BYTE PTR [ebx],al
 369:	0e                   	push   cs
 36a:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 36c:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 36e:	39 0b                	cmp    DWORD PTR [ebx],ecx
 370:	49                   	dec    ecx
 371:	13 00                	adc    eax,DWORD PTR [eax]
 373:	00 0a                	add    BYTE PTR [edx],cl
 375:	0f 00 0b             	str    WORD PTR [ebx]
 378:	0b 03                	or     eax,DWORD PTR [ebx]
 37a:	0e                   	push   cs
 37b:	49                   	dec    ecx
 37c:	13 00                	adc    eax,DWORD PTR [eax]
 37e:	00 0b                	add    BYTE PTR [ebx],cl
 380:	26 00 49 13          	add    BYTE PTR es:[ecx+0x13],cl
 384:	00 00                	add    BYTE PTR [eax],al
 386:	0c 24                	or     al,0x24
 388:	00 0b                	add    BYTE PTR [ebx],cl
 38a:	0b 3e                	or     edi,DWORD PTR [esi]
 38c:	0b 03                	or     eax,DWORD PTR [ebx]
 38e:	08 00                	or     BYTE PTR [eax],al
 390:	00 0d 2e 01 3f 19    	add    BYTE PTR ds:0x193f012e,cl
 396:	03 0e                	add    ecx,DWORD PTR [esi]
 398:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 39a:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 39c:	39 0b                	cmp    DWORD PTR [ebx],ecx
 39e:	27                   	daa
 39f:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
 3a5:	01 13                	add    DWORD PTR [ebx],edx
 3a7:	00 00                	add    BYTE PTR [eax],al
 3a9:	0e                   	push   cs
 3aa:	2e 00 3f             	add    BYTE PTR cs:[edi],bh
 3ad:	19 03                	sbb    DWORD PTR [ebx],eax
 3af:	0e                   	push   cs
 3b0:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 3b2:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 3b4:	39 0b                	cmp    DWORD PTR [ebx],ecx
 3b6:	27                   	daa
 3b7:	19 3c 19             	sbb    DWORD PTR [ecx+ebx*1],edi
 3ba:	00 00                	add    BYTE PTR [eax],al
 3bc:	0f                   	(bad)
 3bd:	0f 00 0b             	str    WORD PTR [ebx]
 3c0:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 3c3:	00 00                	add    BYTE PTR [eax],al
 3c5:	10 2e                	adc    BYTE PTR [esi],ch
 3c7:	01 3f                	add    DWORD PTR [edi],edi
 3c9:	19 03                	sbb    DWORD PTR [ebx],eax
 3cb:	0e                   	push   cs
 3cc:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 3ce:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 3d0:	39 0b                	cmp    DWORD PTR [ebx],ecx
 3d2:	27                   	daa
 3d3:	19 87 01 19 11 01    	sbb    DWORD PTR [edi+0x1111901],eax
 3d9:	12 06                	adc    al,BYTE PTR [esi]
 3db:	40                   	inc    eax
 3dc:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 3df:	00 00                	add    BYTE PTR [eax],al
 3e1:	11 34 00             	adc    DWORD PTR [eax+eax*1],esi
 3e4:	03 0e                	add    ecx,DWORD PTR [esi]
 3e6:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 3e8:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 3ea:	39 0b                	cmp    DWORD PTR [ebx],ecx
 3ec:	49                   	dec    ecx
 3ed:	13 02                	adc    eax,DWORD PTR [edx]
 3ef:	17                   	pop    ss
 3f0:	b7 42                	mov    bh,0x42
 3f2:	17                   	pop    ss
 3f3:	00 00                	add    BYTE PTR [eax],al
 3f5:	12 48 00             	adc    cl,BYTE PTR [eax+0x0]
 3f8:	7d 01                	jge    3fb <__executable_start-0x8047c99>
 3fa:	7f 13                	jg     40f <__executable_start-0x8047c85>
 3fc:	00 00                	add    BYTE PTR [eax],al
 3fe:	13 48 01             	adc    ecx,DWORD PTR [eax+0x1]
 401:	7d 01                	jge    404 <__executable_start-0x8047c90>
 403:	7f 13                	jg     418 <__executable_start-0x8047c7c>
 405:	00 00                	add    BYTE PTR [eax],al
 407:	00 01                	add    BYTE PTR [ecx],al
 409:	05 00 49 13 00       	add    eax,0x134900
 40e:	00 02                	add    BYTE PTR [edx],al
 410:	49                   	dec    ecx
 411:	00 02                	add    BYTE PTR [edx],al
 413:	18 7e 18             	sbb    BYTE PTR [esi+0x18],bh
 416:	00 00                	add    BYTE PTR [eax],al
 418:	03 24 00             	add    esp,DWORD PTR [eax+eax*1]
 41b:	0b 0b                	or     ecx,DWORD PTR [ebx]
 41d:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 420:	0e                   	push   cs
 421:	00 00                	add    BYTE PTR [eax],al
 423:	04 48                	add    al,0x48
 425:	01 7d 01             	add    DWORD PTR [ebp+0x1],edi
 428:	7f 13                	jg     43d <__executable_start-0x8047c57>
 42a:	00 00                	add    BYTE PTR [eax],al
 42c:	05 0f 00 0b 21       	add    eax,0x210b000f
 431:	04 49                	add    al,0x49
 433:	13 00                	adc    eax,DWORD PTR [eax]
 435:	00 06                	add    BYTE PTR [esi],al
 437:	05 00 03 0e 3a       	add    eax,0x3a0e0300
 43c:	21 01                	and    DWORD PTR [ecx],eax
 43e:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 440:	39 0b                	cmp    DWORD PTR [ebx],ecx
 442:	49                   	dec    ecx
 443:	13 02                	adc    eax,DWORD PTR [edx]
 445:	17                   	pop    ss
 446:	b7 42                	mov    bh,0x42
 448:	17                   	pop    ss
 449:	00 00                	add    BYTE PTR [eax],al
 44b:	07                   	pop    es
 44c:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 44f:	19 03                	sbb    DWORD PTR [ebx],eax
 451:	0e                   	push   cs
 452:	3a 21                	cmp    ah,BYTE PTR [ecx]
 454:	01 3b                	add    DWORD PTR [ebx],edi
 456:	0b 39                	or     edi,DWORD PTR [ecx]
 458:	21 01                	and    DWORD PTR [ecx],eax
 45a:	27                   	daa
 45b:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 45e:	11 01                	adc    DWORD PTR [ecx],eax
 460:	12 06                	adc    al,BYTE PTR [esi]
 462:	40                   	inc    eax
 463:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 466:	01 13                	add    DWORD PTR [ebx],edx
 468:	00 00                	add    BYTE PTR [eax],al
 46a:	08 05 00 03 08 3a    	or     BYTE PTR ds:0x3a080300,al
 470:	21 01                	and    DWORD PTR [ecx],eax
 472:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 474:	39 0b                	cmp    DWORD PTR [ebx],ecx
 476:	49                   	dec    ecx
 477:	13 02                	adc    eax,DWORD PTR [edx]
 479:	18 00                	sbb    BYTE PTR [eax],al
 47b:	00 09                	add    BYTE PTR [ecx],cl
 47d:	05 00 03 0e 3a       	add    eax,0x3a0e0300
 482:	21 01                	and    DWORD PTR [ecx],eax
 484:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 486:	39 0b                	cmp    DWORD PTR [ebx],ecx
 488:	49                   	dec    ecx
 489:	13 02                	adc    eax,DWORD PTR [edx]
 48b:	18 00                	sbb    BYTE PTR [eax],al
 48d:	00 0a                	add    BYTE PTR [edx],cl
 48f:	48                   	dec    eax
 490:	01 7d 01             	add    DWORD PTR [ebp+0x1],edi
 493:	7f 13                	jg     4a8 <__executable_start-0x8047bec>
 495:	01 13                	add    DWORD PTR [ebx],edx
 497:	00 00                	add    BYTE PTR [eax],al
 499:	0b 16                	or     edx,DWORD PTR [esi]
 49b:	00 03                	add    BYTE PTR [ebx],al
 49d:	0e                   	push   cs
 49e:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 4a0:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 4a2:	39 0b                	cmp    DWORD PTR [ebx],ecx
 4a4:	49                   	dec    ecx
 4a5:	13 00                	adc    eax,DWORD PTR [eax]
 4a7:	00 0c 0d 00 03 08 3a 	add    BYTE PTR [ecx*1+0x3a080300],cl
 4ae:	21 01                	and    DWORD PTR [ecx],eax
 4b0:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 4b2:	39 0b                	cmp    DWORD PTR [ebx],ecx
 4b4:	49                   	dec    ecx
 4b5:	13 38                	adc    edi,DWORD PTR [eax]
 4b7:	0b 00                	or     eax,DWORD PTR [eax]
 4b9:	00 0d 0d 00 03 0e    	add    BYTE PTR ds:0xe03000d,cl
 4bf:	3a 21                	cmp    ah,BYTE PTR [ecx]
 4c1:	01 3b                	add    DWORD PTR [ebx],edi
 4c3:	0b 39                	or     edi,DWORD PTR [ecx]
 4c5:	21 09                	and    DWORD PTR [ecx],ecx
 4c7:	49                   	dec    ecx
 4c8:	13 38                	adc    edi,DWORD PTR [eax]
 4ca:	0b 00                	or     eax,DWORD PTR [eax]
 4cc:	00 0e                	add    BYTE PTR [esi],cl
 4ce:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 4d1:	19 03                	sbb    DWORD PTR [ebx],eax
 4d3:	0e                   	push   cs
 4d4:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 4d6:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 4d8:	39 0b                	cmp    DWORD PTR [ebx],ecx
 4da:	27                   	daa
 4db:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 4de:	3c 19                	cmp    al,0x19
 4e0:	01 13                	add    DWORD PTR [ebx],edx
 4e2:	00 00                	add    BYTE PTR [eax],al
 4e4:	0f 2e 01             	ucomiss xmm0,DWORD PTR [ecx]
 4e7:	03 0e                	add    ecx,DWORD PTR [esi]
 4e9:	3a 21                	cmp    ah,BYTE PTR [ecx]
 4eb:	01 3b                	add    DWORD PTR [ebx],edi
 4ed:	0b 39                	or     edi,DWORD PTR [ecx]
 4ef:	21 01                	and    DWORD PTR [ecx],eax
 4f1:	27                   	daa
 4f2:	19 11                	sbb    DWORD PTR [ecx],edx
 4f4:	01 12                	add    DWORD PTR [edx],edx
 4f6:	06                   	push   es
 4f7:	40                   	inc    eax
 4f8:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 4fb:	01 13                	add    DWORD PTR [ebx],edx
 4fd:	00 00                	add    BYTE PTR [eax],al
 4ff:	10 34 00             	adc    BYTE PTR [eax+eax*1],dh
 502:	03 08                	add    ecx,DWORD PTR [eax]
 504:	3a 21                	cmp    ah,BYTE PTR [ecx]
 506:	01 3b                	add    DWORD PTR [ebx],edi
 508:	0b 39                	or     edi,DWORD PTR [ecx]
 50a:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 50d:	02 18                	add    bl,BYTE PTR [eax]
 50f:	00 00                	add    BYTE PTR [eax],al
 511:	11 34 00             	adc    DWORD PTR [eax+eax*1],esi
 514:	03 0e                	add    ecx,DWORD PTR [esi]
 516:	3a 21                	cmp    ah,BYTE PTR [ecx]
 518:	01 3b                	add    DWORD PTR [ebx],edi
 51a:	0b 39                	or     edi,DWORD PTR [ecx]
 51c:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 51f:	02 17                	add    dl,BYTE PTR [edi]
 521:	b7 42                	mov    bh,0x42
 523:	17                   	pop    ss
 524:	00 00                	add    BYTE PTR [eax],al
 526:	12 11                	adc    dl,BYTE PTR [ecx]
 528:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
 52e:	1f                   	pop    ds
 52f:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 531:	11 01                	adc    DWORD PTR [ecx],eax
 533:	12 06                	adc    al,BYTE PTR [esi]
 535:	10 17                	adc    BYTE PTR [edi],dl
 537:	00 00                	add    BYTE PTR [eax],al
 539:	13 0f                	adc    ecx,DWORD PTR [edi]
 53b:	00 0b                	add    BYTE PTR [ebx],cl
 53d:	0b 03                	or     eax,DWORD PTR [ebx]
 53f:	0e                   	push   cs
 540:	49                   	dec    ecx
 541:	13 00                	adc    eax,DWORD PTR [eax]
 543:	00 14 26             	add    BYTE PTR [esi+eiz*1],dl
 546:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
 549:	00 00                	add    BYTE PTR [eax],al
 54b:	15 24 00 0b 0b       	adc    eax,0xb0b0024
 550:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 553:	08 00                	or     BYTE PTR [eax],al
 555:	00 16                	add    BYTE PTR [esi],dl
 557:	13 01                	adc    eax,DWORD PTR [ecx]
 559:	03 0e                	add    ecx,DWORD PTR [esi]
 55b:	0b 0b                	or     ecx,DWORD PTR [ebx]
 55d:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 55f:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 561:	39 0b                	cmp    DWORD PTR [ebx],ecx
 563:	01 13                	add    DWORD PTR [ebx],edx
 565:	00 00                	add    BYTE PTR [eax],al
 567:	17                   	pop    ss
 568:	01 01                	add    DWORD PTR [ecx],eax
 56a:	49                   	dec    ecx
 56b:	13 01                	adc    eax,DWORD PTR [ecx]
 56d:	13 00                	adc    eax,DWORD PTR [eax]
 56f:	00 18                	add    BYTE PTR [eax],bl
 571:	21 00                	and    DWORD PTR [eax],eax
 573:	49                   	dec    ecx
 574:	13 2f                	adc    ebp,DWORD PTR [edi]
 576:	0b 00                	or     eax,DWORD PTR [eax]
 578:	00 19                	add    BYTE PTR [ecx],bl
 57a:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 57d:	19 03                	sbb    DWORD PTR [ebx],eax
 57f:	0e                   	push   cs
 580:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 582:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 584:	39 0b                	cmp    DWORD PTR [ebx],ecx
 586:	27                   	daa
 587:	19 3c 19             	sbb    DWORD PTR [ecx+ebx*1],edi
 58a:	01 13                	add    DWORD PTR [ebx],edx
 58c:	00 00                	add    BYTE PTR [eax],al
 58e:	1a 15 01 27 19 01    	sbb    dl,BYTE PTR ds:0x1192701
 594:	13 00                	adc    eax,DWORD PTR [eax]
 596:	00 1b                	add    BYTE PTR [ebx],bl
 598:	0f 00 0b             	str    WORD PTR [ebx]
 59b:	0b 00                	or     eax,DWORD PTR [eax]
 59d:	00 1c 26             	add    BYTE PTR [esi+eiz*1],bl
 5a0:	00 00                	add    BYTE PTR [eax],al
 5a2:	00 1d 05 00 03 08    	add    BYTE PTR ds:0x8030005,bl
 5a8:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 5aa:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 5ac:	39 0b                	cmp    DWORD PTR [ebx],ecx
 5ae:	49                   	dec    ecx
 5af:	13 02                	adc    eax,DWORD PTR [edx]
 5b1:	17                   	pop    ss
 5b2:	b7 42                	mov    bh,0x42
 5b4:	17                   	pop    ss
 5b5:	00 00                	add    BYTE PTR [eax],al
 5b7:	1e                   	push   ds
 5b8:	34 00                	xor    al,0x0
 5ba:	03 08                	add    ecx,DWORD PTR [eax]
 5bc:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 5be:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 5c0:	39 0b                	cmp    DWORD PTR [ebx],ecx
 5c2:	49                   	dec    ecx
 5c3:	13 02                	adc    eax,DWORD PTR [edx]
 5c5:	17                   	pop    ss
 5c6:	b7 42                	mov    bh,0x42
 5c8:	17                   	pop    ss
 5c9:	00 00                	add    BYTE PTR [eax],al
 5cb:	1f                   	pop    ds
 5cc:	18 00                	sbb    BYTE PTR [eax],al
 5ce:	00 00                	add    BYTE PTR [eax],al
 5d0:	20 2e                	and    BYTE PTR [esi],ch
 5d2:	01 3f                	add    DWORD PTR [edi],edi
 5d4:	19 03                	sbb    DWORD PTR [ebx],eax
 5d6:	0e                   	push   cs
 5d7:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 5d9:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 5db:	39 0b                	cmp    DWORD PTR [ebx],ecx
 5dd:	27                   	daa
 5de:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 5e1:	11 01                	adc    DWORD PTR [ecx],eax
 5e3:	12 06                	adc    al,BYTE PTR [esi]
 5e5:	40                   	inc    eax
 5e6:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 5e9:	00 00                	add    BYTE PTR [eax],al
 5eb:	00 01                	add    BYTE PTR [ecx],al
 5ed:	24 00                	and    al,0x0
 5ef:	0b 0b                	or     ecx,DWORD PTR [ebx]
 5f1:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 5f4:	0e                   	push   cs
 5f5:	00 00                	add    BYTE PTR [eax],al
 5f7:	02 49 00             	add    cl,BYTE PTR [ecx+0x0]
 5fa:	02 18                	add    bl,BYTE PTR [eax]
 5fc:	7e 18                	jle    616 <__executable_start-0x8047a7e>
 5fe:	00 00                	add    BYTE PTR [eax],al
 600:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
 603:	7d 01                	jge    606 <__executable_start-0x8047a8e>
 605:	7f 13                	jg     61a <__executable_start-0x8047a7a>
 607:	01 13                	add    DWORD PTR [ebx],edx
 609:	00 00                	add    BYTE PTR [eax],al
 60b:	04 16                	add    al,0x16
 60d:	00 03                	add    BYTE PTR [ebx],al
 60f:	0e                   	push   cs
 610:	3a 21                	cmp    ah,BYTE PTR [ecx]
 612:	02 3b                	add    bh,BYTE PTR [ebx]
 614:	0b 39                	or     edi,DWORD PTR [ecx]
 616:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 619:	00 00                	add    BYTE PTR [eax],al
 61b:	05 0f 00 0b 21       	add    eax,0x210b000f
 620:	04 49                	add    al,0x49
 622:	13 00                	adc    eax,DWORD PTR [eax]
 624:	00 06                	add    BYTE PTR [esi],al
 626:	11 01                	adc    DWORD PTR [ecx],eax
 628:	25 0e 13 0b 03       	and    eax,0x30b130e
 62d:	1f                   	pop    ds
 62e:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 630:	11 01                	adc    DWORD PTR [ecx],eax
 632:	12 06                	adc    al,BYTE PTR [esi]
 634:	10 17                	adc    BYTE PTR [edi],dl
 636:	00 00                	add    BYTE PTR [eax],al
 638:	07                   	pop    es
 639:	26 00 49 13          	add    BYTE PTR es:[ecx+0x13],cl
 63d:	00 00                	add    BYTE PTR [eax],al
 63f:	08 24 00             	or     BYTE PTR [eax+eax*1],ah
 642:	0b 0b                	or     ecx,DWORD PTR [ebx]
 644:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 647:	08 00                	or     BYTE PTR [eax],al
 649:	00 09                	add    BYTE PTR [ecx],cl
 64b:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 64e:	19 03                	sbb    DWORD PTR [ebx],eax
 650:	0e                   	push   cs
 651:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 653:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 655:	39 0b                	cmp    DWORD PTR [ebx],ecx
 657:	27                   	daa
 658:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 65b:	3c 19                	cmp    al,0x19
 65d:	01 13                	add    DWORD PTR [ebx],edx
 65f:	00 00                	add    BYTE PTR [eax],al
 661:	0a 05 00 49 13 00    	or     al,BYTE PTR ds:0x134900
 667:	00 0b                	add    BYTE PTR [ebx],cl
 669:	18 00                	sbb    BYTE PTR [eax],al
 66b:	00 00                	add    BYTE PTR [eax],al
 66d:	0c 2e                	or     al,0x2e
 66f:	01 3f                	add    DWORD PTR [edi],edi
 671:	19 03                	sbb    DWORD PTR [ebx],eax
 673:	0e                   	push   cs
 674:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 676:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 678:	39 0b                	cmp    DWORD PTR [ebx],ecx
 67a:	27                   	daa
 67b:	19 11                	sbb    DWORD PTR [ecx],edx
 67d:	01 12                	add    DWORD PTR [edx],edx
 67f:	06                   	push   es
 680:	40                   	inc    eax
 681:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 684:	01 13                	add    DWORD PTR [ebx],edx
 686:	00 00                	add    BYTE PTR [eax],al
 688:	0d 34 00 03 0e       	or     eax,0xe030034
 68d:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 68f:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 691:	39 0b                	cmp    DWORD PTR [ebx],ecx
 693:	49                   	dec    ecx
 694:	13 02                	adc    eax,DWORD PTR [edx]
 696:	18 00                	sbb    BYTE PTR [eax],al
 698:	00 0e                	add    BYTE PTR [esi],cl
 69a:	34 00                	xor    al,0x0
 69c:	03 0e                	add    ecx,DWORD PTR [esi]
 69e:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 6a0:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 6a2:	39 0b                	cmp    DWORD PTR [ebx],ecx
 6a4:	49                   	dec    ecx
 6a5:	13 02                	adc    eax,DWORD PTR [edx]
 6a7:	17                   	pop    ss
 6a8:	b7 42                	mov    bh,0x42
 6aa:	17                   	pop    ss
 6ab:	00 00                	add    BYTE PTR [eax],al
 6ad:	0f 48 01             	cmovs  eax,DWORD PTR [ecx]
 6b0:	7d 01                	jge    6b3 <__executable_start-0x80479e1>
 6b2:	7f 13                	jg     6c7 <__executable_start-0x80479cd>
 6b4:	00 00                	add    BYTE PTR [eax],al
 6b6:	10 0f                	adc    BYTE PTR [edi],cl
 6b8:	00 0b                	add    BYTE PTR [ebx],cl
 6ba:	0b 00                	or     eax,DWORD PTR [eax]
 6bc:	00 00                	add    BYTE PTR [eax],al
 6be:	01 49 00             	add    DWORD PTR [ecx+0x0],ecx
 6c1:	02 18                	add    bl,BYTE PTR [eax]
 6c3:	7e 18                	jle    6dd <__executable_start-0x80479b7>
 6c5:	00 00                	add    BYTE PTR [eax],al
 6c7:	02 48 01             	add    cl,BYTE PTR [eax+0x1]
 6ca:	7d 01                	jge    6cd <__executable_start-0x80479c7>
 6cc:	7f 13                	jg     6e1 <__executable_start-0x80479b3>
 6ce:	01 13                	add    DWORD PTR [ebx],edx
 6d0:	00 00                	add    BYTE PTR [eax],al
 6d2:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
 6d5:	7d 01                	jge    6d8 <__executable_start-0x80479bc>
 6d7:	7f 13                	jg     6ec <__executable_start-0x80479a8>
 6d9:	00 00                	add    BYTE PTR [eax],al
 6db:	04 28                	add    al,0x28
 6dd:	00 03                	add    BYTE PTR [ebx],al
 6df:	0e                   	push   cs
 6e0:	1c 0b                	sbb    al,0xb
 6e2:	00 00                	add    BYTE PTR [eax],al
 6e4:	05 0f 00 0b 21       	add    eax,0x210b000f
 6e9:	04 49                	add    al,0x49
 6eb:	13 00                	adc    eax,DWORD PTR [eax]
 6ed:	00 06                	add    BYTE PTR [esi],al
 6ef:	05 00 49 13 00       	add    eax,0x134900
 6f4:	00 07                	add    BYTE PTR [edi],al
 6f6:	24 00                	and    al,0x0
 6f8:	0b 0b                	or     ecx,DWORD PTR [ebx]
 6fa:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 6fd:	0e                   	push   cs
 6fe:	00 00                	add    BYTE PTR [eax],al
 700:	08 16                	or     BYTE PTR [esi],dl
 702:	00 03                	add    BYTE PTR [ebx],al
 704:	0e                   	push   cs
 705:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 707:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 709:	39 0b                	cmp    DWORD PTR [ebx],ecx
 70b:	49                   	dec    ecx
 70c:	13 00                	adc    eax,DWORD PTR [eax]
 70e:	00 09                	add    BYTE PTR [ecx],cl
 710:	0d 00 03 0e 3a       	or     eax,0x3a0e0300
 715:	21 01                	and    DWORD PTR [ecx],eax
 717:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 719:	39 0b                	cmp    DWORD PTR [ebx],ecx
 71b:	49                   	dec    ecx
 71c:	13 38                	adc    edi,DWORD PTR [eax]
 71e:	0b 00                	or     eax,DWORD PTR [eax]
 720:	00 0a                	add    BYTE PTR [edx],cl
 722:	05 00 03 0e 3a       	add    eax,0x3a0e0300
 727:	21 01                	and    DWORD PTR [ecx],eax
 729:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 72f:	02 17                	add    dl,BYTE PTR [edi]
 731:	b7 42                	mov    bh,0x42
 733:	17                   	pop    ss
 734:	00 00                	add    BYTE PTR [eax],al
 736:	0b 34 00             	or     esi,DWORD PTR [eax+eax*1]
 739:	03 08                	add    ecx,DWORD PTR [eax]
 73b:	3a 21                	cmp    ah,BYTE PTR [ecx]
 73d:	01 3b                	add    DWORD PTR [ebx],edi
 73f:	05 39 0b 49 13       	add    eax,0x13490b39
 744:	02 17                	add    dl,BYTE PTR [edi]
 746:	b7 42                	mov    bh,0x42
 748:	17                   	pop    ss
 749:	00 00                	add    BYTE PTR [eax],al
 74b:	0c 05                	or     al,0x5
 74d:	00 03                	add    BYTE PTR [ebx],al
 74f:	0e                   	push   cs
 750:	3a 21                	cmp    ah,BYTE PTR [ecx]
 752:	01 3b                	add    DWORD PTR [ebx],edi
 754:	0b 39                	or     edi,DWORD PTR [ecx]
 756:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 759:	02 18                	add    bl,BYTE PTR [eax]
 75b:	00 00                	add    BYTE PTR [eax],al
 75d:	0d 26 00 49 13       	or     eax,0x13490026
 762:	00 00                	add    BYTE PTR [eax],al
 764:	0e                   	push   cs
 765:	0b 01                	or     eax,DWORD PTR [ecx]
 767:	55                   	push   ebp
 768:	17                   	pop    ss
 769:	01 13                	add    DWORD PTR [ebx],edx
 76b:	00 00                	add    BYTE PTR [eax],al
 76d:	0f 34                	sysenter
 76f:	00 03                	add    BYTE PTR [ebx],al
 771:	0e                   	push   cs
 772:	3a 21                	cmp    ah,BYTE PTR [ecx]
 774:	01 3b                	add    DWORD PTR [ebx],edi
 776:	05 39 0b 49 13       	add    eax,0x13490b39
 77b:	02 17                	add    dl,BYTE PTR [edi]
 77d:	b7 42                	mov    bh,0x42
 77f:	17                   	pop    ss
 780:	00 00                	add    BYTE PTR [eax],al
 782:	10 05 00 31 13 02    	adc    BYTE PTR ds:0x2133100,al
 788:	17                   	pop    ss
 789:	b7 42                	mov    bh,0x42
 78b:	17                   	pop    ss
 78c:	00 00                	add    BYTE PTR [eax],al
 78e:	11 48 01             	adc    DWORD PTR [eax+0x1],ecx
 791:	7d 01                	jge    794 <__executable_start-0x8047900>
 793:	01 13                	add    DWORD PTR [ebx],edx
 795:	00 00                	add    BYTE PTR [eax],al
 797:	12 34 00             	adc    dh,BYTE PTR [eax+eax*1]
 79a:	03 0e                	add    ecx,DWORD PTR [esi]
 79c:	3a 21                	cmp    ah,BYTE PTR [ecx]
 79e:	01 3b                	add    DWORD PTR [ebx],edi
 7a0:	0b 39                	or     edi,DWORD PTR [ecx]
 7a2:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 7a5:	02 17                	add    dl,BYTE PTR [edi]
 7a7:	b7 42                	mov    bh,0x42
 7a9:	17                   	pop    ss
 7aa:	00 00                	add    BYTE PTR [eax],al
 7ac:	13 05 00 03 08 3a    	adc    eax,DWORD PTR ds:0x3a080300
 7b2:	21 01                	and    DWORD PTR [ecx],eax
 7b4:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 7ba:	02 17                	add    dl,BYTE PTR [edi]
 7bc:	b7 42                	mov    bh,0x42
 7be:	17                   	pop    ss
 7bf:	00 00                	add    BYTE PTR [eax],al
 7c1:	14 05                	adc    al,0x5
 7c3:	00 03                	add    BYTE PTR [ebx],al
 7c5:	0e                   	push   cs
 7c6:	3a 21                	cmp    ah,BYTE PTR [ecx]
 7c8:	01 3b                	add    DWORD PTR [ebx],edi
 7ca:	05 39 0b 49 13       	add    eax,0x13490b39
 7cf:	02 18                	add    bl,BYTE PTR [eax]
 7d1:	00 00                	add    BYTE PTR [eax],al
 7d3:	15 05 00 03 08       	adc    eax,0x8030005
 7d8:	3a 21                	cmp    ah,BYTE PTR [ecx]
 7da:	01 3b                	add    DWORD PTR [ebx],edi
 7dc:	05 39 0b 49 13       	add    eax,0x13490b39
 7e1:	02 18                	add    bl,BYTE PTR [eax]
 7e3:	00 00                	add    BYTE PTR [eax],al
 7e5:	16                   	push   ss
 7e6:	34 00                	xor    al,0x0
 7e8:	03 0e                	add    ecx,DWORD PTR [esi]
 7ea:	3a 21                	cmp    ah,BYTE PTR [ecx]
 7ec:	01 3b                	add    DWORD PTR [ebx],edi
 7ee:	0b 39                	or     edi,DWORD PTR [ecx]
 7f0:	21 22                	and    DWORD PTR [edx],esp
 7f2:	49                   	dec    ecx
 7f3:	13 02                	adc    eax,DWORD PTR [edx]
 7f5:	18 00                	sbb    BYTE PTR [eax],al
 7f7:	00 17                	add    BYTE PTR [edi],dl
 7f9:	18 00                	sbb    BYTE PTR [eax],al
 7fb:	00 00                	add    BYTE PTR [eax],al
 7fd:	18 05 00 03 0e 3a    	sbb    BYTE PTR ds:0x3a0e0300,al
 803:	21 01                	and    DWORD PTR [ecx],eax
 805:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 807:	39 0b                	cmp    DWORD PTR [ebx],ecx
 809:	49                   	dec    ecx
 80a:	13 02                	adc    eax,DWORD PTR [edx]
 80c:	17                   	pop    ss
 80d:	b7 42                	mov    bh,0x42
 80f:	17                   	pop    ss
 810:	00 00                	add    BYTE PTR [eax],al
 812:	19 13                	sbb    DWORD PTR [ebx],edx
 814:	01 03                	add    DWORD PTR [ebx],eax
 816:	0e                   	push   cs
 817:	0b 0b                	or     ecx,DWORD PTR [ebx]
 819:	3a 21                	cmp    ah,BYTE PTR [ecx]
 81b:	01 3b                	add    DWORD PTR [ebx],edi
 81d:	0b 39                	or     edi,DWORD PTR [ecx]
 81f:	21 08                	and    DWORD PTR [eax],ecx
 821:	01 13                	add    DWORD PTR [ebx],edx
 823:	00 00                	add    BYTE PTR [eax],al
 825:	1a 2e                	sbb    ch,BYTE PTR [esi]
 827:	01 3f                	add    DWORD PTR [edi],edi
 829:	19 03                	sbb    DWORD PTR [ebx],eax
 82b:	0e                   	push   cs
 82c:	3a 21                	cmp    ah,BYTE PTR [ecx]
 82e:	01 3b                	add    DWORD PTR [ebx],edi
 830:	05 39 21 01 27       	add    eax,0x27012139
 835:	19 11                	sbb    DWORD PTR [ecx],edx
 837:	01 12                	add    DWORD PTR [edx],edx
 839:	06                   	push   es
 83a:	40                   	inc    eax
 83b:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 83e:	01 13                	add    DWORD PTR [ebx],edx
 840:	00 00                	add    BYTE PTR [eax],al
 842:	1b 01                	sbb    eax,DWORD PTR [ecx]
 844:	01 49 13             	add    DWORD PTR [ecx+0x13],ecx
 847:	01 13                	add    DWORD PTR [ebx],edx
 849:	00 00                	add    BYTE PTR [eax],al
 84b:	1c 21                	sbb    al,0x21
 84d:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
 850:	2f                   	das
 851:	0b 00                	or     eax,DWORD PTR [eax]
 853:	00 1d 0b 01 55 17    	add    BYTE PTR ds:0x1755010b,bl
 859:	00 00                	add    BYTE PTR [eax],al
 85b:	1e                   	push   ds
 85c:	2e 01 03             	add    DWORD PTR cs:[ebx],eax
 85f:	0e                   	push   cs
 860:	3a 21                	cmp    ah,BYTE PTR [ecx]
 862:	01 3b                	add    DWORD PTR [ebx],edi
 864:	05 39 21 01 27       	add    eax,0x27012139
 869:	19 11                	sbb    DWORD PTR [ecx],edx
 86b:	01 12                	add    DWORD PTR [edx],edx
 86d:	06                   	push   es
 86e:	40                   	inc    eax
 86f:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 872:	01 13                	add    DWORD PTR [ebx],edx
 874:	00 00                	add    BYTE PTR [eax],al
 876:	1f                   	pop    ds
 877:	34 00                	xor    al,0x0
 879:	03 08                	add    ecx,DWORD PTR [eax]
 87b:	3a 21                	cmp    ah,BYTE PTR [ecx]
 87d:	01 3b                	add    DWORD PTR [ebx],edi
 87f:	05 39 0b 49 13       	add    eax,0x13490b39
 884:	02 18                	add    bl,BYTE PTR [eax]
 886:	00 00                	add    BYTE PTR [eax],al
 888:	20 2e                	and    BYTE PTR [esi],ch
 88a:	01 3f                	add    DWORD PTR [edi],edi
 88c:	19 03                	sbb    DWORD PTR [ebx],eax
 88e:	0e                   	push   cs
 88f:	3a 21                	cmp    ah,BYTE PTR [ecx]
 891:	01 3b                	add    DWORD PTR [ebx],edi
 893:	0b 39                	or     edi,DWORD PTR [ecx]
 895:	21 01                	and    DWORD PTR [ecx],eax
 897:	27                   	daa
 898:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 89b:	11 01                	adc    DWORD PTR [ecx],eax
 89d:	12 06                	adc    al,BYTE PTR [esi]
 89f:	40                   	inc    eax
 8a0:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 8a3:	01 13                	add    DWORD PTR [ebx],edx
 8a5:	00 00                	add    BYTE PTR [eax],al
 8a7:	21 0d 00 03 08 3a    	and    DWORD PTR ds:0x3a080300,ecx
 8ad:	21 01                	and    DWORD PTR [ecx],eax
 8af:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 8b1:	39 0b                	cmp    DWORD PTR [ebx],ecx
 8b3:	49                   	dec    ecx
 8b4:	13 38                	adc    edi,DWORD PTR [eax]
 8b6:	0b 00                	or     eax,DWORD PTR [eax]
 8b8:	00 22                	add    BYTE PTR [edx],ah
 8ba:	04 01                	add    al,0x1
 8bc:	3e 21 07             	and    DWORD PTR ds:[edi],eax
 8bf:	0b 21                	or     esp,DWORD PTR [ecx]
 8c1:	04 49                	add    al,0x49
 8c3:	13 3a                	adc    edi,DWORD PTR [edx]
 8c5:	21 01                	and    DWORD PTR [ecx],eax
 8c7:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 8c9:	39 21                	cmp    DWORD PTR [ecx],esp
 8cb:	07                   	pop    es
 8cc:	01 13                	add    DWORD PTR [ebx],edx
 8ce:	00 00                	add    BYTE PTR [eax],al
 8d0:	23 2e                	and    ebp,DWORD PTR [esi]
 8d2:	01 3f                	add    DWORD PTR [edi],edi
 8d4:	19 03                	sbb    DWORD PTR [ebx],eax
 8d6:	0e                   	push   cs
 8d7:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 8d9:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 8db:	39 0b                	cmp    DWORD PTR [ebx],ecx
 8dd:	27                   	daa
 8de:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 8e1:	3c 19                	cmp    al,0x19
 8e3:	01 13                	add    DWORD PTR [ebx],edx
 8e5:	00 00                	add    BYTE PTR [eax],al
 8e7:	24 48                	and    al,0x48
 8e9:	01 7d 01             	add    DWORD PTR [ebp+0x1],edi
 8ec:	00 00                	add    BYTE PTR [eax],al
 8ee:	25 48 00 7d 01       	and    eax,0x17d0048
 8f3:	7f 13                	jg     908 <__executable_start-0x804778c>
 8f5:	00 00                	add    BYTE PTR [eax],al
 8f7:	26 05 00 03 0e 3a    	es add eax,0x3a0e0300
 8fd:	21 01                	and    DWORD PTR [ecx],eax
 8ff:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 905:	00 00                	add    BYTE PTR [eax],al
 907:	27                   	daa
 908:	34 00                	xor    al,0x0
 90a:	03 08                	add    ecx,DWORD PTR [eax]
 90c:	3a 21                	cmp    ah,BYTE PTR [ecx]
 90e:	01 3b                	add    DWORD PTR [ebx],edi
 910:	0b 39                	or     edi,DWORD PTR [ecx]
 912:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 915:	02 18                	add    bl,BYTE PTR [eax]
 917:	00 00                	add    BYTE PTR [eax],al
 919:	28 34 00             	sub    BYTE PTR [eax+eax*1],dh
 91c:	03 08                	add    ecx,DWORD PTR [eax]
 91e:	3a 21                	cmp    ah,BYTE PTR [ecx]
 920:	01 3b                	add    DWORD PTR [ebx],edi
 922:	0b 39                	or     edi,DWORD PTR [ecx]
 924:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 927:	02 17                	add    dl,BYTE PTR [edi]
 929:	b7 42                	mov    bh,0x42
 92b:	17                   	pop    ss
 92c:	00 00                	add    BYTE PTR [eax],al
 92e:	29 2e                	sub    DWORD PTR [esi],ebp
 930:	01 03                	add    DWORD PTR [ebx],eax
 932:	0e                   	push   cs
 933:	3a 21                	cmp    ah,BYTE PTR [ecx]
 935:	02 3b                	add    bh,BYTE PTR [ebx]
 937:	0b 39                	or     edi,DWORD PTR [ecx]
 939:	21 13                	and    DWORD PTR [ebx],edx
 93b:	27                   	daa
 93c:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 93f:	20 21                	and    BYTE PTR [ecx],ah
 941:	03 01                	add    eax,DWORD PTR [ecx]
 943:	13 00                	adc    eax,DWORD PTR [eax]
 945:	00 2a                	add    BYTE PTR [edx],ch
 947:	05 00 03 08 3a       	add    eax,0x3a080300
 94c:	21 02                	and    DWORD PTR [edx],eax
 94e:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 950:	39 21                	cmp    DWORD PTR [ecx],esp
 952:	20 49 13             	and    BYTE PTR [ecx+0x13],cl
 955:	00 00                	add    BYTE PTR [eax],al
 957:	2b 2e                	sub    ebp,DWORD PTR [esi]
 959:	00 3f                	add    BYTE PTR [edi],bh
 95b:	19 3c 19             	sbb    DWORD PTR [ecx+ebx*1],edi
 95e:	6e                   	outs   dx,BYTE PTR ds:[esi]
 95f:	0e                   	push   cs
 960:	03 0e                	add    ecx,DWORD PTR [esi]
 962:	00 00                	add    BYTE PTR [eax],al
 964:	2c 11                	sub    al,0x11
 966:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
 96c:	1f                   	pop    ds
 96d:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 96f:	11 01                	adc    DWORD PTR [ecx],eax
 971:	12 06                	adc    al,BYTE PTR [esi]
 973:	10 17                	adc    BYTE PTR [edi],dl
 975:	00 00                	add    BYTE PTR [eax],al
 977:	2d 24 00 0b 0b       	sub    eax,0xb0b0024
 97c:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 97f:	08 00                	or     BYTE PTR [eax],al
 981:	00 2e                	add    BYTE PTR [esi],ch
 983:	0f 00 0b             	str    WORD PTR [ebx]
 986:	0b 03                	or     eax,DWORD PTR [ebx]
 988:	0e                   	push   cs
 989:	49                   	dec    ecx
 98a:	13 00                	adc    eax,DWORD PTR [eax]
 98c:	00 2f                	add    BYTE PTR [edi],ch
 98e:	28 00                	sub    BYTE PTR [eax],al
 990:	03 08                	add    ecx,DWORD PTR [eax]
 992:	1c 0b                	sbb    al,0xb
 994:	00 00                	add    BYTE PTR [eax],al
 996:	30 2e                	xor    BYTE PTR [esi],ch
 998:	01 3f                	add    DWORD PTR [edi],edi
 99a:	19 03                	sbb    DWORD PTR [ebx],eax
 99c:	0e                   	push   cs
 99d:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 99f:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 9a1:	39 0b                	cmp    DWORD PTR [ebx],ecx
 9a3:	27                   	daa
 9a4:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
 9aa:	01 13                	add    DWORD PTR [ebx],edx
 9ac:	00 00                	add    BYTE PTR [eax],al
 9ae:	31 34 00             	xor    DWORD PTR [eax+eax*1],esi
 9b1:	03 0e                	add    ecx,DWORD PTR [esi]
 9b3:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 9b5:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 9bb:	02 18                	add    bl,BYTE PTR [eax]
 9bd:	00 00                	add    BYTE PTR [eax],al
 9bf:	32 34 00             	xor    dh,BYTE PTR [eax+eax*1]
 9c2:	03 0e                	add    ecx,DWORD PTR [esi]
 9c4:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 9c6:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 9cc:	1c 0b                	sbb    al,0xb
 9ce:	00 00                	add    BYTE PTR [eax],al
 9d0:	33 1d 01 31 13 52    	xor    ebx,DWORD PTR ds:0x52133101
 9d6:	01 b8 42 05 11 01    	add    DWORD PTR [eax+0x1110542],edi
 9dc:	12 06                	adc    al,BYTE PTR [esi]
 9de:	58                   	pop    eax
 9df:	0b 59 05             	or     ebx,DWORD PTR [ecx+0x5]
 9e2:	57                   	push   edi
 9e3:	0b 01                	or     eax,DWORD PTR [ecx]
 9e5:	13 00                	adc    eax,DWORD PTR [eax]
 9e7:	00 34 26             	add    BYTE PTR [esi+eiz*1],dh
 9ea:	00 00                	add    BYTE PTR [eax],al
 9ec:	00 35 15 01 27 19    	add    BYTE PTR ds:0x19270115,dh
 9f2:	01 13                	add    DWORD PTR [ebx],edx
 9f4:	00 00                	add    BYTE PTR [eax],al
 9f6:	36 0f 00 0b          	str    WORD PTR ss:[ebx]
 9fa:	0b 00                	or     eax,DWORD PTR [eax]
 9fc:	00 37                	add    BYTE PTR [edi],dh
 9fe:	2e 01 03             	add    DWORD PTR cs:[ebx],eax
 a01:	0e                   	push   cs
 a02:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 a04:	3b 05 39 0b 27 19    	cmp    eax,DWORD PTR ds:0x19270b39
 a0a:	49                   	dec    ecx
 a0b:	13 20                	adc    esp,DWORD PTR [eax]
 a0d:	0b 01                	or     eax,DWORD PTR [ecx]
 a0f:	13 00                	adc    eax,DWORD PTR [eax]
 a11:	00 38                	add    BYTE PTR [eax],bh
 a13:	05 00 03 08 3a       	add    eax,0x3a080300
 a18:	0b 3b                	or     edi,DWORD PTR [ebx]
 a1a:	05 39 0b 49 13       	add    eax,0x13490b39
 a1f:	00 00                	add    BYTE PTR [eax],al
 a21:	39 0a                	cmp    DWORD PTR [edx],ecx
 a23:	00 03                	add    BYTE PTR [ebx],al
 a25:	0e                   	push   cs
 a26:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 a28:	3b 05 39 0b 00 00    	cmp    eax,DWORD PTR ds:0xb39
 a2e:	3a 2e                	cmp    ch,BYTE PTR [esi]
 a30:	01 3f                	add    DWORD PTR [edi],edi
 a32:	19 03                	sbb    DWORD PTR [ebx],eax
 a34:	0e                   	push   cs
 a35:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 a37:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 a39:	39 0b                	cmp    DWORD PTR [ebx],ecx
 a3b:	27                   	daa
 a3c:	19 11                	sbb    DWORD PTR [ecx],edx
 a3e:	01 12                	add    DWORD PTR [edx],edx
 a40:	06                   	push   es
 a41:	40                   	inc    eax
 a42:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 a45:	01 13                	add    DWORD PTR [ebx],edx
 a47:	00 00                	add    BYTE PTR [eax],al
 a49:	3b 05 00 03 08 3a    	cmp    eax,DWORD PTR ds:0x3a080300
 a4f:	0b 3b                	or     edi,DWORD PTR [ebx]
 a51:	0b 39                	or     edi,DWORD PTR [ecx]
 a53:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 a56:	02 18                	add    bl,BYTE PTR [eax]
 a58:	00 00                	add    BYTE PTR [eax],al
 a5a:	3c 34                	cmp    al,0x34
 a5c:	00 03                	add    BYTE PTR [ebx],al
 a5e:	0e                   	push   cs
 a5f:	49                   	dec    ecx
 a60:	13 34 19             	adc    esi,DWORD PTR [ecx+ebx*1]
 a63:	02 18                	add    bl,BYTE PTR [eax]
 a65:	00 00                	add    BYTE PTR [eax],al
 a67:	3d 1d 01 31 13       	cmp    eax,0x1331011d
 a6c:	52                   	push   edx
 a6d:	01 b8 42 05 55 17    	add    DWORD PTR [eax+0x17550542],edi
 a73:	58                   	pop    eax
 a74:	0b 59 0b             	or     ebx,DWORD PTR [ecx+0xb]
 a77:	57                   	push   edi
 a78:	0b 01                	or     eax,DWORD PTR [ecx]
 a7a:	13 00                	adc    eax,DWORD PTR [eax]
 a7c:	00 3e                	add    BYTE PTR [esi],bh
 a7e:	0a 00                	or     al,BYTE PTR [eax]
 a80:	31 13                	xor    DWORD PTR [ebx],edx
 a82:	11 01                	adc    DWORD PTR [ecx],eax
 a84:	00 00                	add    BYTE PTR [eax],al
 a86:	3f                   	aas
 a87:	1d 01 31 13 52       	sbb    eax,0x52133101
 a8c:	01 b8 42 05 55 17    	add    DWORD PTR [eax+0x17550542],edi
 a92:	58                   	pop    eax
 a93:	0b 59 05             	or     ebx,DWORD PTR [ecx+0x5]
 a96:	57                   	push   edi
 a97:	0b 01                	or     eax,DWORD PTR [ecx]
 a99:	13 00                	adc    eax,DWORD PTR [eax]
 a9b:	00 40 1d             	add    BYTE PTR [eax+0x1d],al
 a9e:	01 31                	add    DWORD PTR [ecx],esi
 aa0:	13 52 01             	adc    edx,DWORD PTR [edx+0x1]
 aa3:	b8 42 05 55 17       	mov    eax,0x17550542
 aa8:	58                   	pop    eax
 aa9:	0b 59 05             	or     ebx,DWORD PTR [ecx+0x5]
 aac:	57                   	push   edi
 aad:	0b 00                	or     eax,DWORD PTR [eax]
 aaf:	00 41 2e             	add    BYTE PTR [ecx+0x2e],al
 ab2:	01 03                	add    DWORD PTR [ebx],eax
 ab4:	0e                   	push   cs
 ab5:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 ab7:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 ab9:	39 0b                	cmp    DWORD PTR [ebx],ecx
 abb:	27                   	daa
 abc:	19 11                	sbb    DWORD PTR [ecx],edx
 abe:	01 12                	add    DWORD PTR [edx],edx
 ac0:	06                   	push   es
 ac1:	40                   	inc    eax
 ac2:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 ac5:	01 13                	add    DWORD PTR [ebx],edx
 ac7:	00 00                	add    BYTE PTR [eax],al
 ac9:	42                   	inc    edx
 aca:	05 00 03 08 3a       	add    eax,0x3a080300
 acf:	0b 3b                	or     edi,DWORD PTR [ebx]
 ad1:	0b 39                	or     edi,DWORD PTR [ecx]
 ad3:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 ad6:	02 17                	add    dl,BYTE PTR [edi]
 ad8:	b7 42                	mov    bh,0x42
 ada:	17                   	pop    ss
 adb:	00 00                	add    BYTE PTR [eax],al
 add:	00 01                	add    BYTE PTR [ecx],al
 adf:	49                   	dec    ecx
 ae0:	00 02                	add    BYTE PTR [edx],al
 ae2:	18 7e 18             	sbb    BYTE PTR [esi+0x18],bh
 ae5:	00 00                	add    BYTE PTR [eax],al
 ae7:	02 48 01             	add    cl,BYTE PTR [eax+0x1]
 aea:	7d 01                	jge    aed <__executable_start-0x80475a7>
 aec:	7f 13                	jg     b01 <__executable_start-0x8047593>
 aee:	00 00                	add    BYTE PTR [eax],al
 af0:	03 48 01             	add    ecx,DWORD PTR [eax+0x1]
 af3:	7d 01                	jge    af6 <__executable_start-0x804759e>
 af5:	7f 13                	jg     b0a <__executable_start-0x804758a>
 af7:	01 13                	add    DWORD PTR [ebx],edx
 af9:	00 00                	add    BYTE PTR [eax],al
 afb:	04 05                	add    al,0x5
 afd:	00 03                	add    BYTE PTR [ebx],al
 aff:	0e                   	push   cs
 b00:	3a 21                	cmp    ah,BYTE PTR [ecx]
 b02:	01 3b                	add    DWORD PTR [ebx],edi
 b04:	0b 39                	or     edi,DWORD PTR [ecx]
 b06:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 b09:	02 18                	add    bl,BYTE PTR [eax]
 b0b:	00 00                	add    BYTE PTR [eax],al
 b0d:	05 34 00 03 08       	add    eax,0x8030034
 b12:	3a 21                	cmp    ah,BYTE PTR [ecx]
 b14:	01 3b                	add    DWORD PTR [ebx],edi
 b16:	0b 39                	or     edi,DWORD PTR [ecx]
 b18:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 b1b:	02 17                	add    dl,BYTE PTR [edi]
 b1d:	b7 42                	mov    bh,0x42
 b1f:	17                   	pop    ss
 b20:	00 00                	add    BYTE PTR [eax],al
 b22:	06                   	push   es
 b23:	34 00                	xor    al,0x0
 b25:	03 0e                	add    ecx,DWORD PTR [esi]
 b27:	49                   	dec    ecx
 b28:	13 34 19             	adc    esi,DWORD PTR [ecx+ebx*1]
 b2b:	02 18                	add    bl,BYTE PTR [eax]
 b2d:	00 00                	add    BYTE PTR [eax],al
 b2f:	07                   	pop    es
 b30:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 b33:	19 03                	sbb    DWORD PTR [ebx],eax
 b35:	0e                   	push   cs
 b36:	3a 21                	cmp    ah,BYTE PTR [ecx]
 b38:	01 3b                	add    DWORD PTR [ebx],edi
 b3a:	0b 39                	or     edi,DWORD PTR [ecx]
 b3c:	21 01                	and    DWORD PTR [ecx],eax
 b3e:	27                   	daa
 b3f:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 b42:	11 01                	adc    DWORD PTR [ecx],eax
 b44:	12 06                	adc    al,BYTE PTR [esi]
 b46:	40                   	inc    eax
 b47:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 b4a:	01 13                	add    DWORD PTR [ebx],edx
 b4c:	00 00                	add    BYTE PTR [eax],al
 b4e:	08 05 00 03 0e 3a    	or     BYTE PTR ds:0x3a0e0300,al
 b54:	21 01                	and    DWORD PTR [ecx],eax
 b56:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 b58:	39 0b                	cmp    DWORD PTR [ebx],ecx
 b5a:	49                   	dec    ecx
 b5b:	13 02                	adc    eax,DWORD PTR [edx]
 b5d:	17                   	pop    ss
 b5e:	b7 42                	mov    bh,0x42
 b60:	17                   	pop    ss
 b61:	00 00                	add    BYTE PTR [eax],al
 b63:	09 0f                	or     DWORD PTR [edi],ecx
 b65:	00 0b                	add    BYTE PTR [ebx],cl
 b67:	21 04 49             	and    DWORD PTR [ecx+ecx*2],eax
 b6a:	13 00                	adc    eax,DWORD PTR [eax]
 b6c:	00 0a                	add    BYTE PTR [edx],cl
 b6e:	34 00                	xor    al,0x0
 b70:	03 0e                	add    ecx,DWORD PTR [esi]
 b72:	3a 21                	cmp    ah,BYTE PTR [ecx]
 b74:	01 3b                	add    DWORD PTR [ebx],edi
 b76:	05 39 0b 49 13       	add    eax,0x13490b39
 b7b:	02 17                	add    dl,BYTE PTR [edi]
 b7d:	b7 42                	mov    bh,0x42
 b7f:	17                   	pop    ss
 b80:	00 00                	add    BYTE PTR [eax],al
 b82:	0b 26                	or     esp,DWORD PTR [esi]
 b84:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
 b87:	00 00                	add    BYTE PTR [eax],al
 b89:	0c 2e                	or     al,0x2e
 b8b:	01 3f                	add    DWORD PTR [edi],edi
 b8d:	19 03                	sbb    DWORD PTR [ebx],eax
 b8f:	0e                   	push   cs
 b90:	3a 21                	cmp    ah,BYTE PTR [ecx]
 b92:	01 3b                	add    DWORD PTR [ebx],edi
 b94:	05 39 21 01 27       	add    eax,0x27012139
 b99:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 b9c:	11 01                	adc    DWORD PTR [ecx],eax
 b9e:	12 06                	adc    al,BYTE PTR [esi]
 ba0:	40                   	inc    eax
 ba1:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 ba4:	01 13                	add    DWORD PTR [ebx],edx
 ba6:	00 00                	add    BYTE PTR [eax],al
 ba8:	0d 05 00 03 0e       	or     eax,0xe030005
 bad:	3a 21                	cmp    ah,BYTE PTR [ecx]
 baf:	01 3b                	add    DWORD PTR [ebx],edi
 bb1:	05 39 0b 49 13       	add    eax,0x13490b39
 bb6:	02 18                	add    bl,BYTE PTR [eax]
 bb8:	00 00                	add    BYTE PTR [eax],al
 bba:	0e                   	push   cs
 bbb:	34 00                	xor    al,0x0
 bbd:	03 0e                	add    ecx,DWORD PTR [esi]
 bbf:	3a 21                	cmp    ah,BYTE PTR [ecx]
 bc1:	01 3b                	add    DWORD PTR [ebx],edi
 bc3:	0b 39                	or     edi,DWORD PTR [ecx]
 bc5:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 bc8:	02 17                	add    dl,BYTE PTR [edi]
 bca:	b7 42                	mov    bh,0x42
 bcc:	17                   	pop    ss
 bcd:	00 00                	add    BYTE PTR [eax],al
 bcf:	0f 05                	syscall
 bd1:	00 49 13             	add    BYTE PTR [ecx+0x13],cl
 bd4:	00 00                	add    BYTE PTR [eax],al
 bd6:	10 05 00 03 08 3a    	adc    BYTE PTR ds:0x3a080300,al
 bdc:	21 01                	and    DWORD PTR [ecx],eax
 bde:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 be0:	39 0b                	cmp    DWORD PTR [ebx],ecx
 be2:	49                   	dec    ecx
 be3:	13 02                	adc    eax,DWORD PTR [edx]
 be5:	17                   	pop    ss
 be6:	b7 42                	mov    bh,0x42
 be8:	17                   	pop    ss
 be9:	00 00                	add    BYTE PTR [eax],al
 beb:	11 05 00 03 08 3a    	adc    DWORD PTR ds:0x3a080300,eax
 bf1:	21 01                	and    DWORD PTR [ecx],eax
 bf3:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 bf5:	39 0b                	cmp    DWORD PTR [ebx],ecx
 bf7:	49                   	dec    ecx
 bf8:	13 02                	adc    eax,DWORD PTR [edx]
 bfa:	18 00                	sbb    BYTE PTR [eax],al
 bfc:	00 12                	add    BYTE PTR [edx],dl
 bfe:	24 00                	and    al,0x0
 c00:	0b 0b                	or     ecx,DWORD PTR [ebx]
 c02:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 c05:	0e                   	push   cs
 c06:	00 00                	add    BYTE PTR [eax],al
 c08:	13 05 00 03 0e 3a    	adc    eax,DWORD PTR ds:0x3a0e0300
 c0e:	21 01                	and    DWORD PTR [ecx],eax
 c10:	3b 05 39 0b 49 13    	cmp    eax,DWORD PTR ds:0x13490b39
 c16:	02 17                	add    dl,BYTE PTR [edi]
 c18:	b7 42                	mov    bh,0x42
 c1a:	17                   	pop    ss
 c1b:	00 00                	add    BYTE PTR [eax],al
 c1d:	14 0b                	adc    al,0xb
 c1f:	01 11                	add    DWORD PTR [ecx],edx
 c21:	01 12                	add    DWORD PTR [edx],edx
 c23:	06                   	push   es
 c24:	01 13                	add    DWORD PTR [ebx],edx
 c26:	00 00                	add    BYTE PTR [eax],al
 c28:	15 01 01 49 13       	adc    eax,0x13490101
 c2d:	01 13                	add    DWORD PTR [ebx],edx
 c2f:	00 00                	add    BYTE PTR [eax],al
 c31:	16                   	push   ss
 c32:	21 00                	and    DWORD PTR [eax],eax
 c34:	49                   	dec    ecx
 c35:	13 2f                	adc    ebp,DWORD PTR [edi]
 c37:	0b 00                	or     eax,DWORD PTR [eax]
 c39:	00 17                	add    BYTE PTR [edi],dl
 c3b:	05 00 03 08 3a       	add    eax,0x3a080300
 c40:	21 01                	and    DWORD PTR [ecx],eax
 c42:	3b 05 39 21 10 49    	cmp    eax,DWORD PTR ds:0x49102139
 c48:	13 02                	adc    eax,DWORD PTR [edx]
 c4a:	18 00                	sbb    BYTE PTR [eax],al
 c4c:	00 18                	add    BYTE PTR [eax],bl
 c4e:	05 00 03 08 3a       	add    eax,0x3a080300
 c53:	21 01                	and    DWORD PTR [ecx],eax
 c55:	3b 05 39 21 21 49    	cmp    eax,DWORD PTR ds:0x49212139
 c5b:	13 02                	adc    eax,DWORD PTR [edx]
 c5d:	17                   	pop    ss
 c5e:	b7 42                	mov    bh,0x42
 c60:	17                   	pop    ss
 c61:	00 00                	add    BYTE PTR [eax],al
 c63:	19 34 00             	sbb    DWORD PTR [eax+eax*1],esi
 c66:	03 08                	add    ecx,DWORD PTR [eax]
 c68:	3a 21                	cmp    ah,BYTE PTR [ecx]
 c6a:	01 3b                	add    DWORD PTR [ebx],edi
 c6c:	05 39 0b 49 13       	add    eax,0x13490b39
 c71:	02 17                	add    dl,BYTE PTR [edi]
 c73:	b7 42                	mov    bh,0x42
 c75:	17                   	pop    ss
 c76:	00 00                	add    BYTE PTR [eax],al
 c78:	1a 11                	sbb    dl,BYTE PTR [ecx]
 c7a:	01 25 0e 13 0b 03    	add    DWORD PTR ds:0x30b130e,esp
 c80:	1f                   	pop    ds
 c81:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 c83:	11 01                	adc    DWORD PTR [ecx],eax
 c85:	12 06                	adc    al,BYTE PTR [esi]
 c87:	10 17                	adc    BYTE PTR [edi],dl
 c89:	00 00                	add    BYTE PTR [eax],al
 c8b:	1b 24 00             	sbb    esp,DWORD PTR [eax+eax*1]
 c8e:	0b 0b                	or     ecx,DWORD PTR [ebx]
 c90:	3e 0b 03             	or     eax,DWORD PTR ds:[ebx]
 c93:	08 00                	or     BYTE PTR [eax],al
 c95:	00 1c 16             	add    BYTE PTR [esi+edx*1],bl
 c98:	00 03                	add    BYTE PTR [ebx],al
 c9a:	0e                   	push   cs
 c9b:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 c9d:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 c9f:	39 0b                	cmp    DWORD PTR [ebx],ecx
 ca1:	49                   	dec    ecx
 ca2:	13 00                	adc    eax,DWORD PTR [eax]
 ca4:	00 1d 2e 01 3f 19    	add    BYTE PTR ds:0x193f012e,bl
 caa:	03 0e                	add    ecx,DWORD PTR [esi]
 cac:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 cae:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 cb0:	39 0b                	cmp    DWORD PTR [ebx],ecx
 cb2:	27                   	daa
 cb3:	19 87 01 19 3c 19    	sbb    DWORD PTR [edi+0x193c1901],eax
 cb9:	01 13                	add    DWORD PTR [ebx],edx
 cbb:	00 00                	add    BYTE PTR [eax],al
 cbd:	1e                   	push   ds
 cbe:	18 00                	sbb    BYTE PTR [eax],al
 cc0:	00 00                	add    BYTE PTR [eax],al
 cc2:	1f                   	pop    ds
 cc3:	0f 00 0b             	str    WORD PTR [ebx]
 cc6:	0b 00                	or     eax,DWORD PTR [eax]
 cc8:	00 20                	add    BYTE PTR [eax],ah
 cca:	34 00                	xor    al,0x0
 ccc:	03 0e                	add    ecx,DWORD PTR [esi]
 cce:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 cd0:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 cd2:	39 0b                	cmp    DWORD PTR [ebx],ecx
 cd4:	49                   	dec    ecx
 cd5:	13 00                	adc    eax,DWORD PTR [eax]
 cd7:	00 21                	add    BYTE PTR [ecx],ah
 cd9:	26 00 00             	add    BYTE PTR es:[eax],al
 cdc:	00 22                	add    BYTE PTR [edx],ah
 cde:	2e 01 3f             	add    DWORD PTR cs:[edi],edi
 ce1:	19 03                	sbb    DWORD PTR [ebx],eax
 ce3:	0e                   	push   cs
 ce4:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 ce6:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 ce8:	39 0b                	cmp    DWORD PTR [ebx],ecx
 cea:	27                   	daa
 ceb:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 cee:	11 01                	adc    DWORD PTR [ecx],eax
 cf0:	12 06                	adc    al,BYTE PTR [esi]
 cf2:	40                   	inc    eax
 cf3:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 cf6:	00 00                	add    BYTE PTR [eax],al
 cf8:	00 01                	add    BYTE PTR [ecx],al
 cfa:	05 00 31 13 02       	add    eax,0x2133100
 cff:	17                   	pop    ss
 d00:	b7 42                	mov    bh,0x42
 d02:	17                   	pop    ss
 d03:	00 00                	add    BYTE PTR [eax],al
 d05:	02 34 00             	add    dh,BYTE PTR [eax+eax*1]
 d08:	31 13                	xor    DWORD PTR [ebx],edx
 d0a:	02 17                	add    dl,BYTE PTR [edi]
 d0c:	b7 42                	mov    bh,0x42
 d0e:	17                   	pop    ss
 d0f:	00 00                	add    BYTE PTR [eax],al
 d11:	03 05 00 03 08 3a    	add    eax,DWORD PTR ds:0x3a080300
 d17:	21 01                	and    DWORD PTR [ecx],eax
 d19:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 d1b:	39 0b                	cmp    DWORD PTR [ebx],ecx
 d1d:	49                   	dec    ecx
 d1e:	13 00                	adc    eax,DWORD PTR [eax]
 d20:	00 04 24             	add    BYTE PTR [esp],al
 d23:	00 0b                	add    BYTE PTR [ebx],cl
 d25:	0b 3e                	or     edi,DWORD PTR [esi]
 d27:	0b 03                	or     eax,DWORD PTR [ebx]
 d29:	0e                   	push   cs
 d2a:	00 00                	add    BYTE PTR [eax],al
 d2c:	05 05 00 03 08       	add    eax,0x8030005
 d31:	3a 21                	cmp    ah,BYTE PTR [ecx]
 d33:	01 3b                	add    DWORD PTR [ebx],edi
 d35:	0b 39                	or     edi,DWORD PTR [ecx]
 d37:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 d3a:	02 17                	add    dl,BYTE PTR [edi]
 d3c:	b7 42                	mov    bh,0x42
 d3e:	17                   	pop    ss
 d3f:	00 00                	add    BYTE PTR [eax],al
 d41:	06                   	push   es
 d42:	34 00                	xor    al,0x0
 d44:	03 08                	add    ecx,DWORD PTR [eax]
 d46:	3a 21                	cmp    ah,BYTE PTR [ecx]
 d48:	01 3b                	add    DWORD PTR [ebx],edi
 d4a:	0b 39                	or     edi,DWORD PTR [ecx]
 d4c:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 d4f:	02 17                	add    dl,BYTE PTR [edi]
 d51:	b7 42                	mov    bh,0x42
 d53:	17                   	pop    ss
 d54:	00 00                	add    BYTE PTR [eax],al
 d56:	07                   	pop    es
 d57:	05 00 03 08 3a       	add    eax,0x3a080300
 d5c:	21 01                	and    DWORD PTR [ecx],eax
 d5e:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 d60:	39 0b                	cmp    DWORD PTR [ebx],ecx
 d62:	49                   	dec    ecx
 d63:	13 02                	adc    eax,DWORD PTR [edx]
 d65:	18 00                	sbb    BYTE PTR [eax],al
 d67:	00 08                	add    BYTE PTR [eax],cl
 d69:	34 00                	xor    al,0x0
 d6b:	03 08                	add    ecx,DWORD PTR [eax]
 d6d:	3a 21                	cmp    ah,BYTE PTR [ecx]
 d6f:	01 3b                	add    DWORD PTR [ebx],edi
 d71:	0b 39                	or     edi,DWORD PTR [ecx]
 d73:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 d76:	00 00                	add    BYTE PTR [eax],al
 d78:	09 2e                	or     DWORD PTR [esi],ebp
 d7a:	01 3f                	add    DWORD PTR [edi],edi
 d7c:	19 03                	sbb    DWORD PTR [ebx],eax
 d7e:	0e                   	push   cs
 d7f:	3a 21                	cmp    ah,BYTE PTR [ecx]
 d81:	01 3b                	add    DWORD PTR [ebx],edi
 d83:	0b 39                	or     edi,DWORD PTR [ecx]
 d85:	21 01                	and    DWORD PTR [ecx],eax
 d87:	27                   	daa
 d88:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 d8b:	11 01                	adc    DWORD PTR [ecx],eax
 d8d:	12 06                	adc    al,BYTE PTR [esi]
 d8f:	40                   	inc    eax
 d90:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 d93:	01 13                	add    DWORD PTR [ebx],edx
 d95:	00 00                	add    BYTE PTR [eax],al
 d97:	0a 48 00             	or     cl,BYTE PTR [eax+0x0]
 d9a:	7d 01                	jge    d9d <__executable_start-0x80472f7>
 d9c:	7f 13                	jg     db1 <__executable_start-0x80472e3>
 d9e:	00 00                	add    BYTE PTR [eax],al
 da0:	0b 16                	or     edx,DWORD PTR [esi]
 da2:	00 03                	add    BYTE PTR [ebx],al
 da4:	0e                   	push   cs
 da5:	3a 21                	cmp    ah,BYTE PTR [ecx]
 da7:	02 3b                	add    bh,BYTE PTR [ebx]
 da9:	0b 39                	or     edi,DWORD PTR [ecx]
 dab:	0b 49 13             	or     ecx,DWORD PTR [ecx+0x13]
 dae:	00 00                	add    BYTE PTR [eax],al
 db0:	0c 1d                	or     al,0x1d
 db2:	01 31                	add    DWORD PTR [ecx],esi
 db4:	13 52 01             	adc    edx,DWORD PTR [edx+0x1]
 db7:	b8 42 0b 55 17       	mov    eax,0x17550b42
 dbc:	58                   	pop    eax
 dbd:	21 01                	and    DWORD PTR [ecx],eax
 dbf:	59                   	pop    ecx
 dc0:	0b 57 0b             	or     edx,DWORD PTR [edi+0xb]
 dc3:	00 00                	add    BYTE PTR [eax],al
 dc5:	0d 0b 01 55 17       	or     eax,0x1755010b
 dca:	00 00                	add    BYTE PTR [eax],al
 dcc:	0e                   	push   cs
 dcd:	34 00                	xor    al,0x0
 dcf:	31 13                	xor    DWORD PTR [ebx],edx
 dd1:	00 00                	add    BYTE PTR [eax],al
 dd3:	0f 2e 01             	ucomiss xmm0,DWORD PTR [ecx]
 dd6:	03 0e                	add    ecx,DWORD PTR [esi]
 dd8:	3a 21                	cmp    ah,BYTE PTR [ecx]
 dda:	01 3b                	add    DWORD PTR [ebx],edi
 ddc:	0b 39                	or     edi,DWORD PTR [ecx]
 dde:	21 01                	and    DWORD PTR [ecx],eax
 de0:	27                   	daa
 de1:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 de4:	20 21                	and    BYTE PTR [ecx],ah
 de6:	01 01                	add    DWORD PTR [ecx],eax
 de8:	13 00                	adc    eax,DWORD PTR [eax]
 dea:	00 10                	add    BYTE PTR [eax],dl
 dec:	34 00                	xor    al,0x0
 dee:	03 0e                	add    ecx,DWORD PTR [esi]
 df0:	3a 21                	cmp    ah,BYTE PTR [ecx]
 df2:	01 3b                	add    DWORD PTR [ebx],edi
 df4:	0b 39                	or     edi,DWORD PTR [ecx]
 df6:	21 0c 49             	and    DWORD PTR [ecx+ecx*2],ecx
 df9:	13 00                	adc    eax,DWORD PTR [eax]
 dfb:	00 11                	add    BYTE PTR [ecx],dl
 dfd:	1d 01 31 13 52       	sbb    eax,0x52133101
 e02:	01 b8 42 0b 11 01    	add    DWORD PTR [eax+0x1110b42],edi
 e08:	12 06                	adc    al,BYTE PTR [esi]
 e0a:	58                   	pop    eax
 e0b:	21 01                	and    DWORD PTR [ecx],eax
 e0d:	59                   	pop    ecx
 e0e:	0b 57 0b             	or     edx,DWORD PTR [edi+0xb]
 e11:	00 00                	add    BYTE PTR [eax],al
 e13:	12 05 00 31 13 00    	adc    al,BYTE PTR ds:0x133100
 e19:	00 13                	add    BYTE PTR [ebx],dl
 e1b:	11 01                	adc    DWORD PTR [ecx],eax
 e1d:	25 0e 13 0b 03       	and    eax,0x30b130e
 e22:	1f                   	pop    ds
 e23:	1b 1f                	sbb    ebx,DWORD PTR [edi]
 e25:	11 01                	adc    DWORD PTR [ecx],eax
 e27:	12 06                	adc    al,BYTE PTR [esi]
 e29:	10 17                	adc    BYTE PTR [edi],dl
 e2b:	00 00                	add    BYTE PTR [eax],al
 e2d:	14 24                	adc    al,0x24
 e2f:	00 0b                	add    BYTE PTR [ebx],cl
 e31:	0b 3e                	or     edi,DWORD PTR [esi]
 e33:	0b 03                	or     eax,DWORD PTR [ebx]
 e35:	08 00                	or     BYTE PTR [eax],al
 e37:	00 15 0f 00 0b 0b    	add    BYTE PTR ds:0xb0b000f,dl
 e3d:	49                   	dec    ecx
 e3e:	13 00                	adc    eax,DWORD PTR [eax]
 e40:	00 16                	add    BYTE PTR [esi],dl
 e42:	34 00                	xor    al,0x0
 e44:	31 13                	xor    DWORD PTR [ebx],edx
 e46:	02 18                	add    bl,BYTE PTR [eax]
 e48:	00 00                	add    BYTE PTR [eax],al
 e4a:	17                   	pop    ss
 e4b:	2e 01 03             	add    DWORD PTR cs:[ebx],eax
 e4e:	0e                   	push   cs
 e4f:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 e51:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 e53:	39 0b                	cmp    DWORD PTR [ebx],ecx
 e55:	27                   	daa
 e56:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 e59:	11 01                	adc    DWORD PTR [ecx],eax
 e5b:	12 06                	adc    al,BYTE PTR [esi]
 e5d:	40                   	inc    eax
 e5e:	18 7a 19             	sbb    BYTE PTR [edx+0x19],bh
 e61:	01 13                	add    DWORD PTR [ebx],edx
 e63:	00 00                	add    BYTE PTR [eax],al
 e65:	18 0b                	sbb    BYTE PTR [ebx],cl
 e67:	01 11                	add    DWORD PTR [ecx],edx
 e69:	01 12                	add    DWORD PTR [edx],edx
 e6b:	06                   	push   es
 e6c:	01 13                	add    DWORD PTR [ebx],edx
 e6e:	00 00                	add    BYTE PTR [eax],al
 e70:	19 0b                	sbb    DWORD PTR [ebx],ecx
 e72:	01 11                	add    DWORD PTR [ecx],edx
 e74:	01 12                	add    DWORD PTR [edx],edx
 e76:	06                   	push   es
 e77:	00 00                	add    BYTE PTR [eax],al
 e79:	1a 1d 01 31 13 52    	sbb    bl,BYTE PTR ds:0x52133101
 e7f:	01 b8 42 0b 11 01    	add    DWORD PTR [eax+0x1110b42],edi
 e85:	12 06                	adc    al,BYTE PTR [esi]
 e87:	58                   	pop    eax
 e88:	0b 59 0b             	or     ebx,DWORD PTR [ecx+0xb]
 e8b:	57                   	push   edi
 e8c:	0b 01                	or     eax,DWORD PTR [ecx]
 e8e:	13 00                	adc    eax,DWORD PTR [eax]
 e90:	00 1b                	add    BYTE PTR [ebx],bl
 e92:	2e 01 03             	add    DWORD PTR cs:[ebx],eax
 e95:	08 3a                	or     BYTE PTR [edx],bh
 e97:	0b 3b                	or     edi,DWORD PTR [ebx]
 e99:	0b 39                	or     edi,DWORD PTR [ecx]
 e9b:	0b 27                	or     esp,DWORD PTR [edi]
 e9d:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 ea0:	20 0b                	and    BYTE PTR [ebx],cl
 ea2:	01 13                	add    DWORD PTR [ebx],edx
 ea4:	00 00                	add    BYTE PTR [eax],al
 ea6:	1c 2e                	sbb    al,0x2e
 ea8:	01 03                	add    DWORD PTR [ebx],eax
 eaa:	0e                   	push   cs
 eab:	3a 0b                	cmp    cl,BYTE PTR [ebx]
 ead:	3b 0b                	cmp    ecx,DWORD PTR [ebx]
 eaf:	39 0b                	cmp    DWORD PTR [ebx],ecx
 eb1:	27                   	daa
 eb2:	19 49 13             	sbb    DWORD PTR [ecx+0x13],ecx
 eb5:	20 0b                	and    BYTE PTR [ebx],cl
 eb7:	00 00                	add    BYTE PTR [eax],al
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0e                   	push   cs
       1:	01 00                	add    DWORD PTR [eax],eax
       3:	00 05 00 04 00 33    	add    BYTE PTR ds:0x33000400,al
       9:	00 00                	add    BYTE PTR [eax],al
       b:	00 01                	add    BYTE PTR [ecx],al
       d:	01 01                	add    DWORD PTR [ecx],eax
       f:	fb                   	sti
      10:	0e                   	push   cs
      11:	0d 00 01 01 01       	or     eax,0x1010100
      16:	01 00                	add    DWORD PTR [eax],eax
      18:	00 00                	add    BYTE PTR [eax],al
      1a:	01 00                	add    DWORD PTR [eax],eax
      1c:	00 01                	add    BYTE PTR [ecx],al
      1e:	01 01                	add    DWORD PTR [ecx],eax
      20:	1f                   	pop    ds
      21:	02 00                	add    al,BYTE PTR [eax]
      23:	00 00                	add    BYTE PTR [eax],al
      25:	00 2b                	add    BYTE PTR [ebx],ch
      27:	00 00                	add    BYTE PTR [eax],al
      29:	00 02                	add    BYTE PTR [edx],al
      2b:	01 1f                	add    DWORD PTR [edi],ebx
      2d:	02 0f                	add    cl,BYTE PTR [edi]
      2f:	03 21                	add    esp,DWORD PTR [ecx]
      31:	00 00                	add    BYTE PTR [eax],al
      33:	00 00                	add    BYTE PTR [eax],al
      35:	21 00                	and    DWORD PTR [eax],eax
      37:	00 00                	add    BYTE PTR [eax],al
      39:	00 37                	add    BYTE PTR [edi],dh
      3b:	00 00                	add    BYTE PTR [eax],al
      3d:	00 01                	add    BYTE PTR [ecx],al
      3f:	05 01 00 05 02       	add    eax,0x2050001
      44:	a0 80 04 08 03       	mov    al,ds:0x3080480
      49:	24 01                	and    al,0x1
      4b:	05 03 08 9f 15       	add    eax,0x159f0803
      50:	05 11 00 02 04       	add    eax,0x4020011
      55:	01 01                	add    DWORD PTR [ecx],eax
      57:	05 0c 06 08 e5       	add    eax,0xe508060c
      5c:	05 0a 49 05 13       	add    eax,0x1305490a
      61:	00 02                	add    BYTE PTR [edx],al
      63:	04 01                	add    al,0x1
      65:	06                   	push   es
      66:	91                   	xchg   ecx,eax
      67:	05 0c 06 01 05       	add    eax,0x501060c
      6c:	02 06                	add    al,BYTE PTR [esi]
      6e:	5a                   	pop    edx
      6f:	05 0a 06 01 05       	add    eax,0x501060a
      74:	02 06                	add    al,BYTE PTR [esi]
      76:	3d 05 0a 06 01       	cmp    eax,0x1060a05
      7b:	05 02 06 3d 05       	add    eax,0x53d0602
      80:	0a 06                	or     al,BYTE PTR [esi]
      82:	01 05 1b 00 02 04    	add    DWORD PTR ds:0x402001b,eax
      88:	03 06                	add    eax,DWORD PTR [esi]
      8a:	70 05                	jo     91 <__executable_start-0x8048003>
      8c:	13 00                	adc    eax,DWORD PTR [eax]
      8e:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
      91:	20 05 19 00 02 04    	and    BYTE PTR ds:0x4020019,al
      97:	02 73 05             	add    dh,BYTE PTR [ebx+0x5]
      9a:	11 00                	adc    DWORD PTR [eax],eax
      9c:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
      9f:	20 05 0a 06 03 09    	and    BYTE PTR ds:0x903060a,al
      a5:	08 58 4a             	or     BYTE PTR [eax+0x4a],bl
      a8:	05 13 00 02 04       	add    eax,0x4020013
      ad:	01 06                	add    DWORD PTR [esi],eax
      af:	08 2f                	or     BYTE PTR [edi],ch
      b1:	05 0a 06 03 76       	add    eax,0x7603060a
      b6:	08 4a 05             	or     BYTE PTR [edx+0x5],cl
      b9:	15 00 02 04 01       	adc    eax,0x1040200
      be:	06                   	push   es
      bf:	03 0b                	add    ecx,DWORD PTR [ebx]
      c1:	ba 05 0a 06 03       	mov    edx,0x3060a05
      c6:	75 ba                	jne    82 <__executable_start-0x8048012>
      c8:	05 02 06 03 0c       	add    eax,0xc030602
      cd:	4a                   	dec    edx
      ce:	05 15 06 01 05       	add    eax,0x5010615
      d3:	0a 58 05             	or     bl,BYTE PTR [eax+0x5]
      d6:	1d 00 02 04 03       	sbb    eax,0x3040200
      db:	06                   	push   es
      dc:	2d 05 15 00 02       	sub    eax,0x2001505
      e1:	04 01                	add    al,0x1
      e3:	01 05 1b 00 02 04    	add    DWORD PTR ds:0x402001b,eax
      e9:	02 08                	add    cl,BYTE PTR [eax]
      eb:	1f                   	pop    ds
      ec:	05 13 00 02 04       	add    eax,0x4020013
      f1:	01 01                	add    DWORD PTR [ecx],eax
      f3:	05 19 00 02 04       	add    eax,0x4020019
      f8:	02 06                	add    al,BYTE PTR [esi]
      fa:	d5 00                	aad    0x0
      fc:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
      ff:	06                   	push   es
     100:	82 05 11 00 02 04 01 	add    BYTE PTR ds:0x4020011,0x1
     107:	20 05 03 f7 06 4a    	and    BYTE PTR ds:0x4a06f703,al
     10d:	02 0e                	add    cl,BYTE PTR [esi]
     10f:	00 01                	add    BYTE PTR [ecx],al
     111:	01 58 00             	add    DWORD PTR [eax+0x0],ebx
     114:	00 00                	add    BYTE PTR [eax],al
     116:	05 00 04 00 33       	add    eax,0x33000400
     11b:	00 00                	add    BYTE PTR [eax],al
     11d:	00 01                	add    BYTE PTR [ecx],al
     11f:	01 01                	add    DWORD PTR [ecx],eax
     121:	fb                   	sti
     122:	0e                   	push   cs
     123:	0d 00 01 01 01       	or     eax,0x1010100
     128:	01 00                	add    DWORD PTR [eax],eax
     12a:	00 00                	add    BYTE PTR [eax],al
     12c:	01 00                	add    DWORD PTR [eax],eax
     12e:	00 01                	add    BYTE PTR [ecx],al
     130:	01 01                	add    DWORD PTR [ecx],eax
     132:	1f                   	pop    ds
     133:	02 00                	add    al,BYTE PTR [eax]
     135:	00 00                	add    BYTE PTR [eax],al
     137:	00 2b                	add    BYTE PTR [ebx],ch
     139:	00 00                	add    BYTE PTR [eax],al
     13b:	00 02                	add    BYTE PTR [edx],al
     13d:	01 1f                	add    DWORD PTR [edi],ebx
     13f:	02 0f                	add    cl,BYTE PTR [edi]
     141:	03 4d 00             	add    ecx,DWORD PTR [ebp+0x0]
     144:	00 00                	add    BYTE PTR [eax],al
     146:	01 4d 00             	add    DWORD PTR [ebp+0x0],ecx
     149:	00 00                	add    BYTE PTR [eax],al
     14b:	01 37                	add    DWORD PTR [edi],esi
     14d:	00 00                	add    BYTE PTR [eax],al
     14f:	00 01                	add    BYTE PTR [ecx],al
     151:	05 01 00 05 02       	add    eax,0x2050001
     156:	b3 81                	mov    bl,0x81
     158:	04 08                	add    al,0x8
     15a:	19 06                	sbb    DWORD PTR [esi],eax
     15c:	01 05 03 06 08 21    	add    DWORD PTR ds:0x21080603,eax
     162:	00 02                	add    BYTE PTR [edx],al
     164:	04 01                	add    al,0x1
     166:	06                   	push   es
     167:	08 20                	or     BYTE PTR [eax],ah
     169:	02 08                	add    cl,BYTE PTR [eax]
     16b:	00 01                	add    BYTE PTR [ecx],al
     16d:	01 a8 01 00 00 05    	add    DWORD PTR [eax+0x5000001],ebp
     173:	00 04 00             	add    BYTE PTR [eax+eax*1],al
     176:	45                   	inc    ebp
     177:	00 00                	add    BYTE PTR [eax],al
     179:	00 01                	add    BYTE PTR [ecx],al
     17b:	01 01                	add    DWORD PTR [ecx],eax
     17d:	fb                   	sti
     17e:	0e                   	push   cs
     17f:	0d 00 01 01 01       	or     eax,0x1010100
     184:	01 00                	add    DWORD PTR [eax],eax
     186:	00 00                	add    BYTE PTR [eax],al
     188:	01 00                	add    DWORD PTR [eax],eax
     18a:	00 01                	add    BYTE PTR [ecx],al
     18c:	01 01                	add    DWORD PTR [ecx],eax
     18e:	1f                   	pop    ds
     18f:	04 00                	add    al,0x0
     191:	00 00                	add    BYTE PTR [eax],al
     193:	00 2b                	add    BYTE PTR [ebx],ch
     195:	00 00                	add    BYTE PTR [eax],al
     197:	00 6b 00             	add    BYTE PTR [ebx+0x0],ch
     19a:	00 00                	add    BYTE PTR [eax],al
     19c:	7a 00                	jp     19e <__executable_start-0x8047ef6>
     19e:	00 00                	add    BYTE PTR [eax],al
     1a0:	02 01                	add    al,BYTE PTR [ecx]
     1a2:	1f                   	pop    ds
     1a3:	02 0f                	add    cl,BYTE PTR [edi]
     1a5:	05 61 00 00 00       	add    eax,0x61
     1aa:	01 61 00             	add    DWORD PTR [ecx+0x0],esp
     1ad:	00 00                	add    BYTE PTR [eax],al
     1af:	01 37                	add    DWORD PTR [edi],esi
     1b1:	00 00                	add    BYTE PTR [eax],al
     1b3:	00 01                	add    BYTE PTR [ecx],al
     1b5:	81 00 00 00 02 8e    	add    DWORD PTR [eax],0x8e020000
     1bb:	00 00                	add    BYTE PTR [eax],al
     1bd:	00 03                	add    BYTE PTR [ebx],al
     1bf:	05 01 00 05 02       	add    eax,0x2050001
     1c4:	df 81 04 08 03 c1    	fild   WORD PTR [ecx-0x3efcf7fc]
     1ca:	00 01                	add    BYTE PTR [ecx],al
     1cc:	05 03 08 21 01       	add    eax,0x1210803
     1d1:	01 74 13 05          	add    DWORD PTR [ebx+edx*1+0x5],esi
     1d5:	01 02                	add    DWORD PTR [edx],eax
     1d7:	2a 17                	sub    dl,BYTE PTR [edi]
     1d9:	06                   	push   es
     1da:	01 05 03 06 08 21    	add    DWORD PTR ds:0x21080603,eax
     1e0:	01 01                	add    DWORD PTR [ecx],eax
     1e2:	9e                   	sahf
     1e3:	13 05 01 02 2a 17    	adc    eax,DWORD PTR ds:0x172a0201
     1e9:	06                   	push   es
     1ea:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     1f0:	12 01                	adc    al,BYTE PTR [ecx]
     1f2:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     1f8:	06                   	push   es
     1f9:	32 06                	xor    al,BYTE PTR [esi]
     1fb:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     201:	0a 01                	or     al,BYTE PTR [ecx]
     203:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     209:	06                   	push   es
     20a:	32 06                	xor    al,BYTE PTR [esi]
     20c:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     212:	0a 01                	or     al,BYTE PTR [ecx]
     214:	01 e4                	add    esp,esp
     216:	05 01 06 59 06       	add    eax,0x6590601
     21b:	32 06                	xor    al,BYTE PTR [esi]
     21d:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     223:	0a 01                	or     al,BYTE PTR [ecx]
     225:	01 9e 05 01 06 59    	add    DWORD PTR [esi+0x59060105],ebx
     22b:	06                   	push   es
     22c:	32 06                	xor    al,BYTE PTR [esi]
     22e:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     234:	0a 01                	or     al,BYTE PTR [ecx]
     236:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     23c:	06                   	push   es
     23d:	32 06                	xor    al,BYTE PTR [esi]
     23f:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     245:	0a 01                	or     al,BYTE PTR [ecx]
     247:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     24d:	06                   	push   es
     24e:	32 06                	xor    al,BYTE PTR [esi]
     250:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     256:	0a 01                	or     al,BYTE PTR [ecx]
     258:	01 08                	add    DWORD PTR [eax],ecx
     25a:	2e 05 01 06 13 06    	cs add eax,0x6130601
     260:	32 06                	xor    al,BYTE PTR [esi]
     262:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     268:	0a 01                	or     al,BYTE PTR [ecx]
     26a:	01 08                	add    DWORD PTR [eax],ecx
     26c:	2e 05 01 06 13 06    	cs add eax,0x6130601
     272:	32 06                	xor    al,BYTE PTR [esi]
     274:	01 05 03 06 3d 01    	add    DWORD PTR ds:0x13d0603,eax
     27a:	01 e4                	add    esp,esp
     27c:	05 01 06 13 06       	add    eax,0x6130601
     281:	32 06                	xor    al,BYTE PTR [esi]
     283:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     289:	0a 01                	or     al,BYTE PTR [ecx]
     28b:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     291:	06                   	push   es
     292:	32 06                	xor    al,BYTE PTR [esi]
     294:	01 05 03 06 3d 01    	add    DWORD PTR ds:0x13d0603,eax
     29a:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     2a0:	06                   	push   es
     2a1:	32 06                	xor    al,BYTE PTR [esi]
     2a3:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     2a9:	0a 01                	or     al,BYTE PTR [ecx]
     2ab:	01 e4                	add    esp,esp
     2ad:	05 01 06 13 06       	add    eax,0x6130601
     2b2:	32 06                	xor    al,BYTE PTR [esi]
     2b4:	01 05 03 06 3d 01    	add    DWORD PTR ds:0x13d0603,eax
     2ba:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     2c0:	06                   	push   es
     2c1:	32 06                	xor    al,BYTE PTR [esi]
     2c3:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     2c9:	0a 01                	or     al,BYTE PTR [ecx]
     2cb:	01 9e 05 01 06 59    	add    DWORD PTR [esi+0x59060105],ebx
     2d1:	06                   	push   es
     2d2:	32 06                	xor    al,BYTE PTR [esi]
     2d4:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     2da:	0a 01                	or     al,BYTE PTR [ecx]
     2dc:	01 9e 05 01 06 59    	add    DWORD PTR [esi+0x59060105],ebx
     2e2:	06                   	push   es
     2e3:	32 06                	xor    al,BYTE PTR [esi]
     2e5:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     2eb:	0a 01                	or     al,BYTE PTR [ecx]
     2ed:	01 e4                	add    esp,esp
     2ef:	05 01 06 59 06       	add    eax,0x6590601
     2f4:	32 06                	xor    al,BYTE PTR [esi]
     2f6:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     2fc:	0a 01                	or     al,BYTE PTR [ecx]
     2fe:	01 9e 05 01 06 59    	add    DWORD PTR [esi+0x59060105],ebx
     304:	06                   	push   es
     305:	32 06                	xor    al,BYTE PTR [esi]
     307:	01 05 03 06 3d 05    	add    DWORD PTR ds:0x53d0603,eax
     30d:	0a 01                	or     al,BYTE PTR [ecx]
     30f:	01 9e 05 01 06 13    	add    DWORD PTR [esi+0x13060105],ebx
     315:	02 02                	add    al,BYTE PTR [edx]
     317:	00 01                	add    BYTE PTR [ecx],al
     319:	01 72 00             	add    DWORD PTR [edx+0x0],esi
     31c:	00 00                	add    BYTE PTR [eax],al
     31e:	05 00 04 00 46       	add    eax,0x46000400
     323:	00 00                	add    BYTE PTR [eax],al
     325:	00 01                	add    BYTE PTR [ecx],al
     327:	01 01                	add    DWORD PTR [ecx],eax
     329:	fb                   	sti
     32a:	0e                   	push   cs
     32b:	0d 00 01 01 01       	or     eax,0x1010100
     330:	01 00                	add    DWORD PTR [eax],eax
     332:	00 00                	add    BYTE PTR [eax],al
     334:	01 00                	add    DWORD PTR [eax],eax
     336:	00 01                	add    BYTE PTR [ecx],al
     338:	01 01                	add    DWORD PTR [ecx],eax
     33a:	1f                   	pop    ds
     33b:	03 00                	add    eax,DWORD PTR [eax]
     33d:	00 00                	add    BYTE PTR [eax],al
     33f:	00 2b                	add    BYTE PTR [ebx],ch
     341:	00 00                	add    BYTE PTR [eax],al
     343:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
     346:	00 00                	add    BYTE PTR [eax],al
     348:	02 01                	add    al,BYTE PTR [ecx]
     34a:	1f                   	pop    ds
     34b:	02 0f                	add    cl,BYTE PTR [edi]
     34d:	06                   	push   es
     34e:	ea 00 00 00 01 ea 00 	jmp    0xea:0x1000000
     355:	00 00                	add    BYTE PTR [eax],al
     357:	01 37                	add    DWORD PTR [edi],esi
     359:	00 00                	add    BYTE PTR [eax],al
     35b:	00 01                	add    BYTE PTR [ecx],al
     35d:	aa                   	stos   BYTE PTR es:[edi],al
     35e:	00 00                	add    BYTE PTR [eax],al
     360:	00 02                	add    BYTE PTR [edx],al
     362:	b2 00                	mov    dl,0x0
     364:	00 00                	add    BYTE PTR [eax],al
     366:	02 8e 00 00 00 02    	add    cl,BYTE PTR [esi+0x2000000]
     36c:	05 01 00 05 02       	add    eax,0x2050001
     371:	ba 83 04 08 03       	mov    edx,0x3080483
     376:	0b 01                	or     eax,DWORD PTR [ecx]
     378:	06                   	push   es
     379:	01 05 03 06 08 21    	add    DWORD PTR ds:0x21080603,eax
     37f:	14 02                	adc    al,0x2
     381:	23 14 3d 06 74 06 83 	and    edx,DWORD PTR [edi*1-0x7cf98bfa]
     388:	d7                   	xlat   BYTE PTR ds:[ebx]
     389:	14 5a                	adc    al,0x5a
     38b:	02 0c 00             	add    cl,BYTE PTR [eax+eax*1]
     38e:	01 01                	add    DWORD PTR [ecx],eax
     390:	4a                   	dec    edx
     391:	01 00                	add    DWORD PTR [eax],eax
     393:	00 05 00 04 00 4b    	add    BYTE PTR ds:0x4b000400,al
     399:	00 00                	add    BYTE PTR [eax],al
     39b:	00 01                	add    BYTE PTR [ecx],al
     39d:	01 01                	add    DWORD PTR [ecx],eax
     39f:	fb                   	sti
     3a0:	0e                   	push   cs
     3a1:	0d 00 01 01 01       	or     eax,0x1010100
     3a6:	01 00                	add    DWORD PTR [eax],eax
     3a8:	00 00                	add    BYTE PTR [eax],al
     3aa:	01 00                	add    DWORD PTR [eax],eax
     3ac:	00 01                	add    BYTE PTR [ecx],al
     3ae:	01 01                	add    DWORD PTR [ecx],eax
     3b0:	1f                   	pop    ds
     3b1:	03 00                	add    eax,DWORD PTR [eax]
     3b3:	00 00                	add    BYTE PTR [eax],al
     3b5:	00 2b                	add    BYTE PTR [ebx],ch
     3b7:	00 00                	add    BYTE PTR [eax],al
     3b9:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
     3bc:	00 00                	add    BYTE PTR [eax],al
     3be:	02 01                	add    al,BYTE PTR [ecx]
     3c0:	1f                   	pop    ds
     3c1:	02 0f                	add    cl,BYTE PTR [edi]
     3c3:	07                   	pop    es
     3c4:	c7 00 00 00 01 c7    	mov    DWORD PTR [eax],0xc7010000
     3ca:	00 00                	add    BYTE PTR [eax],al
     3cc:	00 01                	add    BYTE PTR [ecx],al
     3ce:	b2 00                	mov    dl,0x0
     3d0:	00 00                	add    BYTE PTR [eax],al
     3d2:	02 d1                	add    dl,cl
     3d4:	00 00                	add    BYTE PTR [eax],al
     3d6:	00 02                	add    BYTE PTR [edx],al
     3d8:	37                   	aaa
     3d9:	00 00                	add    BYTE PTR [eax],al
     3db:	00 01                	add    BYTE PTR [ecx],al
     3dd:	da 00                	fiadd  DWORD PTR [eax]
     3df:	00 00                	add    BYTE PTR [eax],al
     3e1:	02 aa 00 00 00 02    	add    ch,BYTE PTR [edx+0x2000000]
     3e7:	05 01 00 05 02       	add    eax,0x2050001
     3ec:	20 84 04 08 03 d9 00 	and    BYTE PTR [esp+eax*1+0xd90308],al
     3f3:	01 06                	add    DWORD PTR [esi],eax
     3f5:	01 05 03 06 08 83    	add    DWORD PTR ds:0x83080603,eax
     3fb:	05 0a 06 01 05       	add    eax,0x501060a
     400:	06                   	push   es
     401:	3c 05                	cmp    al,0x5
     403:	03 06                	add    eax,DWORD PTR [esi]
     405:	4c                   	dec    esp
     406:	05 0a 06 01 05       	add    eax,0x501060a
     40b:	01 3d 66 05 05 06    	add    DWORD PTR ds:0x6050566,edi
     411:	48                   	dec    eax
     412:	05 2a 06 01 05       	add    eax,0x501062a
     417:	05 2e 05 01 06       	add    eax,0x601052e
     41c:	03 73 08             	add    esi,DWORD PTR [ebx+0x8]
     41f:	4a                   	dec    edx
     420:	06                   	push   es
     421:	01 05 03 06 bb 13    	add    DWORD PTR ds:0x13bb0603,eax
     427:	05 07 06 01 05       	add    eax,0x5010607
     42c:	0a 3c 05 0d 66 05 03 	or     bh,BYTE PTR [eax*1+0x305660d]
     433:	06                   	push   es
     434:	67 05 1a 06 01 05    	addr16 add eax,0x501061a
     43a:	06                   	push   es
     43b:	3c 05                	cmp    al,0x5
     43d:	03 06                	add    eax,DWORD PTR [esi]
     43f:	5a                   	pop    edx
     440:	05 10 06 01 05       	add    eax,0x5010610
     445:	01 3d 3c 3c 05 05    	add    DWORD PTR ds:0x5053c3c,edi
     44b:	06                   	push   es
     44c:	1e                   	push   ds
     44d:	05 01 03 57 90       	add    eax,0x90570301
     452:	06                   	push   es
     453:	01 05 03 06 08 3d    	add    DWORD PTR ds:0x3d080603,eax
     459:	05 08 06 01 05       	add    eax,0x5010608
     45e:	03 06                	add    eax,DWORD PTR [esi]
     460:	75 08                	jne    46a <__executable_start-0x8047c2a>
     462:	9f                   	lahf
     463:	05 01 06 13 06       	add    eax,0x6130601
     468:	03 72 9e             	add    esi,DWORD PTR [edx-0x62]
     46b:	06                   	push   es
     46c:	01 05 03 06 08 91    	add    DWORD PTR ds:0x91080603,eax
     472:	00 02                	add    BYTE PTR [edx],al
     474:	04 01                	add    al,0x1
     476:	06                   	push   es
     477:	82 06 08             	add    BYTE PTR [esi],0x8
     47a:	3d bc 05 01 06       	cmp    eax,0x60105bc
     47f:	13 06                	adc    eax,DWORD PTR [esi]
     481:	03 1c e4             	add    ebx,DWORD PTR [esp+eiz*8]
     484:	06                   	push   es
     485:	01 05 03 06 08 67    	add    DWORD PTR ds:0x67080603,eax
     48b:	13 05 09 06 01 05    	adc    eax,DWORD PTR ds:0x5010609
     491:	03 06                	add    eax,DWORD PTR [esi]
     493:	67 05 10 06 01 05    	addr16 add eax,0x5010610
     499:	03 06                	add    eax,DWORD PTR [esi]
     49b:	75 05                	jne    4a2 <__executable_start-0x8047bf2>
     49d:	0e                   	push   cs
     49e:	06                   	push   es
     49f:	01 05 03 06 67 08    	add    DWORD PTR ds:0x8670603,eax
     4a5:	e5 75                	in     eax,0x75
     4a7:	05 01 06 13 ba       	add    eax,0xba130601
     4ac:	06                   	push   es
     4ad:	03 41 20             	add    eax,DWORD PTR [ecx+0x20]
     4b0:	06                   	push   es
     4b1:	01 05 03 06 67 05    	add    DWORD PTR ds:0x5670603,eax
     4b7:	0a 06                	or     al,BYTE PTR [esi]
     4b9:	01 05 01 08 91 3c    	add    DWORD PTR ds:0x3c910801,eax
     4bf:	06                   	push   es
     4c0:	25 06 01 05 03       	and    eax,0x3050106
     4c5:	06                   	push   es
     4c6:	67 13 14             	adc    edx,DWORD PTR [si]
     4c9:	3d 05 0c 06 01       	cmp    eax,0x1060c05
     4ce:	74 05                	je     4d5 <__executable_start-0x8047bbf>
     4d0:	03 06                	add    eax,DWORD PTR [esi]
     4d2:	e5 14                	in     eax,0x14
     4d4:	05 01 06 13 3c       	add    eax,0x3c130601
     4d9:	02 01                	add    al,BYTE PTR [ecx]
     4db:	00 01                	add    BYTE PTR [ecx],al
     4dd:	01 9a 00 00 00 05    	add    DWORD PTR [edx+0x5000000],ebx
     4e3:	00 04 00             	add    BYTE PTR [eax+eax*1],al
     4e6:	38 00                	cmp    BYTE PTR [eax],al
     4e8:	00 00                	add    BYTE PTR [eax],al
     4ea:	01 01                	add    DWORD PTR [ecx],eax
     4ec:	01 fb                	add    ebx,edi
     4ee:	0e                   	push   cs
     4ef:	0d 00 01 01 01       	or     eax,0x1010100
     4f4:	01 00                	add    DWORD PTR [eax],eax
     4f6:	00 00                	add    BYTE PTR [eax],al
     4f8:	01 00                	add    DWORD PTR [eax],eax
     4fa:	00 01                	add    BYTE PTR [ecx],al
     4fc:	01 01                	add    DWORD PTR [ecx],eax
     4fe:	1f                   	pop    ds
     4ff:	02 00                	add    al,BYTE PTR [eax]
     501:	00 00                	add    BYTE PTR [eax],al
     503:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
     506:	00 00                	add    BYTE PTR [eax],al
     508:	02 01                	add    al,BYTE PTR [ecx]
     50a:	1f                   	pop    ds
     50b:	02 0f                	add    cl,BYTE PTR [edi]
     50d:	04 ea                	add    al,0xea
     50f:	00 00                	add    BYTE PTR [eax],al
     511:	00 01                	add    BYTE PTR [ecx],al
     513:	ea 00 00 00 01 f2 00 	jmp    0xf2:0x1000000
     51a:	00 00                	add    BYTE PTR [eax],al
     51c:	01 aa 00 00 00 01    	add    DWORD PTR [edx+0x1000000],ebp
     522:	05 01 00 05 02       	add    eax,0x2050001
     527:	d0 85 04 08 03 0d    	rol    BYTE PTR [ebp+0xd030804],1
     52d:	01 05 03 08 3d 13    	add    DWORD PTR ds:0x133d0803,eax
     533:	14 00                	adc    al,0x0
     535:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     538:	06                   	push   es
     539:	3c 06                	cmp    al,0x6
     53b:	08 21                	or     BYTE PTR [ecx],ah
     53d:	05 10 06 01 05       	add    eax,0x5010610
     542:	24 06                	and    al,0x6
     544:	3d 05 05 06 14       	cmp    eax,0x14060505
     549:	05 24 64 00 02       	add    eax,0x2006424
     54e:	04 01                	add    al,0x1
     550:	82 05 05 06 5a 05 0e 	add    BYTE PTR ds:0x55a0605,0xe
     557:	e3 05                	jecxz  55e <__executable_start-0x8047b36>
     559:	24 2d                	and    al,0x2d
     55b:	05 03 85 d8 05       	add    eax,0x5d88503
     560:	06                   	push   es
     561:	06                   	push   es
     562:	01 05 01 97 58 05    	add    DWORD PTR ds:0x5589701,eax
     568:	07                   	pop    es
     569:	06                   	push   es
     56a:	37                   	aaa
     56b:	05 11 06 01 05       	add    eax,0x5010611
     570:	07                   	pop    es
     571:	06                   	push   es
     572:	75 05                	jne    579 <__executable_start-0x8047b1b>
     574:	01 06                	add    DWORD PTR [esi],eax
     576:	da 02                	fiadd  DWORD PTR [edx]
     578:	02 00                	add    al,BYTE PTR [eax]
     57a:	01 01                	add    DWORD PTR [ecx],eax
     57c:	ea 0b 00 00 05 00 04 	jmp    0x400:0x500000b
     583:	00 51 00             	add    BYTE PTR [ecx+0x0],dl
     586:	00 00                	add    BYTE PTR [eax],al
     588:	01 01                	add    DWORD PTR [ecx],eax
     58a:	01 fb                	add    ebx,edi
     58c:	0e                   	push   cs
     58d:	0d 00 01 01 01       	or     eax,0x1010100
     592:	01 00                	add    DWORD PTR [eax],eax
     594:	00 00                	add    BYTE PTR [eax],al
     596:	01 00                	add    DWORD PTR [eax],eax
     598:	00 01                	add    BYTE PTR [ecx],al
     59a:	01 01                	add    DWORD PTR [ecx],eax
     59c:	1f                   	pop    ds
     59d:	02 00                	add    al,BYTE PTR [eax]
     59f:	00 00                	add    BYTE PTR [eax],al
     5a1:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
     5a4:	00 00                	add    BYTE PTR [eax],al
     5a6:	02 01                	add    al,BYTE PTR [ecx]
     5a8:	1f                   	pop    ds
     5a9:	02 0f                	add    cl,BYTE PTR [edi]
     5ab:	09 02                	or     DWORD PTR [edx],eax
     5ad:	01 00                	add    DWORD PTR [eax],eax
     5af:	00 01                	add    BYTE PTR [ecx],al
     5b1:	02 01                	add    al,BYTE PTR [ecx]
     5b3:	00 00                	add    BYTE PTR [eax],al
     5b5:	01 0a                	add    DWORD PTR [edx],ecx
     5b7:	01 00                	add    DWORD PTR [eax],eax
     5b9:	00 01                	add    BYTE PTR [ecx],al
     5bb:	b2 00                	mov    dl,0x0
     5bd:	00 00                	add    BYTE PTR [eax],al
     5bf:	01 d1                	add    ecx,edx
     5c1:	00 00                	add    BYTE PTR [eax],al
     5c3:	00 01                	add    BYTE PTR [ecx],al
     5c5:	f2 00 00             	repnz add BYTE PTR [eax],al
     5c8:	00 01                	add    BYTE PTR [ecx],al
     5ca:	da 00                	fiadd  DWORD PTR [eax]
     5cc:	00 00                	add    BYTE PTR [eax],al
     5ce:	01 8e 00 00 00 01    	add    DWORD PTR [esi+0x1000000],ecx
     5d4:	aa                   	stos   BYTE PTR es:[edi],al
     5d5:	00 00                	add    BYTE PTR [eax],al
     5d7:	00 01                	add    BYTE PTR [ecx],al
     5d9:	05 01 00 05 02       	add    eax,0x2050001
     5de:	60                   	pusha
     5df:	86 04 08             	xchg   BYTE PTR [eax+ecx*1],al
     5e2:	03 2e                	add    ebp,DWORD PTR [esi]
     5e4:	01 06                	add    DWORD PTR [esi],eax
     5e6:	01 05 03 06 ad 14    	add    DWORD PTR ds:0x14ad0603,eax
     5ec:	05 0a 06 01 05       	add    eax,0x501060a
     5f1:	12 3c 05 06 66 05 05 	adc    bh,BYTE PTR [eax*1+0x5056606]
     5f8:	06                   	push   es
     5f9:	59                   	pop    ecx
     5fa:	05 09 06 01 05       	add    eax,0x5010609
     5ff:	0c 2e                	or     al,0x2e
     601:	05 0f 58 05 01       	add    eax,0x105580f
     606:	2f                   	das
     607:	20 06                	and    BYTE PTR [esi],al
     609:	03 f4                	add    esi,esp
     60b:	03 2e                	add    ebp,DWORD PTR [esi]
     60d:	05 03 13 05 10       	add    eax,0x10051303
     612:	01 06                	add    DWORD PTR [esi],eax
     614:	01 05 01 49 05 05    	add    DWORD PTR ds:0x5054901,eax
     61a:	d8 06                	fadd   DWORD PTR [esi]
     61c:	3c 05                	cmp    al,0x5
     61e:	10 b9 05 0d 06 01    	adc    BYTE PTR [ecx+0x1060d05],bh
     624:	05 10 20 05 01       	add    eax,0x1052010
     629:	5a                   	pop    edx
     62a:	4a                   	dec    edx
     62b:	20 20                	and    BYTE PTR [eax],ah
     62d:	2e 06                	cs push es
     62f:	03 af 7f 20 06 01    	add    ebp,DWORD PTR [edi+0x106207f]
     635:	05 03 06 02 24       	add    eax,0x24020603
     63a:	13 13                	adc    edx,DWORD PTR [ebx]
     63c:	13 13                	adc    edx,DWORD PTR [ebx]
     63e:	13 13                	adc    edx,DWORD PTR [ebx]
     640:	17                   	pop    ss
     641:	13 05 08 06 11 05    	adc    eax,DWORD PTR ds:0x5110608
     647:	06                   	push   es
     648:	75 05                	jne    64f <__executable_start-0x8047a45>
     64a:	07                   	pop    es
     64b:	06                   	push   es
     64c:	4c                   	dec    esp
     64d:	05 0c 06 01 05       	add    eax,0x501060c
     652:	0a 58 05             	or     bl,BYTE PTR [eax+0x5]
     655:	09 06                	or     DWORD PTR [esi],eax
     657:	59                   	pop    ecx
     658:	05 1f 00 02 04       	add    eax,0x402001f
     65d:	01 06                	add    DWORD PTR [esi],eax
     65f:	01 05 03 06 03 0a    	add    DWORD PTR ds:0xa030603,eax
     665:	c8 05 09 06          	enter  0x905,0x6
     669:	01 05 11 ac 05 1a    	add    DWORD PTR ds:0x1a05ac11,eax
     66f:	00 02                	add    BYTE PTR [edx],al
     671:	04 01                	add    al,0x1
     673:	90                   	nop
     674:	05 03 06 db 13       	add    eax,0x13db0603
     679:	13 05 10 01 06 08    	adc    eax,DWORD PTR ds:0x8060110
     67f:	4e                   	dec    esi
     680:	05 22 90 05 0d       	add    eax,0xd059022
     685:	b5 05                	mov    ch,0x5
     687:	06                   	push   es
     688:	73 05                	jae    68f <__executable_start-0x8047a05>
     68a:	0a 40 05             	or     al,BYTE PTR [eax+0x5]
     68d:	0c 06                	or     al,0x6
     68f:	03 6e 08             	add    ebp,DWORD PTR [esi+0x8]
     692:	58                   	pop    eax
     693:	05 0f 06 01 05       	add    eax,0x501060f
     698:	09 06                	or     DWORD PTR [esi],eax
     69a:	59                   	pop    ecx
     69b:	05 1f 00 02 04       	add    eax,0x402001f
     6a0:	01 06                	add    DWORD PTR [esi],eax
     6a2:	01 05 0c 06 e5 05    	add    DWORD PTR ds:0x5e5060c,eax
     6a8:	08 06                	or     BYTE PTR [esi],al
     6aa:	03 79 01             	add    edi,DWORD PTR [ecx+0x1]
     6ad:	05 2a 00 02 04       	add    eax,0x402002a
     6b2:	03 03                	add    eax,DWORD PTR [ebx]
     6b4:	0e                   	push   cs
     6b5:	e4 05                	in     al,0x5
     6b7:	03 06                	add    eax,DWORD PTR [esi]
     6b9:	95                   	xchg   ebp,eax
     6ba:	13 13                	adc    edx,DWORD PTR [ebx]
     6bc:	05 10 01 06 2e       	add    eax,0x2e060110
     6c1:	05 07 06 6a 05       	add    eax,0x56a0607
     6c6:	0a 06                	or     al,BYTE PTR [esi]
     6c8:	01 05 1f 90 ac 05    	add    DWORD PTR ds:0x5ac901f,eax
     6ce:	0d 08 20 05 07       	or     eax,0x7052008
     6d3:	06                   	push   es
     6d4:	e5 05                	in     eax,0x5
     6d6:	0d 06 01 05 07       	or     eax,0x7050106
     6db:	06                   	push   es
     6dc:	08 91 05 10 06 01    	or     BYTE PTR [ecx+0x1061005],dl
     6e2:	06                   	push   es
     6e3:	03 7a 3c             	add    edi,DWORD PTR [edx+0x3c]
     6e6:	05 07 f4 05 1e       	add    eax,0x1e05f407
     6eb:	00 02                	add    BYTE PTR [edx],al
     6ed:	04 01                	add    al,0x1
     6ef:	06                   	push   es
     6f0:	01 05 3c 00 02 04    	add    DWORD PTR ds:0x402003c,eax
     6f6:	02 c8                	add    cl,al
     6f8:	05 2f 00 02 04       	add    eax,0x402002f
     6fd:	02 c8                	add    cl,al
     6ff:	05 09 06 4b 05       	add    eax,0x54b0609
     704:	0c 06                	or     al,0x6
     706:	01 05 0f 66 05 10    	add    DWORD PTR ds:0x1005660f,eax
     70c:	03 0b                	add    ecx,DWORD PTR [ebx]
     70e:	82 05 03 06 3c 05 10 	add    BYTE PTR ds:0x53c0603,0x10
     715:	06                   	push   es
     716:	01 3c 05 24 00 02 04 	add    DWORD PTR [eax*1+0x4020024],edi
     71d:	02 3c 05 03 06 9f 05 	add    bh,BYTE PTR [eax*1+0x59f0603]
     724:	1f                   	pop    ds
     725:	01 05 0d 06 01 05    	add    DWORD PTR ds:0x501060d,eax
     72b:	1f                   	pop    ds
     72c:	00 02                	add    BYTE PTR [edx],al
     72e:	04 01                	add    al,0x1
     730:	74 05                	je     737 <__executable_start-0x804795d>
     732:	0d ac 05 1f 00       	or     eax,0x1f05ac
     737:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     73a:	3c 05                	cmp    al,0x5
     73c:	05 06 3d 05 08       	add    eax,0x8053d06
     741:	06                   	push   es
     742:	01 05 0b 20 05 1f    	add    DWORD PTR ds:0x1f05200b,eax
     748:	06                   	push   es
     749:	49                   	dec    ecx
     74a:	05 0d 06 01 05       	add    eax,0x501060d
     74f:	1f                   	pop    ds
     750:	00 02                	add    BYTE PTR [edx],al
     752:	04 01                	add    al,0x1
     754:	4a                   	dec    edx
     755:	05 03 06 84 05       	add    eax,0x5840603
     75a:	06                   	push   es
     75b:	06                   	push   es
     75c:	01 05 1a 00 02 04    	add    DWORD PTR ds:0x402001a,eax
     762:	01 90 05 03 06 be    	add    DWORD PTR [eax-0x41f9fcfb],edx
     768:	13 05 1c 06 11 05    	adc    eax,DWORD PTR ds:0x511061c
     76e:	16                   	push   ss
     76f:	3c 05                	cmp    al,0x5
     771:	2c 82                	sub    al,0x82
     773:	05 23 00 02 04       	add    eax,0x4020023
     778:	04 ba                	add    al,0xba
     77a:	05 39 00 02 04       	add    eax,0x4020039
     77f:	04 2e                	add    al,0x2e
     781:	05 0b 00 02 04       	add    eax,0x402000b
     786:	04 9e                	add    al,0x9e
     788:	05 06 4b 05 03       	add    eax,0x3054b06
     78d:	06                   	push   es
     78e:	86 05 06 06 01 05    	xchg   BYTE PTR ds:0x5010606,al
     794:	03 06                	add    eax,DWORD PTR [esi]
     796:	ca 05 06             	retf   0x605
     799:	06                   	push   es
     79a:	01 05 05 06 75 05    	add    DWORD PTR ds:0x5750605,eax
     7a0:	03 c9                	add    ecx,ecx
     7a2:	05 06 06 01 05       	add    eax,0x5010606
     7a7:	07                   	pop    es
     7a8:	06                   	push   es
     7a9:	68 08 13 05 03       	push   0x3051308
     7ae:	08 14 05 06 06 01 05 	or     BYTE PTR [eax*1+0x5010606],dl
     7b5:	0d 06 84 05 05       	or     eax,0x5058406
     7ba:	e5 06                	in     eax,0x6
     7bc:	20 05 0d 06 e3 05    	and    BYTE PTR ds:0x5e3060d,al
     7c2:	03 76 05             	add    esi,DWORD PTR [esi+0x5]
     7c5:	06                   	push   es
     7c6:	06                   	push   es
     7c7:	01 05 01 84 74 2e    	add    DWORD PTR ds:0x2e748401,eax
     7cd:	05 2a 00 02 04       	add    eax,0x402002a
     7d2:	02 03                	add    al,BYTE PTR [ebx]
     7d4:	68 2e 05 38 00       	push   0x38052e
     7d9:	02 04 03             	add    al,BYTE PTR [ebx+eax*1]
     7dc:	74 05                	je     7e3 <__executable_start-0x80478b1>
     7de:	05 06 9f 05 0b       	add    eax,0xb059f06
     7e3:	06                   	push   es
     7e4:	01 05 08 3c 3c 05    	add    DWORD PTR ds:0x53c3c08,eax
     7ea:	05 06 03 09 58       	add    eax,0x58090306
     7ef:	03 09                	add    ecx,DWORD PTR [ecx]
     7f1:	08 90 08 94 05 01    	or     BYTE PTR [eax+0x1059408],dl
     7f7:	06                   	push   es
     7f8:	08 4b 05             	or     BYTE PTR [ebx+0x5],cl
     7fb:	03 06                	add    eax,DWORD PTR [esi]
     7fd:	03 65 2e             	add    esp,DWORD PTR [ebp+0x2e]
     800:	05 10 06 01 05       	add    eax,0x5010610
     805:	24 66                	and    al,0x66
     807:	05 06 03 70 4a       	add    eax,0x4a700306
     80c:	05 24 03 10 3c       	add    eax,0x3c100324
     811:	00 02                	add    BYTE PTR [edx],al
     813:	04 02                	add    al,0x2
     815:	ba 58 05 06 03       	mov    edx,0x3060558
     81a:	70 74                	jo     890 <__executable_start-0x8047804>
     81c:	3c 05                	cmp    al,0x5
     81e:	01 06                	add    DWORD PTR [esi],eax
     820:	03 3c 58             	add    edi,DWORD PTR [eax+ebx*2]
     823:	06                   	push   es
     824:	01 05 03 06 f3 13    	add    DWORD PTR ds:0x13f30603,eax
     82a:	05 08 06 01 05       	add    eax,0x5010608
     82f:	06                   	push   es
     830:	3c 05                	cmp    al,0x5
     832:	19 00                	sbb    DWORD PTR [eax],eax
     834:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     837:	4a                   	dec    edx
     838:	05 11 00 02 04       	add    eax,0x4020011
     83d:	01 06                	add    DWORD PTR [esi],eax
     83f:	5a                   	pop    edx
     840:	05 05 4d 05 1f       	add    eax,0x1f054d05
     845:	06                   	push   es
     846:	01 05 05 2e 05 01    	add    DWORD PTR ds:0x1052e05,eax
     84c:	08 2f                	or     BYTE PTR [edi],ch
     84e:	05 05 06 29 05       	add    eax,0x5290605
     853:	1f                   	pop    ds
     854:	06                   	push   es
     855:	01 05 05 2e 3c 66    	add    DWORD PTR ds:0x663c2e05,eax
     85b:	05 11 00 02 04       	add    eax,0x4020011
     860:	01 06                	add    DWORD PTR [esi],eax
     862:	9f                   	lahf
     863:	00 02                	add    BYTE PTR [edx],al
     865:	04 01                	add    al,0x1
     867:	66 05 01 06          	add    ax,0x601
     86b:	8c 05 05 06 5d 05    	mov    WORD PTR ds:0x55d0605,es
     871:	1c 00                	sbb    al,0x0
     873:	02 04 03             	add    al,BYTE PTR [ebx+eax*1]
     876:	ff 05 11 00 02 04    	inc    DWORD PTR ds:0x4020011
     87c:	01 20                	add    DWORD PTR [eax],esp
     87e:	05 03 4c 05 08       	add    eax,0x8054c03
     883:	06                   	push   es
     884:	01 05 06 66 05 19    	add    DWORD PTR ds:0x19056606,eax
     88a:	00 02                	add    BYTE PTR [edx],al
     88c:	04 01                	add    al,0x1
     88e:	4a                   	dec    edx
     88f:	05 01 5a 58 20       	add    eax,0x20585a01
     894:	06                   	push   es
     895:	03 94 7c 2e 06 01 05 	add    edx,DWORD PTR [esp+edi*2+0x501062e]
     89c:	03 06                	add    eax,DWORD PTR [esi]
     89e:	08 3d 13 14 3d 05    	or     BYTE PTR ds:0x53d1413,bh
     8a4:	0c 06                	or     al,0x6
     8a6:	01 74 05 03          	add    DWORD PTR [ebp+eax*1+0x3],esi
     8aa:	06                   	push   es
     8ab:	83 14 05 01 06 13 06 	adc    DWORD PTR [eax*1+0x6130601],0x3
     8b2:	03 
     8b3:	ea 03 74 06 01 05 03 	jmp    0x305:0x1067403
     8ba:	06                   	push   es
     8bb:	67 14 3d             	addr16 adc al,0x3d
     8be:	06                   	push   es
     8bf:	08 4a 06             	or     BYTE PTR [edx+0x6],cl
     8c2:	83 05 01 06 13 3c 06 	add    DWORD PTR ds:0x3c130601,0x6
     8c9:	03 d6                	add    edx,esi
     8cb:	7c 20                	jl     8ed <__executable_start-0x80477a7>
     8cd:	06                   	push   es
     8ce:	01 05 03 06 08 67    	add    DWORD PTR ds:0x67080603,eax
     8d4:	05 12 00 02 04       	add    eax,0x4020012
     8d9:	01 01                	add    DWORD PTR [ecx],eax
     8db:	05 0a 00 02 04       	add    eax,0x402000a
     8e0:	01 06                	add    DWORD PTR [esi],eax
     8e2:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
     8e8:	01 3c 05 01 03 ad 01 	add    DWORD PTR [eax*1+0x1ad0301],edi
     8ef:	4a                   	dec    edx
     8f0:	4a                   	dec    edx
     8f1:	05 0b 06 03 da       	add    eax,0xda03060b
     8f6:	7e 4a                	jle    942 <__executable_start-0x8047752>
     8f8:	f3 06                	repz push es
     8fa:	2e 05 21 06 03 78    	cs add eax,0x78030621
     900:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
     906:	01 3c 05 0a 00 02 04 	add    DWORD PTR [eax*1+0x402000a],edi
     90d:	01 06                	add    DWORD PTR [esi],eax
     90f:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
     915:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
     918:	07                   	pop    es
     919:	06                   	push   es
     91a:	4c                   	dec    esp
     91b:	15 05 0a 06 01       	adc    eax,0x1060a05
     920:	05 07 06 4f 05       	add    eax,0x54f0607
     925:	0d 06 01 05 07       	or     eax,0x7050106
     92a:	06                   	push   es
     92b:	3f                   	aas
     92c:	05 0a 06 01 05       	add    eax,0x501060a
     931:	07                   	pop    es
     932:	06                   	push   es
     933:	6d                   	ins    DWORD PTR es:[edi],dx
     934:	05 01 03 a0 01       	add    eax,0x1a00301
     939:	01 05 03 16 05 0c    	add    DWORD PTR ds:0xc051603,eax
     93f:	06                   	push   es
     940:	01 08                	add    DWORD PTR [eax],ecx
     942:	4a                   	dec    edx
     943:	05 0b 06 03 d7       	add    eax,0xd703060b
     948:	7e 01                	jle    94b <__executable_start-0x8047749>
     94a:	08 13                	or     BYTE PTR [ebx],dl
     94c:	03 ae 01 2e 05 14    	add    ebp,DWORD PTR [esi+0x14052e01]
     952:	06                   	push   es
     953:	01 05 0b 06 4b 05    	add    DWORD PTR ds:0x54b060b,eax
     959:	01 06                	add    DWORD PTR [esi],eax
     95b:	03 c0                	add    eax,eax
     95d:	7e 01                	jle    960 <__executable_start-0x8047734>
     95f:	05 03 06 03 ba       	add    eax,0xba030603
     964:	01 66 05             	add    DWORD PTR [esi+0x5],esp
     967:	07                   	pop    es
     968:	14 05                	adc    al,0x5
     96a:	16                   	push   ss
     96b:	06                   	push   es
     96c:	01 05 0f 3c 05 07    	add    DWORD PTR ds:0x7053c0f,eax
     972:	4a                   	dec    edx
     973:	05 0b 06 08 7a       	add    eax,0x7a08060b
     978:	05 14 06 01 05       	add    eax,0x5010614
     97d:	0b 06                	or     eax,DWORD PTR [esi]
     97f:	4b                   	dec    ebx
     980:	30 05 14 06 01 05    	xor    BYTE PTR ds:0x5010614,al
     986:	0b 06                	or     eax,DWORD PTR [esi]
     988:	4b                   	dec    ebx
     989:	30 05 14 06 01 05    	xor    BYTE PTR ds:0x5010614,al
     98f:	0b 06                	or     eax,DWORD PTR [esi]
     991:	4b                   	dec    ebx
     992:	30 05 14 06 01 05    	xor    BYTE PTR ds:0x5010614,al
     998:	0b 06                	or     eax,DWORD PTR [esi]
     99a:	4b                   	dec    ebx
     99b:	30 05 14 06 01 05    	xor    BYTE PTR ds:0x5010614,al
     9a1:	0b 06                	or     eax,DWORD PTR [esi]
     9a3:	4b                   	dec    ebx
     9a4:	d8 13                	fcom   DWORD PTR [ebx]
     9a6:	05 03 16 05 06       	add    eax,0x6051603
     9ab:	06                   	push   es
     9ac:	01 05 05 06 59 05    	add    DWORD PTR ds:0x5590605,eax
     9b2:	0e                   	push   cs
     9b3:	06                   	push   es
     9b4:	01 05 03 06 67 05    	add    DWORD PTR ds:0x5670603,eax
     9ba:	08 06                	or     BYTE PTR [esi],al
     9bc:	01 05 06 3c 05 05    	add    DWORD PTR ds:0x5053c06,eax
     9c2:	06                   	push   es
     9c3:	59                   	pop    ecx
     9c4:	05 0e 06 01 05       	add    eax,0x501060e
     9c9:	03 06                	add    eax,DWORD PTR [esi]
     9cb:	69 05 0c 06 01 05 03 	imul   eax,DWORD PTR ds:0x501060c,0x5750603
     9d2:	06 75 05 
     9d5:	06                   	push   es
     9d6:	06                   	push   es
     9d7:	01 05 0e 00 02 04    	add    DWORD PTR ds:0x402000e,eax
     9dd:	01 06                	add    DWORD PTR [esi],eax
     9df:	51                   	push   ecx
     9e0:	04 02                	add    al,0x2
     9e2:	05 13 03 84 7d       	add    eax,0x7d840313
     9e7:	01 05 25 01 05 35    	add    DWORD PTR ds:0x35050125,eax
     9ed:	06                   	push   es
     9ee:	01 04 01             	add    DWORD PTR [ecx+eax*1],eax
     9f1:	05 0e 00 02 04       	add    eax,0x402000e
     9f6:	01 03                	add    DWORD PTR [ebx],eax
     9f8:	fc                   	cld
     9f9:	02 66 05             	add    ah,BYTE PTR [esi+0x5]
     9fc:	09 06                	or     DWORD PTR [esi],eax
     9fe:	9f                   	lahf
     9ff:	05 1d 06 01 05       	add    eax,0x501061d
     a04:	24 3c                	and    al,0x3c
     a06:	05 2c 3c 05 27       	add    eax,0x27053c2c
     a0b:	00 02                	add    BYTE PTR [edx],al
     a0d:	04 02                	add    al,0x2
     a0f:	06                   	push   es
     a10:	49                   	dec    ecx
     a11:	05 0e 00 02 04       	add    eax,0x402000e
     a16:	01 20                	add    DWORD PTR [eax],esp
     a18:	05 17 00 02 04       	add    eax,0x4020017
     a1d:	01 06                	add    DWORD PTR [esi],eax
     a1f:	01 04 02             	add    DWORD PTR [edx+eax*1],eax
     a22:	05 13 06 03 84       	add    eax,0x84030613
     a27:	7d 3c                	jge    a65 <__executable_start-0x804762f>
     a29:	05 25 01 05 35       	add    eax,0x35050125
     a2e:	06                   	push   es
     a2f:	01 04 01             	add    DWORD PTR [ecx+eax*1],eax
     a32:	05 0e 00 02 04       	add    eax,0x402000e
     a37:	01 03                	add    DWORD PTR [ebx],eax
     a39:	fc                   	cld
     a3a:	02 66 05             	add    ah,BYTE PTR [esi+0x5]
     a3d:	03 06                	add    eax,DWORD PTR [esi]
     a3f:	5b                   	pop    ebx
     a40:	05 06 06 01 05       	add    eax,0x5010606
     a45:	10 00                	adc    BYTE PTR [eax],al
     a47:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     a4a:	03 79 4a             	add    edi,DWORD PTR [ecx+0x4a]
     a4d:	05 03 06 03 0e       	add    eax,0xe030603
     a52:	3c 05                	cmp    al,0x5
     a54:	10 06                	adc    BYTE PTR [esi],al
     a56:	01 05 03 06 75 05    	add    DWORD PTR ds:0x5750603,eax
     a5c:	06                   	push   es
     a5d:	06                   	push   es
     a5e:	01 05 03 06 03 11    	add    DWORD PTR ds:0x11030603,eax
     a64:	58                   	pop    eax
     a65:	05 08 06 01 05       	add    eax,0x5010608
     a6a:	07                   	pop    es
     a6b:	06                   	push   es
     a6c:	03 5f 82             	add    ebx,DWORD PTR [edi-0x7e]
     a6f:	13 05 12 06 01 82    	adc    eax,DWORD PTR ds:0x82010612
     a75:	05 0d 3b 05 07       	add    eax,0x7053b0d
     a7a:	06                   	push   es
     a7b:	03 0a                	add    ecx,DWORD PTR [edx]
     a7d:	4a                   	dec    edx
     a7e:	05 12 06 01 05       	add    eax,0x5010612
     a83:	07                   	pop    es
     a84:	06                   	push   es
     a85:	59                   	pop    ecx
     a86:	05 10 06 01 05       	add    eax,0x5010610
     a8b:	07                   	pop    es
     a8c:	06                   	push   es
     a8d:	6d                   	ins    DWORD PTR es:[edi],dx
     a8e:	13 05 0b 06 01 05    	adc    eax,DWORD PTR ds:0x501060b
     a94:	0a 4a 05             	or     cl,BYTE PTR [edx+0x5]
     a97:	0d 49 05 0b 06       	or     eax,0x60b0549
     a9c:	28 05 18 06 01 05    	sub    BYTE PTR ds:0x5010618,al
     aa2:	0b 06                	or     eax,DWORD PTR [esi]
     aa4:	75 05                	jne    aab <__executable_start-0x80475e9>
     aa6:	12 00                	adc    al,BYTE PTR [eax]
     aa8:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     aab:	01 04 02             	add    DWORD PTR [edx+eax*1],eax
     aae:	05 13 03 ee 7c       	add    eax,0x7cee0313
     ab3:	01 05 25 01 05 35    	add    DWORD PTR ds:0x35050125,eax
     ab9:	06                   	push   es
     aba:	01 04 01             	add    DWORD PTR [ecx+eax*1],eax
     abd:	05 12 00 02 04       	add    eax,0x4020012
     ac2:	01 03                	add    DWORD PTR [ebx],eax
     ac4:	92                   	xchg   edx,eax
     ac5:	03 66 05             	add    esp,DWORD PTR [esi+0x5]
     ac8:	0d 06 9f 05 29       	or     eax,0x29059f06
     acd:	06                   	push   es
     ace:	01 05 30 3c 05 38    	add    DWORD PTR ds:0x38053c30,eax
     ad4:	3c 05                	cmp    al,0x5
     ad6:	2b 00                	sub    eax,DWORD PTR [eax]
     ad8:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
     adb:	06                   	push   es
     adc:	49                   	dec    ecx
     add:	05 12 00 02 04       	add    eax,0x4020012
     ae2:	01 20                	add    DWORD PTR [eax],esp
     ae4:	05 1b 00 02 04       	add    eax,0x402001b
     ae9:	01 06                	add    DWORD PTR [esi],eax
     aeb:	01 04 02             	add    DWORD PTR [edx+eax*1],eax
     aee:	05 13 06 03 ee       	add    eax,0xee030613
     af3:	7c 3c                	jl     b31 <__executable_start-0x8047563>
     af5:	05 25 01 05 35       	add    eax,0x35050125
     afa:	06                   	push   es
     afb:	01 04 01             	add    DWORD PTR [ecx+eax*1],eax
     afe:	05 12 00 02 04       	add    eax,0x4020012
     b03:	01 03                	add    DWORD PTR [ebx],eax
     b05:	92                   	xchg   edx,eax
     b06:	03 66 05             	add    esp,DWORD PTR [esi+0x5]
     b09:	07                   	pop    es
     b0a:	06                   	push   es
     b0b:	5b                   	pop    ebx
     b0c:	05 0a 06 01 05       	add    eax,0x501060a
     b11:	18 00                	sbb    BYTE PTR [eax],al
     b13:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     b16:	03 78 4a             	add    edi,DWORD PTR [eax+0x4a]
     b19:	05 03 06 03 0b       	add    eax,0xb030603
     b1e:	3c 05                	cmp    al,0x5
     b20:	08 06                	or     BYTE PTR [esi],al
     b22:	01 05 05 06 67 05    	add    DWORD PTR ds:0x5670605,eax
     b28:	0e                   	push   cs
     b29:	06                   	push   es
     b2a:	01 05 03 06 4d 05    	add    DWORD PTR ds:0x54d0603,eax
     b30:	0b 06                	or     eax,DWORD PTR [esi]
     b32:	01 05 03 06 75 05    	add    DWORD PTR ds:0x5750603,eax
     b38:	12 06                	adc    al,BYTE PTR [esi]
     b3a:	01 05 0b 3c 05 03    	add    DWORD PTR ds:0x3053c0b,eax
     b40:	3c 05                	cmp    al,0x5
     b42:	0b 06                	or     eax,DWORD PTR [esi]
     b44:	03 6f 08             	add    ebp,DWORD PTR [edi+0x8]
     b47:	ac                   	lods   al,BYTE PTR ds:[esi]
     b48:	05 11 06 01 05       	add    eax,0x5010611
     b4d:	0b 06                	or     eax,DWORD PTR [esi]
     b4f:	3d 05 1a 06 01       	cmp    eax,0x1061a05
     b54:	82 05 09 06 03 09 58 	add    BYTE PTR ds:0x9030609,0x58
     b5b:	05 16 06 01 05       	add    eax,0x5010616
     b60:	07                   	pop    es
     b61:	06                   	push   es
     b62:	03 0a                	add    ecx,DWORD PTR [edx]
     b64:	ba 05 0b 06 01       	mov    edx,0x1060b05
     b69:	05 0a 4a 05 09       	add    eax,0x9054a0a
     b6e:	06                   	push   es
     b6f:	50                   	push   eax
     b70:	05 11 06 01 05       	add    eax,0x5010611
     b75:	03 06                	add    eax,DWORD PTR [esi]
     b77:	03 1e                	add    ebx,DWORD PTR [esi]
     b79:	74 06                	je     b81 <__executable_start-0x8047513>
     b7b:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     b81:	7d 01                	jge    b84 <__executable_start-0x8047510>
     b83:	05 0b 03 f2 01       	add    eax,0x1f2030b
     b88:	08 ac 05 11 06 01 05 	or     BYTE PTR [ebp+eax*1+0x5010611],ch
     b8f:	0b 06                	or     eax,DWORD PTR [esi]
     b91:	3d 05 13 06 01       	cmp    eax,0x1061305
     b96:	05 03 06 03 21       	add    eax,0x21030603
     b9b:	74 06                	je     ba3 <__executable_start-0x80474f1>
     b9d:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     ba3:	7d 01                	jge    ba6 <__executable_start-0x80474ee>
     ba5:	05 0f 06 01 05       	add    eax,0x501060f
     baa:	07                   	pop    es
     bab:	4a                   	dec    edx
     bac:	06                   	push   es
     bad:	03 fa                	add    edi,edx
     baf:	01 08                	add    DWORD PTR [eax],ecx
     bb1:	ac                   	lods   al,BYTE PTR ds:[esi]
     bb2:	05 0f 06 01 05       	add    eax,0x501060f
     bb7:	07                   	pop    es
     bb8:	06                   	push   es
     bb9:	75 05                	jne    bc0 <__executable_start-0x80474d4>
     bbb:	03 03                	add    eax,DWORD PTR [ebx]
     bbd:	19 01                	sbb    DWORD PTR [ecx],eax
     bbf:	06                   	push   es
     bc0:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     bc6:	7d 01                	jge    bc9 <__executable_start-0x80474cb>
     bc8:	05 0f 06 01 05       	add    eax,0x501060f
     bcd:	07                   	pop    es
     bce:	4a                   	dec    edx
     bcf:	06                   	push   es
     bd0:	03 fe                	add    edi,esi
     bd2:	01 08                	add    DWORD PTR [eax],ecx
     bd4:	ac                   	lods   al,BYTE PTR ds:[esi]
     bd5:	05 0b 06 01 05       	add    eax,0x501060b
     bda:	0a 4a 05             	or     cl,BYTE PTR [edx+0x5]
     bdd:	09 06                	or     DWORD PTR [esi],eax
     bdf:	50                   	push   eax
     be0:	05 11 06 01 05       	add    eax,0x5010611
     be5:	03 06                	add    eax,DWORD PTR [esi]
     be7:	03 10                	add    edx,DWORD PTR [eax]
     be9:	74 06                	je     bf1 <__executable_start-0x80474a3>
     beb:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     bf1:	7d 01                	jge    bf4 <__executable_start-0x80474a0>
     bf3:	05 0b 03 80 02       	add    eax,0x280030b
     bf8:	08 ac 05 11 06 01 05 	or     BYTE PTR [ebp+eax*1+0x5010611],ch
     bff:	0b 06                	or     eax,DWORD PTR [esi]
     c01:	3d 05 13 06 01       	cmp    eax,0x1061305
     c06:	05 03 06 03 13       	add    eax,0x13030603
     c0b:	74 06                	je     c13 <__executable_start-0x8047481>
     c0d:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     c13:	7d 01                	jge    c16 <__executable_start-0x804747e>
     c15:	05 0f 06 01 05       	add    eax,0x501060f
     c1a:	07                   	pop    es
     c1b:	4a                   	dec    edx
     c1c:	06                   	push   es
     c1d:	03 88 02 08 ac 05    	add    ecx,DWORD PTR [eax+0x5ac0802]
     c23:	0f 06                	clts
     c25:	01 05 07 06 75 05    	add    DWORD PTR ds:0x5750607,eax
     c2b:	03 03                	add    eax,DWORD PTR [ebx]
     c2d:	0b 01                	or     eax,DWORD PTR [ecx]
     c2f:	06                   	push   es
     c30:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     c36:	7d 01                	jge    c39 <__executable_start-0x804745b>
     c38:	05 0f 06 01 05       	add    eax,0x501060f
     c3d:	07                   	pop    es
     c3e:	4a                   	dec    edx
     c3f:	06                   	push   es
     c40:	03 8c 02 08 ac 05 0f 	add    ecx,DWORD PTR [edx+eax*1+0xf05ac08]
     c47:	06                   	push   es
     c48:	01 05 07 06 75 05    	add    DWORD PTR ds:0x5750607,eax
     c4e:	03 19                	add    ebx,DWORD PTR [ecx]
     c50:	06                   	push   es
     c51:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     c57:	7d 01                	jge    c5a <__executable_start-0x804743a>
     c59:	05 0f 06 01 05       	add    eax,0x501060f
     c5e:	07                   	pop    es
     c5f:	4a                   	dec    edx
     c60:	05 03 06 03 94       	add    eax,0x94030603
     c65:	02 08                	add    cl,BYTE PTR [eax]
     c67:	ac                   	lods   al,BYTE PTR ds:[esi]
     c68:	06                   	push   es
     c69:	01 05 07 06 03 ec    	add    DWORD PTR ds:0xec030607,eax
     c6f:	7d 01                	jge    c72 <__executable_start-0x8047422>
     c71:	06                   	push   es
     c72:	08 ac 4a 4a 05 0d 06 	or     BYTE PTR [edx+ecx*2+0x60d054a],ch
     c79:	34 14                	xor    al,0x14
     c7b:	06                   	push   es
     c7c:	08 74 05 07          	or     BYTE PTR [ebp+eax*1+0x7],dh
     c80:	03 78 01             	add    edi,DWORD PTR [eax+0x1]
     c83:	4a                   	dec    edx
     c84:	4a                   	dec    edx
     c85:	66 05 11 06          	add    ax,0x611
     c89:	03 0b                	add    ecx,DWORD PTR [ebx]
     c8b:	4a                   	dec    edx
     c8c:	05 17 00 02 04       	add    eax,0x4020017
     c91:	01 06                	add    DWORD PTR [esi],eax
     c93:	01 05 11 06 08 13    	add    DWORD PTR ds:0x13080611,eax
     c99:	05 27 06 11 66       	add    eax,0x66110627
     c9e:	05 1f 06 03 1a       	add    eax,0x1a03061f
     ca3:	3c 05                	cmp    al,0x5
     ca5:	0d 15 05 30 06       	or     eax,0x6300515
     caa:	01 05 0d 08 74 05    	add    DWORD PTR ds:0x574080d,eax
     cb0:	0b 06                	or     eax,DWORD PTR [esi]
     cb2:	02 32                	add    dh,BYTE PTR [edx]
     cb4:	15 05 11 03 63       	adc    eax,0x63031105
     cb9:	58                   	pop    eax
     cba:	05 17 00 02 04       	add    eax,0x4020017
     cbf:	01 06                	add    DWORD PTR [esi],eax
     cc1:	01 05 11 06 08 13    	add    DWORD PTR ds:0x13080611,eax
     cc7:	05 21 06 11 66       	add    eax,0x66110621
     ccc:	05 11 3d 06 30       	add    eax,0x30063d11
     cd1:	05 17 00 02 04       	add    eax,0x4020017
     cd6:	01 06                	add    DWORD PTR [esi],eax
     cd8:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     cde:	19 06                	sbb    DWORD PTR [esi],eax
     ce0:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     ce3:	11 3d 06 5a 05 17    	adc    DWORD PTR ds:0x17055a06,edi
     ce9:	06                   	push   es
     cea:	01 05 11 06 d7 05    	add    DWORD PTR ds:0x5d70611,eax
     cf0:	17                   	pop    ss
     cf1:	06                   	push   es
     cf2:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     cf5:	11 3d 06 5a 05 17    	adc    DWORD PTR ds:0x17055a06,edi
     cfb:	00 02                	add    BYTE PTR [edx],al
     cfd:	04 01                	add    al,0x1
     cff:	06                   	push   es
     d00:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     d06:	19 06                	sbb    DWORD PTR [esi],eax
     d08:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     d0b:	11 3d 06 5a 05 17    	adc    DWORD PTR ds:0x17055a06,edi
     d11:	06                   	push   es
     d12:	01 05 11 06 d7 05    	add    DWORD PTR ds:0x5d70611,eax
     d18:	17                   	pop    ss
     d19:	06                   	push   es
     d1a:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     d1d:	11 3d 06 5a 05 17    	adc    DWORD PTR ds:0x17055a06,edi
     d23:	00 02                	add    BYTE PTR [edx],al
     d25:	04 01                	add    al,0x1
     d27:	06                   	push   es
     d28:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     d2e:	19 06                	sbb    DWORD PTR [esi],eax
     d30:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     d33:	11 3d 06 5a 05 19    	adc    DWORD PTR ds:0x19055a06,edi
     d39:	06                   	push   es
     d3a:	01 05 17 00 02 04    	add    DWORD PTR ds:0x4020017,eax
     d40:	01 66 05             	add    DWORD PTR [esi+0x5],esp
     d43:	11 06                	adc    DWORD PTR [esi],eax
     d45:	c9                   	leave
     d46:	05 14 06 01 05       	add    eax,0x5010614
     d4b:	19 08                	sbb    DWORD PTR [eax],ecx
     d4d:	1f                   	pop    ds
     d4e:	05 14 3d 05 13       	add    eax,0x13053d14
     d53:	06                   	push   es
     d54:	67 05 19 06 01 3c    	addr16 add eax,0x3c010619
     d5a:	05 11 06 5b 06       	add    eax,0x65b0611
     d5f:	02 2c 12             	add    ch,BYTE PTR [edx+edx*1]
     d62:	05 0d 06 03 0e       	add    eax,0xe03060d
     d67:	01 13                	add    DWORD PTR [ebx],edx
     d69:	14 05                	adc    al,0x5
     d6b:	11 03                	adc    DWORD PTR [ebx],eax
     d6d:	09 01                	or     DWORD PTR [ecx],eax
     d6f:	05 17 00 02 04       	add    eax,0x4020017
     d74:	01 06                	add    DWORD PTR [esi],eax
     d76:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     d7c:	19 06                	sbb    DWORD PTR [esi],eax
     d7e:	11 66 05             	adc    DWORD PTR [esi+0x5],esp
     d81:	1f                   	pop    ds
     d82:	06                   	push   es
     d83:	03 15 3c 05 0d 15    	add    edx,DWORD PTR ds:0x150d053c
     d89:	05 1b 06 08 e6       	add    eax,0xe608061b
     d8e:	05 11 06 03 60       	add    eax,0x60030611
     d93:	ac                   	lods   al,BYTE PTR ds:[esi]
     d94:	05 17 00 02 04       	add    eax,0x4020017
     d99:	01 06                	add    DWORD PTR [esi],eax
     d9b:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     da1:	29 06                	sub    DWORD PTR [esi],eax
     da3:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     da8:	3d 06 30 05 17       	cmp    eax,0x17053006
     dad:	00 02                	add    BYTE PTR [edx],al
     daf:	04 01                	add    al,0x1
     db1:	06                   	push   es
     db2:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     db8:	2a 06                	sub    al,BYTE PTR [esi]
     dba:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     dbf:	3d 06 33 05 17       	cmp    eax,0x17053306
     dc4:	06                   	push   es
     dc5:	01 05 11 06 d7 05    	add    DWORD PTR ds:0x5d70611,eax
     dcb:	17                   	pop    ss
     dcc:	06                   	push   es
     dcd:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     dd2:	3d 06 30 05 17       	cmp    eax,0x17053006
     dd7:	00 02                	add    BYTE PTR [edx],al
     dd9:	04 01                	add    al,0x1
     ddb:	06                   	push   es
     ddc:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     de2:	19 06                	sbb    DWORD PTR [esi],eax
     de4:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     de9:	3d 06 5a 05 17       	cmp    eax,0x17055a06
     dee:	06                   	push   es
     def:	01 05 11 06 d7 05    	add    DWORD PTR ds:0x5d70611,eax
     df5:	17                   	pop    ss
     df6:	06                   	push   es
     df7:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     dfc:	3d 06 5a 14 05       	cmp    eax,0x5145a06
     e01:	17                   	pop    ss
     e02:	06                   	push   es
     e03:	01 05 11 06 f4 05    	add    DWORD PTR ds:0x5f40611,eax
     e09:	19 06                	sbb    DWORD PTR [esi],eax
     e0b:	2a 3c 3c             	sub    bh,BYTE PTR [esp+edi*1]
     e0e:	05 11 40 06 5a       	add    eax,0x5a064011
     e13:	05 17 00 02 04       	add    eax,0x4020017
     e18:	01 06                	add    DWORD PTR [esi],eax
     e1a:	01 05 11 06 f3 05    	add    DWORD PTR ds:0x5f30611,eax
     e20:	19 06                	sbb    DWORD PTR [esi],eax
     e22:	2d 3c 3c 05 11       	sub    eax,0x11053c3c
     e27:	3d 05 0d 5d 05       	cmp    eax,0x55d0d05
     e2c:	1b 4e 05             	sbb    ecx,DWORD PTR [esi+0x5]
     e2f:	18 06                	sbb    BYTE PTR [esi],al
     e31:	84 05 0d 06 03 7a    	test   BYTE PTR ds:0x7a03060d,al
     e37:	02 2c 01             	add    ch,BYTE PTR [ecx+eax*1]
     e3a:	05 26 06 6c 05       	add    eax,0x56c0626
     e3f:	0d 15 06 02 28       	or     eax,0x28020615
     e44:	12 82 05 0b 06 14    	adc    al,BYTE PTR [edx+0x14060b05]
     e4a:	05 1b 06 03 7a       	add    eax,0x7a03061b
     e4f:	58                   	pop    eax
     e50:	82 05 07 03 a4 7f 01 	add    BYTE PTR ds:0x7fa40307,0x1
     e57:	4a                   	dec    edx
     e58:	4a                   	dec    edx
     e59:	05 0d 06 03 e7       	add    eax,0xe703060d
     e5e:	00 2e                	add    BYTE PTR [esi],ch
     e60:	05 17 06 01 05       	add    eax,0x5010617
     e65:	12 00                	adc    al,BYTE PTR [eax]
     e67:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     e6a:	66 05 0d 06          	add    ax,0x60d
     e6e:	59                   	pop    ecx
     e6f:	05 0b 08 bc 05       	add    eax,0x5bc080b
     e74:	17                   	pop    ss
     e75:	06                   	push   es
     e76:	0f 05                	syscall
     e78:	0b 3f                	or     edi,DWORD PTR [edi]
     e7a:	05 07 03 96 7f       	add    eax,0x7f960307
     e7f:	58                   	pop    eax
     e80:	4a                   	dec    edx
     e81:	4a                   	dec    edx
     e82:	4a                   	dec    edx
     e83:	4a                   	dec    edx
     e84:	74 4a                	je     ed0 <__executable_start-0x80471c4>
     e86:	05 0d 06 03 ef       	add    eax,0xef03060d
     e8b:	00 2e                	add    BYTE PTR [esi],ch
     e8d:	05 19 06 01 90       	add    eax,0x90010619
     e92:	3c 05                	cmp    al,0x5
     e94:	0d 06 59 05 10       	or     eax,0x10055906
     e99:	06                   	push   es
     e9a:	01 05 0d 06 50 05    	add    DWORD PTR ds:0x550060d,eax
     ea0:	1f                   	pop    ds
     ea1:	06                   	push   es
     ea2:	01 05 0d 00 02 04    	add    DWORD PTR ds:0x402000d,eax
     ea8:	01 08                	add    DWORD PTR [eax],ecx
     eaa:	58                   	pop    eax
     eab:	05 0b 06 08 76       	add    eax,0x7608060b
     eb0:	05 19 06 03 77       	add    eax,0x77030619
     eb5:	01 05 0b 03 09 66    	add    DWORD PTR ds:0x6609030b,eax
     ebb:	05 07 03 88 7f       	add    eax,0x7f880307
     ec0:	58                   	pop    eax
     ec1:	4a                   	dec    edx
     ec2:	4a                   	dec    edx
     ec3:	4a                   	dec    edx
     ec4:	05 11 03 f1 00       	add    eax,0xf10311
     ec9:	4a                   	dec    edx
     eca:	ac                   	lods   al,BYTE PTR ds:[esi]
     ecb:	05 07 03 8f 7f       	add    eax,0x7f8f0307
     ed0:	01 4a 4a             	add    DWORD PTR [edx+0x4a],ecx
     ed3:	05 0d 06 03 fe       	add    eax,0xfe03060d
     ed8:	00 2e                	add    BYTE PTR [esi],ch
     eda:	05 13 06 01 66       	add    eax,0x66010613
     edf:	05 0d 06 30 05       	add    eax,0x530060d
     ee4:	15 06 01 05 0d       	adc    eax,0xd050106
     ee9:	06                   	push   es
     eea:	75 05                	jne    ef1 <__executable_start-0x80471a3>
     eec:	0b 02                	or     eax,DWORD PTR [edx]
     eee:	35 15 05 13 06       	xor    eax,0x6130515
     ef3:	03 7a 01             	add    edi,DWORD PTR [edx+0x1]
     ef6:	05 0b 42 05 07       	add    eax,0x705420b
     efb:	03 fc                	add    edi,esp
     efd:	7e 58                	jle    f57 <__executable_start-0x804713d>
     eff:	4a                   	dec    edx
     f00:	74 4a                	je     f4c <__executable_start-0x8047148>
     f02:	4a                   	dec    edx
     f03:	05 0b 06 03 8e       	add    eax,0x8e03060b
     f08:	01 2e                	add    DWORD PTR [esi],ebp
     f0a:	02 23                	add    ah,BYTE PTR [ebx]
     f0c:	13 05 07 06 03 f1    	adc    eax,DWORD PTR ds:0xf1030607
     f12:	7e 74                	jle    f88 <__executable_start-0x804710c>
     f14:	05 0b 06 03 92       	add    eax,0x9203060b
     f19:	01 2e                	add    DWORD PTR [esi],ebp
     f1b:	02 23                	add    ah,BYTE PTR [ebx]
     f1d:	13 06                	adc    eax,DWORD PTR [esi]
     f1f:	2e 05 01 06 03 d1    	cs add eax,0xd1030601
     f25:	7d 58                	jge    f7f <__executable_start-0x8047115>
     f27:	06                   	push   es
     f28:	01 05 03 06 08 ae    	add    DWORD PTR ds:0xae080603,eax
     f2e:	13 05 09 06 01 05    	adc    eax,DWORD PTR ds:0x5010609
     f34:	03 06                	add    eax,DWORD PTR [esi]
     f36:	67 05 0e 06 01 05    	addr16 add eax,0x501060e
     f3c:	03 06                	add    eax,DWORD PTR [esi]
     f3e:	75 05                	jne    f45 <__executable_start-0x804714f>
     f40:	30 06                	xor    BYTE PTR [esi],al
     f42:	01 05 2c 00 02 04    	add    DWORD PTR ds:0x402002c,eax
     f48:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
     f4b:	03 06                	add    eax,DWORD PTR [esi]
     f4d:	4d                   	dec    ebp
     f4e:	08 bd 05 05 13 05    	or     BYTE PTR [ebp+0x5130505],bh
     f54:	09 06                	or     DWORD PTR [esi],eax
     f56:	01 05 0c 3c 05 03    	add    DWORD PTR ds:0x3053c0c,eax
     f5c:	06                   	push   es
     f5d:	3e 05 0d 06 01 05    	ds add eax,0x501060d
     f63:	01 3d 05 12 00 02    	add    DWORD PTR ds:0x2001205,edi
     f69:	04 04                	add    al,0x4
     f6b:	03 76 74             	add    esi,DWORD PTR [esi+0x74]
     f6e:	05 03 06 77 08       	add    eax,0x8770603
     f73:	bd 05 01 03 19       	mov    ebp,0x19030105
     f78:	2e 06                	cs push es
     f7a:	01 05 03 06 67 13    	add    DWORD PTR ds:0x13670603,eax
     f80:	14 3d                	adc    al,0x3d
     f82:	05 0c 06 01 74       	add    eax,0x7401060c
     f87:	05 03 06 08 59       	add    eax,0x59080603
     f8c:	14 05                	adc    al,0x5
     f8e:	01 06                	add    DWORD PTR [esi],eax
     f90:	13 3c 06             	adc    edi,DWORD PTR [esi+eax*1]
     f93:	03 8a 04 20 06 01    	add    ecx,DWORD PTR [edx+0x1062004]
     f99:	05 03 06 08 c9       	add    eax,0xc9080603
     f9e:	13 14 05 0f 01 05 07 	adc    edx,DWORD PTR [eax*1+0x705010f]
     fa5:	06                   	push   es
     fa6:	03 0d 9e 06 d3 05    	add    ecx,DWORD PTR ds:0x5d3069e
     fac:	09 06                	or     DWORD PTR [esi],eax
     fae:	01 05 07 06 85 06    	add    DWORD PTR ds:0x6850607,eax
     fb4:	3c 06                	cmp    al,0x6
     fb6:	08 91 05 15 00 02    	or     BYTE PTR [ecx+0x2001505],dl
     fbc:	04 01                	add    al,0x1
     fbe:	01 05 0e 06 82 05    	add    DWORD PTR ds:0x582060e,eax
     fc4:	09 59 06             	or     DWORD PTR [ecx+0x6],ebx
     fc7:	90                   	nop
     fc8:	05 1f 00 02 04       	add    eax,0x402001f
     fcd:	03 81 05 15 00 02    	add    eax,DWORD PTR [ecx+0x2001505]
     fd3:	04 01                	add    al,0x1
     fd5:	20 05 10 00 02 04    	and    BYTE PTR ds:0x4020010,al
     fdb:	01 68 05             	add    DWORD PTR [eax+0x5],ebp
     fde:	09 06                	or     DWORD PTR [esi],eax
     fe0:	ad                   	lods   eax,DWORD PTR ds:[esi]
     fe1:	06                   	push   es
     fe2:	90                   	nop
     fe3:	00 02                	add    BYTE PTR [edx],al
     fe5:	04 01                	add    al,0x1
     fe7:	06                   	push   es
     fe8:	01 f2                	add    edx,esi
     fea:	05 14 4b 05 09       	add    eax,0x9054b14
     fef:	57                   	push   edi
     ff0:	05 18 06 f1 05       	add    eax,0x5f10618
     ff5:	10 00                	adc    BYTE PTR [eax],al
     ff7:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
     ffa:	20 05 07 5b 05 0a    	and    BYTE PTR ds:0xa055b07,al
    1000:	06                   	push   es
    1001:	01 05 07 06 03 0e    	add    DWORD PTR ds:0xe030607,eax
    1007:	66 08 14 05 0b 06 01 	data16 or BYTE PTR [eax*1+0x501060b],dl
    100e:	05 
    100f:	07                   	pop    es
    1010:	06                   	push   es
    1011:	67 05 0b 06 01 05    	addr16 add eax,0x501060b
    1017:	07                   	pop    es
    1018:	06                   	push   es
    1019:	3d 06 58 05 0f       	cmp    eax,0xf055806
    101e:	06                   	push   es
    101f:	03 5b 01             	add    ebx,DWORD PTR [ebx+0x1]
    1022:	06                   	push   es
    1023:	58                   	pop    eax
    1024:	05 07 06 92 13       	add    eax,0x13920607
    1029:	15 05 0d 06 01       	adc    eax,0x1060d05
    102e:	05 07 06 67 13       	add    eax,0x13670607
    1033:	05 0f 06 01 05       	add    eax,0x501060f
    1038:	0b 73 05             	or     esi,DWORD PTR [ebx+0x5]
    103b:	0a 75 05             	or     dh,BYTE PTR [ebp+0x5]
    103e:	09 06                	or     DWORD PTR [esi],eax
    1040:	91                   	xchg   ecx,eax
    1041:	05 0d 06 01 82       	add    eax,0x8201060d
    1046:	05 0e 5d 05 14       	add    eax,0x14055d0e
    104b:	00 02                	add    BYTE PTR [edx],al
    104d:	04 01                	add    al,0x1
    104f:	06                   	push   es
    1050:	7b 05                	jnp    1057 <__executable_start-0x804703d>
    1052:	0d 06 59 06 90       	or     eax,0x90065906
    1057:	05 21 00 02 04       	add    eax,0x4020021
    105c:	02 81 05 14 00 02    	add    al,BYTE PTR [ecx+0x2001405]
    1062:	04 01                	add    al,0x1
    1064:	20 05 0b 5a 08 13    	and    BYTE PTR ds:0x13085a0b,al
    106a:	05 19 00 02 04       	add    eax,0x4020019
    106f:	01 01                	add    DWORD PTR [ecx],eax
    1071:	05 12 06 4a 05       	add    eax,0x54a0612
    1076:	0d 59 06 66 05       	or     eax,0x5660659
    107b:	23 00                	and    eax,DWORD PTR [eax]
    107d:	02 04 03             	add    al,BYTE PTR [ebx+eax*1]
    1080:	81 05 19 00 02 04 01 	add    DWORD PTR ds:0x4020019,0x14052001
    1087:	20 05 14 
    108a:	00 02                	add    BYTE PTR [edx],al
    108c:	04 01                	add    al,0x1
    108e:	68 00 02 04 01       	push   0x1040200
    1093:	06                   	push   es
    1094:	90                   	nop
    1095:	05 0d 00 02 04       	add    eax,0x402000d
    109a:	04 9f                	add    al,0x9f
    109c:	00 02                	add    BYTE PTR [edx],al
    109e:	04 04                	add    al,0x4
    10a0:	d6                   	(bad)
    10a1:	05 12 2b 05 0d       	add    eax,0xd052b12
    10a6:	00 02                	add    BYTE PTR [edx],al
    10a8:	04 04                	add    al,0x4
    10aa:	4d                   	dec    ebp
    10ab:	05 1c 06 e3 05       	add    eax,0x5e3061c
    10b0:	14 00                	adc    al,0x0
    10b2:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    10b5:	01 00                	add    DWORD PTR [eax],eax
    10b7:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    10ba:	06                   	push   es
    10bb:	20 05 0d 06 4b 05    	and    BYTE PTR ds:0x54b060d,al
    10c1:	21 06                	and    DWORD PTR [esi],eax
    10c3:	13 04 02             	adc    eax,DWORD PTR [edx+eax*1]
    10c6:	05 13 06 03 a0       	add    eax,0xa0030613
    10cb:	7b 3c                	jnp    1109 <__executable_start-0x8046f8b>
    10cd:	05 25 01 05 34       	add    eax,0x34050125
    10d2:	06                   	push   es
    10d3:	01 04 01             	add    DWORD PTR [ecx+eax*1],eax
    10d6:	05 0d 03 df 04       	add    eax,0x4df030d
    10db:	66 05 14 00          	add    ax,0x14
    10df:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    10e2:	92                   	xchg   edx,eax
    10e3:	00 02                	add    BYTE PTR [edx],al
    10e5:	04 01                	add    al,0x1
    10e7:	06                   	push   es
    10e8:	3c 05                	cmp    al,0x5
    10ea:	0d 06 9f 06 90       	or     eax,0x90069f06
    10ef:	05 21 00 02 04       	add    eax,0x4020021
    10f4:	02 81 05 14 00 02    	add    al,BYTE PTR [ecx+0x2001405]
    10fa:	04 01                	add    al,0x1
    10fc:	20 05 0b 5a 05 07    	and    BYTE PTR ds:0x7055a0b,al
    1102:	03 74 08 58          	add    esi,DWORD PTR [eax+ecx*1+0x58]
    1106:	05 0a 06 01 e4       	add    eax,0xe401060a
    110b:	05 01 03 14 01       	add    eax,0x1140301
    1110:	06                   	push   es
    1111:	88 06                	mov    BYTE PTR [esi],al
    1113:	01 05 03 06 08 bb    	add    DWORD PTR ds:0xbb080603,eax
    1119:	05 06 06 01 05       	add    eax,0x5010606
    111e:	27                   	daa
    111f:	00 02                	add    BYTE PTR [edx],al
    1121:	04 01                	add    al,0x1
    1123:	06                   	push   es
    1124:	97                   	xchg   edi,eax
    1125:	05 0f 06 d6 05       	add    eax,0x5d6060f
    112a:	27                   	daa
    112b:	00 02                	add    BYTE PTR [edx],al
    112d:	04 01                	add    al,0x1
    112f:	66 00 02             	data16 add BYTE PTR [edx],al
    1132:	04 03                	add    al,0x3
    1134:	2e 05 09 06 67 05    	cs add eax,0x5670609
    113a:	0e                   	push   cs
    113b:	06                   	push   es
    113c:	01 05 3b 00 02 04    	add    DWORD PTR ds:0x402003b,eax
    1142:	04 06                	add    al,0x6
    1144:	ab                   	stos   DWORD PTR es:[edi],eax
    1145:	05 27 00 02 04       	add    eax,0x4020027
    114a:	01 3c 00             	add    DWORD PTR [eax+eax*1],edi
    114d:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1150:	06                   	push   es
    1151:	08 58 05             	or     BYTE PTR [eax+0x5],bl
    1154:	05 06 03 7a 01       	add    eax,0x17a0306
    1159:	06                   	push   es
    115a:	08 2e                	or     BYTE PTR [esi],ch
    115c:	05 07 06 52 05       	add    eax,0x5520607
    1161:	01 06                	add    DWORD PTR [esi],eax
    1163:	08 d8                	or     al,bl
    1165:	02 08                	add    cl,BYTE PTR [eax]
    1167:	00 01                	add    BYTE PTR [ecx],al
    1169:	01 3a                	add    DWORD PTR [edx],edi
    116b:	07                   	pop    es
    116c:	00 00                	add    BYTE PTR [eax],al
    116e:	05 00 04 00 38       	add    eax,0x38000400
    1173:	00 00                	add    BYTE PTR [eax],al
    1175:	00 01                	add    BYTE PTR [ecx],al
    1177:	01 01                	add    DWORD PTR [ecx],eax
    1179:	fb                   	sti
    117a:	0e                   	push   cs
    117b:	0d 00 01 01 01       	or     eax,0x1010100
    1180:	01 00                	add    DWORD PTR [eax],eax
    1182:	00 00                	add    BYTE PTR [eax],al
    1184:	01 00                	add    DWORD PTR [eax],eax
    1186:	00 01                	add    BYTE PTR [ecx],al
    1188:	01 01                	add    DWORD PTR [ecx],eax
    118a:	1f                   	pop    ds
    118b:	02 00                	add    al,BYTE PTR [eax]
    118d:	00 00                	add    BYTE PTR [eax],al
    118f:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
    1192:	00 00                	add    BYTE PTR [eax],al
    1194:	02 01                	add    al,BYTE PTR [ecx]
    1196:	1f                   	pop    ds
    1197:	02 0f                	add    cl,BYTE PTR [edi]
    1199:	04 19                	add    al,0x19
    119b:	01 00                	add    DWORD PTR [eax],eax
    119d:	00 01                	add    BYTE PTR [ecx],al
    119f:	19 01                	sbb    DWORD PTR [ecx],eax
    11a1:	00 00                	add    BYTE PTR [eax],al
    11a3:	01 d1                	add    ecx,edx
    11a5:	00 00                	add    BYTE PTR [eax],al
    11a7:	00 01                	add    BYTE PTR [ecx],al
    11a9:	8e 00                	mov    es,WORD PTR [eax]
    11ab:	00 00                	add    BYTE PTR [eax],al
    11ad:	01 05 01 00 05 02    	add    DWORD PTR ds:0x2050001,eax
    11b3:	f0 95                	lock xchg ebp,eax
    11b5:	04 08                	add    al,0x8
    11b7:	19 06                	sbb    DWORD PTR [esi],eax
    11b9:	01 05 03 06 08 bb    	add    DWORD PTR ds:0xbb080603,eax
    11bf:	13 14 00             	adc    edx,DWORD PTR [eax+eax*1]
    11c2:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    11c5:	c8 05 24 01          	enter  0x2405,0x1
    11c9:	05 03 13 05 11       	add    eax,0x11051303
    11ce:	84 06                	test   BYTE PTR [esi],al
    11d0:	01 05 12 03 7a 3c    	add    DWORD PTR ds:0x3c7a0312,eax
    11d6:	05 11 34 05 05       	add    eax,0x5053411
    11db:	06                   	push   es
    11dc:	4b                   	dec    ebx
    11dd:	05 12 06 01 05       	add    eax,0x5010612
    11e2:	09 20                	or     DWORD PTR [eax],esp
    11e4:	05 0c 20 05 11       	add    eax,0x1105200c
    11e9:	06                   	push   es
    11ea:	73 06                	jae    11f2 <__executable_start-0x8046ea2>
    11ec:	01 05 03 06 4d 05    	add    DWORD PTR ds:0x54d0603,eax
    11f2:	01 06                	add    DWORD PTR [esi],eax
    11f4:	13 2e                	adc    ebp,DWORD PTR [esi]
    11f6:	05 03 00 02 04       	add    eax,0x4020003
    11fb:	02 06                	add    al,BYTE PTR [esi]
    11fd:	03 79 82             	add    edi,DWORD PTR [ecx-0x7e]
    1200:	00 02                	add    BYTE PTR [edx],al
    1202:	04 02                	add    al,0x2
    1204:	02 36                	add    dh,BYTE PTR [esi]
    1206:	13 00                	adc    eax,DWORD PTR [eax]
    1208:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    120b:	06                   	push   es
    120c:	02 36                	add    dh,BYTE PTR [esi]
    120e:	12 05 01 06 00 05    	adc    al,BYTE PTR ds:0x5000601
    1214:	02 ae 96 04 08 03    	add    ch,BYTE PTR [esi+0x3080496]
    121a:	0c 01                	or     al,0x1
    121c:	06                   	push   es
    121d:	01 05 03 06 08 ad    	add    DWORD PTR ds:0xad080603,eax
    1223:	13 14 00             	adc    edx,DWORD PTR [eax+eax*1]
    1226:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1229:	c8 05 24 01          	enter  0x2405,0x1
    122d:	05 03 13 00 02       	add    eax,0x2001303
    1232:	04 01                	add    al,0x1
    1234:	ac                   	lods   al,BYTE PTR ds:[esi]
    1235:	05 24 01 05 03       	add    eax,0x3050124
    123a:	14 05                	adc    al,0x5
    123c:	06                   	push   es
    123d:	06                   	push   es
    123e:	01 05 15 06 84 06    	add    DWORD PTR ds:0x6840615,eax
    1244:	01 05 09 06 ad 05    	add    DWORD PTR ds:0x5ad0609,eax
    124a:	16                   	push   ss
    124b:	06                   	push   es
    124c:	01 05 0d 20 05 10    	add    DWORD PTR ds:0x1005200d,eax
    1252:	20 05 15 06 73 06    	and    BYTE PTR ds:0x6730615,al
    1258:	01 05 03 06 03 0b    	add    DWORD PTR ds:0xb030603,eax
    125e:	66 05 01 06          	add    ax,0x601
    1262:	13 05 03 00 02 04    	adc    eax,DWORD PTR ds:0x4020003
    1268:	02 06                	add    al,BYTE PTR [esi]
    126a:	03 6f 74             	add    ebp,DWORD PTR [edi+0x74]
    126d:	00 02                	add    BYTE PTR [edx],al
    126f:	04 02                	add    al,0x2
    1271:	06                   	push   es
    1272:	66 00 02             	data16 add BYTE PTR [edx],al
    1275:	04 02                	add    al,0x2
    1277:	06                   	push   es
    1278:	02 30                	add    dh,BYTE PTR [eax]
    127a:	13 00                	adc    eax,DWORD PTR [eax]
    127c:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    127f:	06                   	push   es
    1280:	66 05 07 06          	add    ax,0x607
    1284:	03 09                	add    ecx,DWORD PTR [ecx]
    1286:	02 30                	add    dh,BYTE PTR [eax]
    1288:	01 13                	add    DWORD PTR [ebx],edx
    128a:	13 05 15 01 05 12    	adc    eax,DWORD PTR ds:0x12050115
    1290:	06                   	push   es
    1291:	01 05 15 3c 05 09    	add    DWORD PTR ds:0x9053c15,eax
    1297:	06                   	push   es
    1298:	4b                   	dec    ebx
    1299:	05 10 06 01 05       	add    eax,0x5010610
    129e:	15 06 73 05 12       	adc    eax,0x12057306
    12a3:	06                   	push   es
    12a4:	01 05 15 20 05 0b    	add    DWORD PTR ds:0xb052015,eax
    12aa:	9c                   	pushf
    12ab:	2e 05 01 06 03 0f    	cs add eax,0xf030601
    12b1:	58                   	pop    eax
    12b2:	06                   	push   es
    12b3:	01 05 03 06 08 ad    	add    DWORD PTR ds:0xad080603,eax
    12b9:	13 14 00             	adc    edx,DWORD PTR [eax+eax*1]
    12bc:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    12bf:	c8 05 22 01          	enter  0x2205,0x1
    12c3:	05 03 13 05 11       	add    eax,0x11051303
    12c8:	00 02                	add    BYTE PTR [edx],al
    12ca:	04 01                	add    al,0x1
    12cc:	84 00                	test   BYTE PTR [eax],al
    12ce:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    12d1:	06                   	push   es
    12d2:	01 05 05 06 75 05    	add    DWORD PTR ds:0x5750605,eax
    12d8:	09 06                	or     DWORD PTR [esi],eax
    12da:	01 05 0f 3c 05 08    	add    DWORD PTR ds:0x8053c0f,eax
    12e0:	3c 05                	cmp    al,0x5
    12e2:	19 06                	sbb    DWORD PTR [esi],eax
    12e4:	81 05 17 06 01 05 1c 	add    DWORD PTR ds:0x5010617,0x1105201c
    12eb:	20 05 11 
    12ee:	00 02                	add    BYTE PTR [edx],al
    12f0:	04 01                	add    al,0x1
    12f2:	06                   	push   es
    12f3:	20 00                	and    BYTE PTR [eax],al
    12f5:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    12f8:	06                   	push   es
    12f9:	01 05 0a 4d 58 05    	add    DWORD PTR ds:0x5584d0a,eax
    12ff:	03 00                	add    eax,DWORD PTR [eax]
    1301:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    1304:	06                   	push   es
    1305:	03 7a 2e             	add    edi,DWORD PTR [edx+0x2e]
    1308:	00 02                	add    BYTE PTR [edx],al
    130a:	04 02                	add    al,0x2
    130c:	06                   	push   es
    130d:	66 05 0a 02          	add    ax,0x20a
    1311:	30 18                	xor    BYTE PTR [eax],bl
    1313:	58                   	pop    eax
    1314:	05 03 00 02 04       	add    eax,0x4020003
    1319:	02 06                	add    al,BYTE PTR [esi]
    131b:	29 00                	sub    DWORD PTR [eax],eax
    131d:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    1320:	06                   	push   es
    1321:	66 05 07 06          	add    ax,0x607
    1325:	02 30                	add    dh,BYTE PTR [eax]
    1327:	16                   	push   ss
    1328:	05 1b 00 02 04       	add    eax,0x402001b
    132d:	01 06                	add    DWORD PTR [esi],eax
    132f:	01 00                	add    DWORD PTR [eax],eax
    1331:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1334:	4a                   	dec    edx
    1335:	05 01 4c 06 03       	add    eax,0x3064c01
    133a:	09 74 06 01          	or     DWORD PTR [esi+eax*1+0x1],esi
    133e:	05 03 06 08 91       	add    eax,0x91080603
    1343:	13 14 00             	adc    edx,DWORD PTR [eax+eax*1]
    1346:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1349:	4a                   	dec    edx
    134a:	05 15 01 05 03       	add    eax,0x3050115
    134f:	13 05 15 4c 05 0a    	adc    eax,DWORD PTR ds:0xa054c15
    1355:	06                   	push   es
    1356:	01 05 15 3c 00 02    	add    DWORD PTR ds:0x2003c15,eax
    135c:	04 01                	add    al,0x1
    135e:	4a                   	dec    edx
    135f:	05 07 06 4c 05       	add    eax,0x54c0607
    1364:	08 06                	or     BYTE PTR [esi],al
    1366:	01 05 07 06 21 05    	add    DWORD PTR ds:0x5210607,eax
    136c:	08 06                	or     BYTE PTR [esi],al
    136e:	01 05 15 06 1d 05    	add    DWORD PTR ds:0x51d0615,eax
    1374:	0a 06                	or     al,BYTE PTR [esi]
    1376:	01 05 15 3c 05 03    	add    DWORD PTR ds:0x3053c15,eax
    137c:	06                   	push   es
    137d:	50                   	push   eax
    137e:	05 0f 06 01 05       	add    eax,0x501060f
    1383:	17                   	pop    ss
    1384:	00 02                	add    BYTE PTR [edx],al
    1386:	04 02                	add    al,0x2
    1388:	3c 58                	cmp    al,0x58
    138a:	05 1c 00 02 04       	add    eax,0x402001c
    138f:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
    1392:	01 83 82 05 03 00    	add    DWORD PTR [ebx+0x30582],eax
    1398:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    139b:	06                   	push   es
    139c:	03 76 20             	add    esi,DWORD PTR [esi+0x20]
    139f:	00 02                	add    BYTE PTR [edx],al
    13a1:	04 02                	add    al,0x2
    13a3:	02 34 13             	add    dh,BYTE PTR [ebx+edx*1]
    13a6:	00 02                	add    BYTE PTR [edx],al
    13a8:	04 02                	add    al,0x2
    13aa:	06                   	push   es
    13ab:	02 34 12             	add    dh,BYTE PTR [edx+edx*1]
    13ae:	05 01 06 00 05       	add    eax,0x5000601
    13b3:	02 27                	add    ah,BYTE PTR [edi]
    13b5:	99                   	cdq
    13b6:	04 08                	add    al,0x8
    13b8:	03 10                	add    edx,DWORD PTR [eax]
    13ba:	01 06                	add    DWORD PTR [esi],eax
    13bc:	01 05 03 06 08 91    	add    DWORD PTR ds:0x91080603,eax
    13c2:	13 05 11 06 01 05    	adc    eax,DWORD PTR ds:0x5010611
    13c8:	03 06                	add    eax,DWORD PTR [esi]
    13ca:	4c                   	dec    esp
    13cb:	05 11 00 02 04       	add    eax,0x4020011
    13d0:	01 84 00 02 04 01 06 	add    DWORD PTR [eax+eax*1+0x6010402],eax
    13d7:	01 05 05 06 75 05    	add    DWORD PTR ds:0x5750605,eax
    13dd:	08 06                	or     BYTE PTR [esi],al
    13df:	01 05 1b 06 49 05    	add    DWORD PTR ds:0x549061b,eax
    13e5:	11 00                	adc    DWORD PTR [eax],eax
    13e7:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    13ea:	20 00                	and    BYTE PTR [eax],al
    13ec:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    13ef:	06                   	push   es
    13f0:	01 05 0a 4e 05 01    	add    DWORD PTR ds:0x1054e0a,eax
    13f6:	59                   	pop    ecx
    13f7:	66 05 0a 1f          	add    ax,0x1f0a
    13fb:	58                   	pop    eax
    13fc:	05 03 00 02 04       	add    eax,0x4020003
    1401:	02 06                	add    al,BYTE PTR [esi]
    1403:	03 7a 2e             	add    edi,DWORD PTR [edx+0x2e]
    1406:	00 02                	add    BYTE PTR [edx],al
    1408:	04 02                	add    al,0x2
    140a:	06                   	push   es
    140b:	66 00 02             	data16 add BYTE PTR [edx],al
    140e:	04 02                	add    al,0x2
    1410:	02 30                	add    dh,BYTE PTR [eax]
    1412:	12 05 01 06 00 05    	adc    al,BYTE PTR ds:0x5000601
    1418:	02 a6 99 04 08 03    	add    ah,BYTE PTR [esi+0x3080499]
    141e:	0f 01 06             	sgdtd  [esi]
    1421:	01 05 03 06 08 67    	add    DWORD PTR ds:0x67080603,eax
    1427:	05 08 06 01 05       	add    eax,0x5010608
    142c:	03 06                	add    eax,DWORD PTR [esi]
    142e:	4c                   	dec    esp
    142f:	05 1a 4a 05 03       	add    eax,0x3054a1a
    1434:	14 05                	adc    al,0x5
    1436:	05 13 05 09 06       	add    eax,0x6090513
    143b:	01 05 08 3c 05 0a    	add    DWORD PTR ds:0xa053c08,eax
    1441:	06                   	push   es
    1442:	4c                   	dec    esp
    1443:	05 0d 06 01 05       	add    eax,0x501060d
    1448:	07                   	pop    es
    1449:	06                   	push   es
    144a:	4d                   	dec    ebp
    144b:	05 0d 06 01 05       	add    eax,0x501060d
    1450:	03 06                	add    eax,DWORD PTR [esi]
    1452:	03 7a 20             	add    edi,DWORD PTR [edx+0x20]
    1455:	05 1a 10 05 03       	add    eax,0x305101a
    145a:	14 05                	adc    al,0x5
    145c:	05 13 05 09 06       	add    eax,0x6090513
    1461:	01 05 08 3c 05 03    	add    DWORD PTR ds:0x3053c08,eax
    1467:	00 02                	add    BYTE PTR [edx],al
    1469:	04 02                	add    al,0x2
    146b:	06                   	push   es
    146c:	63 05 0e 06 02 34    	arpl   WORD PTR ds:0x3402060e,eax
    1472:	18 05 01 5b 66 06    	sbb    BYTE PTR ds:0x6665b01,al
    1478:	26 06                	es push es
    147a:	01 05 03 06 e5 14    	add    DWORD PTR ds:0x14e50603,eax
    1480:	05 23 00 02 04       	add    eax,0x4020023
    1485:	01 01                	add    DWORD PTR [ecx],eax
    1487:	05 1a 00 02 04       	add    eax,0x402001a
    148c:	01 06                	add    DWORD PTR [esi],eax
    148e:	01 05 23 00 02 04    	add    DWORD PTR ds:0x4020023,eax
    1494:	01 3c 05 0f 4a 05 05 	add    DWORD PTR [eax*1+0x5054a0f],edi
    149b:	06                   	push   es
    149c:	59                   	pop    ecx
    149d:	05 09 06 01 05       	add    eax,0x5010609
    14a2:	08 00                	or     BYTE PTR [eax],al
    14a4:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    14a7:	e4 05                	in     al,0x5
    14a9:	32 00                	xor    al,BYTE PTR [eax]
    14ab:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    14ae:	06                   	push   es
    14af:	49                   	dec    ecx
    14b0:	05 23 00 02 04       	add    eax,0x4020023
    14b5:	01 20                	add    DWORD PTR [eax],esp
    14b7:	05 1a 00 02 04       	add    eax,0x402001a
    14bc:	01 06                	add    DWORD PTR [esi],eax
    14be:	01 05 23 00 02 04    	add    DWORD PTR ds:0x4020023,eax
    14c4:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
    14c7:	01 4e 05             	add    DWORD PTR [esi+0x5],ecx
    14ca:	0f 9a 05 03 06 5b 05 	setp   BYTE PTR ds:0x55b0603
    14d1:	0a 06                	or     al,BYTE PTR [esi]
    14d3:	01 05 01 06 36 06    	add    DWORD PTR ds:0x6360601,eax
    14d9:	01 05 03 06 d7 05    	add    DWORD PTR ds:0x5d70603,eax
    14df:	12 00                	adc    al,BYTE PTR [eax]
    14e1:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    14e4:	01 05 0a 00 02 04    	add    DWORD PTR ds:0x402000a,eax
    14ea:	01 06                	add    DWORD PTR [esi],eax
    14ec:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
    14f2:	01 3c 05 05 06 4b 05 	add    DWORD PTR [eax*1+0x54b0605],edi
    14f9:	09 06                	or     DWORD PTR [esi],eax
    14fb:	01 05 08 00 02 04    	add    DWORD PTR ds:0x4020008,eax
    1501:	01 e4                	add    esp,esp
    1503:	05 21 06 49 05       	add    eax,0x5490621
    1508:	12 00                	adc    al,BYTE PTR [eax]
    150a:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    150d:	20 05 0a 00 02 04    	and    BYTE PTR ds:0x402000a,al
    1513:	01 06                	add    DWORD PTR [esi],eax
    1515:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
    151b:	01 3c 05 0a 69 05 0e 	add    DWORD PTR [eax*1+0xe05690a],edi
    1522:	73 05                	jae    1529 <__executable_start-0x8046b6b>
    1524:	01 30                	add    DWORD PTR [eax],esi
    1526:	4a                   	dec    edx
    1527:	06                   	push   es
    1528:	42                   	inc    edx
    1529:	06                   	push   es
    152a:	01 05 03 06 75 05    	add    DWORD PTR ds:0x5750603,eax
    1530:	08 06                	or     BYTE PTR [esi],al
    1532:	01 05 03 06 4b 14    	add    DWORD PTR ds:0x144b0603,eax
    1538:	05 12 00 02 04       	add    eax,0x4020012
    153d:	01 01                	add    DWORD PTR [ecx],eax
    153f:	05 0a 00 02 04       	add    eax,0x402000a
    1544:	01 06                	add    DWORD PTR [esi],eax
    1546:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
    154c:	01 3c 05 0f 48 05 05 	add    DWORD PTR [eax*1+0x505480f],edi
    1553:	06                   	push   es
    1554:	5b                   	pop    ebx
    1555:	05 09 06 13 05       	add    eax,0x5130609
    155a:	21 06                	and    DWORD PTR [esi],eax
    155c:	56                   	push   esi
    155d:	05 12 00 02 04       	add    eax,0x4020012
    1562:	01 20                	add    DWORD PTR [eax],esp
    1564:	05 0a 00 02 04       	add    eax,0x402000a
    1569:	01 06                	add    DWORD PTR [esi],eax
    156b:	01 05 12 00 02 04    	add    DWORD PTR ds:0x4020012,eax
    1571:	01 3c 05 01 4e 2e 20 	add    DWORD PTR [eax*1+0x202e4e01],edi
    1578:	05 0f 03 7a 2e       	add    eax,0x2e7a030f
    157d:	05 03 06 5d 05       	add    eax,0x55d0603
    1582:	0a 06                	or     al,BYTE PTR [esi]
    1584:	01 05 01 06 35 06    	add    DWORD PTR ds:0x6350601,eax
    158a:	01 05 03 06 e5 14    	add    DWORD PTR ds:0x14e50603,eax
    1590:	05 23 00 02 04       	add    eax,0x4020023
    1595:	01 01                	add    DWORD PTR [ecx],eax
    1597:	05 1a 00 02 04       	add    eax,0x402001a
    159c:	01 06                	add    DWORD PTR [esi],eax
    159e:	01 05 23 00 02 04    	add    DWORD PTR ds:0x4020023,eax
    15a4:	01 3c 05 0f 4a 05 05 	add    DWORD PTR [eax*1+0x5054a0f],edi
    15ab:	06                   	push   es
    15ac:	59                   	pop    ecx
    15ad:	05 09 06 01 05       	add    eax,0x5010609
    15b2:	08 00                	or     BYTE PTR [eax],al
    15b4:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    15b7:	e4 05                	in     al,0x5
    15b9:	32 00                	xor    al,BYTE PTR [eax]
    15bb:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    15be:	06                   	push   es
    15bf:	49                   	dec    ecx
    15c0:	05 23 00 02 04       	add    eax,0x4020023
    15c5:	01 20                	add    DWORD PTR [eax],esp
    15c7:	05 1a 00 02 04       	add    eax,0x402001a
    15cc:	01 06                	add    DWORD PTR [esi],eax
    15ce:	01 05 23 00 02 04    	add    DWORD PTR ds:0x4020023,eax
    15d4:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
    15d7:	01 4e 05             	add    DWORD PTR [esi+0x5],ecx
    15da:	0f 9a 05 03 06 5b 05 	setp   BYTE PTR ds:0x55b0603
    15e1:	0a 06                	or     al,BYTE PTR [esi]
    15e3:	01 05 01 06 03 3b    	add    DWORD PTR ds:0x3b030601,eax
    15e9:	2e 06                	cs push es
    15eb:	01 05 03 06 08 91    	add    DWORD PTR ds:0x91080603,eax
    15f1:	14 00                	adc    al,0x0
    15f3:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    15f6:	4a                   	dec    edx
    15f7:	05 1e 01 05 03       	add    eax,0x305011e
    15fc:	13 00                	adc    eax,DWORD PTR [eax]
    15fe:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1601:	66 05 1c 01          	add    ax,0x11c
    1605:	05 03 16 05 06       	add    eax,0x6051603
    160a:	06                   	push   es
    160b:	01 05 05 06 83 05    	add    DWORD PTR ds:0x5830605,eax
    1611:	07                   	pop    es
    1612:	06                   	push   es
    1613:	01 05 03 06 59 00    	add    DWORD PTR ds:0x590603,eax
    1619:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    161c:	82 00 02             	add    BYTE PTR [eax],0x2
    161f:	04 02                	add    al,0x2
    1621:	03 79 02             	add    edi,DWORD PTR [ecx+0x2]
    1624:	34 01                	xor    al,0x1
    1626:	00 02                	add    BYTE PTR [edx],al
    1628:	04 02                	add    al,0x2
    162a:	02 34 13             	add    dh,BYTE PTR [ebx+edx*1]
    162d:	05 07 03 14 02       	add    eax,0x2140307
    1632:	34 01                	xor    al,0x1
    1634:	05 08 06 01 05       	add    eax,0x5010608
    1639:	22 06                	and    al,BYTE PTR [esi]
    163b:	03 75 20             	add    esi,DWORD PTR [ebp+0x20]
    163e:	05 1e 06 01 05       	add    eax,0x501061e
    1643:	0a 3c 05 22 00 02 04 	or     bh,BYTE PTR [eax*1+0x4020022]
    164a:	01 e4                	add    esp,esp
    164c:	05 07 06 4f 05       	add    eax,0x54f0607
    1651:	0a 06                	or     al,BYTE PTR [esi]
    1653:	01 05 12 4d 05 15    	add    DWORD PTR ds:0x15054d12,eax
    1659:	57                   	push   edi
    165a:	05 01 03 13 58       	add    eax,0x58130301
    165f:	82 05 22 06 03 76 2e 	add    BYTE PTR ds:0x76030622,0x2e
    1666:	05 1e 06 01 05       	add    eax,0x501061e
    166b:	0a 66 05             	or     ah,BYTE PTR [esi+0x5]
    166e:	22 00                	and    al,BYTE PTR [eax]
    1670:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1673:	e4 05                	in     al,0x5
    1675:	05 06 4b 05 06       	add    eax,0x6054b06
    167a:	06                   	push   es
    167b:	01 20                	add    DWORD PTR [eax],esp
    167d:	05 03 06 2f 05       	add    eax,0x52f0603
    1682:	06                   	push   es
    1683:	06                   	push   es
    1684:	01 05 07 06 68 05    	add    DWORD PTR ds:0x5680607,eax
    168a:	0a 06                	or     al,BYTE PTR [esi]
    168c:	01 05 07 06 3d 05    	add    DWORD PTR ds:0x53d0607,eax
    1692:	0a 06                	or     al,BYTE PTR [esi]
    1694:	16                   	push   ss
    1695:	74 05                	je     169c <__executable_start-0x80469f8>
    1697:	01 06                	add    DWORD PTR [esi],eax
    1699:	6c                   	ins    BYTE PTR es:[edi],dx
    169a:	06                   	push   es
    169b:	01 05 03 06 08 9f    	add    DWORD PTR ds:0x9f080603,eax
    16a1:	14 05                	adc    al,0x5
    16a3:	11 84 06 01 05 12 38 	adc    DWORD PTR [esi+eax*1+0x38120501],eax
    16aa:	05 11 32 05 05       	add    eax,0x5053211
    16af:	06                   	push   es
    16b0:	4b                   	dec    ebx
    16b1:	05 09 06 01 05       	add    eax,0x5010609
    16b6:	0c 20                	or     al,0x20
    16b8:	05 11 06 3b 06       	add    eax,0x63b0611
    16bd:	01 05 03 06 4d 05    	add    DWORD PTR ds:0x54d0603,eax
    16c3:	01 06                	add    DWORD PTR [esi],eax
    16c5:	13 2e                	adc    ebp,DWORD PTR [esi]
    16c7:	05 03 00 02 04       	add    eax,0x4020003
    16cc:	02 06                	add    al,BYTE PTR [esi]
    16ce:	03 7a 74             	add    edi,DWORD PTR [edx+0x74]
    16d1:	00 02                	add    BYTE PTR [edx],al
    16d3:	04 02                	add    al,0x2
    16d5:	06                   	push   es
    16d6:	02 31                	add    dh,BYTE PTR [ecx]
    16d8:	12 05 01 06 03 0b    	adc    al,BYTE PTR ds:0xb030601
    16de:	58                   	pop    eax
    16df:	06                   	push   es
    16e0:	01 05 03 06 08 67    	add    DWORD PTR ds:0x67080603,eax
    16e6:	14 05                	adc    al,0x5
    16e8:	17                   	pop    ss
    16e9:	00 02                	add    BYTE PTR [edx],al
    16eb:	04 01                	add    al,0x1
    16ed:	4c                   	dec    esp
    16ee:	05 0a 06 58 05       	add    eax,0x558060a
    16f3:	03 06                	add    eax,DWORD PTR [esi]
    16f5:	30 05 0c 06 01 05    	xor    BYTE PTR ds:0x501060c,al
    16fb:	01 2f                	add    DWORD PTR [edi],ebp
    16fd:	05 03 00 02 04       	add    eax,0x4020003
    1702:	02 06                	add    al,BYTE PTR [esi]
    1704:	6f                   	outs   dx,DWORD PTR ds:[esi]
    1705:	05 0a 06 02 34       	add    eax,0x3402060a
    170a:	14 05                	adc    al,0x5
    170c:	05 06 2f 05 21       	add    eax,0x21052f06
    1711:	00 02                	add    BYTE PTR [edx],al
    1713:	04 02                	add    al,0x2
    1715:	11 05 17 00 02 04    	adc    DWORD PTR ds:0x4020017,eax
    171b:	01 20                	add    DWORD PTR [eax],esp
    171d:	05 01 03 8e 7f       	add    eax,0x7f8e0301
    1722:	74 06                	je     172a <__executable_start-0x804696a>
    1724:	01 05 03 06 91 05    	add    DWORD PTR ds:0x5910603,eax
    172a:	19 06                	sbb    DWORD PTR [esi],eax
    172c:	01 05 03 06 c9 05    	add    DWORD PTR ds:0x5c90603,eax
    1732:	17                   	pop    ss
    1733:	06                   	push   es
    1734:	01 3c 05 03 06 84 05 	add    DWORD PTR [eax*1+0x5840603],edi
    173b:	06                   	push   es
    173c:	06                   	push   es
    173d:	01 05 15 00 02 04    	add    DWORD PTR ds:0x4020015,eax
    1743:	01 06                	add    DWORD PTR [esi],eax
    1745:	6a 05                	push   0x5
    1747:	25 00 02 04 01       	and    eax,0x1040200
    174c:	06                   	push   es
    174d:	01 00                	add    DWORD PTR [eax],eax
    174f:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1752:	2e 05 0e 3c 05 09    	cs add eax,0x9053c0e
    1758:	06                   	push   es
    1759:	59                   	pop    ecx
    175a:	05 1f 06 01 05       	add    eax,0x501061f
    175f:	0e                   	push   cs
    1760:	58                   	pop    eax
    1761:	05 0c 00 02 04       	add    eax,0x402000c
    1766:	01 08                	add    DWORD PTR [eax],ecx
    1768:	2e 05 34 00 02 04    	cs add eax,0x4020034
    176e:	02 06                	add    al,BYTE PTR [esi]
    1770:	49                   	dec    ecx
    1771:	05 15 00 02 04       	add    eax,0x4020015
    1776:	01 20                	add    DWORD PTR [eax],esp
    1778:	05 0a 06 5d 05       	add    eax,0x55d060a
    177d:	01 59 05             	add    DWORD PTR [ecx+0x5],ebx
    1780:	0a 9d 05 01 06 03    	or     bl,BYTE PTR [ebp+0x3060105]
    1786:	ee                   	out    dx,al
    1787:	00 74 06 01          	add    BYTE PTR [esi+eax*1+0x1],dh
    178b:	05 03 06 67 14       	add    eax,0x14670603
    1790:	05 2b 00 02 04       	add    eax,0x402002b
    1795:	01 01                	add    DWORD PTR [ecx],eax
    1797:	00 02                	add    BYTE PTR [edx],al
    1799:	04 03                	add    al,0x3
    179b:	06                   	push   es
    179c:	01 05 0f ac 05 03    	add    DWORD PTR ds:0x305ac0f,eax
    17a2:	06                   	push   es
    17a3:	5a                   	pop    edx
    17a4:	05 01 06 13 05       	add    eax,0x5130601
    17a9:	0f 2b 05 05 06 59 05 	movntps XMMWORD PTR ds:0x5590605,xmm0
    17b0:	45                   	inc    ebp
    17b1:	00 02                	add    BYTE PTR [edx],al
    17b3:	04 02                	add    al,0x2
    17b5:	11 05 2b 00 02 04    	adc    DWORD PTR ds:0x402002b,eax
    17bb:	01 20                	add    DWORD PTR [eax],esp
    17bd:	00 02                	add    BYTE PTR [edx],al
    17bf:	04 03                	add    al,0x3
    17c1:	06                   	push   es
    17c2:	01 05 01 06 03 10    	add    DWORD PTR ds:0x10030601,eax
    17c8:	c8 06 01 05          	enter  0x106,0x5
    17cc:	03 06                	add    eax,DWORD PTR [esi]
    17ce:	08 e5                	or     ch,ah
    17d0:	14 00                	adc    al,0x0
    17d2:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    17d5:	66 05 17 01          	add    ax,0x117
    17d9:	05 03 13 00 02       	add    eax,0x2001303
    17de:	04 01                	add    al,0x1
    17e0:	4a                   	dec    edx
    17e1:	05 17 01 05 03       	add    eax,0x3050117
    17e6:	14 05                	adc    al,0x5
    17e8:	0d 06 01 05 03       	or     eax,0x3050106
    17ed:	06                   	push   es
    17ee:	9f                   	lahf
    17ef:	05 06 06 01 05       	add    eax,0x5010606
    17f4:	01 03                	add    DWORD PTR [ebx],eax
    17f6:	09 4a 58             	or     DWORD PTR [edx+0x58],ecx
    17f9:	90                   	nop
    17fa:	05 03 00 02 04       	add    eax,0x4020003
    17ff:	02 06                	add    al,BYTE PTR [esi]
    1801:	03 73 20             	add    esi,DWORD PTR [ebx+0x20]
    1804:	00 02                	add    BYTE PTR [edx],al
    1806:	04 02                	add    al,0x2
    1808:	02 34 13             	add    dh,BYTE PTR [ebx+edx*1]
    180b:	05 07 02 34 17       	add    eax,0x17340207
    1810:	13 05 0e 06 11 05    	adc    eax,DWORD PTR ds:0x511060e
    1816:	0a 21                	or     ah,BYTE PTR [ecx]
    1818:	05 07 06 5a 06       	add    eax,0x65a0607
    181d:	ac                   	lods   al,BYTE PTR ds:[esi]
    181e:	06                   	push   es
    181f:	83 05 14 06 01 05 03 	add    DWORD PTR ds:0x5010614,0x3
    1826:	06                   	push   es
    1827:	76 05                	jbe    182e <__executable_start-0x8046866>
    1829:	0a 06                	or     al,BYTE PTR [esi]
    182b:	01 05 01 06 03 0f    	add    DWORD PTR ds:0xf030601,eax
    1831:	58                   	pop    eax
    1832:	06                   	push   es
    1833:	01 05 03 06 08 bb    	add    DWORD PTR ds:0xbb080603,eax
    1839:	14 00                	adc    al,0x0
    183b:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    183e:	4a                   	dec    edx
    183f:	05 17 01 05 03       	add    eax,0x3050117
    1844:	13 00                	adc    eax,DWORD PTR [eax]
    1846:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1849:	66 05 17 01          	add    ax,0x117
    184d:	05 03 14 05 0d       	add    eax,0xd051403
    1852:	06                   	push   es
    1853:	01 05 03 06 c9 05    	add    DWORD PTR ds:0x5c90603,eax
    1859:	0d 06 01 82 05       	or     eax,0x5820106
    185e:	03 06                	add    eax,DWORD PTR [esi]
    1860:	2f                   	das
    1861:	05 06 06 01 05       	add    eax,0x5010606
    1866:	03 06                	add    eax,DWORD PTR [esi]
    1868:	60                   	pusha
    1869:	05 12 06 01 05       	add    eax,0x5010612
    186e:	01 3d 3c 3c 66 05    	add    DWORD PTR ds:0x5663c3c,edi
    1874:	03 00                	add    eax,DWORD PTR [eax]
    1876:	02 04 02             	add    al,BYTE PTR [edx+eax*1]
    1879:	06                   	push   es
    187a:	03 72 20             	add    esi,DWORD PTR [edx+0x20]
    187d:	00 02                	add    BYTE PTR [edx],al
    187f:	04 02                	add    al,0x2
    1881:	02 34 13             	add    dh,BYTE PTR [ebx+edx*1]
    1884:	05 07 02 34 18       	add    eax,0x18340207
    1889:	13 05 0e 06 11 3c    	adc    eax,DWORD PTR ds:0x3c11060e
    188f:	05 0a 3d 05 07       	add    eax,0x7053d0a
    1894:	06                   	push   es
    1895:	5a                   	pop    edx
    1896:	05 13 06 d6 05       	add    eax,0x5d60613
    189b:	07                   	pop    es
    189c:	3c 06                	cmp    al,0x6
    189e:	83 05 1f 06 01 02 0e 	add    DWORD PTR ds:0x201061f,0xe
    18a5:	00 01                	add    BYTE PTR [ecx],al
    18a7:	01 ca                	add    edx,ecx
    18a9:	02 00                	add    al,BYTE PTR [eax]
    18ab:	00 05 00 04 00 33    	add    BYTE PTR ds:0x33000400,al
    18b1:	00 00                	add    BYTE PTR [eax],al
    18b3:	00 01                	add    BYTE PTR [ecx],al
    18b5:	01 01                	add    DWORD PTR [ecx],eax
    18b7:	fb                   	sti
    18b8:	0e                   	push   cs
    18b9:	0d 00 01 01 01       	or     eax,0x1010100
    18be:	01 00                	add    DWORD PTR [eax],eax
    18c0:	00 00                	add    BYTE PTR [eax],al
    18c2:	01 00                	add    DWORD PTR [eax],eax
    18c4:	00 01                	add    BYTE PTR [ecx],al
    18c6:	01 01                	add    DWORD PTR [ecx],eax
    18c8:	1f                   	pop    ds
    18c9:	02 00                	add    al,BYTE PTR [eax]
    18cb:	00 00                	add    BYTE PTR [eax],al
    18cd:	00 7a 00             	add    BYTE PTR [edx+0x0],bh
    18d0:	00 00                	add    BYTE PTR [eax],al
    18d2:	02 01                	add    al,BYTE PTR [ecx]
    18d4:	1f                   	pop    ds
    18d5:	02 0f                	add    cl,BYTE PTR [edi]
    18d7:	03 29                	add    ebp,DWORD PTR [ecx]
    18d9:	01 00                	add    DWORD PTR [eax],eax
    18db:	00 01                	add    BYTE PTR [ecx],al
    18dd:	29 01                	sub    DWORD PTR [ecx],eax
    18df:	00 00                	add    BYTE PTR [eax],al
    18e1:	01 f2                	add    edx,esi
    18e3:	00 00                	add    BYTE PTR [eax],al
    18e5:	00 01                	add    BYTE PTR [ecx],al
    18e7:	05 01 00 05 02       	add    eax,0x2050001
    18ec:	83 9f 04 08 03 ce 00 	sbb    DWORD PTR [edi-0x31fcf7fc],0x0
    18f3:	01 06                	add    DWORD PTR [esi],eax
    18f5:	01 08                	add    DWORD PTR [eax],ecx
    18f7:	74 05                	je     18fe <__executable_start-0x8046796>
    18f9:	03 06                	add    eax,DWORD PTR [esi]
    18fb:	91                   	xchg   ecx,eax
    18fc:	05 06 06 01 05       	add    eax,0x5010606
    1901:	07                   	pop    es
    1902:	06                   	push   es
    1903:	03 25 e4 05 0a 06    	add    esp,DWORD PTR ds:0x60a05e4
    1909:	01 05 10 f3 05 0a    	add    DWORD PTR ds:0xa05f310,eax
    190f:	d5 05                	aad    0x5
    1911:	0b 06                	or     eax,DWORD PTR [esi]
    1913:	6a 05                	push   0x5
    1915:	14 06                	adc    al,0x6
    1917:	01 05 0b 06 2f 05    	add    DWORD PTR ds:0x52f060b,eax
    191d:	01 03                	add    DWORD PTR [ebx],eax
    191f:	b0 7f                	mov    al,0x7f
    1921:	01 05 03 19 13 05    	add    DWORD PTR ds:0x5131903,eax
    1927:	07                   	pop    es
    1928:	06                   	push   es
    1929:	11 05 06 59 05 07    	adc    DWORD PTR ds:0x7055906,eax
    192f:	06                   	push   es
    1930:	84 13                	test   BYTE PTR [ebx],dl
    1932:	05 09 06 01 3b       	add    eax,0x3b010609
    1937:	05 03 06 5b 05       	add    eax,0x55b0603
    193c:	06                   	push   es
    193d:	06                   	push   es
    193e:	01 05 07 06 76 05    	add    DWORD PTR ds:0x5760607,eax
    1944:	09 06                	or     DWORD PTR [esi],eax
    1946:	01 05 07 06 3d 05    	add    DWORD PTR ds:0x53d0607,eax
    194c:	09 06                	or     DWORD PTR [esi],eax
    194e:	01 05 03 06 3e 05    	add    DWORD PTR ds:0x53e0603,eax
    1954:	06                   	push   es
    1955:	06                   	push   es
    1956:	01 05 07 06 76 05    	add    DWORD PTR ds:0x5760607,eax
    195c:	09 06                	or     DWORD PTR [esi],eax
    195e:	01 05 07 06 3d 05    	add    DWORD PTR ds:0x53d0607,eax
    1964:	09 06                	or     DWORD PTR [esi],eax
    1966:	01 05 03 06 3e 05    	add    DWORD PTR ds:0x53e0603,eax
    196c:	06                   	push   es
    196d:	06                   	push   es
    196e:	01 05 07 06 76 05    	add    DWORD PTR ds:0x5760607,eax
    1974:	09 06                	or     DWORD PTR [esi],eax
    1976:	01 05 07 06 3d 05    	add    DWORD PTR ds:0x53d0607,eax
    197c:	09 06                	or     DWORD PTR [esi],eax
    197e:	01 05 03 06 3e 05    	add    DWORD PTR ds:0x53e0603,eax
    1984:	06                   	push   es
    1985:	06                   	push   es
    1986:	13 05 03 06 83 06    	adc    eax,DWORD PTR ds:0x6830603
    198c:	01 05 0b 06 03 33    	add    DWORD PTR ds:0x3303060b,eax
    1992:	01 05 01 03 9f 7f    	add    DWORD PTR ds:0x7f9f0301,eax
    1998:	01 05 03 14 13 13    	add    DWORD PTR ds:0x13131403,eax
    199e:	14 05                	adc    al,0x5
    19a0:	13 06                	adc    eax,DWORD PTR [esi]
    19a2:	0e                   	push   cs
    19a3:	05 18 03 df 00       	add    eax,0xdf0318
    19a8:	9e                   	sahf
    19a9:	05 29 66 05 03       	add    eax,0x3056629
    19ae:	03 a5 7f 08 3c 06    	add    esp,DWORD PTR [ebp+0x63c087f]
    19b4:	4e                   	dec    esi
    19b5:	06                   	push   es
    19b6:	01 05 3d 00 02 04    	add    DWORD PTR ds:0x402003d,eax
    19bc:	01 03                	add    DWORD PTR [ebx],eax
    19be:	d7                   	xlat   BYTE PTR ds:[ebx]
    19bf:	00 01                	add    BYTE PTR [ecx],al
    19c1:	05 36 00 02 04       	add    eax,0x4020036
    19c6:	01 74 00 02          	add    DWORD PTR [eax+eax*1+0x2],esi
    19ca:	04 01                	add    al,0x1
    19cc:	2e 05 14 00 02 04    	cs add eax,0x4020014
    19d2:	01 2e                	add    DWORD PTR [esi],ebp
    19d4:	05 0b 06 75 05       	add    eax,0x575060b
    19d9:	19 06                	sbb    DWORD PTR [esi],eax
    19db:	01 05 1e 82 05 14    	add    DWORD PTR ds:0x1405821e,eax
    19e1:	02 22                	add    ah,BYTE PTR [edx]
    19e3:	12 05 2e 9e 00 02    	adc    al,BYTE PTR ds:0x2009e2e
    19e9:	04 02                	add    al,0x2
    19eb:	ba 00 02 04 02       	mov    edx,0x2040200
    19f0:	82 05 07 06 03 6e 01 	add    BYTE PTR ds:0x6e030607,0x1
    19f7:	13 05 17 06 01 05    	adc    eax,DWORD PTR ds:0x5010617
    19fd:	07                   	pop    es
    19fe:	06                   	push   es
    19ff:	3d 13 05 10 06       	cmp    eax,0x6100513
    1a04:	01 05 07 06 3e 05    	add    DWORD PTR ds:0x53e0607,eax
    1a0a:	1c 06                	sbb    al,0x6
    1a0c:	01 74 4a 05          	add    DWORD PTR [edx+ecx*2+0x5],esi
    1a10:	16                   	push   ss
    1a11:	58                   	pop    eax
    1a12:	05 0e 4a 05 01       	add    eax,0x1054a0e
    1a17:	06                   	push   es
    1a18:	03 ab 7f ba 05 03    	add    ebp,DWORD PTR [ebx+0x305ba7f]
    1a1e:	14 13                	adc    al,0x13
    1a20:	13 14 40             	adc    edx,DWORD PTR [eax+eax*2]
    1a23:	06                   	push   es
    1a24:	01 05 2c 00 02 04    	add    DWORD PTR ds:0x402002c,eax
    1a2a:	01 03                	add    DWORD PTR [ebx],eax
    1a2c:	cb                   	retf
    1a2d:	00 01                	add    BYTE PTR [ecx],al
    1a2f:	00 02                	add    BYTE PTR [edx],al
    1a31:	04 01                	add    al,0x1
    1a33:	66 05 01 03          	add    ax,0x301
    1a37:	10 01                	adc    BYTE PTR [ecx],al
    1a39:	06                   	push   es
    1a3a:	03 28                	add    ebp,DWORD PTR [eax]
    1a3c:	08 2e                	or     BYTE PTR [esi],ch
    1a3e:	06                   	push   es
    1a3f:	01 05 03 06 08 f3    	add    DWORD PTR ds:0xf3080603,eax
    1a45:	05 01 03 64 01       	add    eax,0x1640301
    1a4a:	05 03 14 05 2a       	add    eax,0x2a051403
    1a4f:	00 02                	add    BYTE PTR [edx],al
    1a51:	04 02                	add    al,0x2
    1a53:	06                   	push   es
    1a54:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
    1a57:	03 06                	add    eax,DWORD PTR [esi]
    1a59:	4b                   	dec    ebx
    1a5a:	05 2a 00 02 04       	add    eax,0x402002a
    1a5f:	02 06                	add    al,BYTE PTR [esi]
    1a61:	01 66 05             	add    DWORD PTR [esi+0x5],esp
    1a64:	03 06                	add    eax,DWORD PTR [esi]
    1a66:	67 05 14 06 01 05    	addr16 add eax,0x5010614
    1a6c:	03 06                	add    eax,DWORD PTR [esi]
    1a6e:	bb 05 12 06 01       	mov    ebx,0x1061205
    1a73:	05 2f 3c 05 01       	add    eax,0x1053c2f
    1a78:	03 18                	add    ebx,DWORD PTR [eax]
    1a7a:	2e 66 66 05 2a 00    	cs data16 add ax,0x2a
    1a80:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1a83:	03 65 20             	add    esp,DWORD PTR [ebp+0x20]
    1a86:	00 02                	add    BYTE PTR [edx],al
    1a88:	04 01                	add    al,0x1
    1a8a:	91                   	xchg   ecx,eax
    1a8b:	05 2f 00 02 04       	add    eax,0x402002f
    1a90:	01 92 05 01 06 03    	add    DWORD PTR [edx+0x3060105],edx
    1a96:	1d 90 06 01 05       	sbb    eax,0x5010690
    1a9b:	03 06                	add    eax,DWORD PTR [esi]
    1a9d:	08 f3                	or     bl,dh
    1a9f:	05 01 03 68 01       	add    eax,0x1680301
    1aa4:	05 03 14 05 0c       	add    eax,0xc051403
    1aa9:	06                   	push   es
    1aaa:	01 05 01 06 03 73    	add    DWORD PTR ds:0x73030601,eax
    1ab0:	3c 05                	cmp    al,0x5
    1ab2:	03 14 05 2a 00 02 04 	add    edx,DWORD PTR [eax*1+0x402002a]
    1ab9:	02 06                	add    al,BYTE PTR [esi]
    1abb:	01 4a 05             	add    DWORD PTR [edx+0x5],ecx
    1abe:	03 06                	add    eax,DWORD PTR [esi]
    1ac0:	4b                   	dec    ebx
    1ac1:	05 2a 00 02 04       	add    eax,0x402002a
    1ac6:	02 06                	add    al,BYTE PTR [esi]
    1ac8:	01 66 05             	add    DWORD PTR [esi+0x5],esp
    1acb:	03 06                	add    eax,DWORD PTR [esi]
    1acd:	67 05 14 06 01 90    	addr16 add eax,0x90010614
    1ad3:	05 03 06 75 05       	add    eax,0x5750603
    1ad8:	12 06                	adc    al,BYTE PTR [esi]
    1ada:	01 05 2f 00 02 04    	add    DWORD PTR ds:0x402002f,eax
    1ae0:	02 3c 2e             	add    bh,BYTE PTR [esi+ebp*1]
    1ae3:	2e 05 0c 00 02 04    	cs add eax,0x402000c
    1ae9:	01 1a                	add    DWORD PTR [edx],ebx
    1aeb:	05 0a 00 02 04       	add    eax,0x402000a
    1af0:	01 03                	add    DWORD PTR [ebx],eax
    1af2:	16                   	push   ss
    1af3:	ac                   	lods   al,BYTE PTR ds:[esi]
    1af4:	05 01 21 ba 05       	add    eax,0x5ba2101
    1af9:	2a 00                	sub    al,BYTE PTR [eax]
    1afb:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1afe:	03 5e 20             	add    ebx,DWORD PTR [esi+0x20]
    1b01:	00 02                	add    BYTE PTR [edx],al
    1b03:	04 01                	add    al,0x1
    1b05:	91                   	xchg   ecx,eax
    1b06:	05 2f 00 02 04       	add    eax,0x402002f
    1b0b:	01 92 05 01 06 03    	add    DWORD PTR [edx+0x3060105],edx
    1b11:	24 66                	and    al,0x66
    1b13:	06                   	push   es
    1b14:	01 05 03 06 67 05    	add    DWORD PTR ds:0x5670603,eax
    1b1a:	0a 06                	or     al,BYTE PTR [esi]
    1b1c:	01 05 01 08 75 3c    	add    DWORD PTR ds:0x3c750801,eax
    1b22:	06                   	push   es
    1b23:	25 06 01 05 03       	and    eax,0x3050106
    1b28:	06                   	push   es
    1b29:	08 21                	or     BYTE PTR [ecx],ah
    1b2b:	05 01 03 47 01       	add    eax,0x1470301
    1b30:	05 03 14 05 12       	add    eax,0x12051403
    1b35:	06                   	push   es
    1b36:	01 05 0c 00 02 04    	add    DWORD PTR ds:0x402000c,eax
    1b3c:	01 08                	add    DWORD PTR [eax],ecx
    1b3e:	3c 05                	cmp    al,0x5
    1b40:	0a 00                	or     al,BYTE PTR [eax]
    1b42:	02 04 01             	add    al,BYTE PTR [ecx+eax*1]
    1b45:	03 37                	add    esi,DWORD PTR [edi]
    1b47:	90                   	nop
    1b48:	05 01 59 90 06       	add    eax,0x6905901
    1b4d:	25 06 01 05 03       	and    eax,0x3050106
    1b52:	06                   	push   es
    1b53:	08 9f 05 1a 06 01    	or     BYTE PTR [edi+0x1061a05],bl
    1b59:	05 03 06 08 3d       	add    eax,0x3d080603
    1b5e:	05 0e 06 01 82       	add    eax,0x8201060e
    1b63:	05 0a ac 05 03       	add    eax,0x305ac0a
    1b68:	06                   	push   es
    1b69:	08 21                	or     BYTE PTR [ecx],ah
    1b6b:	05 01 06 13 ac       	add    eax,0xac130601
    1b70:	66 02 01             	data16 add al,BYTE PTR [ecx]
    1b73:	00 01                	add    BYTE PTR [ecx],al
    1b75:	01                   	.byte 0x1

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6c                   	ins    BYTE PTR es:[edi],dx
   1:	6f                   	outs   dx,DWORD PTR ds:[esi]
   2:	6e                   	outs   dx,BYTE PTR ds:[esi]
   3:	67 20 6c 6f          	and    BYTE PTR [si+0x6f],ch
   7:	6e                   	outs   dx,BYTE PTR ds:[esi]
   8:	67 20 69 6e          	and    BYTE PTR [bx+di+0x6e],ch
   c:	74 00                	je     e <__executable_start-0x8048086>
   e:	47                   	inc    edi
   f:	4e                   	dec    esi
  10:	55                   	push   ebp
  11:	20 43 31             	and    BYTE PTR [ebx+0x31],al
  14:	37                   	aaa
  15:	20 31                	and    BYTE PTR [ecx],dh
  17:	33 2e                	xor    ebp,DWORD PTR [esi]
  19:	33 2e                	xor    ebp,DWORD PTR [esi]
  1b:	30 20                	xor    BYTE PTR [eax],ah
  1d:	2d 6d 33 32 20       	sub    eax,0x2032336d
  22:	2d 6d 73 6f 66       	sub    eax,0x666f736d
  27:	74 2d                	je     56 <__executable_start-0x804803e>
  29:	66 6c                	data16 ins BYTE PTR es:[edi],dx
  2b:	6f                   	outs   dx,DWORD PTR ds:[esi]
  2c:	61                   	popa
  2d:	74 20                	je     4f <__executable_start-0x8048045>
  2f:	2d 6d 61 72 63       	sub    eax,0x6372616d
  34:	68 3d 69 36 38       	push   0x3836693d
  39:	36 20 2d 67 20 2d 4f 	and    BYTE PTR ss:0x4f2d2067,ch
  40:	20 2d 66 6e 6f 2d    	and    BYTE PTR ds:0x2d6f6e66,ch
  46:	6f                   	outs   dx,DWORD PTR ds:[esi]
  47:	6d                   	ins    DWORD PTR es:[edi],dx
  48:	69 74 2d 66 72 61 6d 	imul   esi,DWORD PTR [ebp+ebp*1+0x66],0x656d6172
  4f:	65 
  50:	2d 70 6f 69 6e       	sub    eax,0x6e696f70
  55:	74 65                	je     bc <__executable_start-0x8047fd8>
  57:	72 20                	jb     79 <__executable_start-0x804801b>
  59:	2d 66 66 72 65       	sub    eax,0x65726666
  5e:	65 73 74             	gs jae d5 <__executable_start-0x8047fbf>
  61:	61                   	popa
  62:	6e                   	outs   dx,BYTE PTR ds:[esi]
  63:	64 69 6e 67 20 2d 66 	imul   ebp,DWORD PTR fs:[esi+0x67],0x6e662d20
  6a:	6e 
  6b:	6f                   	outs   dx,DWORD PTR ds:[esi]
  6c:	2d 73 74 61 63       	sub    eax,0x63617473
  71:	6b 2d 70 72 6f 74 65 	imul   ebp,DWORD PTR ds:0x746f7270,0x65
  78:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],esi
  7c:	20 2d 66 61 73 79    	and    BYTE PTR ds:0x79736166,ch
  82:	6e                   	outs   dx,BYTE PTR ds:[esi]
  83:	63 68 72             	arpl   WORD PTR [eax+0x72],ebp
  86:	6f                   	outs   dx,DWORD PTR ds:[esi]
  87:	6e                   	outs   dx,BYTE PTR ds:[esi]
  88:	6f                   	outs   dx,DWORD PTR ds:[esi]
  89:	75 73                	jne    fe <__executable_start-0x8047f96>
  8b:	2d 75 6e 77 69       	sub    eax,0x69776e75
  90:	6e                   	outs   dx,BYTE PTR ds:[esi]
  91:	64 2d 74 61 62 6c    	fs sub eax,0x6c626174
  97:	65 73 20             	gs jae ba <__executable_start-0x8047fda>
  9a:	2d 66 73 74 61       	sub    eax,0x61747366
  9f:	63 6b 2d             	arpl   WORD PTR [ebx+0x2d],ebp
  a2:	63 6c 61 73          	arpl   WORD PTR [ecx+eiz*2+0x73],ebp
  a6:	68 2d 70 72 6f       	push   0x6f72702d
  ab:	74 65                	je     112 <__executable_start-0x8047f82>
  ad:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],esi
  b1:	6e                   	outs   dx,BYTE PTR ds:[esi]
  b2:	00 6c 6f 6e          	add    BYTE PTR [edi+ebp*2+0x6e],ch
  b6:	67 20 6c 6f          	and    BYTE PTR [si+0x6f],ch
  ba:	6e                   	outs   dx,BYTE PTR ds:[esi]
  bb:	67 20 75 6e          	and    BYTE PTR [di+0x6e],dh
  bf:	73 69                	jae    12a <__executable_start-0x8047f6a>
  c1:	67 6e                	outs   dx,BYTE PTR ds:[si]
  c3:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  c8:	74 00                	je     ca <__executable_start-0x8047fca>
  ca:	75 6e                	jne    13a <__executable_start-0x8047f5a>
  cc:	73 69                	jae    137 <__executable_start-0x8047f5d>
  ce:	67 6e                	outs   dx,BYTE PTR ds:[si]
  d0:	65 64 20 63 68       	gs and BYTE PTR fs:[ebx+0x68],ah
  d5:	61                   	popa
  d6:	72 00                	jb     d8 <__executable_start-0x8047fbc>
  d8:	73 68                	jae    142 <__executable_start-0x8047f52>
  da:	6f                   	outs   dx,DWORD PTR ds:[esi]
  db:	72 74                	jb     151 <__executable_start-0x8047f43>
  dd:	20 75 6e             	and    BYTE PTR [ebp+0x6e],dh
  e0:	73 69                	jae    14b <__executable_start-0x8047f49>
  e2:	67 6e                	outs   dx,BYTE PTR ds:[si]
  e4:	65 64 20 69 6e       	gs and BYTE PTR fs:[ecx+0x6e],ch
  e9:	74 00                	je     eb <__executable_start-0x8047fa9>
  eb:	6d                   	ins    DWORD PTR es:[edi],dx
  ec:	61                   	popa
  ed:	69 6e 00 65 78 69 74 	imul   ebp,DWORD PTR [esi+0x0],0x74697865
  f4:	00 73 68             	add    BYTE PTR [ebx+0x68],dh
  f7:	6f                   	outs   dx,DWORD PTR ds:[esi]
  f8:	72 74                	jb     16e <__executable_start-0x8047f26>
  fa:	20 69 6e             	and    BYTE PTR [ecx+0x6e],ch
  fd:	74 00                	je     ff <__executable_start-0x8047f95>
  ff:	5f                   	pop    edi
 100:	73 74                	jae    176 <__executable_start-0x8047f1e>
 102:	61                   	popa
 103:	72 74                	jb     179 <__executable_start-0x8047f1b>
 105:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
 108:	67 63 00             	arpl   WORD PTR [bx+si],eax
 10b:	61                   	popa
 10c:	72 67                	jb     175 <__executable_start-0x8047f1f>
 10e:	76 00                	jbe    110 <__executable_start-0x8047f84>
 110:	6f                   	outs   dx,DWORD PTR ds:[esi]
 111:	70 65                	jo     178 <__executable_start-0x8047f1c>
 113:	6e                   	outs   dx,BYTE PTR ds:[esi]
 114:	00 69 6e             	add    BYTE PTR [ecx+0x6e],ch
 117:	75 6d                	jne    186 <__executable_start-0x8047f0e>
 119:	62 65 72             	bound  esp,QWORD PTR [ebp+0x72]
 11c:	00 68 61             	add    BYTE PTR [eax+0x61],ch
 11f:	6c                   	ins    BYTE PTR es:[edi],dx
 120:	74 00                	je     122 <__executable_start-0x8047f72>
 122:	5f                   	pop    edi
 123:	42                   	inc    edx
 124:	6f                   	outs   dx,DWORD PTR ds:[esi]
 125:	6f                   	outs   dx,DWORD PTR ds:[esi]
 126:	6c                   	ins    BYTE PTR es:[edi],dx
 127:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 12a:	53                   	push   ebx
 12b:	5f                   	pop    edi
 12c:	4d                   	dec    ebp
 12d:	4d                   	dec    ebp
 12e:	41                   	inc    ecx
 12f:	50                   	push   eax
 130:	00 62 75             	add    BYTE PTR [edx+0x75],ah
 133:	66 66 65 72 00       	data16 data16 gs jb 138 <__executable_start-0x8047f5c>
 138:	5f                   	pop    edi
 139:	5f                   	pop    edi
 13a:	66 75 6e             	data16 jne 1ab <__executable_start-0x8047ee9>
 13d:	63 5f 5f             	arpl   WORD PTR [edi+0x5f],ebx
 140:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 143:	53                   	push   ebx
 144:	5f                   	pop    edi
 145:	52                   	push   edx
 146:	45                   	inc    ebp
 147:	41                   	inc    ecx
 148:	44                   	inc    esp
 149:	44                   	inc    esp
 14a:	49                   	dec    ecx
 14b:	52                   	push   edx
 14c:	00 69 6e             	add    BYTE PTR [ecx+0x6e],ch
 14f:	69 74 69 61 6c 5f 73 	imul   esi,DWORD PTR [ecx+ebp*2+0x61],0x69735f6c
 156:	69 
 157:	7a 65                	jp     1be <__executable_start-0x8047ed6>
 159:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 15c:	53                   	push   ebx
 15d:	5f                   	pop    edi
 15e:	45                   	inc    ebp
 15f:	58                   	pop    eax
 160:	45                   	inc    ebp
 161:	43                   	inc    ebx
 162:	00 61 64             	add    BYTE PTR [ecx+0x64],ah
 165:	64 72 00             	fs jb  168 <__executable_start-0x8047f2c>
 168:	66 69 6c 65 73 69 7a 	imul   bp,WORD PTR [ebp+eiz*2+0x73],0x7a69
 16f:	65 00 53 59          	add    BYTE PTR gs:[ebx+0x59],dl
 173:	53                   	push   ebx
 174:	5f                   	pop    edi
 175:	52                   	push   edx
 176:	45                   	inc    ebp
 177:	41                   	inc    ecx
 178:	44                   	inc    esp
 179:	00 63 72             	add    BYTE PTR [ebx+0x72],ah
 17c:	65 61                	gs popa
 17e:	74 65                	je     1e5 <__executable_start-0x8047eaf>
 180:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 183:	53                   	push   ebx
 184:	5f                   	pop    edi
 185:	57                   	push   edi
 186:	41                   	inc    ecx
 187:	49                   	dec    ecx
 188:	54                   	push   esp
 189:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 18c:	53                   	push   ebx
 18d:	5f                   	pop    edi
 18e:	57                   	push   edi
 18f:	52                   	push   edx
 190:	49                   	dec    ecx
 191:	54                   	push   esp
 192:	45                   	inc    ebp
 193:	00 6d 75             	add    BYTE PTR [ebp+0x75],ch
 196:	6e                   	outs   dx,BYTE PTR ds:[esi]
 197:	6d                   	ins    DWORD PTR es:[edi],dx
 198:	61                   	popa
 199:	70 00                	jo     19b <__executable_start-0x8047ef9>
 19b:	53                   	push   ebx
 19c:	59                   	pop    ecx
 19d:	53                   	push   ebx
 19e:	5f                   	pop    edi
 19f:	43                   	inc    ebx
 1a0:	52                   	push   edx
 1a1:	45                   	inc    ebp
 1a2:	41                   	inc    ecx
 1a3:	54                   	push   esp
 1a4:	45                   	inc    ebp
 1a5:	00 77 72             	add    BYTE PTR [edi+0x72],dh
 1a8:	69 74 65 00 53 59 53 	imul   esi,DWORD PTR [ebp+eiz*2+0x0],0x5f535953
 1af:	5f 
 1b0:	4d                   	dec    ebp
 1b1:	55                   	push   ebp
 1b2:	4e                   	dec    esi
 1b3:	4d                   	dec    ebp
 1b4:	41                   	inc    ecx
 1b5:	50                   	push   eax
 1b6:	00 72 65             	add    BYTE PTR [edx+0x65],dh
 1b9:	6d                   	ins    DWORD PTR es:[edi],dx
 1ba:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1bb:	76 65                	jbe    222 <__executable_start-0x8047e72>
 1bd:	00 6d 6d             	add    BYTE PTR [ebp+0x6d],ch
 1c0:	61                   	popa
 1c1:	70 00                	jo     1c3 <__executable_start-0x8047ed1>
 1c3:	53                   	push   ebx
 1c4:	59                   	pop    ecx
 1c5:	53                   	push   ebx
 1c6:	5f                   	pop    edi
 1c7:	45                   	inc    ebp
 1c8:	58                   	pop    eax
 1c9:	49                   	dec    ecx
 1ca:	54                   	push   esp
 1cb:	00 72 65             	add    BYTE PTR [edx+0x65],dh
 1ce:	61                   	popa
 1cf:	64 00 70 6f          	add    BYTE PTR fs:[eax+0x6f],dh
 1d3:	73 69                	jae    23e <__executable_start-0x8047e56>
 1d5:	74 69                	je     240 <__executable_start-0x8047e54>
 1d7:	6f                   	outs   dx,DWORD PTR ds:[esi]
 1d8:	6e                   	outs   dx,BYTE PTR ds:[esi]
 1d9:	00 77 61             	add    BYTE PTR [edi+0x61],dh
 1dc:	69 74 00 65 78 65 63 	imul   esi,DWORD PTR [eax+eax*1+0x65],0x636578
 1e3:	00 
 1e4:	53                   	push   ebx
 1e5:	59                   	pop    ecx
 1e6:	53                   	push   ebx
 1e7:	5f                   	pop    edi
 1e8:	54                   	push   esp
 1e9:	45                   	inc    ebp
 1ea:	4c                   	dec    esp
 1eb:	4c                   	dec    esp
 1ec:	00 64 65 62          	add    BYTE PTR [ebp+eiz*2+0x62],ah
 1f0:	75 67                	jne    259 <__executable_start-0x8047e3b>
 1f2:	5f                   	pop    edi
 1f3:	70 61                	jo     256 <__executable_start-0x8047e3e>
 1f5:	6e                   	outs   dx,BYTE PTR ds:[esi]
 1f6:	69 63 00 6d 61 70 69 	imul   esp,DWORD PTR [ebx+0x0],0x6970616d
 1fd:	64 00 53 59          	add    BYTE PTR fs:[ebx+0x59],dl
 201:	53                   	push   ebx
 202:	5f                   	pop    edi
 203:	52                   	push   edx
 204:	45                   	inc    ebp
 205:	4d                   	dec    ebp
 206:	4f                   	dec    edi
 207:	56                   	push   esi
 208:	45                   	inc    ebp
 209:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 20c:	53                   	push   ebx
 20d:	5f                   	pop    edi
 20e:	4f                   	dec    edi
 20f:	50                   	push   eax
 210:	45                   	inc    ebp
 211:	4e                   	dec    esi
 212:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 215:	53                   	push   ebx
 216:	5f                   	pop    edi
 217:	49                   	dec    ecx
 218:	4e                   	dec    esi
 219:	55                   	push   ebp
 21a:	4d                   	dec    ebp
 21b:	42                   	inc    edx
 21c:	45                   	inc    ebp
 21d:	52                   	push   edx
 21e:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 221:	53                   	push   ebx
 222:	5f                   	pop    edi
 223:	53                   	push   ebx
 224:	45                   	inc    ebp
 225:	45                   	inc    ebp
 226:	4b                   	dec    ebx
 227:	00 73 65             	add    BYTE PTR [ebx+0x65],dh
 22a:	65 6b 00 53          	imul   eax,DWORD PTR gs:[eax],0x53
 22e:	59                   	pop    ecx
 22f:	53                   	push   ebx
 230:	5f                   	pop    edi
 231:	49                   	dec    ecx
 232:	53                   	push   ebx
 233:	44                   	inc    esp
 234:	49                   	dec    ecx
 235:	52                   	push   edx
 236:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 239:	53                   	push   ebx
 23a:	5f                   	pop    edi
 23b:	48                   	dec    eax
 23c:	41                   	inc    ecx
 23d:	4c                   	dec    esp
 23e:	54                   	push   esp
 23f:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 242:	53                   	push   ebx
 243:	5f                   	pop    edi
 244:	43                   	inc    ebx
 245:	4c                   	dec    esp
 246:	4f                   	dec    edi
 247:	53                   	push   ebx
 248:	45                   	inc    ebp
 249:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 24c:	61                   	popa
 24d:	74 75                	je     2c4 <__executable_start-0x8047dd0>
 24f:	73 00                	jae    251 <__executable_start-0x8047e43>
 251:	6e                   	outs   dx,BYTE PTR ds:[esi]
 252:	61                   	popa
 253:	6d                   	ins    DWORD PTR es:[edi],dx
 254:	65 00 66 69          	add    BYTE PTR gs:[esi+0x69],ah
 258:	6c                   	ins    BYTE PTR es:[edi],dx
 259:	65 00 6d 61          	add    BYTE PTR gs:[ebp+0x61],ch
 25d:	70 69                	jo     2c8 <__executable_start-0x8047dcc>
 25f:	64 5f                	fs pop edi
 261:	74 00                	je     263 <__executable_start-0x8047e31>
 263:	74 65                	je     2ca <__executable_start-0x8047dca>
 265:	6c                   	ins    BYTE PTR es:[edi],dx
 266:	6c                   	ins    BYTE PTR es:[edi],dx
 267:	00 72 65             	add    BYTE PTR [edx+0x65],dh
 26a:	74 76                	je     2e2 <__executable_start-0x8047db2>
 26c:	61                   	popa
 26d:	6c                   	ins    BYTE PTR es:[edi],dx
 26e:	00 63 68             	add    BYTE PTR [ebx+0x68],ah
 271:	64 69 72 00 53 59 53 	imul   esi,DWORD PTR fs:[edx+0x0],0x5f535953
 278:	5f 
 279:	43                   	inc    ebx
 27a:	48                   	dec    eax
 27b:	44                   	inc    esp
 27c:	49                   	dec    ecx
 27d:	52                   	push   edx
 27e:	00 69 73             	add    BYTE PTR [ecx+0x73],ch
 281:	64 69 72 00 6d 6b 64 	imul   esi,DWORD PTR fs:[edx+0x0],0x69646b6d
 288:	69 
 289:	72 00                	jb     28b <__executable_start-0x8047e09>
 28b:	63 6c 6f 73          	arpl   WORD PTR [edi+ebp*2+0x73],ebp
 28f:	65 00 53 59          	add    BYTE PTR gs:[ebx+0x59],dl
 293:	53                   	push   ebx
 294:	5f                   	pop    edi
 295:	46                   	inc    esi
 296:	49                   	dec    ecx
 297:	4c                   	dec    esp
 298:	45                   	inc    ebp
 299:	53                   	push   ebx
 29a:	49                   	dec    ecx
 29b:	5a                   	pop    edx
 29c:	45                   	inc    ebp
 29d:	00 53 59             	add    BYTE PTR [ebx+0x59],dl
 2a0:	53                   	push   ebx
 2a1:	5f                   	pop    edi
 2a2:	4d                   	dec    ebp
 2a3:	4b                   	dec    ebx
 2a4:	44                   	inc    esp
 2a5:	49                   	dec    ecx
 2a6:	52                   	push   edx
 2a7:	00 72 65             	add    BYTE PTR [edx+0x65],dh
 2aa:	61                   	popa
 2ab:	64 64 69 72 00 64 65 	fs imul esi,DWORD PTR fs:[edx+0x0],0x75626564
 2b2:	62 75 
 2b4:	67 5f                	addr16 pop edi
 2b6:	62 61 63             	bound  esp,QWORD PTR [ecx+0x63]
 2b9:	6b 74 72 61 63       	imul   esi,DWORD PTR [edx+esi*2+0x61],0x63
 2be:	65 00 5f 5f          	add    BYTE PTR gs:[edi+0x5f],bl
 2c2:	62 75 69             	bound  esi,QWORD PTR [ebp+0x69]
 2c5:	6c                   	ins    BYTE PTR es:[edi],dx
 2c6:	74 69                	je     331 <__executable_start-0x8047d63>
 2c8:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2c9:	5f                   	pop    edi
 2ca:	76 61                	jbe    32d <__executable_start-0x8047d67>
 2cc:	5f                   	pop    edi
 2cd:	6c                   	ins    BYTE PTR es:[edi],dx
 2ce:	69 73 74 00 6d 65 73 	imul   esi,DWORD PTR [ebx+0x74],0x73656d00
 2d5:	73 61                	jae    338 <__executable_start-0x8047d5c>
 2d7:	67 65 00 66 75       	add    BYTE PTR gs:[bp+0x75],ah
 2dc:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2dd:	63 74 69 6f          	arpl   WORD PTR [ecx+ebp*2+0x6f],esi
 2e1:	6e                   	outs   dx,BYTE PTR ds:[esi]
 2e2:	00 61 72             	add    BYTE PTR [ecx+0x72],ah
 2e5:	67 73 00             	addr16 jae 2e8 <__executable_start-0x8047dac>
 2e8:	73 69                	jae    353 <__executable_start-0x8047d41>
 2ea:	7a 65                	jp     351 <__executable_start-0x8047d43>
 2ec:	5f                   	pop    edi
 2ed:	74 00                	je     2ef <__executable_start-0x8047da5>
 2ef:	76 68                	jbe    359 <__executable_start-0x8047d3b>
 2f1:	70 72                	jo     365 <__executable_start-0x8047d2f>
 2f3:	69 6e 74 66 00 73 74 	imul   ebp,DWORD PTR [esi+0x74],0x74730066
 2fa:	72 6c                	jb     368 <__executable_start-0x8047d2c>
 2fc:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 2fe:	00 70 75             	add    BYTE PTR [eax+0x75],dh
 301:	74 63                	je     366 <__executable_start-0x8047d2e>
 303:	68 61 72 00 68       	push   0x68007261
 308:	61                   	popa
 309:	6e                   	outs   dx,BYTE PTR ds:[esi]
 30a:	64 6c                	fs ins BYTE PTR es:[edi],dx
 30c:	65 00 70 75          	add    BYTE PTR gs:[eax+0x75],dh
 310:	74 73                	je     385 <__executable_start-0x8047d0f>
 312:	00 66 6f             	add    BYTE PTR [esi+0x6f],ah
 315:	72 6d                	jb     384 <__executable_start-0x8047d10>
 317:	61                   	popa
 318:	74 00                	je     31a <__executable_start-0x8047d7a>
 31a:	61                   	popa
 31b:	75 78                	jne    395 <__executable_start-0x8047cff>
 31d:	5f                   	pop    edi
 31e:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 321:	76 70                	jbe    393 <__executable_start-0x8047d01>
 323:	72 69                	jb     38e <__executable_start-0x8047d06>
 325:	6e                   	outs   dx,BYTE PTR ds:[esi]
 326:	74 66                	je     38e <__executable_start-0x8047d06>
 328:	00 66 6c             	add    BYTE PTR [esi+0x6c],ah
 32b:	75 73                	jne    3a0 <__executable_start-0x8047cf4>
 32d:	68 00 76 68 70       	push   0x70687600
 332:	72 69                	jb     39d <__executable_start-0x8047cf7>
 334:	6e                   	outs   dx,BYTE PTR ds:[esi]
 335:	74 66                	je     39d <__executable_start-0x8047cf7>
 337:	5f                   	pop    edi
 338:	61                   	popa
 339:	75 78                	jne    3b3 <__executable_start-0x8047ce1>
 33b:	00 61 64             	add    BYTE PTR [ecx+0x64],ah
 33e:	64 5f                	fs pop edi
 340:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
 343:	72 00                	jb     345 <__executable_start-0x8047d4f>
 345:	63 68 61             	arpl   WORD PTR [eax+0x61],ebp
 348:	72 5f                	jb     3a9 <__executable_start-0x8047ceb>
 34a:	63 6e 74             	arpl   WORD PTR [esi+0x74],ebp
 34d:	00 75 69             	add    BYTE PTR [ebp+0x69],dh
 350:	6e                   	outs   dx,BYTE PTR ds:[esi]
 351:	74 70                	je     3c3 <__executable_start-0x8047cd1>
 353:	74 72                	je     3c7 <__executable_start-0x8047ccd>
 355:	5f                   	pop    edi
 356:	74 00                	je     358 <__executable_start-0x8047d3c>
 358:	75 69                	jne    3c3 <__executable_start-0x8047cd1>
 35a:	6e                   	outs   dx,BYTE PTR ds:[esi]
 35b:	74 33                	je     390 <__executable_start-0x8047d04>
 35d:	32 5f 74             	xor    bl,BYTE PTR [edi+0x74]
 360:	00 65 78             	add    BYTE PTR [ebp+0x78],ah
 363:	70 6c                	jo     3d1 <__executable_start-0x8047cc3>
 365:	61                   	popa
 366:	69 6e 65 64 00 66 72 	imul   ebp,DWORD PTR [esi+0x65],0x72660064
 36d:	61                   	popa
 36e:	6d                   	ins    DWORD PTR es:[edi],dx
 36f:	65 00 73 74          	add    BYTE PTR gs:[ebx+0x74],dh
 373:	72 6e                	jb     3e3 <__executable_start-0x8047cb1>
 375:	6c                   	ins    BYTE PTR es:[edi],dx
 376:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 378:	00 69 73             	add    BYTE PTR [ecx+0x73],ch
 37b:	64 69 67 69 74 00 47 	imul   esp,DWORD PTR fs:[edi+0x69],0x52470074
 382:	52 
 383:	4f                   	dec    edi
 384:	55                   	push   ebp
 385:	50                   	push   eax
 386:	00 62 75             	add    BYTE PTR [edx+0x75],ah
 389:	66 5f                	pop    di
 38b:	73 69                	jae    3f6 <__executable_start-0x8047c9e>
 38d:	7a 65                	jp     3f4 <__executable_start-0x8047ca0>
 38f:	00 75 69             	add    BYTE PTR [ebp+0x69],dh
 392:	6e                   	outs   dx,BYTE PTR ds:[esi]
 393:	74 36                	je     3cb <__executable_start-0x8047cc9>
 395:	34 5f                	xor    al,0x5f
 397:	74 00                	je     399 <__executable_start-0x8047cfb>
 399:	67 72 6f             	addr16 jb 40b <__executable_start-0x8047c89>
 39c:	75 70                	jne    40e <__executable_start-0x8047c86>
 39e:	00 62 75             	add    BYTE PTR [edx+0x75],ah
 3a1:	66 5f                	pop    di
 3a3:	00 70 61             	add    BYTE PTR [eax+0x61],dh
 3a6:	64 5f                	fs pop edi
 3a8:	63 6e 74             	arpl   WORD PTR [esi+0x74],ebp
 3ab:	00 5a 45             	add    BYTE PTR [edx+0x45],bl
 3ae:	52                   	push   edx
 3af:	4f                   	dec    edi
 3b0:	00 74 79 70          	add    BYTE PTR [ecx+edi*2+0x70],dh
 3b4:	65 00 75 69          	add    BYTE PTR gs:[ebp+0x69],dh
 3b8:	6e                   	outs   dx,BYTE PTR ds:[esi]
 3b9:	74 38                	je     3f3 <__executable_start-0x8047ca1>
 3bb:	5f                   	pop    edi
 3bc:	74 00                	je     3be <__executable_start-0x8047cd6>
 3be:	6f                   	outs   dx,DWORD PTR ds:[esi]
 3bf:	75 74                	jne    435 <__executable_start-0x8047c5f>
 3c1:	70 75                	jo     438 <__executable_start-0x8047c5c>
 3c3:	74 5f                	je     424 <__executable_start-0x8047c70>
 3c5:	64 75 70             	fs jne 438 <__executable_start-0x8047c5c>
 3c8:	00 76 73             	add    BYTE PTR [esi+0x73],dh
 3cb:	6e                   	outs   dx,BYTE PTR ds:[esi]
 3cc:	70 72                	jo     440 <__executable_start-0x8047c54>
 3ce:	69 6e 74 66 5f 68 65 	imul   ebp,DWORD PTR [esi+0x74],0x65685f66
 3d5:	6c                   	ins    BYTE PTR es:[edi],dx
 3d6:	70 65                	jo     43d <__executable_start-0x8047c57>
 3d8:	72 00                	jb     3da <__executable_start-0x8047cba>
 3da:	77 69                	ja     445 <__executable_start-0x8047c4f>
 3dc:	64 74 68             	fs je  447 <__executable_start-0x8047c4d>
 3df:	00 6e 6f             	add    BYTE PTR [esi+0x6f],ch
 3e2:	74 5f                	je     443 <__executable_start-0x8047c51>
 3e4:	61                   	popa
 3e5:	5f                   	pop    edi
 3e6:	66 6c                	data16 ins BYTE PTR es:[edi],dx
 3e8:	61                   	popa
 3e9:	67 00 62 61          	add    BYTE PTR [bp+si+0x61],ah
 3ed:	73 65                	jae    454 <__executable_start-0x8047c40>
 3ef:	5f                   	pop    edi
 3f0:	64 00 43 48          	add    BYTE PTR fs:[ebx+0x48],al
 3f4:	41                   	inc    ecx
 3f5:	52                   	push   edx
 3f6:	00 6e 65             	add    BYTE PTR [esi+0x65],ch
 3f9:	67 61                	addr16 popa
 3fb:	74 69                	je     466 <__executable_start-0x8047c2e>
 3fd:	76 65                	jbe    464 <__executable_start-0x8047c30>
 3ff:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 402:	75 6d                	jne    471 <__executable_start-0x8047c23>
 404:	6f                   	outs   dx,DWORD PTR ds:[esi]
 405:	64 64 69 33 00 53 49 	fs imul esi,DWORD PTR fs:[ebx],0x5a495300
 40c:	5a 
 40d:	45                   	inc    ebp
 40e:	54                   	push   esp
 40f:	00 50 4c             	add    BYTE PTR [eax+0x4c],dl
 412:	55                   	push   ebp
 413:	53                   	push   ebx
 414:	00 64 69 67          	add    BYTE PTR [ecx+ebp*2+0x67],ah
 418:	69 74 73 00 70 72 69 	imul   esi,DWORD PTR [ebx+esi*2+0x0],0x6e697270
 41f:	6e 
 420:	74 5f                	je     481 <__executable_start-0x8047c13>
 422:	68 75 6d 61 6e       	push   0x6e616d75
 427:	5f                   	pop    edi
 428:	72 65                	jb     48f <__executable_start-0x8047c05>
 42a:	61                   	popa
 42b:	64 61                	fs popa
 42d:	62 6c 65 5f          	bound  ebp,QWORD PTR [ebp+eiz*2+0x5f]
 431:	73 69                	jae    49c <__executable_start-0x8047bf8>
 433:	7a 65                	jp     49a <__executable_start-0x8047bfa>
 435:	00 69 6e             	add    BYTE PTR [ecx+0x6e],ch
 438:	74 65                	je     49f <__executable_start-0x8047bf5>
 43a:	67 65 72 5f          	addr16 gs jb 49d <__executable_start-0x8047bf7>
 43e:	62 61 73             	bound  esp,QWORD PTR [ecx+0x73]
 441:	65 00 62 61          	add    BYTE PTR gs:[edx+0x61],ah
 445:	73 65                	jae    4ac <__executable_start-0x8047be8>
 447:	5f                   	pop    edi
 448:	58                   	pop    eax
 449:	00 66 61             	add    BYTE PTR [esi+0x61],ah
 44c:	63 74 6f 72          	arpl   WORD PTR [edi+ebp*2+0x72],esi
 450:	73 00                	jae    452 <__executable_start-0x8047c42>
 452:	53                   	push   ebx
 453:	50                   	push   eax
 454:	41                   	inc    ecx
 455:	43                   	inc    ebx
 456:	45                   	inc    ebp
 457:	00 66 6c             	add    BYTE PTR [esi+0x6c],ah
 45a:	61                   	popa
 45b:	67 73 00             	addr16 jae 45e <__executable_start-0x8047c36>
 45e:	66 6f                	outs   dx,WORD PTR ds:[esi]
 460:	72 6d                	jb     4cf <__executable_start-0x8047bc5>
 462:	61                   	popa
 463:	74 5f                	je     4c4 <__executable_start-0x8047bd0>
 465:	69 6e 74 65 67 65 72 	imul   ebp,DWORD PTR [esi+0x74],0x72656765
 46c:	00 61 73             	add    BYTE PTR [ecx+0x73],ah
 46f:	63 69 69             	arpl   WORD PTR [ecx+0x69],ebp
 472:	00 62 61             	add    BYTE PTR [edx+0x61],ah
 475:	73 65                	jae    4dc <__executable_start-0x8047bb8>
 477:	5f                   	pop    edi
 478:	6f                   	outs   dx,DWORD PTR ds:[esi]
 479:	00 75 69             	add    BYTE PTR [ebp+0x69],dh
 47c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 47d:	74 6d                	je     4ec <__executable_start-0x8047ba8>
 47f:	61                   	popa
 480:	78 5f                	js     4e1 <__executable_start-0x8047bb3>
 482:	74 00                	je     484 <__executable_start-0x8047c10>
 484:	70 65                	jo     4eb <__executable_start-0x8047ba9>
 486:	72 5f                	jb     4e7 <__executable_start-0x8047bad>
 488:	6c                   	ins    BYTE PTR es:[edi],dx
 489:	69 6e 65 00 62 61 73 	imul   ebp,DWORD PTR [esi+0x65],0x73616200
 490:	65 5f                	gs pop edi
 492:	78 00                	js     494 <__executable_start-0x8047c00>
 494:	76 73                	jbe    509 <__executable_start-0x8047b8b>
 496:	6e                   	outs   dx,BYTE PTR ds:[esi]
 497:	70 72                	jo     50b <__executable_start-0x8047b89>
 499:	69 6e 74 66 00 68 65 	imul   ebp,DWORD PTR [esi+0x74],0x65680066
 4a0:	78 5f                	js     501 <__executable_start-0x8047b93>
 4a2:	64 75 6d             	fs jne 512 <__executable_start-0x8047b82>
 4a5:	70 00                	jo     4a7 <__executable_start-0x8047bed>
 4a7:	64 69 67 69 74 5f 63 	imul   esp,DWORD PTR fs:[edi+0x69],0x6e635f74
 4ae:	6e 
 4af:	74 00                	je     4b1 <__executable_start-0x8047be3>
 4b1:	49                   	dec    ecx
 4b2:	4e                   	dec    esi
 4b3:	54                   	push   esp
 4b4:	4d                   	dec    ebp
 4b5:	41                   	inc    ecx
 4b6:	58                   	pop    eax
 4b7:	00 76 61             	add    BYTE PTR [esi+0x61],dh
 4ba:	6c                   	ins    BYTE PTR es:[edi],dx
 4bb:	75 65                	jne    522 <__executable_start-0x8047b72>
 4bd:	00 4c 4f 4e          	add    BYTE PTR [edi+ecx*2+0x4e],cl
 4c1:	47                   	inc    edi
 4c2:	4c                   	dec    esp
 4c3:	4f                   	dec    edi
 4c4:	4e                   	dec    esi
 4c5:	47                   	inc    edi
 4c6:	00 69 73             	add    BYTE PTR [ecx+0x73],ch
 4c9:	70 72                	jo     53d <__executable_start-0x8047b57>
 4cb:	69 6e 74 00 73 69 67 	imul   ebp,DWORD PTR [esi+0x74],0x67697300
 4d2:	6e                   	outs   dx,BYTE PTR ds:[esi]
 4d3:	00 69 73             	add    BYTE PTR [ecx+0x73],ch
 4d6:	5f                   	pop    edi
 4d7:	73 69                	jae    542 <__executable_start-0x8047b52>
 4d9:	67 6e                	outs   dx,BYTE PTR ds:[si]
 4db:	65 64 00 50 4f       	gs add BYTE PTR fs:[eax+0x4f],dl
 4e0:	55                   	push   ebp
 4e1:	4e                   	dec    esi
 4e2:	44                   	inc    esp
 4e3:	00 76 73             	add    BYTE PTR [esi+0x73],dh
 4e6:	6e                   	outs   dx,BYTE PTR ds:[esi]
 4e7:	70 72                	jo     55b <__executable_start-0x8047b39>
 4e9:	69 6e 74 66 5f 61 75 	imul   ebp,DWORD PTR [esi+0x74],0x75615f66
 4f0:	78 00                	js     4f2 <__executable_start-0x8047ba2>
 4f2:	70 61                	jo     555 <__executable_start-0x8047b3f>
 4f4:	72 73                	jb     569 <__executable_start-0x8047b2b>
 4f6:	65 5f                	gs pop edi
 4f8:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
 4fb:	76 65                	jbe    562 <__executable_start-0x8047b32>
 4fd:	72 73                	jb     572 <__executable_start-0x8047b22>
 4ff:	69 6f 6e 00 50 54 52 	imul   ebp,DWORD PTR [edi+0x6e],0x52545000
 506:	44                   	inc    esp
 507:	49                   	dec    ecx
 508:	46                   	inc    esi
 509:	46                   	inc    esi
 50a:	54                   	push   esp
 50b:	00 66 6f             	add    BYTE PTR [esi+0x6f],ah
 50e:	72 6d                	jb     57d <__executable_start-0x8047b17>
 510:	61                   	popa
 511:	74 5f                	je     572 <__executable_start-0x8047b22>
 513:	73 74                	jae    589 <__executable_start-0x8047b0b>
 515:	72 69                	jb     580 <__executable_start-0x8047b14>
 517:	6e                   	outs   dx,BYTE PTR ds:[esi]
 518:	67 00 6f 75          	add    BYTE PTR [bx+0x75],ch
 51c:	74 70                	je     58e <__executable_start-0x8047b06>
 51e:	75 74                	jne    594 <__executable_start-0x8047b00>
 520:	00 53 48             	add    BYTE PTR [ebx+0x48],dl
 523:	4f                   	dec    edi
 524:	52                   	push   edx
 525:	54                   	push   esp
 526:	00 70 72             	add    BYTE PTR [eax+0x72],dh
 529:	69 6e 74 66 5f 63 6f 	imul   ebp,DWORD PTR [esi+0x74],0x6f635f66
 530:	6e                   	outs   dx,BYTE PTR ds:[esi]
 531:	76 65                	jbe    598 <__executable_start-0x8047afc>
 533:	72 73                	jb     5a8 <__executable_start-0x8047aec>
 535:	69 6f 6e 00 6d 61 78 	imul   ebp,DWORD PTR [edi+0x6e],0x78616d00
 53c:	5f                   	pop    edi
 53d:	6c                   	ins    BYTE PTR es:[edi],dx
 53e:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 540:	67 74 68             	addr16 je 5ab <__executable_start-0x8047ae9>
 543:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 546:	70 72                	jo     5ba <__executable_start-0x8047ada>
 548:	69 6e 74 66 00 4d 49 	imul   ebp,DWORD PTR [esi+0x74],0x494d0066
 54f:	4e                   	dec    esi
 550:	55                   	push   ebp
 551:	53                   	push   ebx
 552:	00 70 72             	add    BYTE PTR [eax+0x72],dh
 555:	65 63 69 73          	arpl   WORD PTR gs:[ecx+0x73],ebp
 559:	69 6f 6e 00 5f 5f 75 	imul   ebp,DWORD PTR [edi+0x6e],0x755f5f00
 560:	64 69 76 64 69 33 00 	imul   esi,DWORD PTR fs:[esi+0x64],0x73003369
 567:	73 
 568:	6b 69 70 00          	imul   ebp,DWORD PTR [ecx+0x70],0x0
 56c:	6d                   	ins    DWORD PTR es:[edi],dx
 56d:	65 6d                	gs ins DWORD PTR es:[edi],dx
 56f:	6d                   	ins    DWORD PTR es:[edi],dx
 570:	6f                   	outs   dx,DWORD PTR ds:[esi]
 571:	76 65                	jbe    5d8 <__executable_start-0x8047abc>
 573:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 576:	72 74                	jb     5ec <__executable_start-0x8047aa8>
 578:	6f                   	outs   dx,DWORD PTR ds:[esi]
 579:	6b 5f 72 00          	imul   ebx,DWORD PTR [edi+0x72],0x0
 57d:	6d                   	ins    DWORD PTR es:[edi],dx
 57e:	65 6d                	gs ins DWORD PTR es:[edi],dx
 580:	63 6d 70             	arpl   WORD PTR [ebp+0x70],ebp
 583:	00 62 6c             	add    BYTE PTR [edx+0x6c],ah
 586:	6f                   	outs   dx,DWORD PTR ds:[esi]
 587:	63 6b 00             	arpl   WORD PTR [ebx+0x0],ebp
 58a:	73 74                	jae    600 <__executable_start-0x8047a94>
 58c:	72 63                	jb     5f1 <__executable_start-0x8047aa3>
 58e:	68 72 00 73 72       	push   0x72730072
 593:	63 5f 6c             	arpl   WORD PTR [edi+0x6c],ebx
 596:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 598:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 59b:	6f                   	outs   dx,DWORD PTR ds:[esi]
 59c:	70 00                	jo     59e <__executable_start-0x8047af6>
 59e:	6d                   	ins    DWORD PTR es:[edi],dx
 59f:	61                   	popa
 5a0:	78 6c                	js     60e <__executable_start-0x8047a86>
 5a2:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 5a4:	00 73 61             	add    BYTE PTR [ebx+0x61],dh
 5a7:	76 65                	jbe    60e <__executable_start-0x8047a86>
 5a9:	5f                   	pop    edi
 5aa:	70 74                	jo     620 <__executable_start-0x8047a74>
 5ac:	72 00                	jb     5ae <__executable_start-0x8047ae6>
 5ae:	64 73 74             	fs jae 625 <__executable_start-0x8047a6f>
 5b1:	5f                   	pop    edi
 5b2:	6c                   	ins    BYTE PTR es:[edi],dx
 5b3:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 5b5:	00 6d 65             	add    BYTE PTR [ebp+0x65],ch
 5b8:	6d                   	ins    DWORD PTR es:[edi],dx
 5b9:	73 65                	jae    620 <__executable_start-0x8047a74>
 5bb:	74 00                	je     5bd <__executable_start-0x8047ad7>
 5bd:	6d                   	ins    DWORD PTR es:[edi],dx
 5be:	65 6d                	gs ins DWORD PTR es:[edi],dx
 5c0:	63 68 72             	arpl   WORD PTR [eax+0x72],ebp
 5c3:	00 6e 65             	add    BYTE PTR [esi+0x65],ch
 5c6:	65 64 6c             	gs fs ins BYTE PTR es:[edi],dx
 5c9:	65 00 64 73 74       	add    BYTE PTR gs:[ebx+esi*2+0x74],ah
 5ce:	5f                   	pop    edi
 5cf:	00 62 6c             	add    BYTE PTR [edx+0x6c],ah
 5d2:	6f                   	outs   dx,DWORD PTR ds:[esi]
 5d3:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],ebp
 5d6:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 5d9:	72 63                	jb     63e <__executable_start-0x8047a56>
 5db:	73 70                	jae    64d <__executable_start-0x8047a47>
 5dd:	6e                   	outs   dx,BYTE PTR ds:[esi]
 5de:	00 6e 65             	add    BYTE PTR [esi+0x65],ch
 5e1:	65 64 6c             	gs fs ins BYTE PTR es:[edi],dx
 5e4:	65 5f                	gs pop edi
 5e6:	6c                   	ins    BYTE PTR es:[edi],dx
 5e7:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 5e9:	00 64 65 6c          	add    BYTE PTR [ebp+eiz*2+0x6c],ah
 5ed:	69 6d 69 74 65 72 73 	imul   ebp,DWORD PTR [ebp+0x69],0x73726574
 5f4:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 5f7:	72 6c                	jb     665 <__executable_start-0x8047a2f>
 5f9:	63 61 74             	arpl   WORD PTR [ecx+0x74],esp
 5fc:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 5ff:	72 63                	jb     664 <__executable_start-0x8047a30>
 601:	6d                   	ins    DWORD PTR es:[edi],dx
 602:	70 00                	jo     604 <__executable_start-0x8047a90>
 604:	73 74                	jae    67a <__executable_start-0x8047a1a>
 606:	72 70                	jb     678 <__executable_start-0x8047a1c>
 608:	62 72 6b             	bound  esi,QWORD PTR [edx+0x6b]
 60b:	00 73 72             	add    BYTE PTR [ebx+0x72],dh
 60e:	63 5f 00             	arpl   WORD PTR [edi+0x0],ebx
 611:	6d                   	ins    DWORD PTR es:[edi],dx
 612:	65 6d                	gs ins DWORD PTR es:[edi],dx
 614:	63 70 79             	arpl   WORD PTR [eax+0x79],esi
 617:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 61a:	72 73                	jb     68f <__executable_start-0x8047a05>
 61c:	70 6e                	jo     68c <__executable_start-0x8047a08>
 61e:	00 68 61             	add    BYTE PTR [eax+0x61],ch
 621:	79 73                	jns    696 <__executable_start-0x80479fe>
 623:	74 61                	je     686 <__executable_start-0x8047a0e>
 625:	63 6b 5f             	arpl   WORD PTR [ebx+0x5f],ebp
 628:	6c                   	ins    BYTE PTR es:[edi],dx
 629:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 62b:	00 74 6f 6b          	add    BYTE PTR [edi+ebp*2+0x6b],dh
 62f:	65 6e                	outs   dx,BYTE PTR gs:[esi]
 631:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 634:	72 72                	jb     6a8 <__executable_start-0x80479ec>
 636:	63 68 72             	arpl   WORD PTR [eax+0x72],ebp
 639:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 63c:	72 73                	jb     6b1 <__executable_start-0x80479e3>
 63e:	74 72                	je     6b2 <__executable_start-0x80479e2>
 640:	00 68 61             	add    BYTE PTR [eax+0x61],ch
 643:	79 73                	jns    6b8 <__executable_start-0x80479dc>
 645:	74 61                	je     6a8 <__executable_start-0x80479ec>
 647:	63 6b 00             	arpl   WORD PTR [ebx+0x0],ebp
 64a:	63 6f 70             	arpl   WORD PTR [edi+0x70],ebp
 64d:	79 5f                	jns    6ae <__executable_start-0x80479e6>
 64f:	63 6e 74             	arpl   WORD PTR [esi+0x74],ebp
 652:	00 73 74             	add    BYTE PTR [ebx+0x74],dh
 655:	72 6c                	jb     6c3 <__executable_start-0x80479d1>
 657:	63 70 79             	arpl   WORD PTR [eax+0x79],esi
 65a:	00 6e 5f             	add    BYTE PTR [esi+0x5f],ch
 65d:	61                   	popa
 65e:	62 73 00             	bound  esi,QWORD PTR [ebx+0x0]
 661:	5f                   	pop    edi
 662:	5f                   	pop    edi
 663:	75 64                	jne    6c9 <__executable_start-0x80479cb>
 665:	69 76 6d 6f 64 64 69 	imul   esi,DWORD PTR [esi+0x6d],0x6964646f
 66c:	34 00                	xor    al,0x0
 66e:	5f                   	pop    edi
 66f:	5f                   	pop    edi
 670:	6d                   	ins    DWORD PTR es:[edi],dx
 671:	6f                   	outs   dx,DWORD PTR ds:[esi]
 672:	64 64 69 33 00 64 69 	fs imul esi,DWORD PTR fs:[ebx],0x76696400
 679:	76 
 67a:	6c                   	ins    BYTE PTR es:[edi],dx
 67b:	00 5f 5f             	add    BYTE PTR [edi+0x5f],bl
 67e:	64 69 76 64 69 33 00 	imul   esi,DWORD PTR fs:[esi+0x64],0x75003369
 685:	75 
 686:	64 69 76 36 34 00 71 	imul   esi,DWORD PTR fs:[esi+0x36],0x5f710034
 68d:	5f 
 68e:	61                   	popa
 68f:	62 73 00             	bound  esi,QWORD PTR [ebx+0x0]
 692:	75 6d                	jne    701 <__executable_start-0x8047993>
 694:	6f                   	outs   dx,DWORD PTR ds:[esi]
 695:	64 36 34 00          	fs ss xor al,0x0
 699:	73 6d                	jae    708 <__executable_start-0x804798c>
 69b:	6f                   	outs   dx,DWORD PTR ds:[esi]
 69c:	64 36 34 00          	fs ss xor al,0x0
 6a0:	73 64                	jae    706 <__executable_start-0x804798e>
 6a2:	69 76 36 34 00 64 5f 	imul   esi,DWORD PTR [esi+0x36],0x5f640034
 6a9:	61                   	popa
 6aa:	62 73 00             	bound  esi,QWORD PTR [ebx+0x0]

Disassembly of section .debug_loclists:

00000000 <.debug_loclists>:
       0:	68 00 00 00 05       	push   0x5000000
       5:	00 04 00             	add    BYTE PTR [eax+eax*1],al
       8:	00 00                	add    BYTE PTR [eax],al
       a:	00 00                	add    BYTE PTR [eax],al
       c:	02 00                	add    al,BYTE PTR [eax]
	...
      16:	00 00                	add    BYTE PTR [eax],al
      18:	04 1b                	add    al,0x1b
      1a:	48                   	dec    eax
      1b:	02 30                	add    dh,BYTE PTR [eax]
      1d:	9f                   	lahf
      1e:	04 48                	add    al,0x48
      20:	90                   	nop
      21:	01 01                	add    DWORD PTR [ecx],eax
      23:	51                   	push   ecx
      24:	04 90                	add    al,0x90
      26:	01 b1 01 01 53 04    	add    DWORD PTR [ecx+0x4530101],esi
      2c:	b1 01                	mov    cl,0x1
      2e:	f1                   	int1
      2f:	01 02                	add    DWORD PTR [edx],eax
      31:	74 14                	je     47 <__executable_start-0x804804d>
      33:	04 f1                	add    al,0xf1
      35:	01 85 02 01 53 04    	add    DWORD PTR [ebp+0x4530102],eax
      3b:	85 02                	test   DWORD PTR [edx],eax
      3d:	93                   	xchg   ebx,eax
      3e:	02 06                	add    al,BYTE PTR [esi]
      40:	74 14                	je     56 <__executable_start-0x804803e>
      42:	06                   	push   es
      43:	23 01                	and    eax,DWORD PTR [ecx]
      45:	9f                   	lahf
      46:	00 00                	add    BYTE PTR [eax],al
      48:	00 00                	add    BYTE PTR [eax],al
      4a:	00 00                	add    BYTE PTR [eax],al
      4c:	00 04 48             	add    BYTE PTR [eax+ecx*2],al
      4f:	4d                   	dec    ebp
      50:	02 30                	add    dh,BYTE PTR [eax]
      52:	9f                   	lahf
      53:	04 4d                	add    al,0x4d
      55:	7d 01                	jge    58 <__executable_start-0x804803c>
      57:	50                   	push   eax
      58:	04 90                	add    al,0x90
      5a:	01 b1 01 02 30 9f    	add    DWORD PTR [ecx-0x60cffdff],esi
      60:	00 00                	add    BYTE PTR [eax],al
      62:	00 04 b1             	add    BYTE PTR [ecx+esi*4],al
      65:	01 c1                	add    ecx,eax
      67:	01 02                	add    DWORD PTR [edx],eax
      69:	30 9f 00 9e 00 00    	xor    BYTE PTR [edi+0x9e00],bl
      6f:	00 05 00 04 00 00    	add    BYTE PTR ds:0x400,al
      75:	00 00                	add    BYTE PTR [eax],al
      77:	00 00                	add    BYTE PTR [eax],al
      79:	00 04 d9             	add    BYTE PTR [ecx+ebx*8],al
      7c:	03 db                	add    ebx,ebx
      7e:	03 01                	add    eax,DWORD PTR [ecx]
      80:	50                   	push   eax
      81:	00 00                	add    BYTE PTR [eax],al
      83:	00 04 c5 03 ca 03 01 	add    BYTE PTR [eax*8+0x103ca03],al
      8a:	50                   	push   eax
      8b:	00 00                	add    BYTE PTR [eax],al
      8d:	00 04 b1             	add    BYTE PTR [ecx+esi*4],al
      90:	03 b6 03 01 50 00    	add    esi,DWORD PTR [esi+0x500103]
      96:	00 00                	add    BYTE PTR [eax],al
      98:	04 98                	add    al,0x98
      9a:	03 9d 03 01 50 00    	add    ebx,DWORD PTR [ebp+0x500103]
      a0:	00 00                	add    BYTE PTR [eax],al
      a2:	04 84                	add    al,0x84
      a4:	03 89 03 01 50 00    	add    ecx,DWORD PTR [ecx+0x500103]
      aa:	00 00                	add    BYTE PTR [eax],al
      ac:	04 e6                	add    al,0xe6
      ae:	02 e8                	add    ch,al
      b0:	02 01                	add    al,BYTE PTR [ecx]
      b2:	50                   	push   eax
      b3:	00 00                	add    BYTE PTR [eax],al
      b5:	00 04 c3             	add    BYTE PTR [ebx+eax*8],al
      b8:	02 c5                	add    al,ch
      ba:	02 01                	add    al,BYTE PTR [ecx]
      bc:	50                   	push   eax
      bd:	00 00                	add    BYTE PTR [eax],al
      bf:	00 04 a0             	add    BYTE PTR [eax+eiz*4],al
      c2:	02 a2 02 01 50 00    	add    ah,BYTE PTR [edx+0x500102]
      c8:	00 00                	add    BYTE PTR [eax],al
      ca:	04 88                	add    al,0x88
      cc:	02 8a 02 01 50 00    	add    cl,BYTE PTR [edx+0x500102]
      d2:	00 00                	add    BYTE PTR [eax],al
      d4:	04 f0                	add    al,0xf0
      d6:	01 f2                	add    edx,esi
      d8:	01 01                	add    DWORD PTR [ecx],eax
      da:	50                   	push   eax
      db:	00 00                	add    BYTE PTR [eax],al
      dd:	00 04 e1             	add    BYTE PTR [ecx+eiz*8],al
      e0:	01 e3                	add    ebx,esp
      e2:	01 01                	add    DWORD PTR [ecx],eax
      e4:	50                   	push   eax
      e5:	00 00                	add    BYTE PTR [eax],al
      e7:	00 04 cd 01 d2 01 01 	add    BYTE PTR [ecx*8+0x101d201],al
      ee:	50                   	push   eax
      ef:	00 00                	add    BYTE PTR [eax],al
      f1:	00 04 b9             	add    BYTE PTR [ecx+edi*4],al
      f4:	01 be 01 01 50 00    	add    DWORD PTR [esi+0x500101],edi
      fa:	00 00                	add    BYTE PTR [eax],al
      fc:	04 a5                	add    al,0xa5
      fe:	01 a7 01 01 50 00    	add    DWORD PTR [edi+0x500101],esp
     104:	00 00                	add    BYTE PTR [eax],al
     106:	04 96                	add    al,0x96
     108:	01 98 01 01 50 00    	add    DWORD PTR [eax+0x500101],ebx
     10e:	19 00                	sbb    DWORD PTR [eax],eax
     110:	00 00                	add    BYTE PTR [eax],al
     112:	05 00 04 00 00       	add    eax,0x400
     117:	00 00                	add    BYTE PTR [eax],al
     119:	00 00                	add    BYTE PTR [eax],al
     11b:	00 00                	add    BYTE PTR [eax],al
     11d:	00 04 38             	add    BYTE PTR [eax+edi*1],al
     120:	3f                   	aas
     121:	01 50 04             	add    DWORD PTR [eax+0x4],edx
     124:	3f                   	aas
     125:	66 03 91 10 9f 00 d9 	add    dx,WORD PTR [ecx-0x26ff60f0]
     12c:	00 00                	add    BYTE PTR [eax],al
     12e:	00 05 00 04 00 00    	add    BYTE PTR ds:0x400,al
	...
     13c:	00 00                	add    BYTE PTR [eax],al
     13e:	00 04 00             	add    BYTE PTR [eax+eax*1],al
     141:	1c 01                	sbb    al,0x1
     143:	50                   	push   eax
     144:	04 1c                	add    al,0x1c
     146:	29 01                	sub    DWORD PTR [ecx],eax
     148:	56                   	push   esi
     149:	04 29                	add    al,0x29
     14b:	2d 0a a3 03 a5       	sub    eax,0xa503a30a
     150:	00 26                	add    BYTE PTR [esi],ah
     152:	a8 2d                	test   al,0x2d
     154:	a8 00                	test   al,0x0
     156:	9f                   	lahf
     157:	04 2d                	add    al,0x2d
     159:	44                   	inc    esp
     15a:	01 56 00             	add    DWORD PTR [esi+0x0],edx
     15d:	00 00                	add    BYTE PTR [eax],al
     15f:	00 00                	add    BYTE PTR [eax],al
     161:	00 00                	add    BYTE PTR [eax],al
     163:	04 44                	add    al,0x44
     165:	70 02                	jo     169 <__executable_start-0x8047f2b>
     167:	91                   	xchg   ecx,eax
     168:	04 04                	add    al,0x4
     16a:	70 71                	jo     1dd <__executable_start-0x8047eb7>
     16c:	02 74 08 04          	add    dh,BYTE PTR [eax+ecx*1+0x4]
     170:	71 7a                	jno    1ec <__executable_start-0x8047ea8>
     172:	02 91 04 00 01 00    	add    dl,BYTE PTR [ecx+0x10004]
     178:	00 00                	add    BYTE PTR [eax],al
     17a:	00 00                	add    BYTE PTR [eax],al
     17c:	00 00                	add    BYTE PTR [eax],al
     17e:	04 50                	add    al,0x50
     180:	6d                   	ins    DWORD PTR es:[edi],dx
     181:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     184:	6d                   	ins    DWORD PTR es:[edi],dx
     185:	70 02                	jo     189 <__executable_start-0x8047f0b>
     187:	91                   	xchg   ecx,eax
     188:	04 04                	add    al,0x4
     18a:	70 71                	jo     1fd <__executable_start-0x8047e97>
     18c:	02 74 08 04          	add    dh,BYTE PTR [eax+ecx*1+0x4]
     190:	71 7a                	jno    20c <__executable_start-0x8047e88>
     192:	01 53 00             	add    DWORD PTR [ebx+0x0],edx
     195:	00 00                	add    BYTE PTR [eax],al
     197:	00 00                	add    BYTE PTR [eax],al
     199:	04 8b                	add    al,0x8b
     19b:	02 e8                	add    ch,al
     19d:	02 02                	add    al,BYTE PTR [edx]
     19f:	91                   	xchg   ecx,eax
     1a0:	04 04                	add    al,0x4
     1a2:	e8 02 e9 02 02       	call   202eaa9 <__executable_start-0x60195eb>
     1a7:	74 08                	je     1b1 <__executable_start-0x8047ee3>
     1a9:	00 00                	add    BYTE PTR [eax],al
     1ab:	00 00                	add    BYTE PTR [eax],al
     1ad:	00 04 8b             	add    BYTE PTR [ebx+ecx*4],al
     1b0:	02 e8                	add    ch,al
     1b2:	02 02                	add    al,BYTE PTR [edx]
     1b4:	91                   	xchg   ecx,eax
     1b5:	08 04 e8             	or     BYTE PTR [eax+ebp*8],al
     1b8:	02 e9                	add    ch,cl
     1ba:	02 02                	add    al,BYTE PTR [edx]
     1bc:	74 0c                	je     1ca <__executable_start-0x8047eca>
     1be:	00 00                	add    BYTE PTR [eax],al
     1c0:	00 00                	add    BYTE PTR [eax],al
     1c2:	00 04 8d 03 af 03 02 	add    BYTE PTR [ecx*4+0x203af03],al
     1c9:	91                   	xchg   ecx,eax
     1ca:	04 04                	add    al,0x4
     1cc:	af                   	scas   eax,DWORD PTR es:[edi]
     1cd:	03 b0 03 02 74 08    	add    esi,DWORD PTR [eax+0x8740203]
     1d3:	00 00                	add    BYTE PTR [eax],al
     1d5:	00 00                	add    BYTE PTR [eax],al
     1d7:	02 04 96             	add    al,BYTE PTR [esi+edx*4]
     1da:	03 9d 03 01 50 04    	add    ebx,DWORD PTR [ebp+0x4500103]
     1e0:	9d                   	popf
     1e1:	03 ac 03 03 91 08 9f 	add    ebp,DWORD PTR [ebx+eax*1-0x60f76efd]
     1e8:	00 00                	add    BYTE PTR [eax],al
     1ea:	00 04 ac             	add    BYTE PTR [esp+ebp*4],al
     1ed:	03 b0 03 01 50 00    	add    esi,DWORD PTR [eax+0x500103]
     1f3:	00 00                	add    BYTE PTR [eax],al
     1f5:	00 00                	add    BYTE PTR [eax],al
     1f7:	04 e9                	add    al,0xe9
     1f9:	02 8c 03 02 91 04 04 	add    cl,BYTE PTR [ebx+eax*1+0x4049102]
     200:	8c 03                	mov    WORD PTR [ebx],es
     202:	8d 03                	lea    eax,[ebx]
     204:	02 74 08 00          	add    dh,BYTE PTR [eax+ecx*1+0x0]
     208:	18 00                	sbb    BYTE PTR [eax],al
     20a:	00 00                	add    BYTE PTR [eax],al
     20c:	05 00 04 00 00       	add    eax,0x400
     211:	00 00                	add    BYTE PTR [eax],al
     213:	00 00                	add    BYTE PTR [eax],al
     215:	00 00                	add    BYTE PTR [eax],al
     217:	00 04 2c             	add    BYTE PTR [esp+ebp*1],al
     21a:	74 01                	je     21d <__executable_start-0x8047e77>
     21c:	56                   	push   esi
     21d:	04 77                	add    al,0x77
     21f:	8e 01                	mov    es,WORD PTR [ecx]
     221:	01 56 00             	add    DWORD PTR [esi+0x0],edx
     224:	96                   	xchg   esi,eax
     225:	0d 00 00 05 00       	or     eax,0x50000
     22a:	04 00                	add    al,0x0
	...
     238:	00 00                	add    BYTE PTR [eax],al
     23a:	04 e0                	add    al,0xe0
     23c:	1d 86 1e 02 91       	sbb    eax,0x91021e86
     241:	00 04 86             	add    BYTE PTR [esi+eax*4],al
     244:	1e                   	push   ds
     245:	ad                   	lods   eax,DWORD PTR ds:[esi]
     246:	1e                   	push   ds
     247:	06                   	push   es
     248:	50                   	push   eax
     249:	93                   	xchg   ebx,eax
     24a:	04 52                	add    al,0x52
     24c:	93                   	xchg   ebx,eax
     24d:	04 04                	add    al,0x4
     24f:	ad                   	lods   eax,DWORD PTR ds:[esi]
     250:	1e                   	push   ds
     251:	c6                   	(bad)
     252:	1e                   	push   ds
     253:	06                   	push   es
     254:	56                   	push   esi
     255:	93                   	xchg   ebx,eax
     256:	04 57                	add    al,0x57
     258:	93                   	xchg   ebx,eax
     259:	04 04                	add    al,0x4
     25b:	c6                   	(bad)
     25c:	1e                   	push   ds
     25d:	d9 1e                	fstp   DWORD PTR [esi]
     25f:	02 91 00 04 d9 1e    	add    dl,BYTE PTR [ecx+0x1ed90400]
     265:	dd 1e                	fstp   QWORD PTR [esi]
     267:	06                   	push   es
     268:	56                   	push   esi
     269:	93                   	xchg   ebx,eax
     26a:	04 57                	add    al,0x57
     26c:	93                   	xchg   ebx,eax
     26d:	04 00                	add    al,0x0
     26f:	00 00                	add    BYTE PTR [eax],al
     271:	00 00                	add    BYTE PTR [eax],al
     273:	00 00                	add    BYTE PTR [eax],al
     275:	04 86                	add    al,0x86
     277:	1e                   	push   ds
     278:	9c                   	pushf
     279:	1e                   	push   ds
     27a:	06                   	push   es
     27b:	03 0c b0             	add    ecx,DWORD PTR [eax+esi*4]
     27e:	04 08                	add    al,0x8
     280:	9f                   	lahf
     281:	04 9c                	add    al,0x9c
     283:	1e                   	push   ds
     284:	c6                   	(bad)
     285:	1e                   	push   ds
     286:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
     289:	d9 1e                	fstp   DWORD PTR [esi]
     28b:	dd 1e                	fstp   QWORD PTR [esi]
     28d:	01 51 00             	add    DWORD PTR [ecx+0x0],edx
     290:	00 00                	add    BYTE PTR [eax],al
     292:	00 00                	add    BYTE PTR [eax],al
     294:	04 d0                	add    al,0xd0
     296:	19 b0 1b 02 91 00    	sbb    DWORD PTR [eax+0x91021b],esi
     29c:	04 b0                	add    al,0xb0
     29e:	1b e0                	sbb    esp,eax
     2a0:	1d 02 91 00 00       	sbb    eax,0x9102
     2a5:	00 00                	add    BYTE PTR [eax],al
     2a7:	04 d0                	add    al,0xd0
     2a9:	19 86 1a 02 91 04    	sbb    DWORD PTR [esi+0x491021a],eax
	...
     2b7:	00 04 d0             	add    BYTE PTR [eax+edx*8],al
     2ba:	19 b8 1b 02 91 08    	sbb    DWORD PTR [eax+0x891021b],edi
     2c0:	04 b8                	add    al,0xb8
     2c2:	1b bd 1b 07 70 00    	sbb    edi,DWORD PTR [ebp+0x70071b]
     2c8:	91                   	xchg   ecx,eax
     2c9:	5c                   	pop    esp
     2ca:	06                   	push   es
     2cb:	1c 9f                	sbb    al,0x9f
     2cd:	04 bd                	add    al,0xbd
     2cf:	1b c6                	sbb    eax,esi
     2d1:	1b 01                	sbb    eax,DWORD PTR [ecx]
     2d3:	50                   	push   eax
     2d4:	04 c6                	add    al,0xc6
     2d6:	1b d8                	sbb    ebx,eax
     2d8:	1d 02 91 08 00       	sbb    eax,0x89102
     2dd:	01 00                	add    DWORD PTR [eax],eax
     2df:	04 ee                	add    al,0xee
     2e1:	19 d8                	sbb    eax,ebx
     2e3:	1d 02 91 04 00       	sbb    eax,0x49102
	...
     300:	04 86                	add    al,0x86
     302:	1a d0                	sbb    dl,al
     304:	1a 01                	sbb    al,BYTE PTR [ecx]
     306:	57                   	push   edi
     307:	04 d0                	add    al,0xd0
     309:	1a e4                	sbb    ah,ah
     30b:	1a 01                	sbb    al,BYTE PTR [ecx]
     30d:	53                   	push   ebx
     30e:	04 e4                	add    al,0xe4
     310:	1a 99 1b 01 57 04    	sbb    bl,BYTE PTR [ecx+0x457011b]
     316:	99                   	cdq
     317:	1b b0 1b 06 91 00    	sbb    esi,DWORD PTR [eax+0x91061b]
     31d:	06                   	push   es
     31e:	3f                   	aas
     31f:	1a 9f 04 cc 1b c2    	sbb    bl,BYTE PTR [edi-0x3de433fc]
     325:	1c 01                	sbb    al,0x1
     327:	57                   	push   edi
     328:	04 c2                	add    al,0xc2
     32a:	1c cb                	sbb    al,0xcb
     32c:	1c 01                	sbb    al,0x1
     32e:	53                   	push   ebx
     32f:	04 cb                	add    al,0xcb
     331:	1c e3                	sbb    al,0xe3
     333:	1c 01                	sbb    al,0x1
     335:	57                   	push   edi
     336:	04 e3                	add    al,0xe3
     338:	1c e5                	sbb    al,0xe5
     33a:	1c 06                	sbb    al,0x6
     33c:	91                   	xchg   ecx,eax
     33d:	00 06                	add    BYTE PTR [esi],al
     33f:	3f                   	aas
     340:	1a 9f 04 e5 1c e9    	sbb    bl,BYTE PTR [edi-0x16e31afc]
     346:	1c 01                	sbb    al,0x1
     348:	57                   	push   edi
     349:	04 e9                	add    al,0xe9
     34b:	1c 9c                	sbb    al,0x9c
     34d:	1d 02 91 48 04       	sbb    eax,0x4489102
     352:	9c                   	pushf
     353:	1d c9 1d 06 91       	sbb    eax,0x91061dc9
     358:	00 06                	add    BYTE PTR [esi],al
     35a:	3f                   	aas
     35b:	1a 9f 04 c9 1d d8    	sbb    bl,BYTE PTR [edi-0x27e236fc]
     361:	1d 01 53 00 00       	sbb    eax,0x5301
     366:	00 01                	add    BYTE PTR [ecx],al
     368:	00 00                	add    BYTE PTR [eax],al
     36a:	00 00                	add    BYTE PTR [eax],al
     36c:	00 04 86             	add    BYTE PTR [esi+eax*4],al
     36f:	1a c6                	sbb    al,dh
     371:	1b 02                	sbb    eax,DWORD PTR [edx]
     373:	91                   	xchg   ecx,eax
     374:	5c                   	pop    esp
     375:	04 cc                	add    al,0xcc
     377:	1b eb                	sbb    ebp,ebx
     379:	1b 02                	sbb    eax,DWORD PTR [edx]
     37b:	40                   	inc    eax
     37c:	9f                   	lahf
     37d:	04 eb                	add    al,0xeb
     37f:	1b f0                	sbb    esi,eax
     381:	1b 01                	sbb    eax,DWORD PTR [ecx]
     383:	50                   	push   eax
     384:	04 f0                	add    al,0xf0
     386:	1b d8                	sbb    ebx,eax
     388:	1d 02 91 5c 00       	sbb    eax,0x5c9102
     38d:	00 00                	add    BYTE PTR [eax],al
     38f:	00 00                	add    BYTE PTR [eax],al
     391:	00 00                	add    BYTE PTR [eax],al
     393:	04 8e                	add    al,0x8e
     395:	1a 91 1a 01 50 04    	sbb    dl,BYTE PTR [ecx+0x450011a]
     39b:	91                   	xchg   ecx,eax
     39c:	1a c6                	sbb    al,dh
     39e:	1b 02                	sbb    eax,DWORD PTR [edx]
     3a0:	91                   	xchg   ecx,eax
     3a1:	54                   	push   esp
     3a2:	04 f0                	add    al,0xf0
     3a4:	1b d8                	sbb    ebx,eax
     3a6:	1d 02 91 54 00       	sbb    eax,0x549102
     3ab:	01 00                	add    DWORD PTR [eax],eax
     3ad:	00 00                	add    BYTE PTR [eax],al
     3af:	00 00                	add    BYTE PTR [eax],al
     3b1:	00 01                	add    BYTE PTR [ecx],al
     3b3:	01 00                	add    DWORD PTR [eax],eax
	...
     3bd:	00 01                	add    BYTE PTR [ecx],al
     3bf:	01 00                	add    DWORD PTR [eax],eax
	...
     3c9:	04 ab                	add    al,0xab
     3cb:	1a c1                	sbb    al,cl
     3cd:	1a 02                	sbb    al,BYTE PTR [edx]
     3cf:	30 9f 04 c1 1a 99    	xor    BYTE PTR [edi-0x66e53efc],bl
     3d5:	1b 01                	sbb    eax,DWORD PTR [ecx]
     3d7:	53                   	push   ebx
     3d8:	04 f0                	add    al,0xf0
     3da:	1b f7                	sbb    esi,edi
     3dc:	1b 02                	sbb    eax,DWORD PTR [edx]
     3de:	30 9f 04 f7 1b a4    	xor    BYTE PTR [edi-0x5be408fc],bl
     3e4:	1c 01                	sbb    al,0x1
     3e6:	53                   	push   ebx
     3e7:	04 a4                	add    al,0xa4
     3e9:	1c b3                	sbb    al,0xb3
     3eb:	1c 02                	sbb    al,0x2
     3ed:	30 9f 04 b3 1c cb    	xor    BYTE PTR [edi-0x34e34cfc],bl
     3f3:	1c 01                	sbb    al,0x1
     3f5:	53                   	push   ebx
     3f6:	04 cb                	add    al,0xcb
     3f8:	1c e3                	sbb    al,0xe3
     3fa:	1c 01                	sbb    al,0x1
     3fc:	57                   	push   edi
     3fd:	04 e3                	add    al,0xe3
     3ff:	1c e5                	sbb    al,0xe5
     401:	1c 06                	sbb    al,0x6
     403:	91                   	xchg   ecx,eax
     404:	00 06                	add    BYTE PTR [esi],al
     406:	3f                   	aas
     407:	1a 9f 04 e5 1c e9    	sbb    bl,BYTE PTR [edi-0x16e31afc]
     40d:	1c 02                	sbb    al,0x2
     40f:	30 9f 04 e9 1c f8    	xor    BYTE PTR [edi-0x7e316fc],bl
     415:	1c 0b                	sbb    al,0xb
     417:	91                   	xchg   ecx,eax
     418:	48                   	dec    eax
     419:	06                   	push   es
     41a:	91                   	xchg   ecx,eax
     41b:	04 06                	add    al,0x6
     41d:	1c 73                	sbb    al,0x73
     41f:	00 22                	add    BYTE PTR [edx],ah
     421:	9f                   	lahf
     422:	04 f8                	add    al,0xf8
     424:	1c f9                	sbb    al,0xf9
     426:	1c 0d                	sbb    al,0xd
     428:	91                   	xchg   ecx,eax
     429:	48                   	dec    eax
     42a:	06                   	push   es
     42b:	91                   	xchg   ecx,eax
     42c:	04 06                	add    al,0x6
     42e:	1c 73                	sbb    al,0x73
     430:	00 22                	add    BYTE PTR [edx],ah
     432:	23 01                	and    eax,DWORD PTR [ecx]
     434:	9f                   	lahf
     435:	04 f9                	add    al,0xf9
     437:	1c 92                	sbb    al,0x92
     439:	1d 0b 91 48 06       	sbb    eax,0x648910b
     43e:	91                   	xchg   ecx,eax
     43f:	04 06                	add    al,0x6
     441:	1c 73                	sbb    al,0x73
     443:	00 22                	add    BYTE PTR [edx],ah
     445:	9f                   	lahf
     446:	04 92                	add    al,0x92
     448:	1d 9c 1d 02 91       	sbb    eax,0x91021d9c
     44d:	5c                   	pop    esp
     44e:	04 a5                	add    al,0xa5
     450:	1d b3 1d 01 53       	sbb    eax,0x53011db3
     455:	04 c9                	add    al,0xc9
     457:	1d d8 1d 01 53       	sbb    eax,0x53011dd8
     45c:	00 00                	add    BYTE PTR [eax],al
     45e:	02 04 80             	add    al,BYTE PTR [eax+eax*4]
     461:	1d 80 1d 06 70       	sbb    eax,0x70061d80
     466:	00 08                	add    BYTE PTR [eax],cl
     468:	ff 1a                	call   FWORD PTR [edx]
     46a:	9f                   	lahf
     46b:	00 00                	add    BYTE PTR [eax],al
     46d:	00 00                	add    BYTE PTR [eax],al
     46f:	00 04 a1             	add    BYTE PTR [ecx+eiz*4],al
     472:	08 ca                	or     dl,cl
     474:	08 02                	or     BYTE PTR [edx],al
     476:	91                   	xchg   ecx,eax
     477:	04 04                	add    al,0x4
     479:	ca 08 cb             	retf   0xcb08
     47c:	08 02                	or     BYTE PTR [edx],al
     47e:	74 08                	je     488 <__executable_start-0x8047c0c>
     480:	00 00                	add    BYTE PTR [eax],al
     482:	00 00                	add    BYTE PTR [eax],al
     484:	00 04 a1             	add    BYTE PTR [ecx+eiz*4],al
     487:	08 ca                	or     dl,cl
     489:	08 02                	or     BYTE PTR [edx],al
     48b:	91                   	xchg   ecx,eax
     48c:	08 04 ca             	or     BYTE PTR [edx+ecx*8],al
     48f:	08 cb                	or     bl,cl
     491:	08 02                	or     BYTE PTR [edx],al
     493:	74 0c                	je     4a1 <__executable_start-0x8047bf3>
     495:	00 00                	add    BYTE PTR [eax],al
     497:	00 00                	add    BYTE PTR [eax],al
     499:	01 04 aa             	add    DWORD PTR [edx+ebp*4],eax
     49c:	08 bf 08 01 50 04    	or     BYTE PTR [edi+0x4500108],bh
     4a2:	bf 08 c7 08 03       	mov    edi,0x308c708
     4a7:	91                   	xchg   ecx,eax
     4a8:	0c 9f                	or     al,0x9f
	...
     4b6:	00 00                	add    BYTE PTR [eax],al
     4b8:	00 04 e7             	add    BYTE PTR [edi+eiz*8],al
     4bb:	06                   	push   es
     4bc:	87 07                	xchg   DWORD PTR [edi],eax
     4be:	01 50 04             	add    DWORD PTR [eax+0x4],edx
     4c1:	87 07                	xchg   DWORD PTR [edi],eax
     4c3:	9e                   	sahf
     4c4:	07                   	pop    es
     4c5:	01 57 04             	add    DWORD PTR [edi+0x4],edx
     4c8:	9e                   	sahf
     4c9:	07                   	pop    es
     4ca:	a3 07 01 50 04       	mov    ds:0x4500107,eax
     4cf:	a3 07 b9 07 01       	mov    ds:0x107b907,eax
     4d4:	57                   	push   edi
     4d5:	04 b9                	add    al,0xb9
     4d7:	07                   	pop    es
     4d8:	c2 07 01             	ret    0x107
     4db:	50                   	push   eax
     4dc:	04 c2                	add    al,0xc2
     4de:	07                   	pop    es
     4df:	f2 07                	repnz pop es
     4e1:	01 57 04             	add    DWORD PTR [edi+0x4],edx
     4e4:	f2 07                	repnz pop es
     4e6:	f4                   	hlt
     4e7:	07                   	pop    es
     4e8:	0a a3 03 a5 00 26    	or     ah,BYTE PTR [ebx+0x2600a503]
     4ee:	a8 2d                	test   al,0x2d
     4f0:	a8 00                	test   al,0x0
     4f2:	9f                   	lahf
     4f3:	00 00                	add    BYTE PTR [eax],al
     4f5:	00 00                	add    BYTE PTR [eax],al
     4f7:	00 00                	add    BYTE PTR [eax],al
     4f9:	00 04 e7             	add    BYTE PTR [edi+eiz*8],al
     4fc:	06                   	push   es
     4fd:	fa                   	cli
     4fe:	06                   	push   es
     4ff:	01 52 04             	add    DWORD PTR [edx+0x4],edx
     502:	fa                   	cli
     503:	06                   	push   es
     504:	f1                   	int1
     505:	07                   	pop    es
     506:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     509:	f1                   	int1
     50a:	07                   	pop    es
     50b:	f4                   	hlt
     50c:	07                   	pop    es
     50d:	0a a3 03 a5 02 26    	or     ah,BYTE PTR [ebx+0x2602a503]
     513:	a8 2d                	test   al,0x2d
     515:	a8 00                	test   al,0x0
     517:	9f                   	lahf
	...
     524:	00 04 e7             	add    BYTE PTR [edi+eiz*8],al
     527:	06                   	push   es
     528:	87 07                	xchg   DWORD PTR [edi],eax
     52a:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
     52d:	87 07                	xchg   DWORD PTR [edi],eax
     52f:	9e                   	sahf
     530:	07                   	pop    es
     531:	02 91 5c 04 9e 07    	add    dl,BYTE PTR [ecx+0x79e045c]
     537:	a9 07 01 51 04       	test   eax,0x4510107
     53c:	a9 07 b9 07 02       	test   eax,0x207b907
     541:	91                   	xchg   ecx,eax
     542:	5c                   	pop    esp
     543:	04 b9                	add    al,0xb9
     545:	07                   	pop    es
     546:	c2 07 01             	ret    0x107
     549:	51                   	push   ecx
     54a:	04 c2                	add    al,0xc2
     54c:	07                   	pop    es
     54d:	f4                   	hlt
     54e:	07                   	pop    es
     54f:	02 91 5c 00 00 00    	add    dl,BYTE PTR [ecx+0x5c]
     555:	00 00                	add    BYTE PTR [eax],al
     557:	00 00                	add    BYTE PTR [eax],al
     559:	04 83                	add    al,0x83
     55b:	07                   	pop    es
     55c:	87 07                	xchg   DWORD PTR [edi],eax
     55e:	02 30                	add    dh,BYTE PTR [eax]
     560:	9f                   	lahf
     561:	04 b3                	add    al,0xb3
     563:	07                   	pop    es
     564:	c7 07 02 30 9f 04    	mov    DWORD PTR [edi],0x49f3002
     56a:	c7 07 dd 07 01 53    	mov    DWORD PTR [edi],0x530107dd
	...
     578:	00 04 25 3a 01 50 04 	add    BYTE PTR [eiz*1+0x450013a],al
     57f:	3a 51 01             	cmp    dl,BYTE PTR [ecx+0x1]
     582:	56                   	push   esi
     583:	04 51                	add    al,0x51
     585:	54                   	push   esp
     586:	0a a3 03 a5 00 26    	or     ah,BYTE PTR [ebx+0x2600a503]
     58c:	a8 34                	test   al,0x34
     58e:	a8 00                	test   al,0x0
     590:	9f                   	lahf
     591:	04 54                	add    al,0x54
     593:	55                   	push   ebp
     594:	01 50 00             	add    DWORD PTR [eax+0x0],edx
     597:	00 03                	add    BYTE PTR [ebx],al
     599:	03 00                	add    eax,DWORD PTR [eax]
     59b:	00 00                	add    BYTE PTR [eax],al
     59d:	00 00                	add    BYTE PTR [eax],al
     59f:	04 25                	add    al,0x25
     5a1:	25 01 52 04 25       	and    eax,0x25045201
     5a6:	37                   	aaa
     5a7:	03 72 7f             	add    esi,DWORD PTR [edx+0x7f]
     5aa:	9f                   	lahf
     5ab:	04 37                	add    al,0x37
     5ad:	50                   	push   eax
     5ae:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     5b1:	54                   	push   esp
     5b2:	55                   	push   ebp
     5b3:	03 72 7f             	add    esi,DWORD PTR [edx+0x7f]
     5b6:	9f                   	lahf
	...
     5bf:	00 04 25 3a 01 51 04 	add    BYTE PTR [eiz*1+0x451013a],al
     5c6:	3a 52 01             	cmp    dl,BYTE PTR [edx+0x1]
     5c9:	57                   	push   edi
     5ca:	04 52                	add    al,0x52
     5cc:	54                   	push   esp
     5cd:	0a a3 03 a5 01 26    	or     ah,BYTE PTR [ebx+0x2601a503]
     5d3:	a8 2d                	test   al,0x2d
     5d5:	a8 00                	test   al,0x0
     5d7:	9f                   	lahf
     5d8:	04 54                	add    al,0x54
     5da:	55                   	push   ebp
     5db:	01 51 00             	add    DWORD PTR [ecx+0x0],edx
     5de:	00 00                	add    BYTE PTR [eax],al
     5e0:	00 03                	add    BYTE PTR [ebx],al
     5e2:	03 00                	add    eax,DWORD PTR [eax]
     5e4:	00 03                	add    BYTE PTR [ebx],al
     5e6:	03 00                	add    eax,DWORD PTR [eax]
	...
     5f0:	00 00                	add    BYTE PTR [eax],al
     5f2:	04 55                	add    al,0x55
     5f4:	79 06                	jns    5fc <__executable_start-0x8047a98>
     5f6:	50                   	push   eax
     5f7:	93                   	xchg   ebx,eax
     5f8:	04 52                	add    al,0x52
     5fa:	93                   	xchg   ebx,eax
     5fb:	04 04                	add    al,0x4
     5fd:	79 bd                	jns    5bc <__executable_start-0x8047ad8>
     5ff:	01 06                	add    DWORD PTR [esi],eax
     601:	a3 03 a5 00 26       	mov    ds:0x2600a503,eax
     606:	9f                   	lahf
     607:	04 bd                	add    al,0xbd
     609:	01 87 02 0a 91 9c    	add    DWORD PTR [edi-0x636ef5fe],eax
     60f:	7f 93                	jg     5a4 <__executable_start-0x8047af0>
     611:	04 91                	add    al,0x91
     613:	98                   	cwde
     614:	7f 93                	jg     5a9 <__executable_start-0x8047aeb>
     616:	04 04                	add    al,0x4
     618:	87 02                	xchg   DWORD PTR [edx],eax
     61a:	b3 02                	mov    bl,0x2
     61c:	06                   	push   es
     61d:	a3 03 a5 00 26       	mov    ds:0x2600a503,eax
     622:	9f                   	lahf
     623:	04 b3                	add    al,0xb3
     625:	02 8a 03 0a 91 9c    	add    cl,BYTE PTR [edx-0x636ef5fd]
     62b:	7f 93                	jg     5c0 <__executable_start-0x8047ad4>
     62d:	04 91                	add    al,0x91
     62f:	98                   	cwde
     630:	7f 93                	jg     5c5 <__executable_start-0x8047acf>
     632:	04 04                	add    al,0x4
     634:	8a 03                	mov    al,BYTE PTR [ebx]
     636:	9d                   	popf
     637:	03 06                	add    eax,DWORD PTR [esi]
     639:	50                   	push   eax
     63a:	93                   	xchg   ebx,eax
     63b:	04 52                	add    al,0x52
     63d:	93                   	xchg   ebx,eax
     63e:	04 04                	add    al,0x4
     640:	9d                   	popf
     641:	03 c9                	add    ecx,ecx
     643:	03 0a                	add    ecx,DWORD PTR [edx]
     645:	91                   	xchg   ecx,eax
     646:	9c                   	pushf
     647:	7f 93                	jg     5dc <__executable_start-0x8047ab8>
     649:	04 91                	add    al,0x91
     64b:	98                   	cwde
     64c:	7f 93                	jg     5e1 <__executable_start-0x8047ab3>
     64e:	04 04                	add    al,0x4
     650:	c9                   	leave
     651:	03 cf                	add    ecx,edi
     653:	03 06                	add    eax,DWORD PTR [esi]
     655:	50                   	push   eax
     656:	93                   	xchg   ebx,eax
     657:	04 52                	add    al,0x52
     659:	93                   	xchg   ebx,eax
     65a:	04 04                	add    al,0x4
     65c:	ba 06 c0 06 08       	mov    edx,0x806c006
     661:	91                   	xchg   ecx,eax
     662:	9c                   	pushf
     663:	7f 93                	jg     5f8 <__executable_start-0x8047a9c>
     665:	04 52                	add    al,0x52
     667:	93                   	xchg   ebx,eax
     668:	04 04                	add    al,0x4
     66a:	c0 06 e7             	rol    BYTE PTR [esi],0xe7
     66d:	06                   	push   es
     66e:	0a 91 9c 7f 93 04    	or     dl,BYTE PTR [ecx+0x4937f9c]
     674:	91                   	xchg   ecx,eax
     675:	98                   	cwde
     676:	7f 93                	jg     60b <__executable_start-0x8047a89>
     678:	04 00                	add    al,0x0
     67a:	00 00                	add    BYTE PTR [eax],al
     67c:	00 00                	add    BYTE PTR [eax],al
     67e:	00 00                	add    BYTE PTR [eax],al
     680:	04 55                	add    al,0x55
     682:	b5 02                	mov    ch,0x2
     684:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
     687:	b5 02                	mov    ch,0x2
     689:	ba 06 0a a3 03       	mov    edx,0x3a30a06
     68e:	a5                   	movs   DWORD PTR es:[edi],DWORD PTR ds:[esi]
     68f:	01 26                	add    DWORD PTR [esi],esp
     691:	a8 34                	test   al,0x34
     693:	a8 00                	test   al,0x0
     695:	9f                   	lahf
     696:	04 ba                	add    al,0xba
     698:	06                   	push   es
     699:	e7 06                	out    0x6,eax
     69b:	01 51 00             	add    DWORD PTR [ecx+0x0],edx
     69e:	01 00                	add    DWORD PTR [eax],eax
     6a0:	00 00                	add    BYTE PTR [eax],al
     6a2:	01 00                	add    DWORD PTR [eax],eax
	...
     6b0:	01 00                	add    DWORD PTR [eax],eax
     6b2:	00 00                	add    BYTE PTR [eax],al
     6b4:	00 01                	add    BYTE PTR [ecx],al
     6b6:	01 00                	add    DWORD PTR [eax],eax
	...
     6c0:	00 00                	add    BYTE PTR [eax],al
     6c2:	04 bd                	add    al,0xbd
     6c4:	01 f1                	add    ecx,esi
     6c6:	01 04 91             	add    DWORD PTR [ecx+edx*4],eax
     6c9:	a0 7f 9f 04 f1       	mov    al,ds:0xf1049f7f
     6ce:	01 87 02 01 53 04    	add    DWORD PTR [edi+0x4530102],eax
     6d4:	b3 02                	mov    bl,0x2
     6d6:	b5 02                	mov    ch,0x2
     6d8:	04 91                	add    al,0x91
     6da:	a0 7f 9f 04 b5       	mov    al,ds:0xb5049f7f
     6df:	02 bb 02 03 91 90    	add    bh,BYTE PTR [ebx-0x6f6efcfe]
     6e5:	7f 04                	jg     6eb <__executable_start-0x80479a9>
     6e7:	bb 02 c4 02 03       	mov    ebx,0x302c402
     6ec:	91                   	xchg   ecx,eax
     6ed:	94                   	xchg   esp,eax
     6ee:	7f 04                	jg     6f4 <__executable_start-0x80479a0>
     6f0:	c4 02                	les    eax,FWORD PTR [edx]
     6f2:	cf                   	iret
     6f3:	02 01                	add    al,BYTE PTR [ecx]
     6f5:	50                   	push   eax
     6f6:	04 cf                	add    al,0xcf
     6f8:	02 c1                	add    al,cl
     6fa:	03 03                	add    eax,DWORD PTR [ebx]
     6fc:	91                   	xchg   ecx,eax
     6fd:	90                   	nop
     6fe:	7f 04                	jg     704 <__executable_start-0x8047990>
     700:	c1 03 c9             	rol    DWORD PTR [ebx],0xc9
     703:	03 01                	add    eax,DWORD PTR [ecx]
     705:	52                   	push   edx
     706:	04 c9                	add    al,0xc9
     708:	03 dc                	add    ebx,esp
     70a:	03 03                	add    eax,DWORD PTR [ebx]
     70c:	91                   	xchg   ecx,eax
     70d:	90                   	nop
     70e:	7f 04                	jg     714 <__executable_start-0x8047980>
     710:	dc 03                	fadd   QWORD PTR [ebx]
     712:	ee                   	out    dx,al
     713:	03 01                	add    eax,DWORD PTR [ecx]
     715:	53                   	push   ebx
     716:	04 f4                	add    al,0xf4
     718:	03 cf                	add    ecx,edi
     71a:	05 01 53 04 d3       	add    eax,0xd3045301
     71f:	05 e4 05 01 53       	add    eax,0x530105e4
     724:	04 e4                	add    al,0xe4
     726:	05 ea 05 03 73       	add    eax,0x730305ea
     72b:	01 9f 04 ea 05 ba    	add    DWORD PTR [edi-0x45fa15fc],ebx
     731:	06                   	push   es
     732:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     735:	ba 06 c7 06 04       	mov    edx,0x406c706
     73a:	91                   	xchg   ecx,eax
     73b:	a0 7f 9f 04 c7       	mov    al,ds:0xc7049f7f
     740:	06                   	push   es
     741:	d3 06                	rol    DWORD PTR [esi],cl
     743:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     746:	d3 06                	rol    DWORD PTR [esi],cl
     748:	e2 06                	loop   750 <__executable_start-0x8047944>
     74a:	04 91                	add    al,0x91
     74c:	a0 7f 9f 04 e2       	mov    al,ds:0xe2049f7f
     751:	06                   	push   es
     752:	e7 06                	out    0x6,eax
     754:	01 53 00             	add    DWORD PTR [ebx+0x0],edx
	...
     75f:	00 00                	add    BYTE PTR [eax],al
     761:	04 bd                	add    al,0xbd
     763:	01 d2                	add    edx,edx
     765:	01 02                	add    DWORD PTR [edx],eax
     767:	30 9f 04 d2 01 87    	xor    BYTE PTR [edi-0x78fe2dfc],bl
     76d:	02 03                	add    al,BYTE PTR [ebx]
     76f:	91                   	xchg   ecx,eax
     770:	f8                   	clc
     771:	7e 04                	jle    777 <__executable_start-0x804791d>
     773:	b3 02                	mov    bl,0x2
     775:	b5 02                	mov    ch,0x2
     777:	01 50 04             	add    DWORD PTR [eax+0x4],edx
     77a:	b5 02                	mov    ch,0x2
     77c:	dc 03                	fadd   QWORD PTR [ebx]
     77e:	03 91 f8 7e 04 ba    	add    edx,DWORD PTR [ecx-0x45fb8108]
     784:	06                   	push   es
     785:	e7 06                	out    0x6,eax
     787:	02 30                	add    dh,BYTE PTR [eax]
     789:	9f                   	lahf
     78a:	00 07                	add    BYTE PTR [edi],al
     78c:	00 00                	add    BYTE PTR [eax],al
     78e:	00 00                	add    BYTE PTR [eax],al
     790:	00 00                	add    BYTE PTR [eax],al
     792:	00 04 79             	add    BYTE PTR [ecx+edi*2],al
     795:	9b                   	fwait
     796:	01 02                	add    DWORD PTR [edx],eax
     798:	30 9f 04 9b 01 87    	xor    BYTE PTR [edi-0x78fe64fc],bl
     79e:	02 03                	add    al,BYTE PTR [ebx]
     7a0:	91                   	xchg   ecx,eax
     7a1:	fc                   	cld
     7a2:	7e 04                	jle    7a8 <__executable_start-0x80478ec>
     7a4:	87 02                	xchg   DWORD PTR [edx],eax
     7a6:	aa                   	stos   BYTE PTR es:[edi],al
     7a7:	02 02                	add    al,BYTE PTR [edx]
     7a9:	30 9f 04 aa 02 e7    	xor    BYTE PTR [edi-0x18fd55fc],bl
     7af:	06                   	push   es
     7b0:	03 91 fc 7e 00 00    	add    edx,DWORD PTR [ecx+0x7efc]
     7b6:	00 04 dc             	add    BYTE PTR [esp+ebx*8],al
     7b9:	03 ee                	add    ebp,esi
     7bb:	03 01                	add    eax,DWORD PTR [ecx]
     7bd:	52                   	push   edx
     7be:	00 01                	add    BYTE PTR [ecx],al
     7c0:	00 00                	add    BYTE PTR [eax],al
     7c2:	00 00                	add    BYTE PTR [eax],al
     7c4:	00 00                	add    BYTE PTR [eax],al
     7c6:	00 04 9a             	add    BYTE PTR [edx+ebx*4],al
     7c9:	04 c9                	add    al,0xc9
     7cb:	04 26                	add    al,0x26
     7cd:	91                   	xchg   ecx,eax
     7ce:	00 91 fc 7e 06 30    	add    BYTE PTR [ecx+0x30067efc],dl
     7d4:	2e 08 ff             	cs or  bh,bh
     7d7:	1a 1c 73             	sbb    bl,BYTE PTR [ebx+esi*2]
     7da:	00 1c 91             	add    BYTE PTR [ecx+edx*4],bl
     7dd:	f8                   	clc
     7de:	7e 06                	jle    7e6 <__executable_start-0x80478ae>
     7e0:	30 2e                	xor    BYTE PTR [esi],ch
     7e2:	08 ff                	or     bh,bh
     7e4:	1a 31                	sbb    dh,BYTE PTR [ecx]
     7e6:	24 1c                	and    al,0x1c
     7e8:	91                   	xchg   ecx,eax
     7e9:	08 06                	or     BYTE PTR [esi],al
     7eb:	23 04 06             	and    eax,DWORD PTR [esi+eax*1]
     7ee:	22 08                	and    cl,BYTE PTR [eax]
     7f0:	60                   	pusha
     7f1:	1c 9f                	sbb    al,0x9f
     7f3:	04 c9                	add    al,0xc9
     7f5:	04 a9                	add    al,0xa9
     7f7:	05 01 56 04 a9       	add    eax,0xa9045601
     7fc:	05 c0 05 03 91       	add    eax,0x910305c0
     801:	9c                   	pushf
     802:	7f 04                	jg     808 <__executable_start-0x804788c>
     804:	ef                   	out    dx,eax
     805:	05 a3 06 01 56       	add    eax,0x560106a3
     80a:	00 02                	add    BYTE PTR [edx],al
     80c:	00 02                	add    BYTE PTR [edx],al
     80e:	00 00                	add    BYTE PTR [eax],al
     810:	00 00                	add    BYTE PTR [eax],al
     812:	00 04 bd 01 87 02 02 	add    BYTE PTR [edi*4+0x2028701],al
     819:	30 9f 04 b3 02 b5    	xor    BYTE PTR [edi-0x4afd4cfc],bl
     81f:	02 02                	add    al,BYTE PTR [edx]
     821:	30 9f 04 b5 02 dc    	xor    BYTE PTR [edi-0x23fd4afc],bl
     827:	03 03                	add    eax,DWORD PTR [ebx]
     829:	91                   	xchg   ecx,eax
     82a:	88 7f 04             	mov    BYTE PTR [edi+0x4],bh
     82d:	ba 06 e7 06 02       	mov    edx,0x206e706
     832:	30 9f 00 00 01 01    	xor    BYTE PTR [edi+0x1010000],bl
	...
     840:	00 01                	add    BYTE PTR [ecx],al
     842:	00 01                	add    BYTE PTR [ecx],al
     844:	00 02                	add    BYTE PTR [edx],al
     846:	00 01                	add    BYTE PTR [ecx],al
     848:	00 01                	add    BYTE PTR [ecx],al
     84a:	00 02                	add    BYTE PTR [edx],al
     84c:	00 02                	add    BYTE PTR [edx],al
     84e:	00 01                	add    BYTE PTR [ecx],al
	...
     88c:	00 00                	add    BYTE PTR [eax],al
     88e:	00 04 cb             	add    BYTE PTR [ebx+ecx*8],al
     891:	08 e2                	or     dl,ah
     893:	08 02                	or     BYTE PTR [edx],al
     895:	91                   	xchg   ecx,eax
     896:	00 04 e2             	add    BYTE PTR [edx+eiz*8],al
     899:	08 ed                	or     ch,ch
     89b:	08 01                	or     BYTE PTR [ecx],al
     89d:	53                   	push   ebx
     89e:	04 f1                	add    al,0xf1
     8a0:	08 83 09 01 53 04    	or     BYTE PTR [ebx+0x4530109],al
     8a6:	83 09 86             	or     DWORD PTR [ecx],0xffffff86
     8a9:	09 01                	or     DWORD PTR [ecx],eax
     8ab:	56                   	push   esi
     8ac:	04 86                	add    al,0x86
     8ae:	09 95 09 01 53 04    	or     DWORD PTR [ebp+0x4530109],edx
     8b4:	95                   	xchg   ebp,eax
     8b5:	09 c3                	or     ebx,eax
     8b7:	09 01                	or     DWORD PTR [ecx],eax
     8b9:	56                   	push   esi
     8ba:	04 b6                	add    al,0xb6
     8bc:	0c d2                	or     al,0xd2
     8be:	0c 01                	or     al,0x1
     8c0:	53                   	push   ebx
     8c1:	04 dc                	add    al,0xdc
     8c3:	0c fc                	or     al,0xfc
     8c5:	0c 01                	or     al,0x1
     8c7:	53                   	push   ebx
     8c8:	04 83                	add    al,0x83
     8ca:	0d a3 0d 01 53       	or     eax,0x53010da3
     8cf:	04 b2                	add    al,0xb2
     8d1:	0d ce 0d 01 53       	or     eax,0x53010dce
     8d6:	04 d8                	add    al,0xd8
     8d8:	0d f8 0d 01 53       	or     eax,0x53010df8
     8dd:	04 ff                	add    al,0xff
     8df:	0d 9f 0e 01 53       	or     eax,0x53010e9f
     8e4:	04 a6                	add    al,0xa6
     8e6:	0e                   	push   cs
     8e7:	c6                   	(bad)
     8e8:	0e                   	push   cs
     8e9:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     8ec:	c6                   	(bad)
     8ed:	0e                   	push   cs
     8ee:	e2 0e                	loop   8fe <__executable_start-0x8047796>
     8f0:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     8f3:	e2 0e                	loop   903 <__executable_start-0x8047791>
     8f5:	ec                   	in     al,dx
     8f6:	0e                   	push   cs
     8f7:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     8fa:	ec                   	in     al,dx
     8fb:	0e                   	push   cs
     8fc:	84 0f                	test   BYTE PTR [edi],cl
     8fe:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     901:	84 0f                	test   BYTE PTR [edi],cl
     903:	96                   	xchg   esi,eax
     904:	0f 01 53 04          	lgdtd  [ebx+0x4]
     908:	96                   	xchg   esi,eax
     909:	0f d3 12             	psrlq  mm2,QWORD PTR [edx]
     90c:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     90f:	d3 12                	rcl    DWORD PTR [edx],cl
     911:	e8 12 01 53 04       	call   4530a28 <__executable_start-0x3b1766c>
     916:	e8 12 f0 12 01       	call   112f92d <__executable_start-0x6f18767>
     91b:	56                   	push   esi
     91c:	04 f0                	add    al,0xf0
     91e:	12 85 13 01 53 04    	adc    al,BYTE PTR [ebp+0x4530113]
     924:	85 13                	test   DWORD PTR [ebx],edx
     926:	8d 13                	lea    edx,[ebx]
     928:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     92b:	8d 13                	lea    edx,[ebx]
     92d:	a0 13 01 53 04       	mov    al,ds:0x4530113
     932:	a0 13 a8 13 01       	mov    al,ds:0x113a813
     937:	56                   	push   esi
     938:	04 a8                	add    al,0xa8
     93a:	13 bd 13 01 53 04    	adc    edi,DWORD PTR [ebp+0x4530113]
     940:	bd 13 c8 13 01       	mov    ebp,0x113c813
     945:	56                   	push   esi
     946:	04 c8                	add    al,0xc8
     948:	13 db                	adc    ebx,ebx
     94a:	13 01                	adc    eax,DWORD PTR [ecx]
     94c:	53                   	push   ebx
     94d:	04 db                	add    al,0xdb
     94f:	13 e6                	adc    esp,esi
     951:	13 01                	adc    eax,DWORD PTR [ecx]
     953:	56                   	push   esi
     954:	04 e6                	add    al,0xe6
     956:	13 fb                	adc    edi,ebx
     958:	13 01                	adc    eax,DWORD PTR [ecx]
     95a:	53                   	push   ebx
     95b:	04 fb                	add    al,0xfb
     95d:	13 86 14 01 56 04    	adc    eax,DWORD PTR [esi+0x4560114]
     963:	86 14 9b             	xchg   BYTE PTR [ebx+ebx*4],dl
     966:	14 01                	adc    al,0x1
     968:	53                   	push   ebx
     969:	04 9b                	add    al,0x9b
     96b:	14 a1                	adc    al,0xa1
     96d:	15 01 56 04 a1       	adc    eax,0xa1045601
     972:	15 ab 15 01 53       	adc    eax,0x530115ab
     977:	04 ab                	add    al,0xab
     979:	15 db 15 01 56       	adc    eax,0x560115db
     97e:	04 db                	add    al,0xdb
     980:	15 f8 15 01 53       	adc    eax,0x530115f8
     985:	04 f8                	add    al,0xf8
     987:	15 c6 16 01 56       	adc    eax,0x560116c6
     98c:	04 c6                	add    al,0xc6
     98e:	16                   	push   ss
     98f:	d6                   	(bad)
     990:	16                   	push   ss
     991:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     994:	d6                   	(bad)
     995:	16                   	push   ss
     996:	e1 16                	loope  9ae <__executable_start-0x80476e6>
     998:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     99b:	e1 16                	loope  9b3 <__executable_start-0x80476e1>
     99d:	eb 16                	jmp    9b5 <__executable_start-0x80476df>
     99f:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     9a2:	eb 16                	jmp    9ba <__executable_start-0x80476da>
     9a4:	b7 17                	mov    bh,0x17
     9a6:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     9a9:	b7 17                	mov    bh,0x17
     9ab:	ca 17 01             	retf   0x117
     9ae:	53                   	push   ebx
     9af:	04 ca                	add    al,0xca
     9b1:	17                   	pop    ss
     9b2:	cc                   	int3
     9b3:	17                   	pop    ss
     9b4:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     9b7:	cc                   	int3
     9b8:	17                   	pop    ss
     9b9:	f6 17                	not    BYTE PTR [edi]
     9bb:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     9be:	f6 17                	not    BYTE PTR [edi]
     9c0:	f8                   	clc
     9c1:	17                   	pop    ss
     9c2:	01 56 04             	add    DWORD PTR [esi+0x4],edx
     9c5:	f8                   	clc
     9c6:	17                   	pop    ss
     9c7:	a2 18 01 53 00       	mov    ds:0x530118,al
     9cc:	00 00                	add    BYTE PTR [eax],al
     9ce:	00 00                	add    BYTE PTR [eax],al
     9d0:	00 02                	add    BYTE PTR [edx],al
     9d2:	02 00                	add    al,BYTE PTR [eax]
     9d4:	00 00                	add    BYTE PTR [eax],al
     9d6:	00 00                	add    BYTE PTR [eax],al
     9d8:	00 00                	add    BYTE PTR [eax],al
     9da:	01 00                	add    DWORD PTR [eax],eax
     9dc:	00 00                	add    BYTE PTR [eax],al
     9de:	00 01                	add    BYTE PTR [ecx],al
     9e0:	01 00                	add    DWORD PTR [eax],eax
     9e2:	00 00                	add    BYTE PTR [eax],al
     9e4:	00 01                	add    BYTE PTR [ecx],al
     9e6:	01 00                	add    DWORD PTR [eax],eax
     9e8:	00 00                	add    BYTE PTR [eax],al
     9ea:	00 01                	add    BYTE PTR [ecx],al
     9ec:	01 00                	add    DWORD PTR [eax],eax
     9ee:	00 00                	add    BYTE PTR [eax],al
     9f0:	00 01                	add    BYTE PTR [ecx],al
     9f2:	01 00                	add    DWORD PTR [eax],eax
     9f4:	00 00                	add    BYTE PTR [eax],al
     9f6:	00 01                	add    BYTE PTR [ecx],al
     9f8:	01 00                	add    DWORD PTR [eax],eax
     9fa:	00 00                	add    BYTE PTR [eax],al
     9fc:	00 01                	add    BYTE PTR [ecx],al
     9fe:	01 00                	add    DWORD PTR [eax],eax
     a00:	00 00                	add    BYTE PTR [eax],al
     a02:	00 01                	add    BYTE PTR [ecx],al
     a04:	01 00                	add    DWORD PTR [eax],eax
     a06:	00 00                	add    BYTE PTR [eax],al
     a08:	00 00                	add    BYTE PTR [eax],al
     a0a:	00 00                	add    BYTE PTR [eax],al
     a0c:	00 05 05 00 00 00    	add    BYTE PTR ds:0x5,al
     a12:	00 01                	add    BYTE PTR [ecx],al
     a14:	01 00                	add    DWORD PTR [eax],eax
     a16:	00 00                	add    BYTE PTR [eax],al
     a18:	00 01                	add    BYTE PTR [ecx],al
     a1a:	01 00                	add    DWORD PTR [eax],eax
     a1c:	00 00                	add    BYTE PTR [eax],al
     a1e:	00 01                	add    BYTE PTR [ecx],al
     a20:	01 00                	add    DWORD PTR [eax],eax
     a22:	00 00                	add    BYTE PTR [eax],al
     a24:	00 01                	add    BYTE PTR [ecx],al
     a26:	01 00                	add    DWORD PTR [eax],eax
     a28:	00 00                	add    BYTE PTR [eax],al
     a2a:	00 01                	add    BYTE PTR [ecx],al
     a2c:	01 00                	add    DWORD PTR [eax],eax
     a2e:	00 00                	add    BYTE PTR [eax],al
     a30:	00 01                	add    BYTE PTR [ecx],al
     a32:	01 00                	add    DWORD PTR [eax],eax
     a34:	00 00                	add    BYTE PTR [eax],al
     a36:	00 01                	add    BYTE PTR [ecx],al
     a38:	01 00                	add    DWORD PTR [eax],eax
	...
     a4e:	00 00                	add    BYTE PTR [eax],al
     a50:	04 cb                	add    al,0xcb
     a52:	08 83 09 02 91 04    	or     BYTE PTR [ebx+0x4910209],al
     a58:	04 83                	add    al,0x83
     a5a:	09 ea                	or     edx,ebp
     a5c:	0a 02                	or     al,BYTE PTR [edx]
     a5e:	91                   	xchg   ecx,eax
     a5f:	04 04                	add    al,0x4
     a61:	f6 0a fe             	test   BYTE PTR [edx],0xfe
     a64:	0a 02                	or     al,BYTE PTR [edx]
     a66:	91                   	xchg   ecx,eax
     a67:	04 04                	add    al,0x4
     a69:	fe 0a                	dec    BYTE PTR [edx]
     a6b:	86 0b                	xchg   BYTE PTR [ebx],cl
     a6d:	06                   	push   es
     a6e:	91                   	xchg   ecx,eax
     a6f:	04 06                	add    al,0x6
     a71:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     a74:	04 86                	add    al,0x86
     a76:	0b 8d 0b 01 50 04    	or     ecx,DWORD PTR [ebp+0x450010b]
     a7c:	8d 0b                	lea    ecx,[ebx]
     a7e:	98                   	cwde
     a7f:	0b 02                	or     eax,DWORD PTR [edx]
     a81:	91                   	xchg   ecx,eax
     a82:	04 04                	add    al,0x4
     a84:	d1 0b                	ror    DWORD PTR [ebx],1
     a86:	8b 0c 02             	mov    ecx,DWORD PTR [edx+eax*1]
     a89:	91                   	xchg   ecx,eax
     a8a:	04 04                	add    al,0x4
     a8c:	8e 0c 96             	mov    cs,WORD PTR [esi+edx*4]
     a8f:	0c 06                	or     al,0x6
     a91:	91                   	xchg   ecx,eax
     a92:	04 06                	add    al,0x6
     a94:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     a97:	04 96                	add    al,0x96
     a99:	0c 9b                	or     al,0x9b
     a9b:	0c 01                	or     al,0x1
     a9d:	50                   	push   eax
     a9e:	04 9b                	add    al,0x9b
     aa0:	0c 96                	or     al,0x96
     aa2:	0f 02 91 04 04 96 0f 	lar    edx,WORD PTR [ecx+0xf960404]
     aa9:	ad                   	lods   eax,DWORD PTR ds:[esi]
     aaa:	0f 06                	clts
     aac:	91                   	xchg   ecx,eax
     aad:	04 06                	add    al,0x6
     aaf:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     ab2:	04 ad                	add    al,0xad
     ab4:	0f b0 0f             	cmpxchg BYTE PTR [edi],cl
     ab7:	01 50 04             	add    DWORD PTR [eax+0x4],edx
     aba:	b0 0f                	mov    al,0xf
     abc:	ff 0f                	dec    DWORD PTR [edi]
     abe:	02 91 04 04 ff 0f    	add    dl,BYTE PTR [ecx+0xfff0404]
     ac4:	96                   	xchg   esi,eax
     ac5:	10 06                	adc    BYTE PTR [esi],al
     ac7:	91                   	xchg   ecx,eax
     ac8:	04 06                	add    al,0x6
     aca:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     acd:	04 96                	add    al,0x96
     acf:	10 9b 10 01 50 04    	adc    BYTE PTR [ebx+0x4500110],bl
     ad5:	9b                   	fwait
     ad6:	10 9b 10 02 91 04    	adc    BYTE PTR [ebx+0x4910210],bl
     adc:	04 9b                	add    al,0x9b
     ade:	10 b1 10 06 91 04    	adc    BYTE PTR [ecx+0x4910610],dh
     ae4:	06                   	push   es
     ae5:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     ae8:	04 b1                	add    al,0xb1
     aea:	10 b9 10 01 50 04    	adc    BYTE PTR [ecx+0x4500110],bh
     af0:	b9 10 b9 10 02       	mov    ecx,0x210b910
     af5:	91                   	xchg   ecx,eax
     af6:	04 04                	add    al,0x4
     af8:	b9 10 cd 10 06       	mov    ecx,0x610cd10
     afd:	91                   	xchg   ecx,eax
     afe:	04 06                	add    al,0x6
     b00:	23 08                	and    ecx,DWORD PTR [eax]
     b02:	9f                   	lahf
     b03:	04 cd                	add    al,0xcd
     b05:	10 d5                	adc    ch,dl
     b07:	10 01                	adc    BYTE PTR [ecx],al
     b09:	50                   	push   eax
     b0a:	04 d5                	add    al,0xd5
     b0c:	10 d5                	adc    ch,dl
     b0e:	10 02                	adc    BYTE PTR [edx],al
     b10:	91                   	xchg   ecx,eax
     b11:	04 04                	add    al,0x4
     b13:	d5 10                	aad    0x10
     b15:	eb 10                	jmp    b27 <__executable_start-0x804756d>
     b17:	06                   	push   es
     b18:	91                   	xchg   ecx,eax
     b19:	04 06                	add    al,0x6
     b1b:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     b1e:	04 eb                	add    al,0xeb
     b20:	10 f3                	adc    bl,dh
     b22:	10 01                	adc    BYTE PTR [ecx],al
     b24:	50                   	push   eax
     b25:	04 f3                	add    al,0xf3
     b27:	10 f3                	adc    bl,dh
     b29:	10 02                	adc    BYTE PTR [edx],al
     b2b:	91                   	xchg   ecx,eax
     b2c:	04 04                	add    al,0x4
     b2e:	f3 10 87 11 06 91 04 	repz adc BYTE PTR [edi+0x4910611],al
     b35:	06                   	push   es
     b36:	23 08                	and    ecx,DWORD PTR [eax]
     b38:	9f                   	lahf
     b39:	04 87                	add    al,0x87
     b3b:	11 8f 11 01 50 04    	adc    DWORD PTR [edi+0x4500111],ecx
     b41:	8f                   	(bad)
     b42:	11 8f 11 02 91 04    	adc    DWORD PTR [edi+0x4910211],ecx
     b48:	04 8f                	add    al,0x8f
     b4a:	11 a5 11 06 91 04    	adc    DWORD PTR [ebp+0x4910611],esp
     b50:	06                   	push   es
     b51:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     b54:	04 a5                	add    al,0xa5
     b56:	11 ad 11 01 50 04    	adc    DWORD PTR [ebp+0x4500111],ebp
     b5c:	ad                   	lods   eax,DWORD PTR ds:[esi]
     b5d:	11 b3 11 02 91 04    	adc    DWORD PTR [ebx+0x4910211],esi
     b63:	04 b3                	add    al,0xb3
     b65:	11 e3                	adc    ebx,esp
     b67:	11 01                	adc    DWORD PTR [ecx],eax
     b69:	52                   	push   edx
     b6a:	04 e3                	add    al,0xe3
     b6c:	11 8f 12 02 91 04    	adc    DWORD PTR [edi+0x4910212],ecx
     b72:	04 8f                	add    al,0x8f
     b74:	12 a5 12 06 91 04    	adc    ah,BYTE PTR [ebp+0x4910612]
     b7a:	06                   	push   es
     b7b:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     b7e:	04 a5                	add    al,0xa5
     b80:	12 a8 12 01 53 04    	adc    ch,BYTE PTR [eax+0x4530112]
     b86:	a8 12                	test   al,0x12
     b88:	d3 12                	rcl    DWORD PTR [edx],cl
     b8a:	02 91 04 04 d3 12    	add    dl,BYTE PTR [ecx+0x12d30404]
     b90:	eb 12                	jmp    ba4 <__executable_start-0x80474f0>
     b92:	06                   	push   es
     b93:	91                   	xchg   ecx,eax
     b94:	04 06                	add    al,0x6
     b96:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     b99:	04 eb                	add    al,0xeb
     b9b:	12 f0                	adc    dh,al
     b9d:	12 01                	adc    al,BYTE PTR [ecx]
     b9f:	53                   	push   ebx
     ba0:	04 f0                	add    al,0xf0
     ba2:	12 f0                	adc    dh,al
     ba4:	12 02                	adc    al,BYTE PTR [edx]
     ba6:	91                   	xchg   ecx,eax
     ba7:	04 04                	add    al,0x4
     ba9:	f0 12 88 13 06 91 04 	lock adc cl,BYTE PTR [eax+0x4910613]
     bb0:	06                   	push   es
     bb1:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     bb4:	04 88                	add    al,0x88
     bb6:	13 8d 13 01 53 04    	adc    ecx,DWORD PTR [ebp+0x4530113]
     bbc:	8d 13                	lea    edx,[ebx]
     bbe:	8d 13                	lea    edx,[ebx]
     bc0:	02 91 04 04 8d 13    	add    dl,BYTE PTR [ecx+0x138d0404]
     bc6:	a3 13 06 91 04       	mov    ds:0x4910613,eax
     bcb:	06                   	push   es
     bcc:	23 08                	and    ecx,DWORD PTR [eax]
     bce:	9f                   	lahf
     bcf:	04 a3                	add    al,0xa3
     bd1:	13 a8 13 01 53 04    	adc    ebp,DWORD PTR [eax+0x4530113]
     bd7:	a8 13                	test   al,0x13
     bd9:	a8 13                	test   al,0x13
     bdb:	02 91 04 04 a8 13    	add    dl,BYTE PTR [ecx+0x13a80404]
     be1:	c0 13 06             	rcl    BYTE PTR [ebx],0x6
     be4:	91                   	xchg   ecx,eax
     be5:	04 06                	add    al,0x6
     be7:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     bea:	04 c0                	add    al,0xc0
     bec:	13 c8                	adc    ecx,eax
     bee:	13 01                	adc    eax,DWORD PTR [ecx]
     bf0:	53                   	push   ebx
     bf1:	04 c8                	add    al,0xc8
     bf3:	13 c8                	adc    ecx,eax
     bf5:	13 02                	adc    eax,DWORD PTR [edx]
     bf7:	91                   	xchg   ecx,eax
     bf8:	04 04                	add    al,0x4
     bfa:	c8 13 de 13          	enter  0xde13,0x13
     bfe:	06                   	push   es
     bff:	91                   	xchg   ecx,eax
     c00:	04 06                	add    al,0x6
     c02:	23 08                	and    ecx,DWORD PTR [eax]
     c04:	9f                   	lahf
     c05:	04 de                	add    al,0xde
     c07:	13 e6                	adc    esp,esi
     c09:	13 01                	adc    eax,DWORD PTR [ecx]
     c0b:	53                   	push   ebx
     c0c:	04 e6                	add    al,0xe6
     c0e:	13 e6                	adc    esp,esi
     c10:	13 02                	adc    eax,DWORD PTR [edx]
     c12:	91                   	xchg   ecx,eax
     c13:	04 04                	add    al,0x4
     c15:	e6 13                	out    0x13,al
     c17:	fe                   	(bad)
     c18:	13 06                	adc    eax,DWORD PTR [esi]
     c1a:	91                   	xchg   ecx,eax
     c1b:	04 06                	add    al,0x6
     c1d:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     c20:	04 fe                	add    al,0xfe
     c22:	13 86 14 01 53 04    	adc    eax,DWORD PTR [esi+0x4530114]
     c28:	86 14 86             	xchg   BYTE PTR [esi+eax*4],dl
     c2b:	14 02                	adc    al,0x2
     c2d:	91                   	xchg   ecx,eax
     c2e:	04 04                	add    al,0x4
     c30:	86 14 9e             	xchg   BYTE PTR [esi+ebx*4],dl
     c33:	14 06                	adc    al,0x6
     c35:	91                   	xchg   ecx,eax
     c36:	04 06                	add    al,0x6
     c38:	23 04 9f             	and    eax,DWORD PTR [edi+ebx*4]
     c3b:	04 9e                	add    al,0x9e
     c3d:	14 a6                	adc    al,0xa6
     c3f:	14 01                	adc    al,0x1
     c41:	53                   	push   ebx
     c42:	04 a6                	add    al,0xa6
     c44:	14 b1                	adc    al,0xb1
     c46:	15 02 91 04 04       	adc    eax,0x4049102
     c4b:	b1 15                	mov    cl,0x15
     c4d:	db 15 01 53 04 db    	fist   DWORD PTR ds:0xdb045301
     c53:	15 81 16 02 91       	adc    eax,0x91021681
     c58:	04 04                	add    al,0x4
     c5a:	81 16 84 16 01 50    	adc    DWORD PTR [esi],0x50011684
     c60:	04 84                	add    al,0x84
     c62:	16                   	push   ss
     c63:	c6                   	(bad)
     c64:	16                   	push   ss
     c65:	03 91 b0 7f 04 c6    	add    edx,DWORD PTR [ecx-0x39fb8050]
     c6b:	16                   	push   ss
     c6c:	d6                   	(bad)
     c6d:	16                   	push   ss
     c6e:	02 91 04 04 d6 16    	add    dl,BYTE PTR [ecx+0x16d60404]
     c74:	e1 16                	loope  c8c <__executable_start-0x8047408>
     c76:	03 91 b0 7f 04 e1    	add    edx,DWORD PTR [ecx-0x1efb8050]
     c7c:	16                   	push   ss
     c7d:	f1                   	int1
     c7e:	16                   	push   ss
     c7f:	02 91 04 04 f1 16    	add    dl,BYTE PTR [ecx+0x16f10404]
     c85:	b7 17                	mov    bh,0x17
     c87:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     c8a:	b7 17                	mov    bh,0x17
     c8c:	a2 18 02 91 04       	mov    ds:0x4910218,al
	...
     c9d:	00 04 a7             	add    BYTE PTR [edi+eiz*4],al
     ca0:	0f ff 0f             	ud0    ecx,DWORD PTR [edi]
     ca3:	03 91 b8 7f 04 90    	add    edx,DWORD PTR [ecx-0x6ffb8048]
     ca9:	10 9b 10 03 91 b8    	adc    BYTE PTR [ebx-0x476efcf0],bl
     caf:	7f 04                	jg     cb5 <__executable_start-0x80473df>
     cb1:	ab                   	stos   DWORD PTR es:[edi],eax
     cb2:	10 b9 10 03 91 b8    	adc    BYTE PTR [ecx-0x476efcf0],bh
     cb8:	7f 04                	jg     cbe <__executable_start-0x80473d6>
     cba:	e5 10                	in     eax,0x10
     cbc:	f3 10 03             	repz adc BYTE PTR [ebx],al
     cbf:	91                   	xchg   ecx,eax
     cc0:	b8 7f 04 9f 11       	mov    eax,0x119f047f
     cc5:	ad                   	lods   eax,DWORD PTR ds:[esi]
     cc6:	11 03                	adc    DWORD PTR [ebx],eax
     cc8:	91                   	xchg   ecx,eax
     cc9:	b8 7f 04 c0 11       	mov    eax,0x11c0047f
     cce:	e3 11                	jecxz  ce1 <__executable_start-0x80473b3>
     cd0:	03 91 b8 7f 00 00    	add    edx,DWORD PTR [ecx+0x7fb8]
     cd6:	00 00                	add    BYTE PTR [eax],al
     cd8:	00 00                	add    BYTE PTR [eax],al
     cda:	00 00                	add    BYTE PTR [eax],al
     cdc:	00 01                	add    BYTE PTR [ecx],al
     cde:	00 00                	add    BYTE PTR [eax],al
     ce0:	00 00                	add    BYTE PTR [eax],al
     ce2:	00 04 9f             	add    BYTE PTR [edi+ebx*4],al
     ce5:	12 d3                	adc    dl,bl
     ce7:	12 03                	adc    al,BYTE PTR [ebx]
     ce9:	91                   	xchg   ecx,eax
     cea:	b8 7f 04 e3 12       	mov    eax,0x12e3047f
     cef:	f0 12 03             	lock adc al,BYTE PTR [ebx]
     cf2:	91                   	xchg   ecx,eax
     cf3:	b8 7f 04 80 13       	mov    eax,0x1380047f
     cf8:	8d 13                	lea    edx,[ebx]
     cfa:	03 91 b8 7f 04 b8    	add    edx,DWORD PTR [ecx-0x47fb8048]
     d00:	13 c8                	adc    ecx,eax
     d02:	13 03                	adc    eax,DWORD PTR [ebx]
     d04:	91                   	xchg   ecx,eax
     d05:	b8 7f 04 e6 13       	mov    eax,0x13e6047f
     d0a:	f6 13                	not    BYTE PTR [ebx]
     d0c:	09 91 04 06 06 a8    	or     DWORD PTR [ecx-0x57f9f9fc],edx
     d12:	3b a8 26 9f 04 f6    	cmp    ebp,DWORD PTR [eax-0x9fb60da]
     d18:	13 86 14 03 91 b8    	adc    eax,DWORD PTR [esi-0x476efcec]
     d1e:	7f 04                	jg     d24 <__executable_start-0x8047370>
     d20:	96                   	xchg   esi,eax
     d21:	14 a1                	adc    al,0xa1
     d23:	15 03 91 b8 7f       	adc    eax,0x7fb89103
     d28:	00 00                	add    BYTE PTR [eax],al
     d2a:	00 00                	add    BYTE PTR [eax],al
     d2c:	00 04 e4             	add    BYTE PTR [esp+eiz*8],al
     d2f:	14 8c                	adc    al,0x8c
     d31:	15 01 50 04 8c       	adc    eax,0x8c045001
     d36:	15 93 15 02 74       	adc    eax,0x74021593
     d3b:	04 00                	add    al,0x0
     d3d:	00 00                	add    BYTE PTR [eax],al
     d3f:	04 8d                	add    al,0x8d
     d41:	16                   	push   ss
     d42:	c6                   	(bad)
     d43:	16                   	push   ss
     d44:	03 91 b4 7f 00 01    	add    edx,DWORD PTR [ecx+0x1007fb4]
     d4a:	00 00                	add    BYTE PTR [eax],al
     d4c:	01 00                	add    DWORD PTR [eax],eax
     d4e:	01 00                	add    DWORD PTR [eax],eax
     d50:	02 00                	add    al,BYTE PTR [eax]
     d52:	01 00                	add    DWORD PTR [eax],eax
     d54:	01 00                	add    DWORD PTR [eax],eax
     d56:	02 00                	add    al,BYTE PTR [eax]
     d58:	02 00                	add    al,BYTE PTR [eax]
     d5a:	01 04 9b             	add    DWORD PTR [ebx+ebx*4],eax
     d5d:	09 b0 09 06 a0 d2    	or     DWORD PTR [eax-0x2d5ff9f7],esi
     d63:	18 00                	sbb    BYTE PTR [eax],al
     d65:	00 00                	add    BYTE PTR [eax],al
     d67:	04 c3                	add    al,0xc3
     d69:	09 b6 0c 06 a0 d2    	or     DWORD PTR [esi-0x2d5ff9f4],esi
     d6f:	18 00                	sbb    BYTE PTR [eax],al
     d71:	00 00                	add    BYTE PTR [eax],al
     d73:	04 d2                	add    al,0xd2
     d75:	0c dc                	or     al,0xdc
     d77:	0c 06                	or     al,0x6
     d79:	a0 d2 18 00 00       	mov    al,ds:0x18d2
     d7e:	00 04 fc             	add    BYTE PTR [esp+edi*8],al
     d81:	0c 83                	or     al,0x83
     d83:	0d 06 a0 d2 18       	or     eax,0x18d2a006
     d88:	00 00                	add    BYTE PTR [eax],al
     d8a:	00 04 a3             	add    BYTE PTR [ebx+eiz*4],al
     d8d:	0d b2 0d 06 a0       	or     eax,0xa0060db2
     d92:	d2 18                	rcr    BYTE PTR [eax],cl
     d94:	00 00                	add    BYTE PTR [eax],al
     d96:	00 04 ce             	add    BYTE PTR [esi+ecx*8],al
     d99:	0d d8 0d 06 a0       	or     eax,0xa0060dd8
     d9e:	d2 18                	rcr    BYTE PTR [eax],cl
     da0:	00 00                	add    BYTE PTR [eax],al
     da2:	00 04 f8             	add    BYTE PTR [eax+edi*8],al
     da5:	0d ff 0d 06 a0       	or     eax,0xa0060dff
     daa:	d2 18                	rcr    BYTE PTR [eax],cl
     dac:	00 00                	add    BYTE PTR [eax],al
     dae:	00 04 9f             	add    BYTE PTR [edi+ebx*4],al
     db1:	0e                   	push   cs
     db2:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
     db3:	0e                   	push   cs
     db4:	06                   	push   es
     db5:	a0 d2 18 00 00       	mov    al,ds:0x18d2
     dba:	00 04 c6             	add    BYTE PTR [esi+eax*8],al
     dbd:	0e                   	push   cs
     dbe:	c6                   	(bad)
     dbf:	0e                   	push   cs
     dc0:	06                   	push   es
     dc1:	a0 d2 18 00 00       	mov    al,ds:0x18d2
     dc6:	00 00                	add    BYTE PTR [eax],al
     dc8:	01 00                	add    DWORD PTR [eax],eax
     dca:	00 01                	add    BYTE PTR [ecx],al
     dcc:	00 01                	add    BYTE PTR [ecx],al
     dce:	00 02                	add    BYTE PTR [edx],al
     dd0:	00 01                	add    BYTE PTR [ecx],al
     dd2:	00 01                	add    BYTE PTR [ecx],al
     dd4:	00 02                	add    BYTE PTR [edx],al
     dd6:	00 02                	add    BYTE PTR [edx],al
     dd8:	00 01                	add    BYTE PTR [ecx],al
     dda:	04 9b                	add    al,0x9b
     ddc:	09 b0 09 03 91 50    	or     DWORD PTR [eax+0x50910309],esi
     de2:	9f                   	lahf
     de3:	04 c3                	add    al,0xc3
     de5:	09 b6 0c 03 91 50    	or     DWORD PTR [esi+0x5091030c],esi
     deb:	9f                   	lahf
     dec:	04 d2                	add    al,0xd2
     dee:	0c dc                	or     al,0xdc
     df0:	0c 03                	or     al,0x3
     df2:	91                   	xchg   ecx,eax
     df3:	50                   	push   eax
     df4:	9f                   	lahf
     df5:	04 fc                	add    al,0xfc
     df7:	0c 83                	or     al,0x83
     df9:	0d 03 91 50 9f       	or     eax,0x9f509103
     dfe:	04 a3                	add    al,0xa3
     e00:	0d b2 0d 03 91       	or     eax,0x91030db2
     e05:	50                   	push   eax
     e06:	9f                   	lahf
     e07:	04 ce                	add    al,0xce
     e09:	0d d8 0d 03 91       	or     eax,0x91030dd8
     e0e:	50                   	push   eax
     e0f:	9f                   	lahf
     e10:	04 f8                	add    al,0xf8
     e12:	0d ff 0d 03 91       	or     eax,0x91030dff
     e17:	50                   	push   eax
     e18:	9f                   	lahf
     e19:	04 9f                	add    al,0x9f
     e1b:	0e                   	push   cs
     e1c:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
     e1d:	0e                   	push   cs
     e1e:	03 91 50 9f 04 c6    	add    edx,DWORD PTR [ecx-0x39fb60b0]
     e24:	0e                   	push   cs
     e25:	c6                   	(bad)
     e26:	0e                   	push   cs
     e27:	03 91 50 9f 00 01    	add    edx,DWORD PTR [ecx+0x1009f50]
     e2d:	00 00                	add    BYTE PTR [eax],al
     e2f:	00 00                	add    BYTE PTR [eax],al
     e31:	00 00                	add    BYTE PTR [eax],al
     e33:	01 01                	add    DWORD PTR [ecx],eax
     e35:	00 00                	add    BYTE PTR [eax],al
     e37:	00 00                	add    BYTE PTR [eax],al
     e39:	00 01                	add    BYTE PTR [ecx],al
     e3b:	00 00                	add    BYTE PTR [eax],al
     e3d:	00 01                	add    BYTE PTR [ecx],al
	...
     e47:	00 00                	add    BYTE PTR [eax],al
     e49:	01 00                	add    DWORD PTR [eax],eax
     e4b:	01 00                	add    DWORD PTR [eax],eax
     e4d:	02 00                	add    al,BYTE PTR [eax]
     e4f:	01 00                	add    DWORD PTR [eax],eax
     e51:	01 00                	add    DWORD PTR [eax],eax
     e53:	02 00                	add    al,BYTE PTR [eax]
     e55:	02 00                	add    al,BYTE PTR [eax]
     e57:	01 04 9b             	add    DWORD PTR [ebx+ebx*4],eax
     e5a:	09 b0 09 01 56 04    	or     DWORD PTR [eax+0x4560109],esi
     e60:	c3                   	ret
     e61:	09 cd                	or     ebp,ecx
     e63:	09 01                	or     DWORD PTR [ecx],eax
     e65:	51                   	push   ecx
     e66:	04 cd                	add    al,0xcd
     e68:	09 d0                	or     eax,edx
     e6a:	09 01                	or     DWORD PTR [ecx],eax
     e6c:	56                   	push   esi
     e6d:	04 d0                	add    al,0xd0
     e6f:	09 96 0a 01 51 04    	or     DWORD PTR [esi+0x451010a],edx
     e75:	96                   	xchg   esi,eax
     e76:	0a a1 0a 01 56 04    	or     ah,BYTE PTR [ecx+0x456010a]
     e7c:	ba 0a ea 0a 01       	mov    edx,0x10aea0a
     e81:	56                   	push   esi
     e82:	04 f6                	add    al,0xf6
     e84:	0a fe                	or     bh,dh
     e86:	0a 01                	or     al,BYTE PTR [ecx]
     e88:	56                   	push   esi
     e89:	04 fe                	add    al,0xfe
     e8b:	0a 8d 0b 01 51 04    	or     cl,BYTE PTR [ebp+0x451010b]
     e91:	8d 0b                	lea    ecx,[ebx]
     e93:	98                   	cwde
     e94:	0b 01                	or     eax,DWORD PTR [ecx]
     e96:	56                   	push   esi
     e97:	04 98                	add    al,0x98
     e99:	0b a1 0b 03 76 01    	or     esp,DWORD PTR [ecx+0x176030b]
     e9f:	9f                   	lahf
     ea0:	04 a1                	add    al,0xa1
     ea2:	0b ec                	or     ebp,esp
     ea4:	0b 01                	or     eax,DWORD PTR [ecx]
     ea6:	56                   	push   esi
     ea7:	04 ec                	add    al,0xec
     ea9:	0b 8b 0c 01 53 04    	or     ecx,DWORD PTR [ebx+0x453010c]
     eaf:	8b 0c 8e             	mov    ecx,DWORD PTR [esi+ecx*4]
     eb2:	0c 03                	or     al,0x3
     eb4:	76 01                	jbe    eb7 <__executable_start-0x80471dd>
     eb6:	9f                   	lahf
     eb7:	04 8e                	add    al,0x8e
     eb9:	0c a7                	or     al,0xa7
     ebb:	0c 01                	or     al,0x1
     ebd:	56                   	push   esi
     ebe:	04 a7                	add    al,0xa7
     ec0:	0c b6                	or     al,0xb6
     ec2:	0c 01                	or     al,0x1
     ec4:	53                   	push   ebx
     ec5:	04 d2                	add    al,0xd2
     ec7:	0c dc                	or     al,0xdc
     ec9:	0c 01                	or     al,0x1
     ecb:	53                   	push   ebx
     ecc:	04 fc                	add    al,0xfc
     ece:	0c 83                	or     al,0x83
     ed0:	0d 01 53 04 a3       	or     eax,0xa3045301
     ed5:	0d b2 0d 01 53       	or     eax,0x53010db2
     eda:	04 ce                	add    al,0xce
     edc:	0d d8 0d 01 53       	or     eax,0x53010dd8
     ee1:	04 f8                	add    al,0xf8
     ee3:	0d ff 0d 01 53       	or     eax,0x53010dff
     ee8:	04 9f                	add    al,0x9f
     eea:	0e                   	push   cs
     eeb:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
     eec:	0e                   	push   cs
     eed:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
     ef0:	c6                   	(bad)
     ef1:	0e                   	push   cs
     ef2:	c6                   	(bad)
     ef3:	0e                   	push   cs
     ef4:	01 56 00             	add    DWORD PTR [esi+0x0],edx
     ef7:	01 03                	add    DWORD PTR [ebx],eax
     ef9:	00 02                	add    BYTE PTR [edx],al
     efb:	04 ba                	add    al,0xba
     efd:	0a ba 0a 07 70 00    	or     bh,BYTE PTR [edx+0x70070a]
     f03:	48                   	dec    eax
     f04:	24 48                	and    al,0x48
     f06:	26 9f                	es lahf
     f08:	04 d8                	add    al,0xd8
     f0a:	0a d8                	or     bl,al
     f0c:	0a 07                	or     al,BYTE PTR [edi]
     f0e:	70 00                	jo     f10 <__executable_start-0x8047184>
     f10:	48                   	dec    eax
     f11:	24 48                	and    al,0x48
     f13:	26 9f                	es lahf
     f15:	00 02                	add    BYTE PTR [edx],al
     f17:	04 00                	add    al,0x0
     f19:	02 04 a8             	add    al,BYTE PTR [eax+ebp*4]
     f1c:	0b a8 0b 07 70 00    	or     ebp,DWORD PTR [eax+0x70070b]
     f22:	48                   	dec    eax
     f23:	24 48                	and    al,0x48
     f25:	26 9f                	es lahf
     f27:	04 c6                	add    al,0xc6
     f29:	0b c6                	or     eax,esi
     f2b:	0b 07                	or     eax,DWORD PTR [edi]
     f2d:	70 00                	jo     f2f <__executable_start-0x8047165>
     f2f:	48                   	dec    eax
     f30:	24 48                	and    al,0x48
     f32:	26 9f                	es lahf
     f34:	00 00                	add    BYTE PTR [eax],al
     f36:	00 00                	add    BYTE PTR [eax],al
     f38:	02 04 8b             	add    al,BYTE PTR [ebx+ecx*4]
     f3b:	08 92 08 01 50 04    	or     BYTE PTR [edx+0x4500108],dl
     f41:	92                   	xchg   edx,eax
     f42:	08 9a 08 03 91 04    	or     BYTE PTR [edx+0x4910308],bl
     f48:	9f                   	lahf
     f49:	00 00                	add    BYTE PTR [eax],al
     f4b:	00 04 9a             	add    BYTE PTR [edx+ebx*4],al
     f4e:	08 a1 08 01 50 00    	or     BYTE PTR [ecx+0x500108],ah
     f54:	00 00                	add    BYTE PTR [eax],al
     f56:	00 00                	add    BYTE PTR [eax],al
     f58:	04 a6                	add    al,0xa6
     f5a:	19 cf                	sbb    edi,ecx
     f5c:	19 02                	sbb    DWORD PTR [edx],eax
     f5e:	91                   	xchg   ecx,eax
     f5f:	04 04                	add    al,0x4
     f61:	cf                   	iret
     f62:	19 d0                	sbb    eax,edx
     f64:	19 02                	sbb    DWORD PTR [edx],eax
     f66:	74 08                	je     f70 <__executable_start-0x8047124>
     f68:	00 00                	add    BYTE PTR [eax],al
     f6a:	00 00                	add    BYTE PTR [eax],al
     f6c:	00 04 a6             	add    BYTE PTR [esi+eiz*4],al
     f6f:	19 cf                	sbb    edi,ecx
     f71:	19 02                	sbb    DWORD PTR [edx],eax
     f73:	91                   	xchg   ecx,eax
     f74:	08 04 cf             	or     BYTE PTR [edi+ecx*8],al
     f77:	19 d0                	sbb    eax,edx
     f79:	19 02                	sbb    DWORD PTR [edx],eax
     f7b:	74 0c                	je     f89 <__executable_start-0x804710b>
     f7d:	00 00                	add    BYTE PTR [eax],al
     f7f:	00 00                	add    BYTE PTR [eax],al
     f81:	02 04 af             	add    al,BYTE PTR [edi+ebp*4]
     f84:	19 b6 19 01 50 04    	sbb    DWORD PTR [esi+0x4500119],esi
     f8a:	b6 19                	mov    dh,0x19
     f8c:	cc                   	int3
     f8d:	19 03                	sbb    DWORD PTR [ebx],eax
     f8f:	91                   	xchg   ecx,eax
     f90:	0c 9f                	or     al,0x9f
     f92:	00 00                	add    BYTE PTR [eax],al
     f94:	00 04 cc             	add    BYTE PTR [esp+ecx*8],al
     f97:	19 d0                	sbb    eax,edx
     f99:	19 01                	sbb    DWORD PTR [ecx],eax
     f9b:	50                   	push   eax
     f9c:	00 00                	add    BYTE PTR [eax],al
     f9e:	00 00                	add    BYTE PTR [eax],al
     fa0:	00 00                	add    BYTE PTR [eax],al
     fa2:	00 04 00             	add    BYTE PTR [eax+eax*1],al
     fa5:	22 02                	and    al,BYTE PTR [edx]
     fa7:	91                   	xchg   ecx,eax
     fa8:	00 04 22             	add    BYTE PTR [edx+eiz*1],al
     fab:	23 01                	and    eax,DWORD PTR [ecx]
     fad:	53                   	push   ebx
     fae:	04 23                	add    al,0x23
     fb0:	25 02 91 00 00       	and    eax,0x9102
     fb5:	01 00                	add    DWORD PTR [eax],eax
     fb7:	04 0b                	add    al,0xb
     fb9:	25 02 91 04 00       	and    eax,0x49102
     fbe:	61                   	popa
     fbf:	07                   	pop    es
     fc0:	00 00                	add    BYTE PTR [eax],al
     fc2:	05 00 04 00 00       	add    eax,0x400
	...
     fcf:	00 04 a6             	add    BYTE PTR [esi+eiz*4],al
     fd2:	11 f8                	adc    eax,edi
     fd4:	11 02                	adc    DWORD PTR [edx],eax
     fd6:	91                   	xchg   ecx,eax
     fd7:	04 04                	add    al,0x4
     fd9:	f8                   	clc
     fda:	11 f9                	adc    ecx,edi
     fdc:	11 02                	adc    DWORD PTR [edx],eax
     fde:	74 08                	je     fe8 <__executable_start-0x80470ac>
     fe0:	04 f9                	add    al,0xf9
     fe2:	11 93 13 02 91 04    	adc    DWORD PTR [ebx+0x4910213],edx
     fe8:	00 00                	add    BYTE PTR [eax],al
     fea:	00 00                	add    BYTE PTR [eax],al
     fec:	00 00                	add    BYTE PTR [eax],al
     fee:	00 04 a6             	add    BYTE PTR [esi+eiz*4],al
     ff1:	11 f8                	adc    eax,edi
     ff3:	11 02                	adc    DWORD PTR [edx],eax
     ff5:	91                   	xchg   ecx,eax
     ff6:	08 04 f8             	or     BYTE PTR [eax+edi*8],al
     ff9:	11 f9                	adc    ecx,edi
     ffb:	11 02                	adc    DWORD PTR [edx],eax
     ffd:	74 0c                	je     100b <__executable_start-0x8047089>
     fff:	04 f9                	add    al,0xf9
    1001:	11 93 13 02 91 08    	adc    DWORD PTR [ebx+0x8910213],edx
    1007:	00 00                	add    BYTE PTR [eax],al
    1009:	00 00                	add    BYTE PTR [eax],al
    100b:	00 00                	add    BYTE PTR [eax],al
    100d:	00 04 da             	add    BYTE PTR [edx+ebx*8],al
    1010:	11 e1                	adc    ecx,esp
    1012:	11 01                	adc    DWORD PTR [ecx],eax
    1014:	50                   	push   eax
    1015:	04 e1                	add    al,0xe1
    1017:	11 ef                	adc    edi,ebp
    1019:	11 01                	adc    DWORD PTR [ecx],eax
    101b:	53                   	push   ebx
    101c:	04 e1                	add    al,0xe1
    101e:	12 93 13 01 53 00    	adc    dl,BYTE PTR [ebx+0x530113]
	...
    102c:	04 e4                	add    al,0xe4
    102e:	11 e9                	adc    ecx,ebp
    1030:	11 01                	adc    DWORD PTR [ecx],eax
    1032:	50                   	push   eax
    1033:	04 e9                	add    al,0xe9
    1035:	11 f2                	adc    edx,esi
    1037:	11 01                	adc    DWORD PTR [ecx],eax
    1039:	56                   	push   esi
    103a:	04 e1                	add    al,0xe1
    103c:	12 e4                	adc    ah,ah
    103e:	12 01                	adc    al,BYTE PTR [ecx]
    1040:	50                   	push   eax
    1041:	04 e4                	add    al,0xe4
    1043:	12 93 13 01 56 00    	adc    dl,BYTE PTR [ebx+0x560113]
    1049:	01 00                	add    DWORD PTR [eax],eax
    104b:	00 00                	add    BYTE PTR [eax],al
    104d:	00 00                	add    BYTE PTR [eax],al
    104f:	00 00                	add    BYTE PTR [eax],al
    1051:	04 e1                	add    al,0xe1
    1053:	12 e4                	adc    ah,ah
    1055:	12 08                	adc    cl,BYTE PTR [eax]
    1057:	70 00                	jo     1059 <__executable_start-0x804703b>
    1059:	20 91 08 06 22 9f    	and    BYTE PTR [ecx-0x60ddf9f8],dl
    105f:	04 e4                	add    al,0xe4
    1061:	12 ec                	adc    ch,ah
    1063:	12 08                	adc    cl,BYTE PTR [eax]
    1065:	76 00                	jbe    1067 <__executable_start-0x804702d>
    1067:	20 91 08 06 22 9f    	and    BYTE PTR [ecx-0x60ddf9f8],dl
    106d:	04 ec                	add    al,0xec
    106f:	12 fd                	adc    bh,ch
    1071:	12 01                	adc    al,BYTE PTR [ecx]
    1073:	50                   	push   eax
    1074:	04 fd                	add    al,0xfd
    1076:	12 93 13 02 91 5c    	adc    dl,BYTE PTR [ebx+0x5c910213]
    107c:	00 00                	add    BYTE PTR [eax],al
    107e:	00 00                	add    BYTE PTR [eax],al
    1080:	00 00                	add    BYTE PTR [eax],al
    1082:	00 04 d2             	add    BYTE PTR [edx+edx*8],al
    1085:	0f 98 10             	sets   BYTE PTR [eax]
    1088:	02 91 04 04 98 10    	add    dl,BYTE PTR [ecx+0x10980404]
    108e:	99                   	cdq
    108f:	10 02                	adc    BYTE PTR [edx],al
    1091:	74 08                	je     109b <__executable_start-0x8046ff9>
    1093:	04 99                	add    al,0x99
    1095:	10 a6 11 02 91 04    	adc    BYTE PTR [esi+0x4910211],ah
    109b:	00 00                	add    BYTE PTR [eax],al
    109d:	00 00                	add    BYTE PTR [eax],al
    109f:	00 00                	add    BYTE PTR [eax],al
    10a1:	00 04 d2             	add    BYTE PTR [edx+edx*8],al
    10a4:	0f 98 10             	sets   BYTE PTR [eax]
    10a7:	02 91 08 04 98 10    	add    dl,BYTE PTR [ecx+0x10980408]
    10ad:	99                   	cdq
    10ae:	10 02                	adc    BYTE PTR [edx],al
    10b0:	74 0c                	je     10be <__executable_start-0x8046fd6>
    10b2:	04 99                	add    al,0x99
    10b4:	10 a6 11 02 91 08    	adc    BYTE PTR [esi+0x8910211],ah
	...
    10c2:	00 00                	add    BYTE PTR [eax],al
    10c4:	00 04 86             	add    BYTE PTR [esi+eax*4],al
    10c7:	10 8a 10 01 50 04    	adc    BYTE PTR [edx+0x4500110],cl
    10cd:	8a 10                	mov    dl,BYTE PTR [eax]
    10cf:	8f                   	(bad)
    10d0:	10 01                	adc    BYTE PTR [ecx],al
    10d2:	53                   	push   ebx
    10d3:	04 8f                	add    al,0x8f
    10d5:	10 99 10 01 50 04    	adc    BYTE PTR [ecx+0x4500110],bl
    10db:	81 11 92 11 01 50    	adc    DWORD PTR [ecx],0x50011192
    10e1:	04 92                	add    al,0x92
    10e3:	11 a6 11 01 53 00    	adc    DWORD PTR [esi+0x530111],esp
    10e9:	01 00                	add    DWORD PTR [eax],eax
    10eb:	00 00                	add    BYTE PTR [eax],al
    10ed:	04 81                	add    al,0x81
    10ef:	11 82 11 03 76 7f    	adc    DWORD PTR [edx+0x7f760311],eax
    10f5:	9f                   	lahf
    10f6:	04 82                	add    al,0x82
    10f8:	11 a6 11 01 56 00    	adc    DWORD PTR [esi+0x560111],esp
    10fe:	02 01                	add    al,BYTE PTR [ecx]
    1100:	00 00                	add    BYTE PTR [eax],al
    1102:	00 00                	add    BYTE PTR [eax],al
    1104:	04 ad                	add    al,0xad
    1106:	0f bd 0f             	bsr    ecx,DWORD PTR [edi]
    1109:	02 30                	add    dh,BYTE PTR [eax]
    110b:	9f                   	lahf
    110c:	04 bf                	add    al,0xbf
    110e:	0f c4 0f 02          	pinsrw mm1,WORD PTR [edi],0x2
    1112:	30 9f 04 c4 0f d2    	xor    BYTE PTR [edi-0x2df03bfc],bl
    1118:	0f 01 50 00          	lgdtd  [eax+0x0]
	...
    1124:	04 f0                	add    al,0xf0
    1126:	0d f7 0d 01 52       	or     eax,0x52010df7
    112b:	04 f7                	add    al,0xf7
    112d:	0d f9 0d 01 50       	or     eax,0x50010df9
    1132:	04 b4                	add    al,0xb4
    1134:	0e                   	push   cs
    1135:	b6 0e                	mov    dh,0xe
    1137:	01 52 04             	add    DWORD PTR [edx+0x4],edx
    113a:	b6 0e                	mov    dh,0xe
    113c:	be 0e 01 50 00       	mov    esi,0x50010e
    1141:	00 00                	add    BYTE PTR [eax],al
    1143:	00 01                	add    BYTE PTR [ecx],al
    1145:	01 00                	add    DWORD PTR [eax],eax
    1147:	00 00                	add    BYTE PTR [eax],al
    1149:	00 01                	add    BYTE PTR [ecx],al
    114b:	01 00                	add    DWORD PTR [eax],eax
    114d:	00 00                	add    BYTE PTR [eax],al
    114f:	04 e2                	add    al,0xe2
    1151:	0c 85                	or     al,0x85
    1153:	0d 02 91 08 04       	or     eax,0x4089102
    1158:	85 0d 85 0d 01 56    	test   DWORD PTR ds:0x56010d85,ecx
    115e:	04 85                	add    al,0x85
    1160:	0d 8e 0d 03 76       	or     eax,0x76030d8e
    1165:	7f 9f                	jg     1106 <__executable_start-0x8046f8e>
    1167:	04 8e                	add    al,0x8e
    1169:	0d 8f 0d 0a 70       	or     eax,0x700a0d8f
    116e:	00 20                	add    BYTE PTR [eax],ah
    1170:	73 00                	jae    1172 <__executable_start-0x8046f22>
    1172:	22 76 00             	and    dh,BYTE PTR [esi+0x0]
    1175:	22 9f 04 8f 0d 92    	and    bl,BYTE PTR [edi-0x6df270fc]
    117b:	0d 09 73 00 70       	or     eax,0x70007309
    1180:	00 1c 76             	add    BYTE PTR [esi+esi*2],bl
    1183:	00 22                	add    BYTE PTR [edx],ah
    1185:	9f                   	lahf
    1186:	04 92                	add    al,0x92
    1188:	0d 96 0d 0a 70       	or     eax,0x700a0d96
    118d:	00 20                	add    BYTE PTR [eax],ah
    118f:	73 00                	jae    1191 <__executable_start-0x8046f03>
    1191:	22 76 00             	and    dh,BYTE PTR [esi+0x0]
    1194:	22 9f 04 9f 0d d5    	and    bl,BYTE PTR [edi-0x2af260fc]
    119a:	0d 02 91 08 00       	or     eax,0x89102
    119f:	01 00                	add    DWORD PTR [eax],eax
    11a1:	00 00                	add    BYTE PTR [eax],al
    11a3:	00 00                	add    BYTE PTR [eax],al
    11a5:	00 00                	add    BYTE PTR [eax],al
    11a7:	04 fd                	add    al,0xfd
    11a9:	0c 8e                	or     al,0x8e
    11ab:	0d 01 53 04 8e       	or     eax,0x8e045301
    11b0:	0d 98 0d 01 50       	or     eax,0x50010d98
    11b5:	04 9f                	add    al,0x9f
    11b7:	0d d0 0d 01 53       	or     eax,0x53010dd0
    11bc:	04 d0                	add    al,0xd0
    11be:	0d d5 0d 02 91       	or     eax,0x91020dd5
	...
    11cf:	00 00                	add    BYTE PTR [eax],al
    11d1:	04 ac                	add    al,0xac
    11d3:	0a dd                	or     bl,ch
    11d5:	0a 02                	or     al,BYTE PTR [edx]
    11d7:	91                   	xchg   ecx,eax
    11d8:	00 04 dd 0a 99 0b 01 	add    BYTE PTR [ebx*8+0x10b990a],al
    11df:	56                   	push   esi
    11e0:	04 99                	add    al,0x99
    11e2:	0b 81 0c 02 91 00    	or     eax,DWORD PTR [ecx+0x91020c]
    11e8:	04 81                	add    al,0x81
    11ea:	0c a1                	or     al,0xa1
    11ec:	0c 01                	or     al,0x1
    11ee:	56                   	push   esi
    11ef:	04 ae                	add    al,0xae
    11f1:	0c b0                	or     al,0xb0
    11f3:	0c 01                	or     al,0x1
    11f5:	56                   	push   esi
    11f6:	04 b0                	add    al,0xb0
    11f8:	0c e2                	or     al,0xe2
    11fa:	0c 01                	or     al,0x1
    11fc:	53                   	push   ebx
    11fd:	00 00                	add    BYTE PTR [eax],al
    11ff:	00 00                	add    BYTE PTR [eax],al
    1201:	00 00                	add    BYTE PTR [eax],al
    1203:	00 04 d4             	add    BYTE PTR [esp+edx*8],al
    1206:	0e                   	push   cs
    1207:	d7                   	xlat   BYTE PTR ds:[ebx]
    1208:	0e                   	push   cs
    1209:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    120c:	d7                   	xlat   BYTE PTR ds:[ebx]
    120d:	0e                   	push   cs
    120e:	e7 0e                	out    0xe,eax
    1210:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
    1213:	a0 0f a7 0f 01       	mov    al,ds:0x10fa70f
    1218:	53                   	push   ebx
    1219:	00 00                	add    BYTE PTR [eax],al
    121b:	00 00                	add    BYTE PTR [eax],al
    121d:	00 00                	add    BYTE PTR [eax],al
    121f:	00 04 df             	add    BYTE PTR [edi+ebx*8],al
    1222:	0e                   	push   cs
    1223:	ef                   	out    dx,eax
    1224:	0e                   	push   cs
    1225:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    1228:	ef                   	out    dx,eax
    1229:	0e                   	push   cs
    122a:	96                   	xchg   esi,eax
    122b:	0f 01 57 04          	lgdtd  [edi+0x4]
    122f:	a0 0f a7 0f 01       	mov    al,ds:0x10fa70f
    1234:	50                   	push   eax
    1235:	00 00                	add    BYTE PTR [eax],al
    1237:	00 00                	add    BYTE PTR [eax],al
    1239:	00 04 e5 0e ef 0e 02 	add    BYTE PTR [eiz*8+0x20eef0e],al
    1240:	30 9f 04 ef 0e 96    	xor    BYTE PTR [edi-0x69f110fc],bl
    1246:	0f 01 53 00          	lgdtd  [ebx+0x0]
    124a:	02 00                	add    al,BYTE PTR [eax]
    124c:	00 00                	add    BYTE PTR [eax],al
    124e:	00 00                	add    BYTE PTR [eax],al
    1250:	04 f3                	add    al,0xf3
    1252:	09 ff                	or     edi,edi
    1254:	09 02                	or     DWORD PTR [edx],eax
    1256:	30 9f 04 ff 09 9b    	xor    BYTE PTR [edi-0x64f600fc],bl
    125c:	0a 01                	or     al,BYTE PTR [ecx]
    125e:	53                   	push   ebx
    125f:	04 a5                	add    al,0xa5
    1261:	0a ac 0a 02 30 9f 00 	or     ch,BYTE PTR [edx+ecx*1+0x9f3002]
    1268:	00 00                	add    BYTE PTR [eax],al
    126a:	00 00                	add    BYTE PTR [eax],al
    126c:	00 00                	add    BYTE PTR [eax],al
    126e:	04 b4                	add    al,0xb4
    1270:	09 cb                	or     ebx,ecx
    1272:	09 02                	or     DWORD PTR [edx],eax
    1274:	91                   	xchg   ecx,eax
    1275:	00 04 cb             	add    BYTE PTR [ebx+ecx*8],al
    1278:	09 da                	or     edx,ebx
    127a:	09 01                	or     DWORD PTR [ecx],eax
    127c:	50                   	push   eax
    127d:	04 dd                	add    al,0xdd
    127f:	09 e4                	or     esp,esp
    1281:	09 01                	or     DWORD PTR [ecx],eax
    1283:	50                   	push   eax
    1284:	00 00                	add    BYTE PTR [eax],al
    1286:	00 00                	add    BYTE PTR [eax],al
    1288:	00 00                	add    BYTE PTR [eax],al
    128a:	00 04 bf             	add    BYTE PTR [edi+edi*4],al
    128d:	09 db                	or     ebx,ebx
    128f:	09 01                	or     DWORD PTR [ecx],eax
    1291:	53                   	push   ebx
    1292:	04 db                	add    al,0xdb
    1294:	09 dd                	or     ebp,ebx
    1296:	09 02                	or     DWORD PTR [edx],eax
    1298:	91                   	xchg   ecx,eax
    1299:	04 04                	add    al,0x4
    129b:	dd 09                	fisttp QWORD PTR [ecx]
    129d:	e4 09                	in     al,0x9
    129f:	01 53 00             	add    DWORD PTR [ebx+0x0],edx
    12a2:	01 00                	add    DWORD PTR [eax],eax
    12a4:	00 00                	add    BYTE PTR [eax],al
    12a6:	00 00                	add    BYTE PTR [eax],al
    12a8:	04 bf                	add    al,0xbf
    12aa:	09 cb                	or     ebx,ecx
    12ac:	09 02                	or     DWORD PTR [edx],eax
    12ae:	30 9f 04 cb 09 d8    	xor    BYTE PTR [edi-0x27f634fc],bl
    12b4:	09 01                	or     DWORD PTR [ecx],eax
    12b6:	51                   	push   ecx
    12b7:	04 dd                	add    al,0xdd
    12b9:	09 e4                	or     esp,esp
    12bb:	09 02                	or     DWORD PTR [edx],eax
    12bd:	30 9f 00 00 01 01    	xor    BYTE PTR [edi+0x1010000],bl
    12c3:	00 04 f2             	add    BYTE PTR [edx+esi*8],al
    12c6:	08 80 09 02 91 00    	or     BYTE PTR [eax+0x910209],al
    12cc:	04 80                	add    al,0x80
    12ce:	09 b1 09 01 53 00    	or     DWORD PTR [ecx+0x530109],esi
    12d4:	02 00                	add    al,BYTE PTR [eax]
    12d6:	00 00                	add    BYTE PTR [eax],al
    12d8:	00 00                	add    BYTE PTR [eax],al
    12da:	04 b9                	add    al,0xb9
    12dc:	08 c5                	or     ch,al
    12de:	08 02                	or     BYTE PTR [edx],al
    12e0:	30 9f 04 c5 08 e1    	xor    BYTE PTR [edi-0x1ef73afc],bl
    12e6:	08 01                	or     BYTE PTR [ecx],al
    12e8:	53                   	push   ebx
    12e9:	04 eb                	add    al,0xeb
    12eb:	08 f2                	or     dl,dh
    12ed:	08 02                	or     BYTE PTR [edx],al
    12ef:	30 9f 00 00 00 00    	xor    BYTE PTR [edi+0x0],bl
    12f5:	00 00                	add    BYTE PTR [eax],al
    12f7:	00 00                	add    BYTE PTR [eax],al
    12f9:	00 04 b6             	add    BYTE PTR [esi+esi*4],al
    12fc:	07                   	pop    es
    12fd:	d5 07                	aad    0x7
    12ff:	02 91 00 04 d5 07    	add    dl,BYTE PTR [ecx+0x7d50400]
    1305:	ea 07 01 50 04 ea 07 	jmp    0x7ea:0x4500107
    130c:	9e                   	sahf
    130d:	08 02                	or     BYTE PTR [edx],al
    130f:	91                   	xchg   ecx,eax
    1310:	00 04 9e             	add    BYTE PTR [esi+ebx*4],al
    1313:	08 a3 08 01 50 00    	or     BYTE PTR [ebx+0x500108],ah
    1319:	00 00                	add    BYTE PTR [eax],al
    131b:	00 00                	add    BYTE PTR [eax],al
    131d:	04 b6                	add    al,0xb6
    131f:	07                   	pop    es
    1320:	a9 08 02 91 04       	test   eax,0x4910208
    1325:	04 a9                	add    al,0xa9
    1327:	08 aa 08 02 74 08    	or     BYTE PTR [edx+0x8740208],ch
    132d:	00 00                	add    BYTE PTR [eax],al
    132f:	00 00                	add    BYTE PTR [eax],al
    1331:	00 00                	add    BYTE PTR [eax],al
    1333:	00 04 d1             	add    BYTE PTR [ecx+edx*8],al
    1336:	07                   	pop    es
    1337:	9d                   	popf
    1338:	08 01                	or     BYTE PTR [ecx],al
    133a:	51                   	push   ecx
    133b:	04 9d                	add    al,0x9d
    133d:	08 9e 08 02 91 04    	or     BYTE PTR [esi+0x4910208],bl
    1343:	04 9e                	add    al,0x9e
    1345:	08 aa 08 01 51 00    	or     BYTE PTR [edx+0x510108],ch
    134b:	00 00                	add    BYTE PTR [eax],al
    134d:	00 00                	add    BYTE PTR [eax],al
    134f:	00 00                	add    BYTE PTR [eax],al
    1351:	04 b7                	add    al,0xb7
    1353:	06                   	push   es
    1354:	f8                   	clc
    1355:	06                   	push   es
    1356:	02 91 04 04 f8 06    	add    dl,BYTE PTR [ecx+0x6f80404]
    135c:	f9                   	stc
    135d:	06                   	push   es
    135e:	02 74 08 04          	add    dh,BYTE PTR [eax+ecx*1+0x4]
    1362:	f9                   	stc
    1363:	06                   	push   es
    1364:	b6 07                	mov    dh,0x7
    1366:	02 91 04 00 00 00    	add    dl,BYTE PTR [ecx+0x4]
    136c:	00 01                	add    BYTE PTR [ecx],al
    136e:	01 00                	add    DWORD PTR [eax],eax
    1370:	00 00                	add    BYTE PTR [eax],al
    1372:	00 01                	add    BYTE PTR [ecx],al
    1374:	01 00                	add    DWORD PTR [eax],eax
    1376:	00 00                	add    BYTE PTR [eax],al
    1378:	00 00                	add    BYTE PTR [eax],al
    137a:	04 b7                	add    al,0xb7
    137c:	06                   	push   es
    137d:	dd 06                	fld    QWORD PTR [esi]
    137f:	02 91 08 04 dd 06    	add    dl,BYTE PTR [ecx+0x6dd0408]
    1385:	dd 06                	fld    QWORD PTR [esi]
    1387:	01 53 04             	add    DWORD PTR [ebx+0x4],edx
    138a:	dd 06                	fld    QWORD PTR [esi]
    138c:	e4 06                	in     al,0x6
    138e:	03 73 7f             	add    esi,DWORD PTR [ebx+0x7f]
    1391:	9f                   	lahf
    1392:	04 e4                	add    al,0xe4
    1394:	06                   	push   es
    1395:	e9 06 0b 70 00       	jmp    701ea0 <__executable_start-0x79461f4>
    139a:	20 91 00 06 22 73    	and    BYTE PTR [ecx+0x73220600],dl
    13a0:	00 22                	add    BYTE PTR [edx],ah
    13a2:	9f                   	lahf
    13a3:	04 e9                	add    al,0xe9
    13a5:	06                   	push   es
    13a6:	e9 06 0a 91 00       	jmp    911db1 <__executable_start-0x77362e3>
    13ab:	06                   	push   es
    13ac:	70 00                	jo     13ae <__executable_start-0x8046ce6>
    13ae:	1c 73                	sbb    al,0x73
    13b0:	00 22                	add    BYTE PTR [edx],ah
    13b2:	9f                   	lahf
    13b3:	04 e9                	add    al,0xe9
    13b5:	06                   	push   es
    13b6:	f2 06                	repnz push es
    13b8:	0b 70 00             	or     esi,DWORD PTR [eax+0x0]
    13bb:	20 91 00 06 22 73    	and    BYTE PTR [ecx+0x73220600],dl
    13c1:	00 22                	add    BYTE PTR [edx],ah
    13c3:	9f                   	lahf
    13c4:	04 f9                	add    al,0xf9
    13c6:	06                   	push   es
    13c7:	80 07 03             	add    BYTE PTR [edi],0x3
    13ca:	73 7f                	jae    144b <__executable_start-0x8046c49>
    13cc:	9f                   	lahf
    13cd:	04 80                	add    al,0x80
    13cf:	07                   	pop    es
    13d0:	b6 07                	mov    dh,0x7
    13d2:	02 91 08 00 01 00    	add    dl,BYTE PTR [ecx+0x10008]
	...
    13e0:	04 d1                	add    al,0xd1
    13e2:	06                   	push   es
    13e3:	f2 06                	repnz push es
    13e5:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    13e8:	f9                   	stc
    13e9:	06                   	push   es
    13ea:	fe 06                	inc    BYTE PTR [esi]
    13ec:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    13ef:	fe 06                	inc    BYTE PTR [esi]
    13f1:	80 07 02             	add    BYTE PTR [edi],0x2
    13f4:	91                   	xchg   ecx,eax
    13f5:	00 04 80             	add    BYTE PTR [eax+eax*4],al
    13f8:	07                   	pop    es
    13f9:	86 07                	xchg   BYTE PTR [edi],al
    13fb:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    13fe:	86 07                	xchg   BYTE PTR [edi],al
    1400:	b6 07                	mov    dh,0x7
    1402:	02 91 00 00 00 00    	add    dl,BYTE PTR [ecx+0x0]
    1408:	00 00                	add    BYTE PTR [eax],al
    140a:	04 d5                	add    al,0xd5
    140c:	06                   	push   es
    140d:	b5 07                	mov    ch,0x7
    140f:	01 52 04             	add    DWORD PTR [edx+0x4],edx
    1412:	b5 07                	mov    ch,0x7
    1414:	b6 07                	mov    dh,0x7
    1416:	02 91 04 00 00 00    	add    dl,BYTE PTR [ecx+0x4]
    141c:	00 00                	add    BYTE PTR [eax],al
    141e:	00 00                	add    BYTE PTR [eax],al
    1420:	04 fc                	add    al,0xfc
    1422:	04 ce                	add    al,0xce
    1424:	05 02 91 04 04       	add    eax,0x4049102
    1429:	ce                   	into
    142a:	05 cf 05 02 74       	add    eax,0x740205cf
    142f:	08 04 cf             	or     BYTE PTR [edi+ecx*8],al
    1432:	05 b7 06 02 91       	add    eax,0x910206b7
    1437:	04 00                	add    al,0x0
    1439:	01 00                	add    DWORD PTR [eax],eax
	...
    1443:	04 96                	add    al,0x96
    1445:	05 b5 05 01 51       	add    eax,0x510105b5
    144a:	04 cf                	add    al,0xcf
    144c:	05 82 06 01 51       	add    eax,0x51010682
    1451:	04 82                	add    al,0x82
    1453:	06                   	push   es
    1454:	83 06 02             	add    DWORD PTR [esi],0x2
    1457:	91                   	xchg   ecx,eax
    1458:	00 04 83             	add    BYTE PTR [ebx+eax*4],al
    145b:	06                   	push   es
    145c:	b6 06                	mov    dh,0x6
    145e:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
    1461:	b6 06                	mov    dh,0x6
    1463:	b7 06                	mov    bh,0x6
    1465:	02 91 00 00 02 00    	add    dl,BYTE PTR [ecx+0x20000]
	...
    1473:	04 96                	add    al,0x96
    1475:	05 ba 05 01 52       	add    eax,0x520105ba
    147a:	04 cf                	add    al,0xcf
    147c:	05 82 06 01 52       	add    eax,0x52010682
    1481:	04 82                	add    al,0x82
    1483:	06                   	push   es
    1484:	83 06 02             	add    DWORD PTR [esi],0x2
    1487:	91                   	xchg   ecx,eax
    1488:	04 04                	add    al,0x4
    148a:	83 06 b6             	add    DWORD PTR [esi],0xffffffb6
    148d:	06                   	push   es
    148e:	01 52 04             	add    DWORD PTR [edx+0x4],edx
    1491:	b6 06                	mov    dh,0x6
    1493:	b7 06                	mov    bh,0x6
    1495:	02 91 04 00 00 00    	add    dl,BYTE PTR [ecx+0x4]
    149b:	00 01                	add    BYTE PTR [ecx],al
    149d:	01 00                	add    DWORD PTR [eax],eax
	...
    14a7:	00 00                	add    BYTE PTR [eax],al
    14a9:	04 a7                	add    al,0xa7
    14ab:	03 d8                	add    ebx,eax
    14ad:	03 02                	add    eax,DWORD PTR [edx]
    14af:	91                   	xchg   ecx,eax
    14b0:	08 04 d8             	or     BYTE PTR [eax+ebx*8],al
    14b3:	03 d8                	add    ebx,eax
    14b5:	03 01                	add    eax,DWORD PTR [ecx]
    14b7:	51                   	push   ecx
    14b8:	04 d8                	add    al,0xd8
    14ba:	03 df                	add    ebx,edi
    14bc:	03 03                	add    eax,DWORD PTR [ebx]
    14be:	71 7f                	jno    153f <__executable_start-0x8046b55>
    14c0:	9f                   	lahf
    14c1:	04 df                	add    al,0xdf
    14c3:	03 fa                	add    edi,edx
    14c5:	03 06                	add    eax,DWORD PTR [esi]
    14c7:	91                   	xchg   ecx,eax
    14c8:	08 06                	or     BYTE PTR [esi],al
    14ca:	31 1c 9f             	xor    DWORD PTR [edi+ebx*4],ebx
    14cd:	04 fa                	add    al,0xfa
    14cf:	03 b0 04 02 91 08    	add    esi,DWORD PTR [eax+0x8910204]
    14d5:	04 b0                	add    al,0xb0
    14d7:	04 b7                	add    al,0xb7
    14d9:	04 03                	add    al,0x3
    14db:	71 7f                	jno    155c <__executable_start-0x8046b38>
    14dd:	9f                   	lahf
    14de:	04 b7                	add    al,0xb7
    14e0:	04 ed                	add    al,0xed
    14e2:	04 02                	add    al,0x2
    14e4:	91                   	xchg   ecx,eax
    14e5:	08 04 ed 04 f5 04 06 	or     BYTE PTR [ebp*8+0x604f504],al
    14ec:	91                   	xchg   ecx,eax
    14ed:	08 06                	or     BYTE PTR [esi],al
    14ef:	31 1c 9f             	xor    DWORD PTR [edi+ebx*4],ebx
    14f2:	00 01                	add    BYTE PTR [ecx],al
	...
    1500:	00 00                	add    BYTE PTR [eax],al
    1502:	00 04 c3             	add    BYTE PTR [ebx+eax*8],al
    1505:	03 f8                	add    edi,eax
    1507:	03 01                	add    eax,DWORD PTR [ecx]
    1509:	50                   	push   eax
    150a:	04 fa                	add    al,0xfa
    150c:	03 80 04 01 50 04    	add    eax,DWORD PTR [eax+0x4500104]
    1512:	80 04 b0 04          	add    BYTE PTR [eax+esi*4],0x4
    1516:	02 91 00 04 b0 04    	add    dl,BYTE PTR [ecx+0x4b00400]
    151c:	b5 04                	mov    ch,0x4
    151e:	01 50 04             	add    DWORD PTR [eax+0x4],edx
    1521:	b5 04                	mov    ch,0x4
    1523:	b7 04                	mov    bh,0x4
    1525:	02 91 00 04 b7 04    	add    dl,BYTE PTR [ecx+0x4b70400]
    152b:	bd 04 01 50 04       	mov    ebp,0x4500104
    1530:	bd 04 ed 04 02       	mov    ebp,0x204ed04
    1535:	91                   	xchg   ecx,eax
    1536:	00 04 ed 04 f1 04 01 	add    BYTE PTR [ebp*8+0x104f104],al
    153d:	50                   	push   eax
    153e:	00 02                	add    BYTE PTR [edx],al
	...
    1548:	00 04 c3             	add    BYTE PTR [ebx+eax*8],al
    154b:	03 af 04 01 52 04    	add    ebp,DWORD PTR [edi+0x4520104]
    1551:	af                   	scas   eax,DWORD PTR es:[edi]
    1552:	04 b0                	add    al,0xb0
    1554:	04 02                	add    al,0x2
    1556:	91                   	xchg   ecx,eax
    1557:	04 04                	add    al,0x4
    1559:	b0 04                	mov    al,0x4
    155b:	ec                   	in     al,dx
    155c:	04 01                	add    al,0x1
    155e:	52                   	push   edx
    155f:	04 ec                	add    al,0xec
    1561:	04 ed                	add    al,0xed
    1563:	04 02                	add    al,0x2
    1565:	91                   	xchg   ecx,eax
    1566:	04 04                	add    al,0x4
    1568:	ed                   	in     eax,dx
    1569:	04 fc                	add    al,0xfc
    156b:	04 01                	add    al,0x1
    156d:	52                   	push   edx
    156e:	00 00                	add    BYTE PTR [eax],al
    1570:	00 00                	add    BYTE PTR [eax],al
    1572:	01 01                	add    DWORD PTR [ecx],eax
    1574:	00 00                	add    BYTE PTR [eax],al
    1576:	00 00                	add    BYTE PTR [eax],al
    1578:	03 03                	add    eax,DWORD PTR [ebx]
    157a:	00 00                	add    BYTE PTR [eax],al
    157c:	00 04 be             	add    BYTE PTR [esi+edi*4],al
    157f:	01 fa                	add    edx,edi
    1581:	01 02                	add    DWORD PTR [edx],eax
    1583:	91                   	xchg   ecx,eax
    1584:	08 04 fa             	or     BYTE PTR [edx+edi*8],al
    1587:	01 fa                	add    edx,edi
    1589:	01 01                	add    DWORD PTR [ecx],eax
    158b:	53                   	push   ebx
    158c:	04 fa                	add    al,0xfa
    158e:	01 85 02 03 73 7f    	add    DWORD PTR [ebp+0x7f730302],eax
    1594:	9f                   	lahf
    1595:	04 85                	add    al,0x85
    1597:	02 94 02 06 91 08 06 	add    dl,BYTE PTR [edx+eax*1+0x6089106]
    159e:	31 1c 9f             	xor    DWORD PTR [edi+ebx*4],ebx
    15a1:	04 9b                	add    al,0x9b
    15a3:	02 87 03 02 91 08    	add    al,BYTE PTR [edi+0x8910203]
    15a9:	04 87                	add    al,0x87
    15ab:	03 8a 03 01 53 04    	add    ecx,DWORD PTR [edx+0x4530103]
    15b1:	8a 03                	mov    al,BYTE PTR [ebx]
    15b3:	a7                   	cmps   DWORD PTR ds:[esi],DWORD PTR es:[edi]
    15b4:	03 01                	add    eax,DWORD PTR [ecx]
    15b6:	52                   	push   edx
    15b7:	00 01                	add    BYTE PTR [ecx],al
	...
    15c1:	01 01                	add    DWORD PTR [ecx],eax
    15c3:	00 00                	add    BYTE PTR [eax],al
    15c5:	01 01                	add    DWORD PTR [ecx],eax
    15c7:	00 00                	add    BYTE PTR [eax],al
    15c9:	00 00                	add    BYTE PTR [eax],al
    15cb:	00 00                	add    BYTE PTR [eax],al
    15cd:	00 04 da             	add    BYTE PTR [edx+ebx*8],al
    15d0:	01 a1 02 01 50 04    	add    DWORD PTR [ecx+0x4500102],esp
    15d6:	a1 02 d1 02 02       	mov    eax,ds:0x202d102
    15db:	91                   	xchg   ecx,eax
    15dc:	00 04 d1             	add    BYTE PTR [ecx+edx*8],al
    15df:	02 d7                	add    dl,bh
    15e1:	02 01                	add    al,BYTE PTR [ecx]
    15e3:	50                   	push   eax
    15e4:	04 d7                	add    al,0xd7
    15e6:	02 87 03 02 91 00    	add    al,BYTE PTR [edi+0x910203]
    15ec:	04 87                	add    al,0x87
    15ee:	03 87 03 01 50 04    	add    eax,DWORD PTR [edi+0x4500103]
    15f4:	87 03                	xchg   DWORD PTR [ebx],eax
    15f6:	8e 03                	mov    es,WORD PTR [ebx]
    15f8:	06                   	push   es
    15f9:	70 00                	jo     15fb <__executable_start-0x8046a99>
    15fb:	73 00                	jae    15fd <__executable_start-0x8046a97>
    15fd:	22 9f 04 8e 03 8e    	and    bl,BYTE PTR [edi-0x71fc71fc]
    1603:	03 08                	add    ecx,DWORD PTR [eax]
    1605:	70 00                	jo     1607 <__executable_start-0x8046a8d>
    1607:	72 00                	jb     1609 <__executable_start-0x8046a8b>
    1609:	22 23                	and    ah,BYTE PTR [ebx]
    160b:	01 9f 04 8e 03 96    	add    DWORD PTR [edi-0x69fc71fc],ebx
    1611:	03 06                	add    eax,DWORD PTR [esi]
    1613:	70 00                	jo     1615 <__executable_start-0x8046a7f>
    1615:	72 00                	jb     1617 <__executable_start-0x8046a7d>
    1617:	22 9f 04 96 03 a0    	and    bl,BYTE PTR [edi-0x5ffc69fc]
    161d:	03 08                	add    ecx,DWORD PTR [eax]
    161f:	70 00                	jo     1621 <__executable_start-0x8046a73>
    1621:	72 00                	jb     1623 <__executable_start-0x8046a71>
    1623:	22 23                	and    ah,BYTE PTR [ebx]
    1625:	01 9f 04 a0 03 a2    	add    DWORD PTR [edi-0x5dfc5ffc],ebx
    162b:	03 06                	add    eax,DWORD PTR [esi]
    162d:	70 00                	jo     162f <__executable_start-0x8046a65>
    162f:	73 00                	jae    1631 <__executable_start-0x8046a63>
    1631:	22 9f 04 a2 03 a7    	and    bl,BYTE PTR [edi-0x58fc5dfc]
    1637:	03 07                	add    eax,DWORD PTR [edi]
    1639:	91                   	xchg   ecx,eax
    163a:	00 06                	add    BYTE PTR [esi],al
    163c:	73 00                	jae    163e <__executable_start-0x8046a56>
    163e:	22 9f 00 02 00 00    	and    bl,BYTE PTR [edi+0x200]
	...
    164c:	02 02                	add    al,BYTE PTR [edx]
    164e:	00 00                	add    BYTE PTR [eax],al
    1650:	01 01                	add    DWORD PTR [ecx],eax
    1652:	00 00                	add    BYTE PTR [eax],al
    1654:	00 00                	add    BYTE PTR [eax],al
    1656:	00 04 da             	add    BYTE PTR [edx+ebx*8],al
    1659:	01 94 02 01 51 04 9b 	add    DWORD PTR [edx+eax*1-0x64fbaeff],edx
    1660:	02 d0                	add    dl,al
    1662:	02 01                	add    al,BYTE PTR [ecx]
    1664:	51                   	push   ecx
    1665:	04 d0                	add    al,0xd0
    1667:	02 d1                	add    dl,cl
    1669:	02 02                	add    al,BYTE PTR [edx]
    166b:	91                   	xchg   ecx,eax
    166c:	04 04                	add    al,0x4
    166e:	d1 02                	rol    DWORD PTR [edx],1
    1670:	86 03                	xchg   BYTE PTR [ebx],al
    1672:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
    1675:	86 03                	xchg   BYTE PTR [ebx],al
    1677:	87 03                	xchg   DWORD PTR [ebx],eax
    1679:	02 91 04 04 87 03    	add    dl,BYTE PTR [ecx+0x3870404]
    167f:	87 03                	xchg   DWORD PTR [ebx],eax
    1681:	01 51 04             	add    DWORD PTR [ecx+0x4],edx
    1684:	87 03                	xchg   DWORD PTR [ebx],eax
    1686:	8e 03                	mov    es,WORD PTR [ebx]
    1688:	06                   	push   es
    1689:	71 00                	jno    168b <__executable_start-0x8046a09>
    168b:	73 00                	jae    168d <__executable_start-0x8046a07>
    168d:	22 9f 04 8e 03 8e    	and    bl,BYTE PTR [edi-0x71fc71fc]
    1693:	03 08                	add    ecx,DWORD PTR [eax]
    1695:	71 00                	jno    1697 <__executable_start-0x80469fd>
    1697:	72 00                	jb     1699 <__executable_start-0x80469fb>
    1699:	22 23                	and    ah,BYTE PTR [ebx]
    169b:	01 9f 04 8e 03 96    	add    DWORD PTR [edi-0x69fc71fc],ebx
    16a1:	03 06                	add    eax,DWORD PTR [esi]
    16a3:	71 00                	jno    16a5 <__executable_start-0x80469ef>
    16a5:	72 00                	jb     16a7 <__executable_start-0x80469ed>
    16a7:	22 9f 04 96 03 a0    	and    bl,BYTE PTR [edi-0x5ffc69fc]
    16ad:	03 08                	add    ecx,DWORD PTR [eax]
    16af:	71 00                	jno    16b1 <__executable_start-0x80469e3>
    16b1:	72 00                	jb     16b3 <__executable_start-0x80469e1>
    16b3:	22 23                	and    ah,BYTE PTR [ebx]
    16b5:	01 9f 04 a0 03 a7    	add    DWORD PTR [edi-0x58fc5ffc],ebx
    16bb:	03 06                	add    eax,DWORD PTR [esi]
    16bd:	71 00                	jno    16bf <__executable_start-0x80469d5>
    16bf:	73 00                	jae    16c1 <__executable_start-0x80469d3>
    16c1:	22 9f 00 00 00 00    	and    bl,BYTE PTR [edi+0x0]
    16c7:	01 01                	add    DWORD PTR [ecx],eax
    16c9:	00 00                	add    BYTE PTR [eax],al
    16cb:	00 04 00             	add    BYTE PTR [eax+eax*1],al
    16ce:	32 02                	xor    al,BYTE PTR [edx]
    16d0:	91                   	xchg   ecx,eax
    16d1:	08 04 32             	or     BYTE PTR [edx+esi*1],al
    16d4:	32 01                	xor    al,BYTE PTR [ecx]
    16d6:	56                   	push   esi
    16d7:	04 32                	add    al,0x32
    16d9:	48                   	dec    eax
    16da:	03 76 7f             	add    esi,DWORD PTR [esi+0x7f]
    16dd:	9f                   	lahf
    16de:	04 52                	add    al,0x52
    16e0:	be 01 02 91 08       	mov    esi,0x8910201
    16e5:	00 01                	add    BYTE PTR [ecx],al
    16e7:	00 00                	add    BYTE PTR [eax],al
    16e9:	00 00                	add    BYTE PTR [eax],al
    16eb:	00 04 1d 3b 01 57 04 	add    BYTE PTR [ebx*1+0x457013b],al
    16f2:	3b 4a 01             	cmp    ecx,DWORD PTR [edx+0x1]
    16f5:	50                   	push   eax
    16f6:	04 52                	add    al,0x52
    16f8:	be 01 01 57 00       	mov    esi,0x570101
    16fd:	02 00                	add    al,BYTE PTR [eax]
    16ff:	00 00                	add    BYTE PTR [eax],al
    1701:	00 00                	add    BYTE PTR [eax],al
    1703:	00 00                	add    BYTE PTR [eax],al
    1705:	04 1d                	add    al,0x1d
    1707:	87 01                	xchg   DWORD PTR [ecx],eax
    1709:	01 52 04             	add    DWORD PTR [edx+0x4],edx
    170c:	87 01                	xchg   DWORD PTR [ecx],eax
    170e:	88 01                	mov    BYTE PTR [ecx],al
    1710:	02 91 04 04 88 01    	add    dl,BYTE PTR [ecx+0x1880404]
    1716:	bd 01 01 52 04       	mov    ebp,0x4520101
    171b:	bd 01 be 01 02       	mov    ebp,0x201be01
    1720:	91                   	xchg   ecx,eax
    1721:	04 00                	add    al,0x0
    1723:	15 03 00 00 05       	adc    eax,0x5000003
    1728:	00 04 00             	add    BYTE PTR [eax+eax*1],al
	...
    1733:	04 ac                	add    al,0xac
    1735:	05 91 06 02 91       	add    eax,0x91020691
    173a:	08 04 91             	or     BYTE PTR [ecx+edx*4],al
    173d:	06                   	push   es
    173e:	92                   	xchg   edx,eax
    173f:	06                   	push   es
    1740:	02 74 0c 00          	add    dh,BYTE PTR [esp+ecx*1+0x0]
    1744:	00 00                	add    BYTE PTR [eax],al
    1746:	00 00                	add    BYTE PTR [eax],al
    1748:	04 ac                	add    al,0xac
    174a:	05 91 06 02 91       	add    eax,0x91020691
    174f:	10 04 91             	adc    BYTE PTR [ecx+edx*4],al
    1752:	06                   	push   es
    1753:	92                   	xchg   edx,eax
    1754:	06                   	push   es
    1755:	02 74 14 00          	add    dh,BYTE PTR [esp+edx*1+0x0]
	...
    1761:	00 00                	add    BYTE PTR [eax],al
    1763:	04 db                	add    al,0xdb
    1765:	05 e3 05 06 50       	add    eax,0x500605e3
    176a:	93                   	xchg   ebx,eax
    176b:	04 52                	add    al,0x52
    176d:	93                   	xchg   ebx,eax
    176e:	04 04                	add    al,0x4
    1770:	e3 05                	jecxz  1777 <__executable_start-0x804691d>
    1772:	ee                   	out    dx,al
    1773:	05 06 56 93 04       	add    eax,0x4935606
    1778:	52                   	push   edx
    1779:	93                   	xchg   ebx,eax
    177a:	04 04                	add    al,0x4
    177c:	ee                   	out    dx,al
    177d:	05 8b 06 07 56       	add    eax,0x5607068b
    1782:	93                   	xchg   ebx,eax
    1783:	04 91                	add    al,0x91
    1785:	5c                   	pop    esp
    1786:	93                   	xchg   ebx,eax
    1787:	04 04                	add    al,0x4
    1789:	8b 06                	mov    eax,DWORD PTR [esi]
    178b:	91                   	xchg   ecx,eax
    178c:	06                   	push   es
    178d:	07                   	pop    es
    178e:	50                   	push   eax
    178f:	93                   	xchg   ebx,eax
    1790:	04 91                	add    al,0x91
    1792:	5c                   	pop    esp
    1793:	93                   	xchg   ebx,eax
    1794:	04 04                	add    al,0x4
    1796:	91                   	xchg   ecx,eax
    1797:	06                   	push   es
    1798:	92                   	xchg   edx,eax
    1799:	06                   	push   es
    179a:	06                   	push   es
    179b:	50                   	push   eax
    179c:	93                   	xchg   ebx,eax
    179d:	04 52                	add    al,0x52
    179f:	93                   	xchg   ebx,eax
    17a0:	04 00                	add    al,0x0
    17a2:	00 00                	add    BYTE PTR [eax],al
    17a4:	00 00                	add    BYTE PTR [eax],al
    17a6:	04 ee                	add    al,0xee
    17a8:	04 ab                	add    al,0xab
    17aa:	05 02 91 08 04       	add    eax,0x4089102
    17af:	ab                   	stos   DWORD PTR es:[edi],eax
    17b0:	05 ac 05 02 74       	add    eax,0x740205ac
    17b5:	0c 00                	or     al,0x0
    17b7:	01 00                	add    DWORD PTR [eax],eax
    17b9:	04 80                	add    al,0x80
    17bb:	05 94 05 07 56       	add    eax,0x56070594
    17c0:	93                   	xchg   ebx,eax
    17c1:	04 91                	add    al,0x91
    17c3:	0c 93                	or     al,0x93
    17c5:	04 00                	add    al,0x0
    17c7:	01 00                	add    DWORD PTR [eax],eax
    17c9:	04 80                	add    al,0x80
    17cb:	05 94 05 07 53       	add    eax,0x53070594
    17d0:	93                   	xchg   ebx,eax
    17d1:	04 91                	add    al,0x91
    17d3:	04 93                	add    al,0x93
    17d5:	04 00                	add    al,0x0
    17d7:	00 00                	add    BYTE PTR [eax],al
    17d9:	00 00                	add    BYTE PTR [eax],al
    17db:	04 cc                	add    al,0xcc
    17dd:	04 ed                	add    al,0xed
    17df:	04 02                	add    al,0x2
    17e1:	91                   	xchg   ecx,eax
    17e2:	08 04 ed 04 ee 04 02 	or     BYTE PTR [ebp*8+0x204ee04],al
    17e9:	74 0c                	je     17f7 <__executable_start-0x804689d>
    17eb:	00 00                	add    BYTE PTR [eax],al
    17ed:	00 00                	add    BYTE PTR [eax],al
    17ef:	00 00                	add    BYTE PTR [eax],al
    17f1:	00 04 cc             	add    BYTE PTR [esp+ecx*8],al
    17f4:	03 b3 04 02 91 08    	add    esi,DWORD PTR [ebx+0x8910204]
    17fa:	04 b3                	add    al,0xb3
    17fc:	04 b4                	add    al,0xb4
    17fe:	04 02                	add    al,0x2
    1800:	74 0c                	je     180e <__executable_start-0x8046886>
    1802:	04 b4                	add    al,0xb4
    1804:	04 cc                	add    al,0xcc
    1806:	04 02                	add    al,0x2
    1808:	91                   	xchg   ecx,eax
    1809:	08 00                	or     BYTE PTR [eax],al
    180b:	01 00                	add    DWORD PTR [eax],eax
    180d:	00 00                	add    BYTE PTR [eax],al
    180f:	04 ed                	add    al,0xed
    1811:	03 9b 04 02 91 60    	add    ebx,DWORD PTR [ebx+0x60910204]
    1817:	04 b4                	add    al,0xb4
    1819:	04 cc                	add    al,0xcc
    181b:	04 02                	add    al,0x2
    181d:	91                   	xchg   ecx,eax
    181e:	60                   	pusha
    181f:	00 01                	add    BYTE PTR [ecx],al
    1821:	00 00                	add    BYTE PTR [eax],al
    1823:	00 04 ed 03 9b 04 06 	add    BYTE PTR [ebp*8+0x6049b03],al
    182a:	56                   	push   esi
    182b:	93                   	xchg   ebx,eax
    182c:	04 57                	add    al,0x57
    182e:	93                   	xchg   ebx,eax
    182f:	04 04                	add    al,0x4
    1831:	b4 04                	mov    ah,0x4
    1833:	cc                   	int3
    1834:	04 06                	add    al,0x6
    1836:	56                   	push   esi
    1837:	93                   	xchg   ebx,eax
    1838:	04 57                	add    al,0x57
    183a:	93                   	xchg   ebx,eax
    183b:	04 00                	add    al,0x0
    183d:	00 00                	add    BYTE PTR [eax],al
    183f:	00 00                	add    BYTE PTR [eax],al
    1841:	04 f0                	add    al,0xf0
    1843:	03 9b 04 02 91 60    	add    ebx,DWORD PTR [ebx+0x60910204]
    1849:	04 b4                	add    al,0xb4
    184b:	04 cc                	add    al,0xcc
    184d:	04 02                	add    al,0x2
    184f:	91                   	xchg   ecx,eax
    1850:	60                   	pusha
    1851:	00 00                	add    BYTE PTR [eax],al
    1853:	00 00                	add    BYTE PTR [eax],al
    1855:	00 04 f0             	add    BYTE PTR [eax+esi*8],al
    1858:	03 9b 04 06 56 93    	add    ebx,DWORD PTR [ebx-0x6ca9f9fc]
    185e:	04 57                	add    al,0x57
    1860:	93                   	xchg   ebx,eax
    1861:	04 04                	add    al,0x4
    1863:	b4 04                	mov    ah,0x4
    1865:	cc                   	int3
    1866:	04 06                	add    al,0x6
    1868:	56                   	push   esi
    1869:	93                   	xchg   ebx,eax
    186a:	04 57                	add    al,0x57
    186c:	93                   	xchg   ebx,eax
    186d:	04 00                	add    al,0x0
    186f:	00 00                	add    BYTE PTR [eax],al
    1871:	00 00                	add    BYTE PTR [eax],al
    1873:	04 f8                	add    al,0xf8
    1875:	03 93 04 06 51 93    	add    edx,DWORD PTR [ebx-0x6caef9fc]
    187b:	04 53                	add    al,0x53
    187d:	93                   	xchg   ebx,eax
    187e:	04 04                	add    al,0x4
    1880:	bd 04 c6 04 06       	mov    ebp,0x604c604
    1885:	51                   	push   ecx
    1886:	93                   	xchg   ebx,eax
    1887:	04 53                	add    al,0x53
    1889:	93                   	xchg   ebx,eax
    188a:	04 00                	add    al,0x0
    188c:	00 00                	add    BYTE PTR [eax],al
    188e:	04 84                	add    al,0x84
    1890:	04 8d                	add    al,0x8d
    1892:	04 06                	add    al,0x6
    1894:	50                   	push   eax
    1895:	93                   	xchg   ebx,eax
    1896:	04 52                	add    al,0x52
    1898:	93                   	xchg   ebx,eax
    1899:	04 00                	add    al,0x0
    189b:	00 00                	add    BYTE PTR [eax],al
    189d:	00 00                	add    BYTE PTR [eax],al
    189f:	00 00                	add    BYTE PTR [eax],al
    18a1:	04 de                	add    al,0xde
    18a3:	02 b0 03 02 91 08    	add    dh,BYTE PTR [eax+0x8910203]
    18a9:	04 b0                	add    al,0xb0
    18ab:	03 b1 03 02 74 0c    	add    esi,DWORD PTR [ecx+0xc740203]
    18b1:	04 b1                	add    al,0xb1
    18b3:	03 cc                	add    ecx,esp
    18b5:	03 02                	add    eax,DWORD PTR [edx]
    18b7:	91                   	xchg   ecx,eax
    18b8:	08 00                	or     BYTE PTR [eax],al
    18ba:	01 00                	add    DWORD PTR [eax],eax
    18bc:	00 00                	add    BYTE PTR [eax],al
    18be:	00 00                	add    BYTE PTR [eax],al
    18c0:	04 ff                	add    al,0xff
    18c2:	02 b0 03 02 91 60    	add    dh,BYTE PTR [eax+0x60910203]
    18c8:	04 b0                	add    al,0xb0
    18ca:	03 b1 03 02 74 64    	add    esi,DWORD PTR [ecx+0x64740203]
    18d0:	04 b1                	add    al,0xb1
    18d2:	03 cc                	add    ecx,esp
    18d4:	03 02                	add    eax,DWORD PTR [edx]
    18d6:	91                   	xchg   ecx,eax
    18d7:	60                   	pusha
    18d8:	00 01                	add    BYTE PTR [ecx],al
    18da:	00 00                	add    BYTE PTR [eax],al
    18dc:	00 04 ff             	add    BYTE PTR [edi+edi*8],al
    18df:	02 aa 03 06 56 93    	add    ch,BYTE PTR [edx-0x6ca9f9fd]
    18e5:	04 57                	add    al,0x57
    18e7:	93                   	xchg   ebx,eax
    18e8:	04 04                	add    al,0x4
    18ea:	b1 03                	mov    cl,0x3
    18ec:	cc                   	int3
    18ed:	03 06                	add    eax,DWORD PTR [esi]
    18ef:	56                   	push   esi
    18f0:	93                   	xchg   ebx,eax
    18f1:	04 57                	add    al,0x57
    18f3:	93                   	xchg   ebx,eax
    18f4:	04 00                	add    al,0x0
    18f6:	00 00                	add    BYTE PTR [eax],al
    18f8:	00 00                	add    BYTE PTR [eax],al
    18fa:	04 87                	add    al,0x87
    18fc:	03 9e 03 06 50 93    	add    ebx,DWORD PTR [esi-0x6caff9fd]
    1902:	04 52                	add    al,0x52
    1904:	93                   	xchg   ebx,eax
    1905:	04 04                	add    al,0x4
    1907:	ba 03 c3 03 06       	mov    edx,0x603c303
    190c:	50                   	push   eax
    190d:	93                   	xchg   ebx,eax
    190e:	04 52                	add    al,0x52
    1910:	93                   	xchg   ebx,eax
    1911:	04 00                	add    al,0x0
    1913:	00 00                	add    BYTE PTR [eax],al
    1915:	04 93                	add    al,0x93
    1917:	03 9e 03 06 51 93    	add    ebx,DWORD PTR [esi-0x6caef9fd]
    191d:	04 53                	add    al,0x53
    191f:	93                   	xchg   ebx,eax
    1920:	04 00                	add    al,0x0
    1922:	00 00                	add    BYTE PTR [eax],al
    1924:	00 00                	add    BYTE PTR [eax],al
    1926:	04 00                	add    al,0x0
    1928:	18 06                	sbb    BYTE PTR [esi],al
    192a:	50                   	push   eax
    192b:	93                   	xchg   ebx,eax
    192c:	04 52                	add    al,0x52
    192e:	93                   	xchg   ebx,eax
    192f:	04 04                	add    al,0x4
    1931:	18 de                	sbb    dh,bl
    1933:	02 06                	add    al,BYTE PTR [esi]
    1935:	a3 03 a5 00 26       	mov    ds:0x2600a503,eax
    193a:	9f                   	lahf
    193b:	00 02                	add    BYTE PTR [edx],al
    193d:	00 04 9c             	add    BYTE PTR [esp+ebx*4],al
    1940:	02 cb                	add    cl,bl
    1942:	02 0a                	add    cl,BYTE PTR [edx]
    1944:	9e                   	sahf
    1945:	08 00                	or     BYTE PTR [eax],al
    1947:	00 00                	add    BYTE PTR [eax],al
    1949:	00 01                	add    BYTE PTR [ecx],al
	...
    1953:	04 9f                	add    al,0x9f
    1955:	02 a9 02 01 50 04    	add    ch,BYTE PTR [ecx+0x4500102]
    195b:	a9 02 cb 02 02       	test   eax,0x202cb02
    1960:	91                   	xchg   ecx,eax
    1961:	5c                   	pop    esp
    1962:	00 01                	add    BYTE PTR [ecx],al
    1964:	00 04 9f             	add    BYTE PTR [edi+ebx*4],al
    1967:	02 cb                	add    cl,bl
    1969:	02 02                	add    al,BYTE PTR [edx]
    196b:	91                   	xchg   ecx,eax
    196c:	58                   	pop    eax
    196d:	00 00                	add    BYTE PTR [eax],al
    196f:	00 00                	add    BYTE PTR [eax],al
    1971:	00 04 a2             	add    BYTE PTR [edx+eiz*4],al
    1974:	02 ad 02 01 57 04    	add    ch,BYTE PTR [ebp+0x4570102]
    197a:	ad                   	lods   eax,DWORD PTR ds:[esi]
    197b:	02 cb                	add    cl,bl
    197d:	02 02                	add    al,BYTE PTR [edx]
    197f:	91                   	xchg   ecx,eax
    1980:	60                   	pusha
    1981:	00 00                	add    BYTE PTR [eax],al
    1983:	01 04 c2             	add    DWORD PTR [edx+eax*8],eax
    1986:	02 c5                	add    al,ch
    1988:	02 02                	add    al,BYTE PTR [edx]
    198a:	91                   	xchg   ecx,eax
    198b:	60                   	pusha
    198c:	00 02                	add    BYTE PTR [edx],al
    198e:	00 04 c2             	add    BYTE PTR [edx+eax*8],al
    1991:	02 c5                	add    al,ch
    1993:	02 01                	add    al,BYTE PTR [ecx]
    1995:	52                   	push   edx
    1996:	00 03                	add    BYTE PTR [ebx],al
    1998:	00 00                	add    BYTE PTR [eax],al
    199a:	01 04 c2             	add    DWORD PTR [edx+eax*8],eax
    199d:	02 c5                	add    al,ch
    199f:	02 01                	add    al,BYTE PTR [ecx]
    19a1:	50                   	push   eax
    19a2:	04 c5                	add    al,0xc5
    19a4:	02 c5                	add    al,ch
    19a6:	02 02                	add    al,BYTE PTR [edx]
    19a8:	91                   	xchg   ecx,eax
    19a9:	58                   	pop    eax
    19aa:	00 00                	add    BYTE PTR [eax],al
    19ac:	01 04 c5 02 c5 02 01 	add    DWORD PTR [eax*8+0x102c502],eax
    19b3:	50                   	push   eax
    19b4:	00 01                	add    BYTE PTR [ecx],al
    19b6:	00 04 9a             	add    BYTE PTR [edx+ebx*4],al
    19b9:	01 cb                	add    ebx,ecx
    19bb:	01 01                	add    DWORD PTR [ecx],eax
    19bd:	51                   	push   ecx
    19be:	00 00                	add    BYTE PTR [eax],al
    19c0:	00 04 d4             	add    BYTE PTR [esp+edx*8],al
    19c3:	01 9c 02 06 56 93 04 	add    DWORD PTR [edx+eax*1+0x4935606],ebx
    19ca:	57                   	push   edi
    19cb:	93                   	xchg   ebx,eax
    19cc:	04 00                	add    al,0x0
    19ce:	00 01                	add    BYTE PTR [ecx],al
    19d0:	04 66                	add    al,0x66
    19d2:	9a 01 01 50 00 03 01 	call   0x103:0x500101
    19d9:	01 00                	add    DWORD PTR [eax],eax
    19db:	00 01                	add    BYTE PTR [ecx],al
    19dd:	04 56                	add    al,0x56
    19df:	63 02                	arpl   WORD PTR [edx],eax
    19e1:	30 9f 04 63 6b 02    	xor    BYTE PTR [edi+0x26b6304],bl
    19e7:	40                   	inc    eax
    19e8:	9f                   	lahf
    19e9:	04 6b                	add    al,0x6b
    19eb:	9a 01 01 51 00 03 01 	call   0x103:0x510101
    19f2:	04 9a                	add    al,0x9a
    19f4:	01 c2                	add    edx,eax
    19f6:	01 0a                	add    DWORD PTR [edx],ecx
    19f8:	91                   	xchg   ecx,eax
    19f9:	58                   	pop    eax
    19fa:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
    19fb:	08 26                	or     BYTE PTR [esi],ah
    19fd:	31 a8 26 25 9f 00    	xor    DWORD PTR [eax+0x9f2526],ebp
    1a03:	05 01 04 9a 01       	add    eax,0x19a0401
    1a08:	c2 01 0f             	ret    0xf01
    1a0b:	91                   	xchg   ecx,eax
    1a0c:	58                   	pop    eax
    1a0d:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
    1a0e:	08 26                	or     BYTE PTR [esi],ah
    1a10:	08 21                	or     BYTE PTR [ecx],ah
    1a12:	a8 26                	test   al,0x26
    1a14:	25 a8 2d a8 00       	and    eax,0xa82da8
    1a19:	9f                   	lahf
    1a1a:	00 06                	add    BYTE PTR [esi],al
    1a1c:	01 04 9a             	add    DWORD PTR [edx+ebx*4],eax
    1a1f:	01 c2                	add    edx,eax
    1a21:	01 0e                	add    DWORD PTR [esi],ecx
    1a23:	91                   	xchg   ecx,eax
    1a24:	58                   	pop    eax
    1a25:	a6                   	cmps   BYTE PTR ds:[esi],BYTE PTR es:[edi]
    1a26:	08 26                	or     BYTE PTR [esi],ah
    1a28:	31 a8 26 25 a8 2d    	xor    DWORD PTR [eax+0x2da82526],ebp
    1a2e:	a8 00                	test   al,0x0
    1a30:	9f                   	lahf
    1a31:	00 00                	add    BYTE PTR [eax],al
    1a33:	01 04 c2             	add    DWORD PTR [edx+eax*8],eax
    1a36:	01 c2                	add    edx,eax
    1a38:	01 01                	add    DWORD PTR [ecx],eax
    1a3a:	50                   	push   eax
	...

Disassembly of section .debug_line_str:

00000000 <.debug_line_str>:
   0:	2f                   	das
   1:	68 6f 6d 65 2f       	push   0x2f656d6f
   6:	61                   	popa
   7:	6e                   	outs   dx,BYTE PTR ds:[esi]
   8:	68 6e 67 6f 2f       	push   0x2f6f676e
   d:	70 69                	jo     78 <__executable_start-0x804801c>
   f:	6e                   	outs   dx,BYTE PTR ds:[esi]
  10:	74 6f                	je     81 <__executable_start-0x8048013>
  12:	73 2f                	jae    43 <__executable_start-0x8048051>
  14:	73 72                	jae    88 <__executable_start-0x804800c>
  16:	63 2f                	arpl   WORD PTR [edi],ebp
  18:	65 78 61             	gs js  7c <__executable_start-0x8048018>
  1b:	6d                   	ins    DWORD PTR es:[edi],dx
  1c:	70 6c                	jo     8a <__executable_start-0x804800a>
  1e:	65 73 00             	gs jae 21 <__executable_start-0x8048073>
  21:	6d                   	ins    DWORD PTR es:[edi],dx
  22:	61                   	popa
  23:	74 6d                	je     92 <__executable_start-0x8048002>
  25:	75 6c                	jne    93 <__executable_start-0x8048001>
  27:	74 2e                	je     57 <__executable_start-0x804803d>
  29:	63 00                	arpl   WORD PTR [eax],eax
  2b:	2e 2e 2f             	cs cs das
  2e:	6c                   	ins    BYTE PTR es:[edi],dx
  2f:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  36:	00 73 79             	add    BYTE PTR [ebx+0x79],dh
  39:	73 63                	jae    9e <__executable_start-0x8047ff6>
  3b:	61                   	popa
  3c:	6c                   	ins    BYTE PTR es:[edi],dx
  3d:	6c                   	ins    BYTE PTR es:[edi],dx
  3e:	2e 68 00 2e 2e 2f    	cs push 0x2f2e2e00
  44:	6c                   	ins    BYTE PTR es:[edi],dx
  45:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  4c:	2f                   	das
  4d:	65 6e                	outs   dx,BYTE PTR gs:[esi]
  4f:	74 72                	je     c3 <__executable_start-0x8047fd1>
  51:	79 2e                	jns    81 <__executable_start-0x8048013>
  53:	63 00                	arpl   WORD PTR [eax],eax
  55:	2e 2e 2f             	cs cs das
  58:	6c                   	ins    BYTE PTR es:[edi],dx
  59:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  60:	2f                   	das
  61:	73 79                	jae    dc <__executable_start-0x8047fb8>
  63:	73 63                	jae    c8 <__executable_start-0x8047fcc>
  65:	61                   	popa
  66:	6c                   	ins    BYTE PTR es:[edi],dx
  67:	6c                   	ins    BYTE PTR es:[edi],dx
  68:	2e 63 00             	arpl   WORD PTR cs:[eax],eax
  6b:	2e 2e 2f             	cs cs das
  6e:	6c                   	ins    BYTE PTR es:[edi],dx
  6f:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  76:	2f                   	das
  77:	2e 2e 00 2e          	cs add BYTE PTR cs:[esi],ch
  7b:	2e 2f                	cs das
  7d:	6c                   	ins    BYTE PTR es:[edi],dx
  7e:	69 62 00 73 79 73 63 	imul   esp,DWORD PTR [edx+0x0],0x63737973
  85:	61                   	popa
  86:	6c                   	ins    BYTE PTR es:[edi],dx
  87:	6c                   	ins    BYTE PTR es:[edi],dx
  88:	2d 6e 72 2e 68       	sub    eax,0x682e726e
  8d:	00 64 65 62          	add    BYTE PTR [ebp+eiz*2+0x62],ah
  91:	75 67                	jne    fa <__executable_start-0x8047f9a>
  93:	2e 68 00 2e 2e 2f    	cs push 0x2f2e2e00
  99:	6c                   	ins    BYTE PTR es:[edi],dx
  9a:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  a1:	2f                   	das
  a2:	64 65 62 75 67       	fs bound esi,QWORD PTR gs:[ebp+0x67]
  a7:	2e 63 00             	arpl   WORD PTR cs:[eax],eax
  aa:	73 74                	jae    120 <__executable_start-0x8047f74>
  ac:	64 69 6f 2e 68 00 73 	imul   ebp,DWORD PTR fs:[edi+0x2e],0x74730068
  b3:	74 
  b4:	64 61                	fs popa
  b6:	72 67                	jb     11f <__executable_start-0x8047f75>
  b8:	2e 68 00 2e 2e 2f    	cs push 0x2f2e2e00
  be:	6c                   	ins    BYTE PTR es:[edi],dx
  bf:	69 62 2f 75 73 65 72 	imul   esp,DWORD PTR [edx+0x2f],0x72657375
  c6:	2f                   	das
  c7:	63 6f 6e             	arpl   WORD PTR [edi+0x6e],ebp
  ca:	73 6f                	jae    13b <__executable_start-0x8047f59>
  cc:	6c                   	ins    BYTE PTR es:[edi],dx
  cd:	65 2e 63 00          	gs arpl WORD PTR cs:[eax],eax
  d1:	73 74                	jae    147 <__executable_start-0x8047f4d>
  d3:	64 64 65 66 2e 68 00 	fs fs gs cs pushw 0x7300
  da:	73 
  db:	74 72                	je     14f <__executable_start-0x8047f45>
  dd:	69 6e 67 2e 68 00 2e 	imul   ebp,DWORD PTR [esi+0x67],0x2e00682e
  e4:	2e 2f                	cs das
  e6:	6c                   	ins    BYTE PTR es:[edi],dx
  e7:	69 62 2f 64 65 62 75 	imul   esp,DWORD PTR [edx+0x2f],0x75626564
  ee:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],eax
  f2:	73 74                	jae    168 <__executable_start-0x8047f2c>
  f4:	64 69 6e 74 2e 68 00 	imul   ebp,DWORD PTR fs:[esi+0x74],0x2e00682e
  fb:	2e 
  fc:	2e 2f                	cs das
  fe:	6c                   	ins    BYTE PTR es:[edi],dx
  ff:	69 62 2f 73 74 64 69 	imul   esp,DWORD PTR [edx+0x2f],0x69647473
 106:	6f                   	outs   dx,DWORD PTR ds:[esi]
 107:	2e 63 00             	arpl   WORD PTR cs:[eax],eax
 10a:	63 74 79 70          	arpl   WORD PTR [ecx+edi*2+0x70],esi
 10e:	65 2e 68 00 2e 2e 2f 	gs cs push 0x2f2e2e00
 115:	6c                   	ins    BYTE PTR es:[edi],dx
 116:	69 62 2f 73 74 72 69 	imul   esp,DWORD PTR [edx+0x2f],0x69727473
 11d:	6e                   	outs   dx,BYTE PTR ds:[esi]
 11e:	67 2e 63 00          	arpl   WORD PTR cs:[bx+si],eax
 122:	2e 2e 2f             	cs cs das
 125:	6c                   	ins    BYTE PTR es:[edi],dx
 126:	69 62 2f 61 72 69 74 	imul   esp,DWORD PTR [edx+0x2f],0x74697261
 12d:	68 6d 65 74 69       	push   0x6974656d
 132:	63 2e                	arpl   WORD PTR [esi],ebp
 134:	63 00                	arpl   WORD PTR [eax],eax

Disassembly of section .debug_rnglists:

00000000 <.debug_rnglists>:
   0:	b8 00 00 00 05       	mov    eax,0x5000000
   5:	00 04 00             	add    BYTE PTR [eax+eax*1],al
   8:	00 00                	add    BYTE PTR [eax],al
   a:	00 00                	add    BYTE PTR [eax],al
   c:	04 f1                	add    al,0xf1
   e:	08 83 09 04 8e 09    	or     BYTE PTR [ebx+0x98e0409],al
  14:	c7                   	(bad)
  15:	09 04 cd 09 a2 18 00 	or     DWORD PTR [ecx*8+0x18a209],eax
  1c:	04 9b                	add    al,0x9b
  1e:	09 b0 09 04 c3 09    	or     DWORD PTR [eax+0x9c30409],esi
  24:	c7                   	(bad)
  25:	09 04 cd 09 b6 0c 04 	or     DWORD PTR [ecx*8+0x40cb609],eax
  2c:	d2 0c dc             	ror    BYTE PTR [esp+ebx*8],cl
  2f:	0c 04                	or     al,0x4
  31:	fc                   	cld
  32:	0c 83                	or     al,0x83
  34:	0d 04 a3 0d b2       	or     eax,0xb20da304
  39:	0d 04 ce 0d d8       	or     eax,0xd80dce04
  3e:	0d 04 f8 0d ff       	or     eax,0xff0df804
  43:	0d 04 9f 0e a6       	or     eax,0xa60e9f04
  48:	0e                   	push   cs
  49:	04 c6                	add    al,0xc6
  4b:	0e                   	push   cs
  4c:	c6                   	(bad)
  4d:	0e                   	push   cs
  4e:	00 04 ba             	add    BYTE PTR [edx+edi*4],al
  51:	0a c0                	or     al,al
  53:	0a 04 d8             	or     al,BYTE PTR [eax+ebx*8]
  56:	0a de                	or     bl,dh
  58:	0a 00                	or     al,BYTE PTR [eax]
  5a:	04 a8                	add    al,0xa8
  5c:	0b ae 0b 04 c6 0b    	or     ebp,DWORD PTR [esi+0xbc6040b]
  62:	cc                   	int3
  63:	0b 00                	or     eax,DWORD PTR [eax]
  65:	04 ec                	add    al,0xec
  67:	0e                   	push   cs
  68:	84 0f                	test   BYTE PTR [edi],cl
  6a:	04 96                	add    al,0x96
  6c:	0f fa 0f             	psubd  mm1,QWORD PTR [edi]
  6f:	04 ff                	add    al,0xff
  71:	0f 8f 12 00 04 8f    	jg     8f040089 <explained.0+0x86cf5009>
  77:	12 94 15 04 99 15 a1 	adc    dl,BYTE PTR [ebp+edx*1-0x5eea66fc]
  7e:	15 00 04 ab 15       	adc    eax,0x15ab0400
  83:	d3 15 04 d3 15 d6    	rcl    DWORD PTR ds:0xd615d304,cl
  89:	15 00 04 f8 15       	adc    eax,0x15f80400
  8e:	bb 16 04 bb 16       	mov    ebx,0x16bb0416
  93:	c1 16 04             	rcl    DWORD PTR [esi],0x4
  96:	d6                   	(bad)
  97:	16                   	push   ss
  98:	e1 16                	loope  b0 <__executable_start-0x8047fe4>
  9a:	00 04 eb             	add    BYTE PTR [ebx+ebp*8],al
  9d:	16                   	push   ss
  9e:	af                   	scas   eax,DWORD PTR es:[edi]
  9f:	17                   	pop    ss
  a0:	04 af                	add    al,0xaf
  a2:	17                   	pop    ss
  a3:	b2 17                	mov    dl,0x17
  a5:	00 04 f8             	add    BYTE PTR [eax+edi*8],al
  a8:	19 b8 1b 04 c6 1b    	sbb    DWORD PTR [eax+0x1bc6041b],edi
  ae:	d8 1d 00 04 86 1e    	fcomp  DWORD PTR ds:0x1e860400
  b4:	c6                   	(bad)
  b5:	1e                   	push   ds
  b6:	04 d9                	add    al,0xd9
  b8:	1e                   	push   ds
  b9:	fc                   	cld
  ba:	1e                   	push   ds
  bb:	00 34 00             	add    BYTE PTR [eax+eax*1],dh
  be:	00 00                	add    BYTE PTR [eax],al
  c0:	05 00 04 00 00       	add    eax,0x400
  c5:	00 00                	add    BYTE PTR [eax],al
  c7:	00 04 9a             	add    BYTE PTR [edx+ebx*4],al
  ca:	01 a4 01 04 be 01 c2 	add    DWORD PTR [ecx+eax*1-0x3dfe41fc],esp
  d1:	01 00                	add    DWORD PTR [eax],eax
  d3:	04 ff                	add    al,0xff
  d5:	02 a4 03 04 b1 03 cc 	add    ah,BYTE PTR [ebx+eax*1-0x33fc4efc]
  dc:	03 00                	add    eax,DWORD PTR [eax]
  de:	04 ed                	add    al,0xed
  e0:	03 a6 04 04 b4 04    	add    esp,DWORD PTR [esi+0x4b40404]
  e6:	cc                   	int3
  e7:	04 00                	add    al,0x0
  e9:	04 f0                	add    al,0xf0
  eb:	03 9b 04 04 b4 04    	add    ebx,DWORD PTR [ebx+0x4b40404]
  f1:	cc                   	int3
  f2:	04 00                	add    al,0x0
