pipeline{
    agent any

    tools{
        maven "Maven3"
    }

    stages{

        stage('Git clone'){
            steps{
                git branch: 'main', url: 'https://github.com/testgit4me/devschool-task11.git'
            }
        }

        stage('Building jar'){
            steps{  
                sh 'mvn clean install'                             
            }
        }

        stage('Building image'){
            steps{
                echo "Building docker image"

                script(){
                    dockerImage = docker.build("mrdockernnm/lesson11:$BUILD_NUMBER", ".")
                }
            }
        }

        stage('Publish to repository'){
            steps{
                echo "pushing image to docker hub"

                script(){

                    docker.withRegistry('', 'login-dockerhub') {
                        /* Push the container to the docker hub */
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push("latest")
                    }
                }
            }
        }
    }
}