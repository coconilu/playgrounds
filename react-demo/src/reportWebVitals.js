const reportWebVitals = (onPerfEntry) => {
  if (onPerfEntry && onPerfEntry instanceof Function) {
    import("web-vitals").then(({ getCLS, getFID, getFCP, getLCP, getTTFB }) => {
      getCLS(onPerfEntry); // not for safari
      getFID(onPerfEntry); // not for safari
      getFCP(onPerfEntry);
      getLCP(onPerfEntry); // not for safari
      getTTFB(onPerfEntry);
    });
  }
};

export default reportWebVitals;
