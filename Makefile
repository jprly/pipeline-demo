build:
	. ~/.nvm/nvm.sh
	nvm install 16
	npm run build

test:
	CI=true npm run test

deploy:
	echo "deploying..."
