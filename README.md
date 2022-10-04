# Karate API Training 🥋

## Challenge

Using the [Conduit App](https://react-redux.realworld.io/#/?_k=zkbpmx) and the [Karate API Framework](https://github.com/karatelabs), write some tests to automate this end-to-end flow:

![End-to-end](https://user-images.githubusercontent.com/9667977/193750490-a4022a27-c624-41d0-a249-7622bd8e4bfd.png)


## Installation

Clone the repository

```bash
git clone https://github.com/markhughes321/karate-api-testing
```

Open project root folder

```bash
cd karate-api-training
```

## Usage

Once you are in the root directory, you can run the project using the below commands

```python
# Runs all feature files
mvn clean test

# Runs the project using tags
mvn clean test "-Dkarate.options=--tags @createPostController"

```
