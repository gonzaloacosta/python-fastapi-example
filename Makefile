USERNAME	:= gonza
REPOSITORY  := gonzaloacosta
IMAGE		:= fastapi-articles

venv:
	@python3 -m venv venv
	@pip3 install -r requirements.txt

activate:
	@source venv/bin/activate

deactivate:
	@unset VIRTUAL_ENV

build:
	@docker build -t $(REPOSITORY)/$(IMAGE) .

run:
	@docker run -d --name $(USERNAME)-$(IMAGE) -p 8080:80 $(REPOSITORY)/$(IMAGE)

status:
	@docker ps -a 

test:
	@curl http://localhost:8080
