
# Lab 6: Doubles & Mocks (PaymentProcessor)

In this lab, you'll use RSpec doubles, mocks, and spies to isolate a Ruby service object: the **PaymentProcessor**. You'll write specs that replace PaymentProcessor's dependencies with test doubles, verify method calls, and check that PaymentProcessor behaves correctly in isolation.

**Make sure you have Ruby installed and run `bundle install` before starting this lab.**

## What are doubles, mocks, and spies?

- **Double:** A test object that stands in for a real object or dependency.
- **Mock:** A double that also sets expectations about how it should be used (e.g., which methods should be called).
- **Spy:** A double that records how it was used, so you can check after the fact which methods were called.

## Instructions

1. **Write specs in `spec/student/` for the provided service object, `PaymentProcessor`.**
        - For each external dependency or key behavior of `PaymentProcessor`, write at least one spec.
        - **What are PaymentProcessor's dependencies?**
            - `PaymentProcessor` depends on two objects: `gateway` (required) and `logger` (optional).
            - `gateway` is expected to respond to `charge(amount, account)` and `refund(amount, account)`.
            - `logger` is expected to respond to `info(message)` and `error(message)`.
            - In your tests, you could replace both/either `gateway` and `logger` with doubles or spies.

2. **Replace PaymentProcessor’s dependencies with doubles.**
        - Use `double`, `instance_double`, or `class_double` to create test doubles for the `gateway` and `logger` dependencies.
        - Use `allow(...).to receive(:method_name)` to stub methods on these doubles, so you can control their behavior in your tests.
        - Use `.with(...)` to specify the exact arguments you expect these methods to be called with.

3. **Verify interactions using mocks and spies.**
     - Use `expect(...).to have_received(:method_name).with(args)` to check that your doubles were called as expected.
     - Use `spy` if you want to record and later verify how a double was used.
     - Make sure your specs check both:
         - The return value of the method you’re testing.
         - That the correct methods were called on your doubles with the correct arguments.

4. Do **not** change any files in `spec/meta/`—these are lab checker specs that verify your PaymentProcessor specs. In the test output, any spec labeled with `[LAB CHECKER]` is an official lab checker (not written by you) and is there to help you know if your specs meet the requirements.
5. Run `bin/rspec` frequently to check your progress and see which PaymentProcessor behaviors are working as expected.

## What to focus on

- Create doubles for PaymentProcessor dependencies.
- Use `allow(...).to receive` and argument matchers with PaymentProcessor.
- Use spies to check that PaymentProcessor methods are called as expected.
- Verify both the return value and the interactions with PaymentProcessor dependencies.

## Resources

- [RSpec Documentation](https://rspec.info/documentation/)
