# DevOps-Project

## Step 1: Create Jenkins Server

1. **Install Jenkins**:
   - Follow the official documentation to install Jenkins on your server or local machine.

2. **Start Jenkins**:
   - Once installed, start the Jenkins service. By default, Jenkins runs on port `8080`.
   - Open your web browser and navigate to `http://localhost:8080` (or the appropriate IP address).

3. **Unlock Jenkins**:
   - During the first launch, Jenkins will ask for an unlock key. You can find this key in the Jenkins home directory:
     ```bash
     cat /var/lib/jenkins/secrets/initialAdminPassword
     ```

4. **Complete Setup**:
   - Follow the setup wizard to install recommended plugins and create an admin user.

## Step 2: Integrate Jenkins with Git

1. **Install Git Plugin**:
   - Go to **Manage Jenkins** > **Manage Plugins**.
   - Search for the "Git Plugin" and install it.

2. **Create a New Pipeline Job**:
   - From the Jenkins dashboard, click on **New Item**.
   - Enter a name for your job and select **Pipeline** as the project type.

3. **Configure the Pipeline**:
   - Scroll down to the **Pipeline** section.
   - In the **Definition** dropdown, select **Pipeline script**.

4. **Add the Pipeline Code**:
   - Use the following code as a template for your pipeline:
     ```groovy
     node {
         stage ('Git checkout') {
             git 'https://github.com/KarimAbdelbasit/DevOps-Project.git'
         }
     }
     ```

5. **Save and Build**:
   - Click **Save** to save the pipeline configuration.
   - Click **Build Now** to trigger the pipeline.

## Conclusion

You have now set up a Jenkins server, configured it to integrate with Git, and created a simple pipeline to check out your project.

To view the files that have been checked out, navigate to the Jenkins workspace directory:
```bash
cd /var/lib/jenkins/workspace

### Step 3: Creating the Dockerfile
