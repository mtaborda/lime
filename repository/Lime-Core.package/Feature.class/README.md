Feature
A feature class is supposed to describe a single feature of the system, or a particular aspect of a feature. It's just a way to provide a high-level description of a software feature, and to group related scenarios.

A feature has three basic elements—the Feature: keyword, a name (on the same line) and an optional (but highly recommended) description that can span multiple lines.

Lime does not care about the name or the description—the purpose is simply to provide a place where you can document important aspects of the feature, such as a brief explanation and a list of business rules (general acceptance criteria).

Scenarios
A scenario is a concrete example that illustrates a business rule. It consists of a list of steps.

You can have as many steps as you like, but we recommend you keep the number at 3-5 per scenario. If they become longer than that they lose their expressive power as specification and documentation.

In addition to being a specification and documentation, a scenario is also a test. As a whole, your scenarios are an executable specification of the system.

Scenarios follow this pattern:
     - Describe an initial context
     - Describe an event
     - Describe an expected outcome
This is done with steps.
