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
- defaulting to "hoot" for unknown birds in `make_bird_noise` is probably
  unintentional. Currently it would only happen for owls but if we added more
  birds they might accidentally make the wrong sound.
- there was untested (unwanted?) behavior in the original implementation where
  the program would still output "squawk" for quiet hadedahs before raising
- Inheritance hierarchy makes it easy to vary the behavior of the animals
- The test file makes a difference between animals and birds that distinction is
  irrelevant from a behavior perspective
- The polymorphic approach makes it easy to write Open/Closed Principle compliant
  code

## After exercise

> Does your starting list of problems still feel complete?

Most initial problems are gone. I still have issues about the control-coupling
on the `is_loud` flag but that is mitigtated by pulling out the
`make_quiet_noise` and `make_loud_noise` methods. Yay triangle of separation!

> If you rewrote the list now, would it be different? How and why?

No, I think I was spot on with the initial list of problems. I did noticed some
undefined/untested behavior while working that I didn't spot at the beginning.

> Does your current assessment of the NoisyAnimal problems feel similar or different to other code you read or work with?

Yes, particularly the poor structuring of conditional code

> Have you found yourself trying something and then realising it wouldn't work? How easy was it to get back to something that did work?

No, probably because I worked in such small steps. I knew I was working towards
normalizing everything, then to polymorphism. I was surprised at how good the
normalized procedural solution was though.

> Do you make git commits as you make your changes?

Yes! With detailed messages about what I was thinking during each step of the refactor.

> How often do you run the tests? What if you could only run them once every 10 minutes? Or 30 minutes?

I ran tests constantly. I worked in very small iterations and comitted
frequently. Running tests less often would significantly undermine my ability to
fearlessly refactor.

> What would it take to run the tests every time you changed a line of noisy_animal.rb?
I was pretty near to that. Every line seems a bit excessive. If I'm moving a
line from point to point, I only want to test the code after I've moved it.

> Is it easier to add the new animals before or after addressing some of the problems?

Significatnly easier to add animals after! The polymorphic approach makes all
the additions "open/closed" compliant. I suppose changes in some different
dimensions might be harder make. This feels like a variation of the *expression
problem*. For a different kind of changes, my optimized procedural solution in
3e32aa25ce8d6b14bc47da5f13a88ac31df88c0e might have fared better.

> After introducing the new animals is the code going to be easier or harder to change in future than it was before you started?

No difference, since I only added new classes and didn't modify the existing code. Yay Open/Closed? (and triangle of separation!)

> How do you think that code might start out well and end up as confusing as this over time?

Evolving requirements and just trying to patch a new feature in. This is often
done by tacking on yet one more conditional. Ideally, you're taking the time to
see how it fits within the bigger picture, and do any of the existing conditional
structures serve your purpose. Even though there is a test suite, it can be hard
to get a sense of the requirements globally. Analytical tools like decision
tables are a great help.
