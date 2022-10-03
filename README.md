# Karate API Training

## Challenge

Using the [Conduit App](https://react-redux.realworld.io/#/?_k=zkbpmx) and the [Karate API Framework](https://github.com/karatelabs), write some tests to automate this end-to-end flow:

![Blank diagram](https://user-images.githubusercontent.com/9667977/193516142-a81c1f52-b87d-47ec-8ff4-a89588f30b4f.png)

## Installation

Clone the repository

```bash
git clone https://github.com/markhughes321/karate-api-testing
```

Open project root folder

```bash
cd karate-api-conduit
```

## Usage

Once you are in the root directory, you can run the project using the below commands

```python
# Runs all feature files
mvn test

# Runs the project using tags
mvn clean test "-Dkarate.options=--tags @createPostController.feature"

```
