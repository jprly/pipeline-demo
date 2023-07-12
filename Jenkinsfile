pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID=credentials('KEY_ID')
        AWS_SECRET_ACCESS_KEY=credentials('ACCESS_KEY')
    }
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
    stages {
        stage('Deploy') {
            steps {
                sh  """
                    export AWS_ACCESS_KEY_ID='$AWS_ACCESS_KEY_ID'
                    export AWS_SECRET_ACCESS_KEY='$AWS_SECRET_ACCESS_KEY'
                    export AWS_DEFAULT_REGION="us-east-2"

                    aws s3 cp ./build/ s3://jennkins-demo-pipeline-2023-riley/ --recursive
                """
            }
        }
      }
    }
  }
