# enigma 🌀🌀🌀

### BtS

I've got to say, the terror of the project is no less on ***enigma*** than it was on ***flash cards***. At kickoff, I took one look at the requirements, and dread immediately set in, quickly followed by panic. And when I panic, I shut down. I mulled and moped. Then I took another peek. ***I had no idea what to do***.

I *reeeeally* took what Erin said at the beginning of kickoff to heart. Maybe a little too much. I had to treat this like an IC... I was not allowed to collaborate. I took that to mean, I couldn't even talk to a mentor. In that, I didn't need advice - I needed a clue on how to get started, which in my mind (🌀hint hint🌀 I have negativity bias) that essentially would be collaboration.

I despaired, was about to give up, and mulled some more. After awhile I swallowed the sword, and decided to look at code from past cohorts. After all, that's sort of encouraged, right? That's basically what happens in the real world anyway, and how many times can you reinvent the wheel? Code is code, *right*?

Well, what I hoped would be inspirational, eventually led to more despair. Even if I dissected code line-by-line and could understand and explain how everything functioned, I still didn't feel capable of turning around and writing something original, or at least original enough to not be "copying". I tried to justify the unoriginality in that the research done for a history paper isn't... reinventing history per se, your paper will still rehash the same information. But I didn't know how to change the code enough to buy that argument. I felt wrong. I just didn't have enough experience.
I had pretty much resolved myself to failure when I took one last stab at the sky, even if was pretty much curtain call, and reached out to my mentor anyway (for advice). Thank goodness for him, he wouldn't let me give up on myself. He breathed new perspective into me, and little more confidence, and a little more steam. This morning, I talked to a few cohort-mates, and duh! I shouldn't have resorted to doom-and-gloom like I'm so apt to do. Everyone was looking at code, everyone was asking others for support, some even deciding to more loosely interpret (if not flagrantly disregard) the no-collaboration edict than more-conservative-me did. Well...

I certainly learned some lessons during this project. Code, obviously. But more than that, it really reinforced things I've been learning about myself. I need to learn how to discipline myself better. To budget my time better. To not immediately give in to panic when confronted with challenges or stress. To develop my faculties for problem-solving. These aren't new things, necessarily, but without the trial by fire, the motivaiton for change was missing, and it did little to proselytize to myself. I am not an island. I need to seek help, and reach out, if I find myself flailing at the edge of a precipice, so that I do not end up falling into the depths. I need help learning and creating tools and habits to get better at these crucial skills. I avoided challenges (re: school) for the *longest* time, fearing the panic, the not knowing, the failure. All of that time led to atrophy. And as much as Turing tried to prepare me for the challenge that lied ahead, the words mostly echoed, because I didn't know how it felt. I didn't have an experience to compare it to. Starting Turing, I could barely walk (figuratively speaking), let alone sprint. And Turing needed me to marathon.

Now... I might be at a lilting jog. I need to **TRAIN**. I **NEED** to **PRACTICE**. So that I can run by the end of module 2, and full speed ahead beyond.

### *So, without further adieu...*


## ⚡️ Self Assessment ☠️

### Functionality

```markdown
Score: 1
- Two or more of the following are not successfully implemented: Enigma#encrypt, Enigma#decrypt, command line interfaces

Well, that's obvious. Panic, wasting time, and deconstructing my code at the last minute didn't help matters.
```
### OOP

```markdown
Score: 3
- Project is broken into logical components that are appropriately encapsulated.
No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about.
Student can articulate the single responsibilities of the various components.

Decided that implementing a class for each aspect of the algorithm was inutitive - they are responsible for creating their own piece of the algorithm, which keeps them concise and adhering to LoD.
The Generator module contains methods that can be used in multiple classes.
```
### Ruby Conventions

```markdown
Score: 3
- Code is mostly properly indented, spaced, and lines are not excessively long.
Class, method, variable, and file names follow convention.
Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen.
At least one hash is implemented in a way that makes logical sense.

I made it my mission to follow conventions, and utilized rubocop to lint.
I utilize hashes for both keys and offsets. This seemed intuitive based on the algorithm set up, which will allow me to access the values for calculating shifts. 
The hash for the rotate method points to the necessary values given the pieces of the message for the encrytion.
```
### TDD

```markdown
Score: 3.5
- Every method is tested at both the unit and integration level, and completely verify expected behavior (i.e., if a single method does 3 things, all 3 things are explicitly tested). Obvious edge cases are addressed.
git history demonstrates students are writing tests before implementation code.
Test coverage metrics show coverage at 99% or greater.

Tests were written before code. SimpleCov returns 100%.
I utilized mocks/stubs once, I would have liked to do another for the Offset class (and probably more had I gotten farther).
```
### Version Control

```markdown
Score: 3.3
"Minimum 30 commits and 3 pull requests.
More than half of your pull requests include related and logical chunks of functionality, and are named and documented to clearly communicate the purpose of the pull request.
No more than 3 commits include multiple pieces of functionality.

It was a rough start, but I got a better flow with VC as time progressed as will be evident.
```

### Final Score:
# 2.76
