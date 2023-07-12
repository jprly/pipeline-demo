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

                    path="public"
                    s3Dir="s3://jennkins-demo-pipeline-2023-riley/"
                    
                    for entry in "$path"/*; do
                        name=`echo $entry | sed 's/.*\///'`  # getting the name of the file or directory
                        if [[ -d  $entry ]]; then  # if it is a directory
                            aws s3 cp  --recursive "$name" "$s3Dir/$name/"
                        else  # if it is a file
                            aws s3 cp "$name" "$s3Dir/"
                        fi
                    done
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
