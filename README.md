# Boolean Condition Template for Google Tag Manager

## General Description
A flexible macro template for Boolean comparisons within Google Tag Manager, enabling conditional checks between variables.

## Resources
||
|----|
|[Template Gallery]()|

## Inputs
The template accepts three input parameters:
- `Input Variable`: Variable to be evaluated
- `Condition`: Type of comparison to execute
- `User Input`: Value to compare against the variable

## Supported Conditions
- Equals
- Does not equal
- Contains
- Does not contain
- Starts with
- Does not start with

## Execution Flow
1. **Input Acquisition**
   ```javascript
   const inputA = data.inputVar;
   const inputB = data.inputUsr;
   const condition = data.condition;
   ```

2. **Conditional Evaluation**
   Specific checks are performed based on the selected condition:
   - Direct equality comparison
   - Substring search
   - String start verification

## Use Cases
- URL filtering
- Input validation
- Conditional checks in tags and triggers

## Usage Example
```javascript
// Check if a URL contains a specific domain
const data = {
  inputVar: 'https://www.google.com',
  inputUsr: 'google',
  condition: 'contains'
};
// Returns: true
```

## Important Notes
- Supports string comparisons only
- Case-sensitive
- Always returns a Boolean value

## License
[Apache 2.0](https://raw.githubusercontent.com/paolobln/gtm-template-boolean-conditions/refs/heads/main/LICENSE)
