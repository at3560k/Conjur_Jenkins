pipeline {
	agent any

	stages {
		stage ('Check Health') {
			steps {
				sh 'curl -k -i -X GET https://conjur-master/health'
			}
		}
		stage ('Test Pipeline') {
			steps {
				sh 'printf \"Hello World\"'
			}
		}
		stage ('Update Policy') {
			steps {
				sh 'conjur policy load --as-group security_admin policy/policy.yml'
			}
		}
	}
}
