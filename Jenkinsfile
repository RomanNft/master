// Groovy Jenkinsfile
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
                sh '''
                cd /home
                git clone https://github.com/RomanNft/master
                '''           
            }
        }

        stage("Work") {
            steps {
                dir("/home/master") {
                    sh "docker-compose up -d --no-color --wait"
                }
            }
        }
    }
}
