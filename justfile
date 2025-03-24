build:
	tailwindcss --input css/app.css --output build/app.css

build_optimize:
	tailwindcss --input css/app.css --output build/app.css --minify --optimize

watch:
	tailwindcss --input css/app.css --output build/app.css --watch

commit: build
	git add build
	git commit

serve:
	caddy file-server --browse --listen 127.0.0.1:80
