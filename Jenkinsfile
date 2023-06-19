pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh '''
                cd /home/roman
                docker-compose up -d -f docker-compose.yml -p zabbix
                '''
            }
        }
    }
}
