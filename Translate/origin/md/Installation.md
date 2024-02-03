---
title: MIDI-MT - Установка
subtitle: MIDI-MT Документация на Русском языке
author: MIDI-MT &#169; CC
keywords: usb,midi,control,surface,keyboard,easycontrol,easycontrol9,mqtt,lights,dmx,dmx512,artnet,soundbar,premiere pro,proxy,driver
description: MIDI-MT - это драйвер приложений высокого уровня, для USB MIDI панелей управлений
---

## Установка приложения

Установка не должна вызывать сложности, необходимо скачать установочный пакет **MIDIMT_xXX.msi**, или **MIDIMT_xXX.exe** из [последнего доступного релиза](https://github.com/ClaudiaCoord/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/releases) и запустить установку стандартным образом.  

Вы можете скачать и установить **MIDI-MT** с помощью менеджера пакетов [`Chocolatey Software`](https://community.chocolatey.org/packages/midimt/).  
Для установки достаточно выполнить команду:

```
    choco install midimt
```

Также, вы можете использовать [портативную версию](Portable-version.html) для платформы `x64`, которая не требует предварительной установки.

Перед запуском `MIDI-MT`, необходимо установить следующие компоненты:

- Virtual `MIDI драйвер` от Tobias Erichsen.
- Последняя версия `Visual C++ Redistributable` от компании Microsoft.

Подробнее про установку этих компонентов можно прочитать в разделе [Зависимости](Dependencies.html).  

Для быстрой настройки вашего MIDI контроллера `EasyControl9` вы можете использовать [файл настроек](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/MIDIMT.Ctrl_data) для приложения [EasyControl Setup](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/EasyControl.zip) от производителя. Файл настроек для приложения **MIDI-MT** имеет `Json` формат и его настройки должны совпадать с настройками контроллера. Описание настроек в формате `Json` описаны в разделе о [настройках](Settings.html).  
