Feature: Cukes
  Scenario: in the belly
    Given I have 4 "cukes" in my belly
    Then I am "happy"

  Scenario: Optional arguments, argument present
    Given Something with an optional argument
    Then the argument should not be nil

  Scenario: Optional arguments, argument not present
    Given Something
    Then the argument should be nil

  Scenario: A stepdef is defined as pending
    Given a pending stepdef with reason "FIXME"
    Then the pending stepdef throws a pending exception with "FIXME"

  Scenario: A stepdef is defined as pending without any reason
    Given a pending stepdef without an explicit reason
    Then the pending stepdef throws a pending exception with "TODO"