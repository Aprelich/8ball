# Aprelich
# Игра 8ball, которая отвечает на вопросы, интерактивная версия

# Массивы
# Массив приветствий
hello = [
	"Привет, дорогой друг. Задавай свой вопрос.",
	"Кто вопрошает, тот получит ответ. Спрашивай же.",
	"Здравствуй, смертный. Готов испытать судьбу? Тогда задай вопрос."
]

# Массив ответов
answers = [

	# Положительные
	"Бесспорно",
	"Предрешено",
	"Никаких сомнений",
	"Определённо да",
	"Можешь быть уверен в этом",

	# Нерешительно положительные
	"Мне кажется — «да»",
	"Вероятнее всего",
	"Хорошие перспективы",
	"Знаки говорят — «да»",
	"Да",

	# Нейтральные
	"Пока не ясно, попробуй снова",
	"Спроси позже",
	"Лучше не рассказывать",
	"Сейчас нельзя предсказать",
	"Сконцентрируйся и спроси опять",

	# Отрицательные
	"Даже не думай",
	"Мой ответ — «нет»",
	"По моим данным — «нет»",
	"Перспективы не очень хорошие",
	"Весьма сомнительно"
]

system "clear" or system "cls"

# Вывод приветствия. Sample - случайный вывод
puts hello.sample

# Ожидание
sleep(1)

# Бесконечный цикл
loop {

	# Цикл для получения вопроса
	while (question = gets.encode('UTF-8').chomp.strip.downcase) == ""
		puts "Ты не задал вопрос."
	end

	if question == "exit"
		abort "До встречи."
	end

	sleep(1)

	# "Обдумывание" ответа
	3.times do 
		puts "..."
		sleep(1)
	end

	# Фраза перед ответом
	puts "Итак, мой ответ:"

	sleep(1)

	# Вывод случайного ответа
	puts answers.sample

	sleep(2)

	puts "Задавай следующий вопрос."
}
