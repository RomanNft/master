#!groovy
//  groovy Jenkinsfile
properties([disableConcurrentBuilds()])\

pipeline  {
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
                cd /home/roman/
                git clone https://github.com/RomanNft/master.git         
                '''
            }
        }    
        stage("Work") {
            steps {
                sh '''
                cd /home/roman/master
                docker-compose up -d
                '''
            }
        }   
    }
}
