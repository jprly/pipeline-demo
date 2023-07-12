build:
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
	export NVM_DIR="$HOME/.nvm"
	nvm install 16
	npm run build

test:
	CI=true npm run test

deploy:
	echo "deploying..."
