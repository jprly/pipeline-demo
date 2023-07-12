pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('TEST')
    }
    stages {
        stage('Test aws cli') {
            steps {
                sh  """
                    echo "testing...."
                    echo "key is ${AWS_ACCESS_KEY_ID}"
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
