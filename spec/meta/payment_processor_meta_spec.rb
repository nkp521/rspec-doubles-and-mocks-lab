# frozen_string_literal: true

describe '[LAB CHECKER] PaymentProcessor Doubles & Mocks Spec Requirements' do
  let(:student_spec_files) { Dir[File.expand_path('../../student/*_spec.rb', __FILE__)] }
  let(:all_content) { student_spec_files.map { |f| File.read(f) }.join("\n") }

  it 'has at least one student spec file in spec/student/' do
    expect(student_spec_files).not_to be_empty, "Expected at least one spec file in spec/student/, but none were found. Did you create your spec file(s)?"
  end

  it 'uses at least one double for PaymentProcessor dependencies' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for a double/instance_double/class_double used with PaymentProcessor
      if content.match(/(double|instance_double|class_double)\s*\(.*PaymentProcessor.*\)/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use at least one double (double/instance_double/class_double) for a PaymentProcessor dependency, e.g. double('PaymentProcessor')."
  end

  it 'uses allow(...).to receive with a PaymentProcessor double or instance' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for allow(...).to receive with PaymentProcessor or a double
      if content.match(/allow\s*\([^)]+\)\.to receive/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use allow(...).to receive with a PaymentProcessor double or instance, e.g. allow(payment_processor).to receive(:process)."
  end

  it 'uses a spy or verifies method calls on a PaymentProcessor double or instance' do
    found = false
    student_spec_files.each do |file|
      content = File.read(file)
      # Look for have_received or spy with PaymentProcessor
      if content.match(/(have_received|spy).*/)
        found = true
        break
      end
    end
    expect(found).to be(true), "Expected your specs to use a spy or verify method calls (have_received/spy) on a PaymentProcessor double or instance."
  end
end
