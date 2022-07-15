import MicroLoaderError from "@/bizComps/MicroLoader/widgets/ErrorPage";
import NotFoundPage from "@/bizComps/MicroLoader/widgets/NotFoundPage";
import LoadingFullPage from "@/bizComps/LoadingFullPage";
import { micros } from "@/constants";
import { withTimeoutPromise } from "@utils/promise";
import { FC, memo, useEffect, useMemo, useRef, useState } from "react";
import { useEffectOnce, useLocation } from "react-use";
import {
  addErrorHandler,
  checkActivityFunctions,
  getAppStatus,
  registerApplication,
  start,
} from "single-spa";
import { loadMicroByName } from "./helper";

type PageStatus = "Loading" | "Error" | "NotFound" | "Success";

const loadMicroAppTimeout = 20000; // 超时 20s

const MicroLoader: FC<unknown> = () => {
  const microContainer = useRef<HTMLDivElement>(null);

  const [pageStatus, setPageStatus] = useState<PageStatus>("Loading");

  const location = useLocation();

  // 使用 Single-SPA 注册微服务
  useEffectOnce(() => {
    if (window.hasRegisterMicro) return;
    micros.forEach((microAppName) => {
      registerApplication({
        name: microAppName,
        app: async () => {
          setPageStatus("Loading");
          // 设置超时机制
          const res = await withTimeoutPromise(
            loadMicroByName(microAppName),
            loadMicroAppTimeout
          );
          setPageStatus("Success");
          return res;
        },
        activeWhen: `/${microAppName}`,
        customProps: {
          container: microContainer.current,
        },
      });
    });

    addErrorHandler((err) => {
      console.error(err);
      console.error(err.appOrParcelName);
      console.error(getAppStatus(err.appOrParcelName));
      setPageStatus("Error");
    });

    window.hasRegisterMicro = true;

    start();
  });

  useEffect(() => {
    const activeApps = checkActivityFunctions(window.location);
    if (activeApps.length === 0) {
      setPageStatus("NotFound");
    }
  }, [location]);

  const child = useMemo(() => {
    switch (pageStatus) {
      case "Error":
        return <MicroLoaderError />;
      case "Loading":
        return <LoadingFullPage />;
      case "NotFound":
        return <NotFoundPage />;
      case "Success":
        return null;
    }
  }, [pageStatus]);

  return <div ref={microContainer}>{child}</div>;
};

export default memo(MicroLoader);
