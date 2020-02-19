junit5 specificity
------------------
### biblio
https://junit.org/junit5/docs/current/user-guide/
https://dev.to/stealthmusic/why-you-should-start-using-junit-5-5gk2

### Classical test
Use the new annotation of junit5: @DisplayName  @Nested and @ExtendWith(MockitoExtension.class) (Non need to use java inheritance)



@DisplayName("An account")

### Advanced tests


@TestMethodOrder(OrderAnnotation.class) / @Order(1)
https://junit.org/junit5/docs/current/user-guide/#writing-tests-test-execution-order

@TestFactory/DynamicTest
   @TestFactory
    Collection<DynamicTest> dynamicTestsFromCollection() {
        return Arrays.asList(
            dynamicTest("1st dynamic test", () -> assertTrue(isPalindrome("madam"))),
            dynamicTest("2nd dynamic test", () -> assertEquals(4, calculator.multiply(2, 2)))
        );
    }
    
@ParameterizedTest
@ValueSource(strings = { "racecar", "radar", "able was I ere I saw elba" })
void palindromes(String candidate) {