Contributing
============

The following is a set of guidelines for contributing to AssemblyScript and its packages, which are hosted in the [AsssemblyScript Organization](https://github.com/AssemblyScript) on GitHub. These are mostly guidelines, not rules. Use your best judgement, and feel free to proposse changes to this document in a pull request.

Code of Conduct
---------------

This project and everyone participating in it is governed by the [AssemblyScript Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

Filing Issues
-------------

Bugs and enhancement suggestions are tracked as GitHub issues.

#### How Do I Submit A (Good) Bug Report?

After you've determined which repository your bug is related to and that the issue is still present in the latest version of the master branch, create an issue on that repository and provide the following information:

* Use a **clear and descriptive title** for the issue to identify the problem.
* Explain which **behavior you expected** to see instead and why.
* Describe the exact **steps to reproduce the problem** in as many details as necessary.
* When providing code samples, please use [code blocks](https://help.github.com/articles/creating-and-highlighting-code-blocks/).

#### How Do I Submit A (Good) Enhancement Suggestion?

Instructions are similar to those for bug reports. Please provide the following information:

* Use a **clear and descriptive title** for the issue to identify the suggestion.
* Provide a **description of the suggested enhancement** in as many details as necessary.
* When providing code samples, please use [code blocks](https://help.github.com/articles/creating-and-highlighting-code-blocks/).

Submitting Pull Requests
------------------------

Instructions are similar to those for bug reports. Please provide the following information:

* Use a **clear and descriptive title** for the pull request.
* Provide a **description of the suggested changes** in as many details as necessary.
* **Document your new code** where necessary.
* Please **refrain from refactoring (unrelated code)** as it makes your pull request easier to review.
* **Create tests for your new code** where necessary. For creating or updating tests, please see the [Test Instructions](./tests).

Before submitting your pull request, please make sure that the following conditions are met:

* Your new code **adheres to the code style** through running `npm run check`.
* Your new code **passes all existing and new tests** through running `npm run test`.
* Your PR **excludes distribution files** in `dist/**`.
* You appended yourself to the **list of contributors** in the [NOTICE](./NOTICE) file.
