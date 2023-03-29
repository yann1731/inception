
setup:
	sudo mkdir -p /home/yst-laur/data/wordpress && sudo mkdir -p /home/yst-laur/data/mariadb
	cd srcs && docker compose up

start:
	cd srcs && docker compose up -d

stop:
	cd srcs && docker compose stop

clean:
	cd srcs && docker compose down -v
	sudo rm -rf /home/yst-laur
	docker system prune -a -f