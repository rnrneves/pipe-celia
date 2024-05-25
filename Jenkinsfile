pipeline {
    agent any

    stages {
        stage('Checkout Source') {
            steps {
               git url:'https://github.com/rnrneves/proj-html-cl.git', branch:'main'
            }
            
        }
    
        stage('Build Image') {
            steps {
                script {
                   dockerapp = docker.build("celiala/site:${env.BUILD_ID}",
                  '-f Dockerfile . ')
                }
            }
        } 

        stage('Deploy App') {
            steps {
                script {
                    dockerapp.run("${env.BUILD_ID}")('-d -p 80:80')
                }
            }
        }       
    }
}