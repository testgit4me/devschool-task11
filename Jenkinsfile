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

        //
        // BUILDING & PUSHING THE DOCKER IMAGES INTO THE NEXUS REPOSITORY

        // stage('Building image'){
        //     steps{
        //         echo "Building docker image"

        //         script(){
        //             dockerImage = docker.build("3.17.157.177:8083/lesson11:$BUILD_NUMBER", ".")
        //         }
        //     }
        // }

        // stage('Publish to repository'){
        //     steps{
        //         echo "pushing image to nexus registry"

        //         script(){

        //             docker.withRegistry("http://3.17.157.177:8083", 'login-nexus') {
        //                 /* Push the container to the docker hub */
        //                 dockerImage.push("$BUILD_NUMBER")
        //                 dockerImage.push("latest")
        //             }
        //         }
        //     }
        // }

        // BUILDING & PUSHING THE DOCKER IMAGES INTO THE DOCKER HUB

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

        stage('Run the container'){
            steps{
                echo "running the container on the prod server"

                sh 'ssh ubuntu@172.31.3.227 docker stop java-app'
                sh 'ssh ubuntu@172.31.3.227 docker rm java-app'
                sh 'ssh ubuntu@172.31.3.227 docker run --name java-app -p 8080:8080 -d mrdockernnm/lesson11:latest'  

            }
        }
    }
}