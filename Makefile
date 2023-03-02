
all:
	sudo mkdir -p /home/yst-laur/data/wordpress && sudo mkdir -p /home/yst-laur/data/mariadb
	cd srcs && docker compose up

clean:
	cd srcs && docker compose down -v
	sudo rm -rf /home/yst-laur