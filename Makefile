.DEFAULT_GOAL := prod

prod:
	MERCURE_JWT_PUBLIC_KEY=`cat ./cert/publisher.key.pub` \
	MERCURE_CADDY_CONFIG_PATH="/etc/caddy/Caddyfile" \
	docker-compose up -d

dev:
	MERCURE_JWT_PUBLIC_KEY=`cat ./cert/publisher.key.pub` \
	MERCURE_CADDY_CONFIG_PATH="/etc/caddy/Caddyfile.dev" \
	docker-compose up -d
