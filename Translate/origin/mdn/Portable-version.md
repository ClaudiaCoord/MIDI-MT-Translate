---
title: MIDI-MT - Портативная версия приложения
subtitle: MIDI-MT Документация на Русском языке
author: MIDI-MT &#169; CC
keywords: usb,midi,control,surface,keyboard,easycontrol,easycontrol9,mqtt,lights,dmx,dmx512,artnet,soundbar,premiere pro,proxy,driver
description: MIDI-MT - это драйвер приложений высокого уровня, для USB MIDI панелей управлений
---

## О ПОРТАТИВНОЙ ВЕРСИИ

Портативная версия упакована `Enigma Virtual Box`, которая иногда дает ложные срабатывания антивирусных программ.
Первым в списке, конечно является `Microsoft Windows Defender`.

Вы всегда можете оценить уровень опасности самостоятельно.
Ссылка, на результаты проверки на сайте [virustotal.com](https://www.virustotal.com/gui/file/a238b3af3595bb29ad729718561431d36c87f9f1c17c161fb41c03ee7071429c).  

Если у вас есть сомнения в "чистоте" портативной версии файла - просто не используйте его.

- Сборка MIDIMT_x64_Portable  - требует предварительную установку MIDI драйверов.
- Сборка MIDIMT_x64_PortableI - позволит использовать портативную весрсию без предварительной установки MIDI драйверов.

### НЕОБХОДИМЫЕ ЗАВИСИМОСТИ

Для успешного запуска `MIDI-MT`, необходимы следующие компоненты:

- Virtual MIDI драйвер от Tobias Erichsen.
- последняя версия `Visual C++ Redistributable` от компании Microsoft.

Подробнее про установку этих компонентов можно прочитать в разделе [Зависимости](Dependencies.html).  
