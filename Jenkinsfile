pipeline {
    agente any

    stages {
        stage('Checkout Source') {
            steps {
               git url:'https://github.com/rnrneves/proj-html-cl.git', branch:'main'
            }
            
        }
    
        stage('Build Image') {
            steps {
                script {
                   docker= docker.build("celiala/site:{$env.BUILD_ID}",
                  '-f Dockerfile . ')
                }
            }
        }        
    }
}