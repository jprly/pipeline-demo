@Library('github.com/releaseworks/jenkinslib') _
pipeline {
    agent any
    stages {
        stage('Test aws cli') {
            steps {
                sh  """
                    aws help
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
