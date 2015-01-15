optimal_threads_runner.sh - замеры для определения оптимального количества потоков. optimal_threads_{number_of_points}_{number_of_clusters} - графики с результатами замеров.
Выглядит будто 10 потоков оптимально.

points_runner.sh - зафиксировал количество кластеров (5), количество потоков (10), и прогнал на разных количествах точек (от 100000 до 2000000 с шагом 100000). points.png - график с результатами замеров.

clusters_runner.sh - зафиксировал количество точке (1000000), количество потоков (10), и прогнал на разных количествах точке (от 2 до 20 с шагом 1). clusters.png - график с результатами замеров.

На графиках ось x - меняемый параметр, y - количество секунд.

Небольшой анализ: если с первыми двумя случаями все относительно хорошо, то график с замерами в разрезе количества кластеров несколько колбасит. Все выглядит так, будто там действительно очень большая дисперсия.
Прогоняющие скрипты имеют большой недостаток: они генерируют данные один раз, после этого делают несколько запусков программы на этих данных и как-то аггрегируют.
Проблема, на мой взгляд, в том, что данные генерируются лишь однажды: нам может повезти - не повезти с выборкой. Но если же делать по-честному, то скорее всего мы столкнемся с адовой дисперсией, и делать какие-либо выводы будет практически невозможно без огромного количества запусков.
В теории вероятности (а особенно в статистике) я не особо силен, но сложилось такое впечатление, что делать строгие корректные выводы из того, что я получил нельзя.