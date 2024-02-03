---
title: MIDI-MT - НЕОБХОДИМЫЕ ЗАВИСИМОСТИ
subtitle: MIDI-MT Документация на Русском языке
author: MIDI-MT &#169; CC
keywords: usb,midi,control,surface,keyboard,easycontrol,easycontrol9,mqtt,lights,dmx,dmx512,artnet,soundbar,premiere pro,proxy,driver
description: MIDI-MT - это драйвер приложений высокого уровня, для USB MIDI панелей управлений
---

## Установка необходимых зависимостей

Для запуска `MIDI-MT`, необходимы следующие компоненты:

- Virtual MIDI драйвер от Tobias Erichsen.
- Последняя версия `Visual C++ Redistributable` от компании Microsoft.

### Virtual MIDI драйвер

Приложение использует MIDI драйвера от [Tobias Erichsen](https://www.tobias-erichsen.de), версии **1.3.0.43** от 2019-12-02. Перед запуском `MIDI-MT` необходима его установка.  
Для установки MIDI драйвера, посетите сайт и установите [loopMIDI](https://www.tobias-erichsen.de/software/loopmidi.html) или [rtpMIDI](https://www.tobias-erichsen.de/software/rtpmidi.html).  
В этих дистрибутивах включены драйвера необходимые для работы.  
Если по каким-то причинам сайт tobias-erichsen.de не доступен, [loopMIDI](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/loopMIDISetup_1_0_16_27.zip) можно скачать с [этого репозитория](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/loopMIDISetup_1_0_16_27.zip).  

Приложение, включающее в свой состав необходимые драйвера - `loopMIDI` само по себе полезное, дающее возможность эксперементировать вам с подключением и коммутацией MIDI оборудованием.

### Microsoft Visual C++ Redistributable

Для запуска необходима установленная последняя версия `Visual C++ Redistributable` от компании Microsoft.
Как правило, это дополнение уже установлено в вашей системе и дополнительная установка не требуется.
Но для более ранних сборок Windows 10/11 возможно придеться обновить компонент `Visual C++ Redistributable`.

Типичная ошибка при отсутствии актуальной версии компонента: "cannot load library msvcp140.dll"

Распространяемый компонент `Visual C++` устанавливает библиотеки времени выполнения Microsoft C и C++.
Эти библиотеки требуются для многих приложений, созданных с использованием инструментов Microsoft C и C++.
Если приложение использует эти библиотеки, необходимо установить распространяемый пакет Microsoft Visual C++
в целевой системе перед установкой приложения.

- [X64](https://aka.ms/vs/17/release/vc_redist.x64.exe) - Постоянная ссылка на последнюю поддерживаемую версию x64.  
- [X86](https://aka.ms/vs/17/release/vc_redist.x86.exe) - Постоянная ссылка на последнюю поддерживаемую версию x86.  
- [microsoft.com supported vc redist](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170)  
