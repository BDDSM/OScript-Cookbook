Функция МойТекст()
	Перем сТекст;

	сТекст = "
	|Платформа: 1С:Предприятие 8.3 (8.3.16.1224)
	|Конфигурация: Бухгалтерия предприятия, редакция 3.0 (3.0.75.109) (http://v8.1c.ru/buhv8/)
	|Copyright (С) ООО ""1C-Софт"", 2009 - 2020. Все права защищены
	|(http://www.1c.ru)
	|
	|Режим: Файловый (без сжатия)
	|Приложение: Тонкий клиент
	|Локализация: Информационная база: русский (Россия), Сеанс: русский (Россия)
	|Вариант интерфейса: Такси";

	Возврат сТекст;
КонецФункции

// Пример использования метода Совпадает
//
// Проверяет, что МойТекст содержит наименование конфигурации
// Бухгалтерия предприятия и номер версии 3.0.75.109
//
Функция Sample001_01()
	Перем бРезультат, сПаттерн, оРегВыражение, чСтартоваяПозиция;

	сПаттерн = "Бухгалтерия предприятия.*3\.0\.75\.109";
	оРегВыражение = Новый РегулярноеВыражение(сПаттерн);
	
	// значение по умолчанию 0, здесь приведено для примера
	чСтартоваяПозиция = 0;
	// Результат Истина
	бРезультат = оРегВыражение.Совпадает(МойТекст(), чСтартоваяПозиция);

	Возврат бРезультат;
КонецФункции

Sample001_01();