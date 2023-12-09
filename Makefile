run:
	@echo Starting nginx reverse proxy & apps
	@docker compose up -d
	@open nginx dashbort http://localhost:81

down:
	@echo Shutdown everything
	@docker compose down