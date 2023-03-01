pipeline{
    agent any

    tools{
        maven "Maven3"
    }

    stages{

        stage('Git clone'){
            steps{
                git branch: 'master', url: 'https://github.com/testgit4me/boxfuse-java.git'
            }
        }

        stage('Building jar'){
            steps{  
                echo "Building artifact"                
                echo "Building artifact"   
            }
        }

        stage('Building image'){
            steps{
                echo "Pushing to Github"
            }
        }

        stage('Publish to repository'){
            steps{
                echo "pushing image to docker hub"
            }
        }
    }
}