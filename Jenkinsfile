pipeline {
    agent any

    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }

    stages {
        stage("Git clone") {
            steps {
                git 'https://github.com/RomanNft/master.git'
            }
        }

        stage("Work") {
            steps {
                dir('master') {
                    sh 'docker-compose up -d'
                }
            }
        }
    }
}
