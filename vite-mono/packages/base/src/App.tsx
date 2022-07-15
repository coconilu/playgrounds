import MicroLoader from "common/bizComps/MicroLoader";
import type { ReactElement } from "react";
import { Route, Routes } from "react-router-dom";
import styles from "./app.module.less";

export default function App(): ReactElement {
  return (
    <div className={styles.pageContainer}>
      <Routes>{<Route path="*" element={<MicroLoader />} />}</Routes>
    </div>
  );
}
