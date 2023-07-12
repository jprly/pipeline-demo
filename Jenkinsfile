pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                npm run build
            }
        }
        stage('Test') {
            steps {
                echo 'testing....'
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying'
            }
        }
    }
}
