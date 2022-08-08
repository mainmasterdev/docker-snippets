new-app:
	docker run -v ${CURDIR}:/app --rm python:3.11.0b5-alpine3.16 sh -c "cd app && pip install -r requirements.txt && python manage.py startapp $(name) "
	echo $(name) created
