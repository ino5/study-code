import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

function App2() {
  return (
    <div className="App2">
      hi
    </div>
  );
}

function App3() {
  return (
    <div className="App3">
      App3
    </div>
  );
}

function App4() {
  return <div className="App4">{App2()} {App3()}</div>;
}



function MyInput() {
  const myText = {text:""};
  let myPrint = function (e) {
    let val = document.getElementsByClassName('myInput')[0].value;
    console.log(val);
    myText.text = val;
    document.getElementsByClassName('myView')[0].innerHTML = myText.text;
  };
  
  return (
    <div className="myInputWrapper">
      <input className="myInput" onKeyUp={myPrint} value="asd"></input>
      <div className="myView"></div>
    </div>
  )
}



function MyScript() {
  console.log('myScript');
  // let $myView = document.getElementsByClassName('myView')[0];
  // let $myInput = document.getElementsByClassName('myInput')[0];
  // $myInput.addEventListener('input', () => {
  //     console.log($myInput.value);
  // });
  return null;
}

function Counter() {
  let number = 17;
  const onIncrease = () => {
    number++;
    console.log(number);
  };
  const onDecrease = () => {
    number--;
    console.log(number);
  };
  return(
    <div>
      <h1>{number}</h1>
      <button onClick={onIncrease}>+1</button>
      <button onClick={onDecrease}>-1</button>
    </div>
  );
}

export default Counter;
