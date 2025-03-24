# TouchstoneViewer
Приложение на C++ с использованием библиотеки Qt, которое будет иметь возможность загружать файл с измерением (Touchstone) и визуализировать его данные на графиках.  

![Screenshot](https://github.com/Krutovskiy/TouchstoneViewer/img/screenshot.png)

## Сборка 

```bash
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

cpack -G DEB
```


## Установка
```bash
sudo dpkg -i touchstone-viewer_0.1_amd64.deb
/usr/bin/appTouchstoneViewer
```

## Обоснование разбиения на классы
* Модель данных - это TouchstoneData. Там все те немногоие инварианты данных что у нас имеются. Знания о формате Touchstone и необходимых формулах так же инкапсулированы там. Хранит данные, не делая предположений как они будут использованы.
* TouchstoneFile - это обертка над TouchstoneData, что-то что хранит данные из файлов, обеспечивает асинхронное чтение, ничего не знает о формате данных. Если бы надо было читать много файлов, наверное, стоило бы сделать его TouchstoneFileManager и ...Cache и еще как-то. 
* Controller - это связка между QML и C++ кодом. Нечто среднее между Controller и Presenter, затрудняюсь квалифицировать и дать название. Он пробрасывает пользовательские команды на следующие уровни, перерабатывает модель в некоторые view representation для вьюхи, имеет состояние, типа кэш. Знает в каком формате и как удобнее рендерить модель и знает как устроена модель.
* Main.qml - главная форма, объединяющая все компоненты.
* MenuBar - вершина моего ux-engineer мастерства. Кнопка для openDialog и лэебл с текстом для заголовков или ошибки. 
* Plot - QML Item с Canvas и прорисовкой графика, сетки, осей. 

## Что стоило бы переделать
* Скорость рендеринга QML оставляет желать лучшего: на стареньком ноуте 2-3 секунды только прорисовка (samples500k.s1p) и так на каждый repaint. Если бы делал на QWidget, сделал бы на QPixmap или QGLWidget, поближе к видеокарте что бы. 500К точек не должно быть проблемой. Можно было бы поиграться с QQuickPaintedItem, но с Qt6 он больше не работает с QOpenGLFramebufferObject, так что скорее всего выйгрыш будет небольшой. К тому же есть треобование `QML для создания графического интерфейса`. Но то как работает сейчас - беда.
* Нетепизированные ошибки: используется std::variant вместо монады Result\Either, но отдельный тип для ошибки не завел, использую QString. А надо было бы enum class или же какой-то композируемый враппер для ошибок, а текст ошибок определять уже в контроллере, поближе к ui.

## Сомнительные моменты (может стоит переделать)
* Сомнительным кажется чтение через QtextStream, в `Touchstone File Format Specification` сказано что Only US-ASCII, а при переводе в QString вероятно идет декодирование. Наверное стоило бы читать в байтах, а не тексте, ну или как минимум поиграться с setRealNumberNotation(QTextStream::ScientificNotation). Но оптимизировать надо топ профайлера, а тут явно больше проблем с рендерингом QML. 
* Нет тестов. Написал в виде отдельных функций, надо было бы оформить в QTest или аналог, но на прод не пойдет, а со сроками и так тяну. 
* Чтение любого файла делаю через QtConcurrent::run, хотя для маленьких файлов это, вероятно, лишние накладные расходы. Стоило бы проверять размер файла и маленькие файлы читать в главном треде. 
* Унылый UX, не костоизируются цвета, фон, сетка не адаптивная, при наведении мыши хорошо бы значение точки показывать, нельзя выделить регион и т.д. UI имеет безграничный потенциал к улучшению. 
* Стандартный форматтер в QtCreator как-то игнироирет множество вещей. Надо бы его настраивать или поискать другие форматтеры\претифаеры. Или нет.
