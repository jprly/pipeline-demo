pipeline {
    agent any
    stages {
        stage('Test aws cli') {
            steps {
                sh  """
                    echo "testing...."
                    echo "key is ${TEST}"
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
