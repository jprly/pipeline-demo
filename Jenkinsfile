@Library('github.com/releaseworks/jenkinslib') _
pipeline {
    agent any
    stages {
        stage('Test aws cli') {
            steps {
                sh  """
                    echo "$aws_access_key_id"
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
