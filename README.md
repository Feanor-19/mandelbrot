<!---//REVIEW - терминология? слог? понятность? еще что-то? )-->
# МНОЖЕСТВО МАНДЕЛЬБРОТА: КРАСИВЫЙ СПОСОБ ПРОТЕСТИРОВАТЬ SIMD ОПТИМИЗАЦИИ

## Краткое описание

Данный репозиторий содержит код, который можно компилировать с разными уровнями оптимизаций. Результатом будет являться программа, позволяющая:
1. Наглядно исследовать `множество Мандельброта` (если вы не знаете что это такое, посмотрите на Википедии). Будьте осторожны, это может затянуть.
2. Проверять на практике, во сколько раз различные оптимизации (основанные на использовании `SIMD`) улучшают производительность алгоритма, вычисляющего множество Мандельброта.

## Необходимые зависимости

1. `SFML 2.5.1` - возможно, версии 2.5.x (или даже 2.x) будут работать, но это не проверялось.

## Использование

### Общий алгоритм использования: 
1. Убедитесь, что у вас установлен `SFML` в одну из стандартных папок вашего компилятора (в ином случае отредактруйте Makefile).
2. Склонируйте репозиторий в удобное для вас место.
3. Используйте в терминале команду `make` из директории `2-mandelbrot`, чтобы скомпилировать программу.
4. Запустите программу одним из следующих способов:
    1. `make run`, чтобы запустить графическую визуализацию со стандартными настройками.
    2. `./bin/mandelbrot *флаги*`, чтобы применить свои настройки, включая режим тестирования.  
5. Текстовая информация печатается в терминале, графическое отображение должно появиться в отдельном окне (при соответствующем выбранном режиме). Наслаждайтесь! Возвращайтесь к шагу `4`, если захотите (и если сможете выбраться из фрактального ада).

<!--- //TODO - возможности компилить с 01, 02 и тд, реализованное через разные команды make -->

### Управление в графическом отображении

- `W`       - перемещение вверх
- `A`       - перемещение влево
- `D`       - перемещение вправо
- `S`       - перемещение вниз
- `Q`       - приближение
- `E`       - отдаление
- `LShift`  - удерживайте, чтобы увеличить скорость перемещения
- `C`       - печатает в терминал координату точки, которая находится в центре обзора
- `M`       - печатает в терминал координату точки, которая находится под курсором мышки
- `O`       - возвращает обзор в первоначальное состояние

### Флаги

#### Режим работы
- `-t` - включает режим тестирования. Отсутствие означает графический режим.

#### Параметры работы
|Флаг|Описание|Значение по умолчанию|
|-|-|-|
|`--width`|ширина области в пискелях|800
|`--height`|высота области в пикселях|600
|`--top-left-x`|координата X, которую имеет точка, закрепленная за левым верхним пикселем области (действительная часть комплексного числа)|-2.0
|`--top-left-y`|координата Y, которую имеет точка, закрепленная за левым верхним пикселем области (мнимая часть комплексного числа)|1.5
|`step`|размер пикселя|0.005
|`death-radius`|если точка "выходит" за окружность данного радиуса с центром в начале координат, считается, что она ушла на бесконечность|10
|`num-of-reps`|количество раз, которое повторяется один и тот же тест с целью уменьшить погрешность|100 000

#### Алгоритмы

- `--alg-single-dot`
- `--alg-vectors`
- `--alg-sse`
- `--alg-avx`