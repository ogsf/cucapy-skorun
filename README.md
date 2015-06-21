# cucapy-skorun
<h2>
# Coding Best Practices
# =====================
</h2>
<h3>
#  1. Elements are defined with css selectors as a rule. However, 
#      * xpath can be used if:
#        * the element text is needed to specify which element, e.g. //h1[.="Home"] instead of (css) 'h1'
#        * the xpath does not contain any 'div's.
#        * xpath is more efficient, such as defining <li> elements
#      * elements are always defined with <id> if possible, then <class>, then <name>, then request an <id> from Developer 
#
#  2. DRY. Common sequences are abstracted to methods in _page files. e.g. Logging in
#
#  3. Static strings are are stored in and called from a 'strings.yml' file
#      * Central place for updating static text on pages
#      * Provides structure for localization (l10n) later
#
#  4. API calls returning a json object are stored in helper files under 'api_helpers' directory 
#
#  5. SQL calls are stored in helper files under 'sql_helpers' directory
#
#  6. Feature file scenarios are 'implicit', not 'explicit'.
#      * e.g. "When I log in", instead of "When I enter a user name" + "And I enter a password" + "And I click sign in button"
#      * The implicit actions are defined in the step definition / called from the _page file
#
#  9. Site navigation is implicitly tested as part of functional tests, not explicitly as stand-alone tests for navigation
#
# 10. Actions on elements (such as .text, .click etc) are called inside step definitions or class methods, not defined separately
#
# 11. Comment the code, no-one likes an Obfuscating Hero.
</h3>