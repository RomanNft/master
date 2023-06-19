properties([disableConcurrentBuilds()])

pipeline {
    agent {
        label ''
    }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    
    stages {
        stage("Git clone") {
            steps {
                dir("/home/roman") {
                    sh "rm -rf master" // Видалити каталог master, якщо це безпечно
                    sh "git clone https://github.com/RomanNft/master"
                }
            }
        }

        stage("Work") {
            steps {
                dir("/home/roman/master") {
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
