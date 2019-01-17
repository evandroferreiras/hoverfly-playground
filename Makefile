run-hoverfly-docker:
	docker run -d -p 8888:8888 -p 8500:8500 spectolabs/hoverfly:latest
	./hoverctl targets create remote \                                                     
	--host localhost \
	--admin-port 8888 \
	--proxy-port 8500

set-capture-mode:
	./hoverctl -t remote mode capture

set-simulate-mode:
	./hoverctl -t remote mode simulate

export-json:
	./hoverctl -t remote export exported.json

open-dashboard:
	xdg-open http://localhost:8888/dashboard