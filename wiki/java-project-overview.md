Overview of a java project architecture
=======================================

What need to be set for a full workinig java project? The technologie choose may differ but you need to choose at least:
- a SCM
- your langage/version
- a build tool
- a logging tool
- a testing tool
- an integration tool
and frequently
- a user mgt
- a data mgt
- a decoupling-injecting tool
- a screen display technology
dev tools
- IDE plugin to facilitate edition


Here is the technologies I have choosen and a working example
- git
- java 11
- maven
- logback/slf4j
- junit5
- a standalone server (jenkins like)
- a custom user mgt in json
- postgresql + hibernate
- a vanilla java Proxy injection (Spring like)
- javaFX
- eclipse java edition with e(fx)clipse, json 




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


Eclipse configuration
---------------------

Good eclipse usage come with good shortcut usage
## usefull not always well known shortcuts
in majuscule, the mnemotechnic letter to memorize

### java navigation
- shift-ctrl-T: open Type
- ctrl o o: Open method

### file navigation
- ctrl-shift-R: open Resource
- ctrl H: full text searcH
 
### java edition
- alt-shift R: Rename (with refactorisation)
- alt-shift L: create Local variable
- alt-shift-S: Source generate : getter/setter toString equals hashcode

### custom shortcut: configuration - junit
First custom shortcut is to add custom shortcut! got to windows-preferences and add a shortcut to:
- ctrl-alt-S: open windows-preferences (S: Settings) then type "keys" to go to key binding
- shift-ctrl-> : Navigate to->create Test
