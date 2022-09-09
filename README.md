## docker-demo-jupyter-mongo 

### Description:

This repo contains a docker-compose (multi-container) application to facilitate the classification of ECG time-series data.  

The components of the tool:
1. A docker-compose with two contrainers:
    - Docker_JL - uses an image based on jupyter/tensorflow-notebook:  
    https://hub.docker.com/r/jupyter/tensorflow-notebook  
    - Docker_DB - uses the mongoDB docker image:  
    https://hub.docker.com/_/mongo  
    and loads to the database the following ECG dataset:   
    https://zenodo.org/record/5711347#.YxuO4NVBzJW  
2. A demo jupyter notebook for the use of the multi-container docker in the classification of the patients' time series to their diagnosis:
    - A short demo of access to the database.
    - A demo of a small and simple tensrorflow network to classify the ECG data.
    
### How to Install and Run:

##### prerequisites:
Docker and docker-compose must by installed.  
ubuntu instructions:  
https://docs.docker.com/engine/install/ubuntu/    
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04

    
1. Open a terminal window.
2. clone this repo - `git clone https://github.com/bellonet/docker-demo-jupyter-mongo.git`
3. `cd docker-demo-jupyter-mongo` to have it as the working directory.
4. Inside the directory - Run `docker-compose up -d`
    - As this is the first time that you run the container, it would download and build all the components, thus this step would take some minutes.
    - `up` creates and starts the containers.
    - `d` detached mode: Run containers in the background. You can also run it without `d` but then ctrl+C would kill the process (and all its containers).  
    
Yay - your docker is running and ready to run your analysis.  

5. Open a web browser.
6. Type in `localhost:8888/` in the address bar and click enter.
7. Enter `daki` in the token field.
8. From here you can start a new jupyter notebook and perform your analysis. Alternatively, you can open the `demo_ecg.ipynb` to learn a bit how to use mongo from python (using `pymongo`), learn how to use the data in the ECG database, and how to run a simple tensorflow based classifier.
    - Importantly, all created notebooks to be used with this docker should be in the project home directory.   
    
    
9. Once done, you can stop and remove the containers with `docker-compose down`.
10. You can restart the containers again with `docker-compose up -d`.

* While docker is running you can access a shell from each container using those commands:
    - `docker exec -it Docker_JL bash`
    - `docker exec -it Docker_DB bash`
        - From here you can enter the mongo shell by typing `mongosh`.


### Additional informaton

I used the following resources:  
https://github.com/jupyter/docker-stacks  
https://github.com/jupyter/docker-stacks/tree/main/tensorflow-notebook  
https://dagshub.com/blog/setting-up-data-science-workspace-with-docker/#setting-up-your-data-science-docker-container-a-step-by-step-guide  
https://faun.pub/initialize-mongodb-running-on-a-docker-container-889a43c5668a  
    
