.PHONY: run test run_and_test

run:
	uvicorn homework_1.main:app

test:
	pytest tests/

run_and_test:
	@echo "Запускаем приложение"
	make run & \
	SERVER_PID=$$! && \
	sleep 2 && \
	echo "Запускаем тесты" && \
	make test && \
	echo "Останавливаем приложение" && \
	kill $$SERVER_PID