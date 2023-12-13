run:
	@echo Starting reverse proxy & apps
	@docker compose up -d
	@open traefik dashbort http://monitor.<domain>

down:
	@echo Shutdown everything
	@docker compose down