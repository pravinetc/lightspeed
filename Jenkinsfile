#!/usr/bin/env groovy
pipeline {
    agent any
    environment {

    }
    stages{
        stage('Terraform Init'){

            steps{
                sh "make init"
            }
        }

        stage('Terraform Plan'){

            steps{
                sh "make plan"
            }
        }

        stage('Terraform Deploy'){

            steps{
                sh "make deploy"
            }
        }

        stage('Terraform Destroy'){

            steps{
                sh "make destroy"
            }
        }
    }
}