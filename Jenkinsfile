pipeline{
    agent any

    tools{
        maven "Maven3"
    }

    stages{

        stage('Git clone'){
            steps{
                git branch: 'main', url: 'https://github.com/testgit4me/boxfuse-java-app.git'
            }
        }

        stage('Building jar'){
            steps{  
                echo "Building artifact"
                sh "mvn clean install"
            }
        }

        stage('Building image'){
            steps{
                echo "Pushing to Github"
            }
        }
    }
}