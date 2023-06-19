pipeline {
    agent any
    
    options {
        disableConcurrentBuilds()
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    
    stages {
        stage("Git clone") {
            steps {
                dir('/home') {
                    git 'https://github.com/RomanNft/master'
                }
            }
        }
        
        stage("Set permissions") {
            steps {
                sh "chmod 777 /home/master"
            }
        }

        stage("Work") {
            steps {
                dir('/home/master') {
                    sh "docker-compose up -d"
                }
            }
        }
    }
}
