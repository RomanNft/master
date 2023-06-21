pipeline {
    agent any

    stages {
        stage("Install Software") {
            steps {
                // Встановлення Mozilla Firefox
                sh 'apt-get update'
                sh 'apt-get install -y firefox'

                // Встановлення VLC
                sh 'apt-get install -y vlc'

                // Встановлення Rhythmbox
                sh 'apt-get install -y rhythmbox'
            }
        }

        stage("Verification") {
            steps {
                // Перевірка встановлених програм
                sh 'firefox --version'
                sh 'vlc --version'
                sh 'rhythmbox --version'
            }
        }
    }
}

