## Kubernetes YAML Basics
- YAML is not a Markup Language
- YAML is used to store information about different things
- We can use YAML  to define key, Value pairs like variables, lists and objects
- YAML is very similar to JSON (Javascript Object Notation)
- YAML primarily focuses on readability and user friendliness
- YAML is designed to be clean and easy to read
- We can define YAML files with two different extensions
    - abc.yml
    - abc.yaml


# YAML Comments
Comments & Key Value Pairs
- Space after colon is mandatory to differentiate key and value

```yml

# Defining simple key value pairs
name: kalyan
age: 23
city: Hyderabad

```
# Dictionary / Map
- Set of properties grouped together after an item
- Equal amount of blank space required for all the items under a dictionary

```yml
person: # 
  name: kalyan
  age: 23
  city: Hyderabad
```

#  Array / Lists

```yml
person: # Dictionary
  name: kalyan
  age: 23
  city: Hyderabad
  hobbies: # List  
    - cycling
    - cookines
  hobbies: [cycling, cooking]   # List with a differnt notation  
  
