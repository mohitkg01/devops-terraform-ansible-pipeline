pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "/usr/bin/mvn compile"
               }
          }
          stage("Unit test") {
               steps {
                    sh "/usr/bin/mvn test"
               }
          }
     
          stage("Package") {
               steps {
                     sh "/usr/bin/mvn package"
               }
          }
         stage("Docker build"){
	       steps {
                    sh 'docker version'
                    sh 'docker build -t devopswithdeepak-docker-webapp-demo .'
                    sh 'docker image list'
                    sh 'docker tag devopswithdeepak-docker-webapp-demo deepak2717/devopswithdeepak-docker-webapp-demo:devopswithdeepak-docker-webapp-demo'
		
               }
          }
         stage("Docker Login") {    
               steps {
	            withCredentials([string(credentialsId: 'DOCKER_HUB_PASSWORD', variable: 'DOCKER_HUB_PASSWORD')]) {   
                     sh 'docker login -u deepak2717 -p $DOCKER_HUB_PASSWORD'
	       }
              }
         }

         stage("Push Image to Docker Hub"){
               steps {
                     sh 'docker push  deepak2717/devopswithdeepak-docker-demo:devopswithdeepak-docker-demo'
                }
         }

     }
  post {
     always {
          sh "echo 'I did It'"
     }
 }
}
