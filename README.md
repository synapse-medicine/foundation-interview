# Code assessment

> **!IMPORTANT**  
> **Be sure to create yourself a working copy using this repo as a template**.  
> You will need to create a **private repository** from this one.   
> Here is the step by step :
1. Use this repo as a template for **your** working copy. Follow [this link](https://github.com/new?template_name=foundation-interview&template_owner=synapse-medicine)
2. Setup your repository. 
3. Start coding ! 
> When you will be finished, **we will ask you to share us your repository**. 

## Provided material

* A non-functional PHP backend to reimplement in Go.
* A React application that displays an autocomplete for medical specialities and allows listing related generic medications.
* A Dockerfile and a Docker Compose.
* A basic CI using GitHub Actions.

## Resources 

* [TailwindCSS](https://tailwindcss.com/docs)
* [Neobrutalism](https://www.neobrutalism.dev/styling)

## Instructions

### Before you start 

The provided repository needs to be used as a *code template* to create a repository in your personal space. 

### Reimplement in Go

**Your first task is to reimplement the existing PHP code in the `backend` folder using Go.**

The PHP code intentionally contains some issues that you will need to address in your implementation.  
The expected Go code should provide an HTTP API exposing the same endpoints as those currently implemented in PHP.
To present the required data, your Go code must use the SQLite database located in the `data` folder.

### Adding a new feature

**Your second task will be to develop a new feature.**

The goal is to add a search component to the patient profile page.  
This component will allow users to search for a medical specialty using free text and display a list of related generic medications.  

This gives the following user workflow:  
1. The user clicks on the search field and searches for a medical specialty using free text.  
2. The application displays a list of generic medications related to the entered specialty.  
3. The user selects a generic medication from the list.  
4. The application displays the following information for the selected generic medication:
    - Label of the specialty  
    - Specialty code  
    - Creation date of the generic group  
    - Official journal publication date of the last update of the generic group  
    - Reference specialty of the generic group  

You are free to develop the feature as you want. The UX and the design are taken into account, but you should not spend too much time on it.

### Updating the Docker compose

**Your third task is to define a Dockerfile for your Go backend.**

The Docker Compose file allows you to easily launch both the frontend and backend simultaneously so that they can communicate with each other. Update the `docker-compose.yml` file to ensure it can start both your frontend and backend services at the same time.

### Updating the CI

**Your fourth task is to improve the CI.**

Change the current GitHub Actions CI to build and publish the Docker images provided in the repository to a GitHub release on every push to the `main` branch.

### Going further

**Your last task is to be critical :smile:.**

The provided code is not representative of the expectations we have for production code (on purpose).
We instead encourage you to build the feature in a way that you think is the best.
We **don't** expect you to fix the current code though, just to add the new feature.

List what you would improve in the codebase (current or in your new feature) in the `Improvements section`.

## Improvements:

> List here what you would improve in the provided codebase as well as what you could improve in your new feature
> if you had more time

* ...
