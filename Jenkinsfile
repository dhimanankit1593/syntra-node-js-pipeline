pipeline {
    
agent any
    
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/dhimanankit1593/syntra-node-js-pipeline.git", branch: "main"
               
            }
        }
        stage("Build & Test"){
            steps{
                sh "sudo docker build . -t nodes-app-jenkins:latest"
            }
        }
        
        stage("Deploy"){
            steps{
                sh "sudo docker run -d   --name nodes-app-jenkins   --restart unless-stopped   -p 8002:8002   nodes-app-jenkins:latest"
            }
        }
    }
}

