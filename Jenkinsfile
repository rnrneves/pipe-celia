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
                   docker= docker.build("celiala/site:${env.BUILD_ID}",
                  '-f Dockerfile . ')
                }
            }
        } 

        stage('Deploy App') {
            steps {
                script {
                    img = 'celiala/site:${env.BUILD_ID}'
                    docker.image("${img}").run('-d -p 80:80')
                }
            }
        }       
    }
}