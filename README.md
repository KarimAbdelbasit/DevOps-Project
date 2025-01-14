# DevOps-Project

## Step 1: Create Jenkins Server


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


To view the files that have been checked out, navigate to the Jenkins workspace directory:
```bash
cd /var/lib/jenkins/workspace
```

## Step 3: Add Webhooks

### Step 3: Creating the Dockerfile
