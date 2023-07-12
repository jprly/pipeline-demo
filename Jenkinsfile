pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                make build
            }
        }
        stage('Test') {
            steps {
                make test
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
