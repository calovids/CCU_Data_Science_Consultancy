# CCU - Data Science Consultancy Workshop performed at April 22nd 2024


To mount the jupyter-notebook with docker and have access to the folder from where you use the command, use:

`docker run -v "$(pwd)":/home/jovyan/work -it -p 8888:8888 notebook-workshop`

If you want to  have access to a specific folder use

`docker run -v <address-to-your-local-folder>:/home/jovyan/work -it -p 8888:8888 notebook-workshop`
