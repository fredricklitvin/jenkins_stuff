pipeline {
    agent any
    stages {
        stage('Install Docker') {
            steps {
                script {
                    echo 'Installing Docker...'
                    sh 'sudo -i'
                    sh 'yum update -y'
                    sh 'yum install -y docker'
                    sh 'service docker start'
                    sh 'usermod -a -G docker ec2-user'

                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker image...'
                    sh '''
                    docker build . -t work_pls
                    '''
                }
            }
        }

        stage('Start Docker Image') {
            steps {
                script {
                    echo 'Starting Docker image...'
                    sh '''
                    docker run -d -p 80:80 work_pls
                    '''
                }
            }
        }
    }
}
