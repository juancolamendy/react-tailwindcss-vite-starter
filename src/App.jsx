import { BrowserRouter } from "react-router-dom";

import Routes from "./Routes";

import './styles/index.css';
import './styles/main.css';

const App = () => {
  const pages = import.meta.globEager("./pages/**/!(*.test.[jt]sx)*.([jt]sx)");

  return (
    <BrowserRouter>
      <Routes pages={pages} />
    </BrowserRouter>
  );
}

export default App
