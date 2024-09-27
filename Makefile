.PHONY: run test run_and_test

run:
	uvicorn homework-1.homework_1.main:app

test:
	pytest homework-1/tests

run_and_test:
	@echo "Запускаем приложение"
	uvicorn homework-1.homework_1.main:app & \
	SERVER_PID=$$! && \
	sleep 2 && \
	echo "Запускаем тесты" && \
	pytest homework-1/tests && \
	echo "Останавливаем приложение" && \
	kill $$SERVER_PID