pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID=credentials('KEY_ID')
        AWS_SECRET_ACCESS_KEY=credentials('ACCESS_KEY')
    }
    stages {
        stage('Test aws cli') {
            steps {
                sh  """
                    export AWS_ACCESS_KEY_ID='$AWS_ACCESS_KEY_ID'
                    export AWS_SECRET_ACCESS_KEY='$AWS_SECRET_ACCESS_KEY'
                    export AWS_DEFAULT_REGION="us-east-2"

                    aws s3 cp ./public/ s3://jennkins-demo-pipeline-2023-riley/ --recursive
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
