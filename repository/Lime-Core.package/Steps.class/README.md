Steps
A step typically starts with Given, When or Then. If there are multiple Given or When steps underneath each other, you can use other synonyms like And, But, With or Having. Lime does not differentiate between the keywords, but choosing the right one is important for the readability of the scenario as a whole.

Given
Given steps are used to describe the initial context of the system—the scene of the scenario. It is typically something that happened in the past.
When Lime executes a Given step it will configure the system to be in a well-defined state, such as creating and configuring objects or adding data to the test database.
It's ok to have several Given steps (just use a synonym for number 2 and upwards to make it more readable).

When
When steps are used to describe an event, or an action. This can be a person interacting with the system, or it can be an event triggered by another system.
It's strongly recommended you only have a single When step per scenario. If you feel compelled to add more it's usually a sign that you should split the scenario up in multiple scenarios.

Then
Then steps are used to describe an expected outcome, or result.
The step definition of a Then step should use an assertion to compare the actual outcome (what the system actually does) to the expected outcome (what the step says the system is supposed to do).
