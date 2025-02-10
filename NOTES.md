# Notes

## Before starting

- Domain concepts: animals, noise, loudness
- Problems:
  - To many different ways of doing the same thing
  - Mix of dependent and independent conditionals
  - Boolean control coupling flag `is_loud`
- Changes that can make improvements
  - Use a single approach to doing the various conditionals
  - Make the animal and bird noise code more similar
  - Extract polymporphic animal classes

## During exercise

- `make_bird_noise` and `make_animal_noise` behave differently from each other
- paying attention to the variables being branched on is helpful to understand the cardinality of the problem
- <3 [decision tables](https://www.hillelwayne.com/decision-tables)
- flat conditional structures are easier to read
- there is untested edge-case for species that are neither birds not animals
