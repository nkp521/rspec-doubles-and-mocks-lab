# Lab 6: Doubles & Mocks (PaymentProcessor)

In this lab, you'll use RSpec doubles, mocks, and spies to isolate a Ruby service object: the **PaymentProcessor**. You'll write specs that replace PaymentProcessor's dependencies with test doubles, verify method calls, and check that PaymentProcessor behaves correctly in isolation.

**Make sure you have Ruby installed and run `bundle install` before starting this lab.**

## What are doubles, mocks, and spies?

- **Double:** A test object that stands in for a real object or dependency.
- **Mock:** A double that also sets expectations about how it should be used (e.g., which methods should be called).
- **Spy:** A double that records how it was used, so you can check after the fact which methods were called.

## Instructions

1. **Write specs in `spec/student/` for the provided service object, `PaymentProcessor`.**
   - Write at least one spec per PaymentProcessor dependency or behavior you want to test.

2. Use doubles to replace PaymentProcessor's external dependencies.
   - Use `allow(...).to receive` to stub methods on your PaymentProcessor doubles.
   - Use argument matchers like `with(...)` to ensure PaymentProcessor methods are called with the correct arguments.

3. Use mocks and spies to verify PaymentProcessor method calls and behaviors.
   - Check that the method returns the expected result **and** that PaymentProcessor dependencies were called correctly.
   - Use spies to check that PaymentProcessor methods are called as expected.

4. Do **not** change any files in `spec/meta/`—these are lab checker specs that verify your PaymentProcessor specs. In the test output, any spec labeled with `[LAB CHECKER]` is an official lab checker (not written by you) and is there to help you know if your specs meet the requirements.
5. Run `bin/rspec` frequently to check your progress and see which PaymentProcessor behaviors are working as expected.

## What to focus on

- Create doubles for PaymentProcessor dependencies.
- Use `allow(...).to receive` and argument matchers with PaymentProcessor.
- Use spies to check that PaymentProcessor methods are called as expected.
- Verify both the return value and the interactions with PaymentProcessor dependencies.

## Resources

- [RSpec Documentation](https://rspec.info/documentation/)
