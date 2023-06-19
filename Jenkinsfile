pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                cp //home/roman/master/docker-compose.yml .
                docker-compose up -d -p zabbix
                '''
            }
        }
    }
}
