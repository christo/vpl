# Visual Programming Languages

[![build status](https://github.com/christo/vpl/actions/workflows/haskell.yml/badge.svg)](https://github.com/christo/vpl/actions/workflows/haskell.yml)

Research project about so-called visual programming language projects, paradigms, history and possibilities. 

[vpl on GitHub](https://github.com/christo/vpl)

## TODO

* [x] github build workflow
* [x] github build status badge
* [ ] Try out [Hakyll](https://jaspervdj.be/hakyll/) or [Ema](https://srid.ca/ema-announce) for static site generation.
* [ ] front-end in typescript or purescript?
* [ ] build script for dev
* [ ] deploy script

## "Visual Programming Languages" Suck

The first problem with Visual Programming Languages (VPLs) is the name. I'm using it because I know
no better name in wide use.

It stands to reason that anything called a "visual programming language" ought to be a programming
language and this is, by definition what programmers use. The fundamental conflict here is that the
design goals of many VPLs target self-identified non-programmers, casual programmers and learners,
many of whom have allergies to being identified as a programmer and this forms a barrier to
adoption.

Programmers appear to dislike VPLs, probably because they are self-selected for the traditional
exclusively textual approach and may, much like non-programmers, identify text as definitive.
Ironically, the ubiquity of a textual paradigm remains prominent in the stated motivations of
many visual programming language designs as they focus on the distinction between the two as an
implied imbalance in the explored spaces on either side of this line. It's ironic because 
textual programming is so dominant that the term "textual programming" borders on tautological
and user relief from the difficulties assumed to be inherent in the textual form is near-universally
promised as the primary VPL project success condition.

Consequently the term "Visual Programming Language" simultaneously alienates the target userbase
while speaking to the group least likely to want it.

Alternative terms like __nocode__ and __locode__ suffer from the same problem: likewise defining
themselves by what they are not; a contrast to coding (programming). This strategy of identity
denial does not appear to be convincing to either target users who claim they can't code or career
programmers who prefer text.

An ideal term and design vision for a VPL therefore ought to encompass construction of abstractions
which provide power and convenience for domain experts and explorers but which is evidently not code
and is not mistaken as targeting programmers as its users.

The most successful projects, such as [Unreal Engine Blueprints][ueb] and 
[MIT Scratch](https://scratch.mit.edu), seem to thrive in the margin where game developers and kids
accept that their goal is a sort of programming after all or they attract those who identify as
programmers who overcome their natural objections of using a VPL instead of a textual language
because of specific project circumstances (like teaching their kids) and compelling implementation
qualities that overwhelm acknowledged misgivings.

The apparent reasons for success in some VPLs also include finding a compelling domain niche,
filling out a complete toolchain and prioritising competent visual design which is a puzzling
rarity considering how frequently the project motivation slide deck claims that visual primacy
in the underserved target user base is a fundamental psychological category.

Therefore a VPL project can improve its chances for delighting a thriving user base by avoiding
any reference to programming or code. 

It may take significant success by more projects that adopt an alternative term to raise awareness
of a well-defined product category. Until then I'll begrudgingly use the term within this project
and avoid it in any VPL implementation project that is informed by this research.

## Resources

* [Why visual programming language projects tend to fail](ref/why-vpls-fail.chatgpt.md) according 
to ChatGPT.
* Dijkstra 1978 [On the foolishness of "natural language programming"](notes/esd-foolishness-natural-language.md)
* Many episodes of The Future of Coding podcast

[ueb]:https://dev.epicgames.com/documentation/en-us/unreal-engine/blueprints-visual-scripting-in-unreal-engine