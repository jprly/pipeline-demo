pipeline {
    agent any
    tools {nodejs "nodejs"}
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
