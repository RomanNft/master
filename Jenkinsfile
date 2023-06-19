pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                docker-compose up -d \
                    -f /home/roman/docker-compose.yml \
                    -p zabbix
                '''
            }
        }
    }
}

