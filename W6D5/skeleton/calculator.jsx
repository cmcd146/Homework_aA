import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {num1: "",num2: "", result: 0 };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
  }

  // your code here

  render() {
    return (
      <div>
        <h1>Hello World</h1> // replace this with your code
      </div>
    );
  }
}

export default Calculator;
