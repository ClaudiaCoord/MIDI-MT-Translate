## Установка

Установка не должна вызывать сложности, необходимо скачать установочный пакет __MIDIMT_xXX.msi__, или __MIDIMT_xXX.exe__ из [последнего доступного релиза](https://github.com/ClaudiaCoord/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/releases) и запустить установку стандартным образом.  

Вы можете скачать и установить __MIDIMT__ с помощью менеджера пакетов [`Chocolatey Software`](https://community.chocolatey.org/packages/midimt/).  
Для установки достаточно выполнить команду:

```
    choco install midimt
```

Также, вы можете использовать [портативную версию](RU-О-портативной-версии) для платформы `x64`, которая не требует предварительной установки.

Перед запуском `MIDI-MT`, необходимо установить следующие компоненты:

- Virtual `MIDI драйвер` от Tobias Erichsen.
- Последняя версия `Visual C++ Redistributable` от компании Microsoft.

Подробнее про установку этих компонентов можно прочитать в разделе [Зависимости](RU-Зависимости).  

Для быстрой настройки вашего MIDI контроллера `EasyControl9` вы можете использовать [файл настроек](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/MIDIMT.Ctrl_data) для приложения [EasyControl Setup](https://claudiacoord.github.io/MIDI-EasyControl-to-Mackie-translator-for-Premiere-Pro/Dist/EasyControl.zip) от производителя. Файл настроек для приложения __MIDI-MT__ имеет `Json` формат и его настройки должны совпадать с настройками контроллера. Описание настроек в формате `Json` описаны в разделе о [настройках](RU-Настройки).  
