install:
	npm install
build:
	npm run build

test:
	CI=true npm run test

deploy:
	echo "deploying..."
