import "antd/dist/antd.less";
import history from "common/utils/history";
import { render } from "react-dom";
import { unstable_HistoryRouter as HistoryRouter } from "react-router-dom";
import "./index.css";
import App from "./src/App";

render(
  <HistoryRouter basename={`/`} history={history}>
    <App />
  </HistoryRouter>,
  document.querySelector("#root")
);
