pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh  """
                    npm install
                    npm run build
                """
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
