pipeline {
    agent any
    tools {nodejs "node16"}
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
                sh """
                CI=true npm run test
                """
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploying'
            }
        }
    }
}
