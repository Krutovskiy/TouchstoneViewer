# TouchstoneViewer

Возможно стоило бы добавить строчки типа:
```cpp    
double minFreq = std::numeric_limits<double>::max();
double maxFreq = std::numeric_limits<double>::lowest();
double minLogMag = std::numeric_limits<double>::max();
double maxLogMag = std::numeric_limits<double>::lowest();
```

А не искать лишней итеарцией


Сомнительным кажется чтение через QtextStream, в Touchstone® File Format Specification сказано что только Only US-ASCII, не переводить в QString будет побыстрее. 
Ну или как минимум поиграться с setRealNumberNotation(QTextStream::ScientificNotation)

Используется std::variant вместо монады Result\Either, но отдельный тип для ошибки не завел, использую QString. А надо было бы enum class или же какой-то композируемый враппер для ошибок, а текст ошибок определять уже в контроллере.


## Сборка 

```bash
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .

cpack -G DEB
```
